; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.rtl_sta_info = type <{ %struct.list_head, [9 x %struct.rtl_tid_data], %struct.rssi_sta, i8, i16, i8, i8, [6 x i8] }>
%struct.rssi_sta = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"cur_igvalue = 0x%x, pre_igvalue = 0x%x, backoff_val = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Trigger 88E Thermal Meter!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Schedule TxPowerTracking !!\0A\00", [35 x i8] zeroinitializer }, align 32
@dm_txpower_track_cb_therm.delta_swing_table_idx = internal constant { [2 x [15 x i8]], [34 x i8] } { [2 x [15 x i8]] [[15 x i8] c"\00\00\02\03\04\04\05\06\07\07\08\09\0A\0A\0B", [15 x i8] c"\00\00\FF\FE\FD\FC\FC\FC\FC\FB\F9\F8\F7\F7\F6"], [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.dm_txpower_track_cb_therm = private unnamed_addr constant [26 x i8] c"dm_txpower_track_cb_therm\00", align 1
@.str.4 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@ofdmswing_table = internal constant { [43 x i32], [52 x i8] } { [43 x i32] [i32 2139095550, i32 2021655010, i32 1908408775, i32 1803551150, i32 1698693525, i32 1606418815, i32 1514144105, i32 1430258005, i32 1350566210, i32 1275068720, i32 1203765535, i32 1136656655, i32 1073742080, i32 1015021810, i32 956301540, i32 901775575, i32 851443915, i32 805306560, i32 759169205, i32 717226155, i32 679477410, i32 637534360, i32 603979920, i32 570425480, i32 536871040, i32 507510905, i32 478150770, i32 452984940, i32 427819110, i32 402653280, i32 381681755, i32 360710230, i32 339738705, i32 318767180, i32 301989960, i32 285212740, i32 268435520, i32 251658300, i32 239075385, i32 226492470, i32 213909555, i32 201326640, i32 188743725], [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Initial pathA ele_d reg0x%x = 0x%lx, ofdm_index = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@cck_tbl_ch14 = internal constant { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"65.\1B\00\00\00\00", [8 x i8] c"32+\19\00\00\00\00", [8 x i8] c"0/)\18\00\00\00\00", [8 x i8] c"--\17\17\00\00\00\00", [8 x i8] c"+*%\15\00\00\00\00", [8 x i8] c"(($\14\00\00\00\00", [8 x i8] c"&%!\13\00\00\00\00", [8 x i8] c"$#\1F\12\00\00\00\00", [8 x i8] c"\22!\1D\11\00\00\00\00", [8 x i8] c"  \1B\10\00\00\00\00", [8 x i8] c"\1F\1E\1A\0F\00\00\00\00", [8 x i8] c"\1D\1C\18\0E\00\00\00\00", [8 x i8] c"\1B\1A\17\0E\00\00\00\00", [8 x i8] c"\1A\19\16\0D\00\00\00\00", [8 x i8] c"\18\17\15\0C\00\00\00\00", [8 x i8] c"\17\16\13\0B\00\00\00\00", [8 x i8] c"\16\15\12\0B\00\00\00\00", [8 x i8] c"\14\14\11\0A\00\00\00\00", [8 x i8] c"\13\13\10\0A\00\00\00\00", [8 x i8] c"\12\12\0F\09\00\00\00\00", [8 x i8] c"\11\11\0F\09\00\00\00\00", [8 x i8] c"\10\10\0E\08\00\00\00\00", [8 x i8] c"\0F\0F\0D\08\00\00\00\00", [8 x i8] c"\0E\0E\0C\07\00\00\00\00", [8 x i8] c"\0D\0D\0C\07\00\00\00\00", [8 x i8] c"\0D\0C\0B\06\00\00\00\00", [8 x i8] c"\0C\0C\0A\06\00\00\00\00", [8 x i8] c"\0B\0B\0A\06\00\00\00\00", [8 x i8] c"\0B\0A\09\05\00\00\00\00", [8 x i8] c"\0A\0A\09\05\00\00\00\00", [8 x i8] c"\0A\09\08\05\00\00\00\00", [8 x i8] c"\09\09\08\05\00\00\00\00", [8 x i8] c"\09\08\07\04\00\00\00\00"], [88 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Initial reg0x%x = 0x%lx, cck_index = 0x%x, ch 14 %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cck_tbl_ch1_13 = internal constant { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"65.%\1C\12\09\04", [8 x i8] c"32+#\1A\11\08\04", [8 x i8] c"0/)!\19\10\08\03", [8 x i8] c"--'\1F\18\0F\08\03", [8 x i8] c"+*%\1E\16\0E\07\03", [8 x i8] c"((\22\1C\15\0D\07\03", [8 x i8] c"&%!\1B\14\0D\06\03", [8 x i8] c"$#\1F\19\13\0C\06\03", [8 x i8] c"\22!\1D\18\11\0B\06\02", [8 x i8] c"  \1B\16\11\08\05\02", [8 x i8] c"\1F\1E\1A\15\10\0A\05\02", [8 x i8] c"\1D\1C\18\14\0F\0A\05\02", [8 x i8] c"\1B\1A\17\13\0E\09\04\02", [8 x i8] c"\1A\19\16\12\0D\09\04\02", [8 x i8] c"\18\17\15\11\0C\08\04\02", [8 x i8] c"\17\16\13\10\0C\08\04\02", [8 x i8] c"\16\15\12\0F\0B\07\04\01", [8 x i8] c"\14\14\11\0E\0B\07\03\02", [8 x i8] c"\13\13\10\0D\0A\06\03\01", [8 x i8] c"\12\12\0F\0C\09\06\03\01", [8 x i8] c"\11\11\0F\0C\09\06\03\01", [8 x i8] c"\10\10\0E\0B\08\05\03\01", [8 x i8] c"\0F\0F\0D\0B\08\05\03\01", [8 x i8] c"\0E\0E\0C\0A\08\05\02\01", [8 x i8] c"\0D\0D\0C\0A\07\05\02\01", [8 x i8] c"\0D\0C\0B\09\07\04\02\01", [8 x i8] c"\0C\0C\0A\09\06\04\02\01", [8 x i8] c"\0B\0B\0A\08\06\04\02\01", [8 x i8] c"\0B\0A\09\08\06\04\02\01", [8 x i8] c"\0A\0A\09\07\05\03\02\01", [8 x i8] c"\0A\09\08\07\05\03\02\01", [8 x i8] c"\09\09\08\06\05\03\01\01", [8 x i8] c"\09\08\07\06\04\03\01\01"], [88 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Initial reg0x%x = 0x%lx, cck_index = 0x%x, ch14 %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x delta 0x%x delta_lck 0x%x delta_iqk 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"end\0A\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rtlpriv->dm.txpower_tracking = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"need to update rx idle ant\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RxIdleAnt %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAIN_ANT\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AUX_ANT\00", [24 x i8] zeroinitializer }, align 32
@rtl88e_dm_pwdb_monitor.last_record_txok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rtl88e_dm_pwdb_monitor.last_record_rxok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EntryMaxPWDB = 0x%lx(%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EntryMinPWDB = 0x%lx(%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no link\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CCK cca thresh hold =%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"cnt_parity_fail = %d, cnt_rate_illegal = %d, cnt_crc8_fail = %d, cnt_mcs_fail = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"cnt_ofdm_fail = %x, cnt_cck_fail = %x, cnt_all = %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not connected to any\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"STA Default Port PWDB = 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AP Ext Port PWDB = 0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr = 0x0)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr = 0x10)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TXHIGHPWRLEVEL_NORMAL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PHY_SetTxPowerLevel8192S() Channel = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"driver is going to unload\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"driver does not control rate adaptive mask\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RSSI = %ld\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RSSI_LEVEL = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PreState = %d, CurState = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rtl88e_dm_check_edca_turbo.last_txok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rtl88e_dm_check_edca_turbo.last_rxok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rtl88e_dm_check_edca_turbo.last_bt_edca_ul = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtl88e_dm_check_edca_turbo.last_bt_edca_dl = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No Link\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"need to turn off HW AntDiv\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Need to turn on HW AntDiv\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"main_ant_sum %d main_ant_cnt %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"aux_ant_sum %d aux_ant_cnt %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"main_rssi %d aux_rssi%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"txfrominfo target ant %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"antsel_tr_mux = 3'b%d%d%d\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 693, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1105, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1110, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"delta_swing_table_idx\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 873, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 884, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 891, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"ofdmswing_table\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 15, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 903, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"cck_tbl_ch14\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 97, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 918, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"cck_tbl_ch1_13\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 61, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 930, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 990, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1075, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1090, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1227, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1263, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [21 x i8] c"last_record_txok_cnt\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 713, i32 13 }
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"last_record_rxok_cnt\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 714, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 748, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 756, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 523, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 462, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 418, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 424, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 627, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 640, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 646, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 654, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 661, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 668, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 673, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 679, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1141, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1147, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1183, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1186, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1188, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 695, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 723, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [14 x i8] c"last_txok_cnt\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 779, i32 13 }
@___asan_gen_.187 = private unnamed_addr constant [14 x i8] c"last_rxok_cnt\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 780, i32 13 }
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"last_bt_edca_ul\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 781, i32 13 }
@___asan_gen_.193 = private unnamed_addr constant [16 x i8] c"last_bt_edca_dl\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 782, i32 13 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1702, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1704, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1719, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1467, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1471, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1474, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1283, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1285, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dm_txpower_track_cb_therm.delta_swing_table_idx, ptr @.str.3, ptr @.str.4, ptr @ofdmswing_table, ptr @.str.5, ptr @cck_tbl_ch14, ptr @.str.6, ptr @cck_tbl_ch1_13, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @rtl88e_dm_pwdb_monitor.last_record_txok_cnt, ptr @rtl88e_dm_pwdb_monitor.last_record_rxok_cnt, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @rtl88e_dm_check_edca_turbo.last_txok_cnt, ptr @rtl88e_dm_check_edca_turbo.last_rxok_cnt, ptr @rtl88e_dm_check_edca_turbo.last_bt_edca_ul, ptr @rtl88e_dm_check_edca_turbo.last_bt_edca_dl, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_txpower_track_cb_therm.delta_swing_table_idx to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdmswing_table to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cck_tbl_ch14 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cck_tbl_ch1_13 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_dm_pwdb_monitor.last_record_txok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_dm_pwdb_monitor.last_record_rxok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_dm_check_edca_turbo.last_txok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_dm_check_edca_turbo.last_rxok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_dm_check_edca_turbo.last_bt_edca_ul to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_dm_check_edca_turbo.last_bt_edca_dl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl88e_dm_txpower_track_adjust(ptr nocapture noundef readonly %hw, i8 noundef zeroext %type, ptr nocapture noundef %pdirection, ptr nocapture noundef writeonly %poutwrite_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %swing_idx_cck_base = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 67
  %2 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %swing_idx_cck_base, align 1
  %swing_idx_cck = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 65
  %4 = ptrtoint ptr %swing_idx_cck to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %swing_idx_cck, align 1
  %6 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %entry.if.end46_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then21
  ]

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then:                                          ; preds = %entry
  %swing_idx_ofdm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 61
  %7 = ptrtoint ptr %swing_idx_ofdm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %swing_idx_ofdm, align 1
  %swing_idx_ofdm_base = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63
  %9 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %swing_idx_ofdm_base, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %8)
  %cmp7.not = icmp ult i8 %10, %8
  br i1 %cmp7.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %pdirection, align 1
  %sub = sub i8 %10, %8
  br label %if.end38

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %pdirection, align 1
  %sub15 = sub i8 %10, %8
  br label %if.end38

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp24.not = icmp ugt i8 %5, %3
  br i1 %cmp24.not, label %if.else31, label %if.then26

if.then26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %pdirection, align 1
  %sub29 = sub i8 %3, %5
  br label %if.end38

if.else31:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %pdirection, align 1
  %sub34 = sub i8 %5, %3
  br label %if.end38

if.end38:                                         ; preds = %if.else31, %if.then26, %if.else, %if.then9
  %pwr_val.0 = phi i8 [ %sub, %if.then9 ], [ %sub15, %if.else ], [ %sub29, %if.then26 ], [ %sub34, %if.else31 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %pwr_val.0)
  %cmp40 = icmp ugt i8 %pwr_val.0, 5
  br i1 %cmp40, label %land.lhs.true, label %if.end38.if.end46_crit_edge

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %pdirection to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pdirection, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp43 = icmp eq i8 %16, 1
  %spec.select = select i1 %cmp43, i8 6, i8 %pwr_val.0
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true, %if.end38.if.end46_crit_edge, %entry.if.end46_crit_edge
  %pwr_val.1 = phi i8 [ %pwr_val.0, %if.end38.if.end46_crit_edge ], [ %spec.select, %land.lhs.true ], [ 0, %entry.if.end46_crit_edge ]
  %conv47 = zext i8 %pwr_val.1 to i32
  %or54 = mul nuw i32 %conv47, 16843009
  %17 = ptrtoint ptr %poutwrite_val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or54, ptr %poutwrite_val, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_dm_write_dig(ptr noundef %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cur_igvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 9
  %2 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_igvalue, align 4
  %pre_igvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 8
  %4 = ptrtoint ptr %pre_igvalue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pre_igvalue, align 4
  %back_val = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 21
  %6 = ptrtoint ptr %back_val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %back_val, align 2
  %conv = sext i8 %7 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %5, i32 noundef %conv) #8
  %8 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_igvalue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %9)
  %cmp = icmp ugt i32 %9, 63
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 63, ptr %cur_igvalue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %pre_igvalue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pre_igvalue, align 4
  %13 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_igvalue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp6.not = icmp eq i32 %12, %14
  br i1 %cmp6.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %22(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %14) #8
  %23 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cur_igvalue, align 4
  %25 = ptrtoint ptr %pre_igvalue to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %pre_igvalue, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl88e_dm_init_edca_turbo(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %current_turbo_edca = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 7
  %2 = ptrtoint ptr %current_turbo_edca to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %current_turbo_edca, align 2
  %is_any_nonbepkts = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 8
  %3 = ptrtoint ptr %is_any_nonbepkts to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_any_nonbepkts, align 1
  %is_cur_rdlstate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 9
  %4 = ptrtoint ptr %is_cur_rdlstate to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_cur_rdlstate, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_dm_check_txpower_tracking(ptr noundef %hw) local_unnamed_addr #2 align 64 {
entry:
  %temp_cck.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %txpower_tracking = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 13
  %2 = ptrtoint ptr %txpower_tracking to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txpower_tracking, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tm_trigger = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 27
  %4 = ptrtoint ptr %tm_trigger to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tm_trigger, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %9, i32 0, i32 48
  %10 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %11(ptr noundef %hw, i32 noundef 0, i32 noundef 66, i32 noundef 196608, i32 noundef 3) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.1) #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.2) #8
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_cck.i) #8
  %txpower_trackinginit.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 10
  %14 = ptrtoint ptr %txpower_trackinginit.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %txpower_trackinginit.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dm_txpower_track_cb_therm) #8
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %get_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %20, i32 0, i32 47
  %21 = ptrtoint ptr %get_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_rfreg.i.i, align 4
  %call.i.i = tail call i32 %22(ptr noundef %hw, i32 noundef 0, i32 noundef 66, i32 noundef 64512) #8
  %conv.i = trunc i32 %call.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not.i = icmp eq i8 %conv.i, 0
  br i1 %tobool.not.i, label %if.else.dm_txpower_track_cb_therm.exit_crit_edge, label %if.end.i

if.else.dm_txpower_track_cb_therm.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %dm_txpower_track_cb_therm.exit

if.end.i:                                         ; preds = %if.else
  %conv6.i = and i32 %call.i.i, 255
  %thermalvalue8.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 23
  %23 = ptrtoint ptr %thermalvalue8.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %thermalvalue8.i, align 2
  %conv9.i = zext i8 %24 to i32
  %eeprom_thermalmeter.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 55
  %25 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %eeprom_thermalmeter.i, align 4
  %conv10.i = zext i8 %26 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv6.i, i32 noundef %conv9.i, i32 noundef %conv10.i) #8
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %cfg.i662.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %cfg.i662.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i662.i, align 8
  %ops.i663.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %ops.i663.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i663.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %32, i32 0, i32 45
  %33 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i664.i = tail call i32 %34(ptr noundef %hw, i32 noundef 3200, i32 noundef -1) #8
  %and.i = and i32 %call.i664.i, -4194304
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.0679.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [43 x i32], ptr @ofdmswing_table, i32 0, i32 %i.0679.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %and13.i = and i32 %36, -4194304
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and13.i)
  %cmp14.i = icmp eq i32 %and.i, %and13.i
  br i1 %cmp14.i, label %if.then16.i, label %for.inc.i

if.then16.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv17.i = trunc i32 %i.0679.i to i8
  %swing_idx_ofdm_base.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 63
  %37 = ptrtoint ptr %swing_idx_ofdm_base.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv17.i, ptr %swing_idx_ofdm_base.i, align 2
  %sext656.i = shl i32 %i.0679.i, 24
  %conv22.i = ashr exact i32 %sext656.i, 24
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef 3200, i32 noundef %and.i, i32 noundef %conv22.i) #8
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0679.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 43
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then16.i
  %ofdm_index_old.sroa.0.0.i = phi i8 [ %conv17.i, %if.then16.i ], [ 0, %for.inc.i.for.end.i_crit_edge ]
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %cfg.i666.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 32
  %40 = ptrtoint ptr %cfg.i666.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i666.i, align 8
  %ops.i667.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %ops.i667.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i667.i, align 4
  %get_bbreg.i668.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %43, i32 0, i32 45
  %44 = ptrtoint ptr %get_bbreg.i668.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_bbreg.i668.i, align 4
  %call.i669.i = tail call i32 %45(ptr noundef %hw, i32 noundef 2596, i32 noundef -1) #8
  %and25.i = and i32 %call.i669.i, 1061109567
  %46 = ptrtoint ptr %temp_cck.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and25.i, ptr %temp_cck.i, align 4
  %cck_inch14.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 12
  %47 = ptrtoint ptr %cck_inch14.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cck_inch14.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool31.not.i = icmp eq i8 %48, 0
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.inc63.i.for.body29.i_crit_edge, %for.end.i
  %i.1680.i = phi i32 [ 0, %for.end.i ], [ %inc64.i, %for.inc63.i.for.body29.i_crit_edge ]
  br i1 %tobool31.not.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %for.body29.i
  %arrayidx34.i = getelementptr [33 x [8 x i8]], ptr @cck_tbl_ch14, i32 0, i32 %i.1680.i, i32 2
  %bcmp654.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %temp_cck.i, ptr noundef dereferenceable(4) %arrayidx34.i, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp654.i)
  %cmp36.i = icmp eq i32 %bcmp654.i, 0
  br i1 %cmp36.i, label %if.then38.i, label %if.then32.i.for.inc63.i_crit_edge

if.then32.i.for.inc63.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc63.i

if.then38.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv39.i = trunc i32 %i.1680.i to i8
  %swing_idx_cck_base.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 67
  %49 = ptrtoint ptr %swing_idx_cck_base.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv39.i, ptr %swing_idx_cck_base.i, align 1
  %sext655.i = shl i32 %i.1680.i, 24
  %conv41.i = ashr exact i32 %sext655.i, 24
  %50 = zext i8 %48 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 2596, i32 noundef %and25.i, i32 noundef %conv41.i, i32 noundef %50) #8
  br label %for.end65.i

if.else.i:                                        ; preds = %for.body29.i
  %arrayidx48.i = getelementptr [33 x [8 x i8]], ptr @cck_tbl_ch1_13, i32 0, i32 %i.1680.i, i32 2
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %temp_cck.i, ptr noundef dereferenceable(4) %arrayidx48.i, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp50.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp50.i, label %if.then52.i, label %if.else.i.for.inc63.i_crit_edge

if.else.i.for.inc63.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc63.i

if.then52.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv53.i = trunc i32 %i.1680.i to i8
  %swing_idx_cck_base55.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 67
  %51 = ptrtoint ptr %swing_idx_cck_base55.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv53.i, ptr %swing_idx_cck_base55.i, align 1
  %sext.i = shl i32 %i.1680.i, 24
  %conv56.i = ashr exact i32 %sext.i, 24
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef 2596, i32 noundef %and25.i, i32 noundef %conv56.i, i32 noundef 0) #8
  br label %for.end65.i

for.inc63.i:                                      ; preds = %if.else.i.for.inc63.i_crit_edge, %if.then32.i.for.inc63.i_crit_edge
  %inc64.i = add nuw nsw i32 %i.1680.i, 1
  %exitcond692.not.i = icmp eq i32 %inc64.i, 33
  br i1 %exitcond692.not.i, label %for.inc63.i.for.end65.i_crit_edge, label %for.inc63.i.for.body29.i_crit_edge

for.inc63.i.for.body29.i_crit_edge:               ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body29.i

for.inc63.i.for.end65.i_crit_edge:                ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65.i

for.end65.i:                                      ; preds = %for.inc63.i.for.end65.i_crit_edge, %if.then52.i, %if.then38.i
  %cck_index_old.0.i = phi i8 [ %conv39.i, %if.then38.i ], [ %conv53.i, %if.then52.i ], [ 0, %for.inc63.i.for.end65.i_crit_edge ]
  %52 = ptrtoint ptr %thermalvalue8.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %thermalvalue8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool67.not.i = icmp eq i8 %53, 0
  br i1 %tobool67.not.i, label %if.then68.i, label %for.end65.i.if.end88.i_crit_edge

for.end65.i.if.end88.i_crit_edge:                 ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.i

if.then68.i:                                      ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %eeprom_thermalmeter.i, align 4
  %56 = ptrtoint ptr %thermalvalue8.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %thermalvalue8.i, align 2
  %thermalvalue_lck.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 22
  %57 = ptrtoint ptr %thermalvalue_lck.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i, ptr %thermalvalue_lck.i, align 1
  %thermalvalue_iqk.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 21
  %58 = ptrtoint ptr %thermalvalue_iqk.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i, ptr %thermalvalue_iqk.i, align 4
  %ofdm_index81.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 37
  %59 = ptrtoint ptr %ofdm_index81.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %ofdm_index_old.sroa.0.0.i, ptr %ofdm_index81.i, align 1
  %cck_index87.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 40
  %60 = ptrtoint ptr %cck_index87.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %cck_index_old.0.i, ptr %cck_index87.i, align 1
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then68.i, %for.end65.i.if.end88.i_crit_edge
  %thermalvalue_avg_index.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 26
  %61 = ptrtoint ptr %thermalvalue_avg_index.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %thermalvalue_avg_index.i, align 8
  %idxprom.i = zext i8 %62 to i32
  %arrayidx90.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 %idxprom.i
  %63 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv.i, ptr %arrayidx90.i, align 1
  %64 = load i8, ptr %thermalvalue_avg_index.i, align 8
  %inc92.i = add i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc92.i)
  %cmp95.i = icmp eq i8 %inc92.i, 4
  %spec.select.i = select i1 %cmp95.i, i8 0, i8 %inc92.i
  %65 = ptrtoint ptr %thermalvalue_avg_index.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %spec.select.i, ptr %thermalvalue_avg_index.i, align 8
  %arrayidx105.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 0
  %66 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx105.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool106.not.i = icmp ne i8 %67, 0
  %inc111.i = zext i1 %tobool106.not.i to i8
  %arrayidx105.1.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 1
  %68 = ptrtoint ptr %arrayidx105.1.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx105.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool106.not.1.i = icmp ne i8 %69, 0
  %inc111.1.i = zext i1 %tobool106.not.1.i to i8
  %thermalvalue_avg_count.1.1.i = add nuw nsw i8 %inc111.1.i, %inc111.i
  %arrayidx105.2.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 2
  %70 = ptrtoint ptr %arrayidx105.2.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx105.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool106.not.2.i = icmp ne i8 %71, 0
  %inc111.2.i = zext i1 %tobool106.not.2.i to i8
  %thermalvalue_avg_count.1.2.i = add nuw nsw i8 %thermalvalue_avg_count.1.1.i, %inc111.2.i
  %arrayidx105.3.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 3
  %72 = ptrtoint ptr %arrayidx105.3.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx105.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool106.not.3.i = icmp ne i8 %73, 0
  %inc111.3.i = zext i1 %tobool106.not.3.i to i8
  %thermalvalue_avg_count.1.3.i = add nuw nsw i8 %thermalvalue_avg_count.1.2.i, %inc111.3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %thermalvalue_avg_count.1.3.i)
  %tobool116.not.i = icmp eq i8 %thermalvalue_avg_count.1.3.i, 0
  br i1 %tobool116.not.i, label %if.end88.i.if.end120.i_crit_edge, label %if.then117.i

if.end88.i.if.end120.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120.i

if.then117.i:                                     ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv110.i = zext i8 %67 to i16
  %conv110.1.i = zext i8 %69 to i16
  %thermalvalue_avg.1.1.i = add nuw nsw i16 %conv110.1.i, %conv110.i
  %conv110.2.i = zext i8 %71 to i16
  %thermalvalue_avg.1.2.i = add nuw nsw i16 %thermalvalue_avg.1.1.i, %conv110.2.i
  %conv110.3.i = zext i8 %73 to i16
  %thermalvalue_avg.1.3.i = add nuw nsw i16 %thermalvalue_avg.1.2.i, %conv110.3.i
  %conv118.i = zext i8 %thermalvalue_avg_count.1.3.i to i16
  %div.i = udiv i16 %thermalvalue_avg.1.3.i, %conv118.i
  %conv119.i = trunc i16 %div.i to i8
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then117.i, %if.end88.i.if.end120.i_crit_edge
  %thermalvalue.0.i = phi i8 [ %conv119.i, %if.then117.i ], [ %conv.i, %if.end88.i.if.end120.i_crit_edge ]
  %reloadtxpowerindex.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 62
  %74 = ptrtoint ptr %reloadtxpowerindex.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %reloadtxpowerindex.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool121.not.i = icmp eq i8 %75, 0
  br i1 %tobool121.not.i, label %if.else138.i, label %if.then122.i

if.then122.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %eeprom_thermalmeter.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %77)
  %cmp126.i = icmp ugt i8 %thermalvalue.0.i, %77
  %sub.i = sub i8 %thermalvalue.0.i, %77
  %sub134.i = sub i8 %77, %thermalvalue.0.i
  %cond.i = select i1 %cmp126.i, i8 %sub.i, i8 %sub134.i
  %78 = ptrtoint ptr %reloadtxpowerindex.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %reloadtxpowerindex.i, align 1
  %done_txpower.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 28
  %79 = ptrtoint ptr %done_txpower.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %done_txpower.i, align 2
  br label %if.end184.i

if.else138.i:                                     ; preds = %if.end120.i
  %done_txpower140.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 28
  %80 = ptrtoint ptr %done_txpower140.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %done_txpower140.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool141.not.i = icmp eq i8 %81, 0
  br i1 %tobool141.not.i, label %if.else164.i, label %if.then142.i

if.then142.i:                                     ; preds = %if.else138.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %thermalvalue8.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %thermalvalue8.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %83)
  %cmp147.i = icmp ugt i8 %thermalvalue.0.i, %83
  %sub154.i = sub i8 %thermalvalue.0.i, %83
  %sub160.i = sub i8 %83, %thermalvalue.0.i
  %cond162.i = select i1 %cmp147.i, i8 %sub154.i, i8 %sub160.i
  br label %if.end184.i

if.else164.i:                                     ; preds = %if.else138.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %eeprom_thermalmeter.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %85)
  %cmp168.i = icmp ugt i8 %thermalvalue.0.i, %85
  %sub174.i = sub i8 %thermalvalue.0.i, %85
  %sub179.i = sub i8 %85, %thermalvalue.0.i
  %cond181.i = select i1 %cmp168.i, i8 %sub174.i, i8 %sub179.i
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.else164.i, %if.then142.i, %if.then122.i
  %delta.0.i = phi i8 [ %cond.i, %if.then122.i ], [ %cond162.i, %if.then142.i ], [ %cond181.i, %if.else164.i ]
  %conv185.i = zext i8 %thermalvalue.0.i to i32
  %thermalvalue_lck187.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 22
  %86 = ptrtoint ptr %thermalvalue_lck187.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %thermalvalue_lck187.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %87)
  %cmp189.i = icmp ugt i8 %thermalvalue.0.i, %87
  %sub196.i = sub i8 %thermalvalue.0.i, %87
  %sub202.i = sub i8 %87, %thermalvalue.0.i
  %cond204.i = select i1 %cmp189.i, i8 %sub196.i, i8 %sub202.i
  %thermalvalue_iqk208.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 21
  %88 = ptrtoint ptr %thermalvalue_iqk208.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %thermalvalue_iqk208.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %89)
  %cmp210.i = icmp ugt i8 %thermalvalue.0.i, %89
  %sub217.i = sub i8 %thermalvalue.0.i, %89
  %sub223.i = sub i8 %89, %thermalvalue.0.i
  %cond225.i = select i1 %cmp210.i, i8 %sub217.i, i8 %sub223.i
  %90 = ptrtoint ptr %thermalvalue8.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %thermalvalue8.i, align 2
  %conv230.i = zext i8 %91 to i32
  %92 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %eeprom_thermalmeter.i, align 4
  %conv232.i = zext i8 %93 to i32
  %conv233.i = zext i8 %delta.0.i to i32
  %conv234.i = zext i8 %cond204.i to i32
  %conv235.i = zext i8 %cond225.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %conv185.i, i32 noundef %conv230.i, i32 noundef %conv232.i, i32 noundef %conv233.i, i32 noundef %conv234.i, i32 noundef %conv235.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %cond204.i)
  %cmp237.i = icmp ugt i8 %cond204.i, 7
  br i1 %cmp237.i, label %if.then239.i, label %if.end184.i.if.end242.i_crit_edge

if.end184.i.if.end242.i_crit_edge:                ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end242.i

if.then239.i:                                     ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %thermalvalue_lck187.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %thermalvalue.0.i, ptr %thermalvalue_lck187.i, align 1
  tail call void @rtl88e_phy_lc_calibrate(ptr noundef %hw) #8
  br label %if.end242.i

if.end242.i:                                      ; preds = %if.then239.i, %if.end184.i.if.end242.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %delta.0.i)
  %cmp244.not.i = icmp eq i8 %delta.0.i, 0
  br i1 %cmp244.not.i, label %if.end242.i.if.end444.i_crit_edge, label %land.lhs.true.i

if.end242.i.if.end444.i_crit_edge:                ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end444.i

land.lhs.true.i:                                  ; preds = %if.end242.i
  %txpower_track_control.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 34
  %95 = ptrtoint ptr %txpower_track_control.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %txpower_track_control.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool248.not.i = icmp eq i8 %96, 0
  br i1 %tobool248.not.i, label %land.lhs.true.i.if.end444.i_crit_edge, label %if.then249.i

land.lhs.true.i.if.end444.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end444.i

if.then249.i:                                     ; preds = %land.lhs.true.i
  %97 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %eeprom_thermalmeter.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %98)
  %cmp253.i = icmp ugt i8 %thermalvalue.0.i, %98
  %sub259.i = sub i8 %thermalvalue.0.i, %98
  %sub264.i = sub i8 %98, %thermalvalue.0.i
  %cond266.i = select i1 %cmp253.i, i8 %sub259.i, i8 %sub264.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cond266.i)
  %cmp283.1.i = icmp ult i8 %cond266.i, 2
  br i1 %cmp253.i, label %for.inc292.i, label %for.inc345.i

for.inc292.i:                                     ; preds = %if.then249.i
  br i1 %cmp283.1.i, label %for.inc292.i.for.end294.i_crit_edge, label %for.inc292.1.i

for.inc292.i.for.end294.i_crit_edge:              ; preds = %for.inc292.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end294.i

for.inc292.1.i:                                   ; preds = %for.inc292.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %cond266.i)
  %cmp283.2.i = icmp ult i8 %cond266.i, 4
  br i1 %cmp283.2.i, label %for.inc292.1.i.for.end294.i_crit_edge, label %for.inc292.2.i

for.inc292.1.i.for.end294.i_crit_edge:            ; preds = %for.inc292.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end294.i

for.inc292.2.i:                                   ; preds = %for.inc292.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %cond266.i)
  %cmp283.3.i = icmp ult i8 %cond266.i, 6
  br i1 %cmp283.3.i, label %for.inc292.2.i.for.end294.i_crit_edge, label %for.inc292.3.i

for.inc292.2.i.for.end294.i_crit_edge:            ; preds = %for.inc292.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end294.i

for.inc292.3.i:                                   ; preds = %for.inc292.2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %cond266.i)
  %cmp283.4.i = icmp ult i8 %cond266.i, 8
  br i1 %cmp283.4.i, label %for.inc292.3.i.for.end294.i_crit_edge, label %for.inc292.4.i

for.inc292.3.i.for.end294.i_crit_edge:            ; preds = %for.inc292.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end294.i

for.inc292.4.i:                                   ; preds = %for.inc292.3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %cond266.i)
  %cmp283.5.i = icmp ult i8 %cond266.i, 10
  br i1 %cmp283.5.i, label %for.inc292.4.i.for.end294.i_crit_edge, label %for.inc292.5.i

for.inc292.4.i.for.end294.i_crit_edge:            ; preds = %for.inc292.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end294.i

for.inc292.5.i:                                   ; preds = %for.inc292.4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %cond266.i)
  %cmp283.6.i = icmp ult i8 %cond266.i, 12
  br i1 %cmp283.6.i, label %for.inc292.5.i.for.end294.i_crit_edge, label %for.inc292.6.i

for.inc292.5.i.for.end294.i_crit_edge:            ; preds = %for.inc292.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end294.i

for.inc292.6.i:                                   ; preds = %for.inc292.5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %cond266.i)
  %cmp283.7.i = icmp ult i8 %cond266.i, 14
  br i1 %cmp283.7.i, label %for.inc292.6.i.for.end294.i_crit_edge, label %for.inc292.7.i

for.inc292.6.i.for.end294.i_crit_edge:            ; preds = %for.inc292.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end294.i

for.inc292.7.i:                                   ; preds = %for.inc292.6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %cond266.i)
  %cmp283.8.i = icmp ult i8 %cond266.i, 16
  br i1 %cmp283.8.i, label %for.inc292.7.i.for.end294.i_crit_edge, label %for.inc292.8.i

for.inc292.7.i.for.end294.i_crit_edge:            ; preds = %for.inc292.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end294.i

for.inc292.8.i:                                   ; preds = %for.inc292.7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %cond266.i)
  %cmp283.9.i = icmp ult i8 %cond266.i, 18
  br i1 %cmp283.9.i, label %for.inc292.8.i.for.end294.i_crit_edge, label %for.inc292.9.i

for.inc292.8.i.for.end294.i_crit_edge:            ; preds = %for.inc292.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end294.i

for.inc292.9.i:                                   ; preds = %for.inc292.8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %cond266.i)
  %cmp283.10.i = icmp ult i8 %cond266.i, 20
  br i1 %cmp283.10.i, label %for.inc292.9.i.for.end294.i_crit_edge, label %for.inc292.10.i

for.inc292.9.i.for.end294.i_crit_edge:            ; preds = %for.inc292.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end294.i

for.inc292.10.i:                                  ; preds = %for.inc292.9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %cond266.i)
  %cmp283.11.i = icmp ult i8 %cond266.i, 22
  br i1 %cmp283.11.i, label %for.inc292.10.i.for.end294.i_crit_edge, label %for.inc292.11.i

for.inc292.10.i.for.end294.i_crit_edge:           ; preds = %for.inc292.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end294.i

for.inc292.11.i:                                  ; preds = %for.inc292.10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %cond266.i)
  %cmp283.12.i = icmp ult i8 %cond266.i, 25
  %spec.select699.i = select i1 %cmp283.12.i, i8 11, i8 15
  br label %for.end294.i

for.end294.i:                                     ; preds = %for.inc292.11.i, %for.inc292.10.i.for.end294.i_crit_edge, %for.inc292.9.i.for.end294.i_crit_edge, %for.inc292.8.i.for.end294.i_crit_edge, %for.inc292.7.i.for.end294.i_crit_edge, %for.inc292.6.i.for.end294.i_crit_edge, %for.inc292.5.i.for.end294.i_crit_edge, %for.inc292.4.i.for.end294.i_crit_edge, %for.inc292.3.i.for.end294.i_crit_edge, %for.inc292.2.i.for.end294.i_crit_edge, %for.inc292.1.i.for.end294.i_crit_edge, %for.inc292.i.for.end294.i_crit_edge
  %offset.1.i = phi i8 [ 0, %for.inc292.i.for.end294.i_crit_edge ], [ 1, %for.inc292.1.i.for.end294.i_crit_edge ], [ 2, %for.inc292.2.i.for.end294.i_crit_edge ], [ 3, %for.inc292.3.i.for.end294.i_crit_edge ], [ 4, %for.inc292.4.i.for.end294.i_crit_edge ], [ 5, %for.inc292.5.i.for.end294.i_crit_edge ], [ 6, %for.inc292.6.i.for.end294.i_crit_edge ], [ 7, %for.inc292.7.i.for.end294.i_crit_edge ], [ 8, %for.inc292.8.i.for.end294.i_crit_edge ], [ 9, %for.inc292.9.i.for.end294.i_crit_edge ], [ 10, %for.inc292.10.i.for.end294.i_crit_edge ], [ %spec.select699.i, %for.inc292.11.i ]
  %99 = tail call i8 @llvm.umin.i8(i8 %offset.1.i, i8 14) #8
  %ofdm_index305.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 37
  %100 = ptrtoint ptr %ofdm_index305.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ofdm_index305.i, align 1
  %idxprom308.i = zext i8 %99 to i32
  %arrayidx309.i = getelementptr [2 x [15 x i8]], ptr @dm_txpower_track_cb_therm.delta_swing_table_idx, i32 0, i32 1, i32 %idxprom308.i
  %102 = ptrtoint ptr %arrayidx309.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx309.i, align 1
  %add311.i = add i8 %103, %101
  br label %if.end379.i

for.inc345.i:                                     ; preds = %if.then249.i
  br i1 %cmp283.1.i, label %for.inc345.i.for.end347.i_crit_edge, label %for.inc345.1.i

for.inc345.i.for.end347.i_crit_edge:              ; preds = %for.inc345.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.1.i:                                   ; preds = %for.inc345.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %cond266.i)
  %cmp335.2.i = icmp ult i8 %cond266.i, 4
  br i1 %cmp335.2.i, label %for.inc345.1.i.for.end347.i_crit_edge, label %for.inc345.2.i

for.inc345.1.i.for.end347.i_crit_edge:            ; preds = %for.inc345.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.2.i:                                   ; preds = %for.inc345.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %cond266.i)
  %cmp335.3.i = icmp ult i8 %cond266.i, 6
  br i1 %cmp335.3.i, label %for.inc345.2.i.for.end347.i_crit_edge, label %for.inc345.3.i

for.inc345.2.i.for.end347.i_crit_edge:            ; preds = %for.inc345.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.3.i:                                   ; preds = %for.inc345.2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %cond266.i)
  %cmp335.4.i = icmp ult i8 %cond266.i, 8
  br i1 %cmp335.4.i, label %for.inc345.3.i.for.end347.i_crit_edge, label %for.inc345.4.i

for.inc345.3.i.for.end347.i_crit_edge:            ; preds = %for.inc345.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.4.i:                                   ; preds = %for.inc345.3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %cond266.i)
  %cmp335.5.i = icmp ult i8 %cond266.i, 10
  br i1 %cmp335.5.i, label %for.inc345.4.i.for.end347.i_crit_edge, label %for.inc345.5.i

for.inc345.4.i.for.end347.i_crit_edge:            ; preds = %for.inc345.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.5.i:                                   ; preds = %for.inc345.4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %cond266.i)
  %cmp335.6.i = icmp ult i8 %cond266.i, 12
  br i1 %cmp335.6.i, label %for.inc345.5.i.for.end347.i_crit_edge, label %for.inc345.6.i

for.inc345.5.i.for.end347.i_crit_edge:            ; preds = %for.inc345.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.6.i:                                   ; preds = %for.inc345.5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %cond266.i)
  %cmp335.7.i = icmp ult i8 %cond266.i, 14
  br i1 %cmp335.7.i, label %for.inc345.6.i.for.end347.i_crit_edge, label %for.inc345.7.i

for.inc345.6.i.for.end347.i_crit_edge:            ; preds = %for.inc345.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.7.i:                                   ; preds = %for.inc345.6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %cond266.i)
  %cmp335.8.i = icmp ult i8 %cond266.i, 16
  br i1 %cmp335.8.i, label %for.inc345.7.i.for.end347.i_crit_edge, label %for.inc345.8.i

for.inc345.7.i.for.end347.i_crit_edge:            ; preds = %for.inc345.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.8.i:                                   ; preds = %for.inc345.7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %cond266.i)
  %cmp335.9.i = icmp ult i8 %cond266.i, 18
  br i1 %cmp335.9.i, label %for.inc345.8.i.for.end347.i_crit_edge, label %for.inc345.9.i

for.inc345.8.i.for.end347.i_crit_edge:            ; preds = %for.inc345.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.9.i:                                   ; preds = %for.inc345.8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %cond266.i)
  %cmp335.10.i = icmp ult i8 %cond266.i, 20
  br i1 %cmp335.10.i, label %for.inc345.9.i.for.end347.i_crit_edge, label %for.inc345.10.i

for.inc345.9.i.for.end347.i_crit_edge:            ; preds = %for.inc345.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.10.i:                                  ; preds = %for.inc345.9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %cond266.i)
  %cmp335.11.i = icmp ult i8 %cond266.i, 22
  br i1 %cmp335.11.i, label %for.inc345.10.i.for.end347.i_crit_edge, label %for.inc345.11.i

for.inc345.10.i.for.end347.i_crit_edge:           ; preds = %for.inc345.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.11.i:                                  ; preds = %for.inc345.10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %cond266.i)
  %cmp335.12.i = icmp ult i8 %cond266.i, 24
  br i1 %cmp335.12.i, label %for.inc345.11.i.for.end347.i_crit_edge, label %for.inc345.12.i

for.inc345.11.i.for.end347.i_crit_edge:           ; preds = %for.inc345.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.12.i:                                  ; preds = %for.inc345.11.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %cond266.i)
  %cmp335.13.i = icmp ult i8 %cond266.i, 26
  br i1 %cmp335.13.i, label %for.inc345.12.i.for.end347.i_crit_edge, label %for.inc345.13.i

for.inc345.12.i.for.end347.i_crit_edge:           ; preds = %for.inc345.12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end347.i

for.inc345.13.i:                                  ; preds = %for.inc345.12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %cond266.i)
  %cmp335.14.i = icmp eq i8 %cond266.i, 26
  %spec.select700.i = select i1 %cmp335.14.i, i8 13, i8 15
  br label %for.end347.i

for.end347.i:                                     ; preds = %for.inc345.13.i, %for.inc345.12.i.for.end347.i_crit_edge, %for.inc345.11.i.for.end347.i_crit_edge, %for.inc345.10.i.for.end347.i_crit_edge, %for.inc345.9.i.for.end347.i_crit_edge, %for.inc345.8.i.for.end347.i_crit_edge, %for.inc345.7.i.for.end347.i_crit_edge, %for.inc345.6.i.for.end347.i_crit_edge, %for.inc345.5.i.for.end347.i_crit_edge, %for.inc345.4.i.for.end347.i_crit_edge, %for.inc345.3.i.for.end347.i_crit_edge, %for.inc345.2.i.for.end347.i_crit_edge, %for.inc345.1.i.for.end347.i_crit_edge, %for.inc345.i.for.end347.i_crit_edge
  %offset.4.i = phi i8 [ 0, %for.inc345.i.for.end347.i_crit_edge ], [ 1, %for.inc345.1.i.for.end347.i_crit_edge ], [ 2, %for.inc345.2.i.for.end347.i_crit_edge ], [ 3, %for.inc345.3.i.for.end347.i_crit_edge ], [ 4, %for.inc345.4.i.for.end347.i_crit_edge ], [ 5, %for.inc345.5.i.for.end347.i_crit_edge ], [ 6, %for.inc345.6.i.for.end347.i_crit_edge ], [ 7, %for.inc345.7.i.for.end347.i_crit_edge ], [ 8, %for.inc345.8.i.for.end347.i_crit_edge ], [ 9, %for.inc345.9.i.for.end347.i_crit_edge ], [ 10, %for.inc345.10.i.for.end347.i_crit_edge ], [ 11, %for.inc345.11.i.for.end347.i_crit_edge ], [ 12, %for.inc345.12.i.for.end347.i_crit_edge ], [ %spec.select700.i, %for.inc345.13.i ]
  %104 = tail call i8 @llvm.umin.i8(i8 %offset.4.i, i8 14) #8
  %ofdm_index360.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 37
  %105 = ptrtoint ptr %ofdm_index360.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ofdm_index360.i, align 1
  %idxprom363.i = zext i8 %104 to i32
  %arrayidx364.i = getelementptr [15 x i8], ptr @dm_txpower_track_cb_therm.delta_swing_table_idx, i32 0, i32 %idxprom363.i
  %107 = ptrtoint ptr %arrayidx364.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx364.i, align 1
  %add366.i = add i8 %108, %106
  br label %if.end379.i

if.end379.i:                                      ; preds = %for.end347.i, %for.end294.i
  %.sink701.i = phi i8 [ %108, %for.end347.i ], [ %103, %for.end294.i ]
  %ofdm_index.sroa.0.0.i = phi i8 [ %add366.i, %for.end347.i ], [ %add311.i, %for.end294.i ]
  %cck_index372.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 40
  %109 = ptrtoint ptr %cck_index372.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %cck_index372.i, align 1
  %add377.i = add i8 %110, %.sink701.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %ofdm_index.sroa.0.0.i)
  %cmp387.i = icmp sgt i8 %ofdm_index.sroa.0.0.i, 42
  br i1 %cmp387.i, label %if.end379.i.if.then419.i_crit_edge, label %if.else391.i

if.end379.i.if.then419.i_crit_edge:               ; preds = %if.end379.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then419.i

if.else391.i:                                     ; preds = %if.end379.i
  call void @__sanitizer_cov_trace_pc() #10
  %ofdm_index392.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 37
  %111 = ptrtoint ptr %ofdm_index392.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ofdm_index392.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %112)
  %cmp396.i = icmp slt i8 %112, 6
  %spec.select672.i = select i1 %cmp396.i, i8 6, i8 %ofdm_index.sroa.0.0.i
  br label %if.then419.i

if.then419.i:                                     ; preds = %if.else391.i, %if.end379.i.if.then419.i_crit_edge
  %ofdm_index.sroa.0.1.i = phi i8 [ 42, %if.end379.i.if.then419.i_crit_edge ], [ %spec.select672.i, %if.else391.i ]
  %113 = tail call i8 @llvm.smax.i8(i8 %add377.i, i8 0) #8
  %114 = tail call i8 @llvm.smin.i8(i8 %113, i8 32) #8
  %done_txpower420.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 28
  %115 = ptrtoint ptr %done_txpower420.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %done_txpower420.i, align 2
  %swing_idx_ofdm.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 61
  %116 = ptrtoint ptr %swing_idx_ofdm.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %ofdm_index.sroa.0.1.i, ptr %swing_idx_ofdm.i, align 1
  %swing_idx_cck.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 65
  %117 = ptrtoint ptr %swing_idx_cck.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %114, ptr %swing_idx_cck.i, align 1
  %swing_idx_ofdm_cur.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 62
  %118 = ptrtoint ptr %swing_idx_ofdm_cur.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %swing_idx_ofdm_cur.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %119, i8 %ofdm_index.sroa.0.1.i)
  %cmp427.not.i = icmp eq i8 %119, %ofdm_index.sroa.0.1.i
  br i1 %cmp427.not.i, label %if.then419.i.if.end433.i_crit_edge, label %if.then429.i

if.then419.i.if.end433.i_crit_edge:               ; preds = %if.then419.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end433.i

if.then429.i:                                     ; preds = %if.then419.i
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %swing_idx_ofdm_cur.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %ofdm_index.sroa.0.1.i, ptr %swing_idx_ofdm_cur.i, align 1
  %swing_flag_ofdm.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 64
  %121 = ptrtoint ptr %swing_flag_ofdm.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %swing_flag_ofdm.i, align 2
  br label %if.end433.i

if.end433.i:                                      ; preds = %if.then429.i, %if.then419.i.if.end433.i_crit_edge
  %swing_idx_cck_cur.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 66
  %122 = ptrtoint ptr %swing_idx_cck_cur.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %swing_idx_cck_cur.i, align 4
  %124 = ptrtoint ptr %swing_idx_cck.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %swing_idx_cck.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %123, i8 %125)
  %cmp437.not.i = icmp eq i8 %123, %125
  br i1 %cmp437.not.i, label %if.end433.i.if.end442.i_crit_edge, label %if.then439.i

if.end433.i.if.end442.i_crit_edge:                ; preds = %if.end433.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end442.i

if.then439.i:                                     ; preds = %if.end433.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %swing_idx_cck_cur.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %swing_idx_cck_cur.i, align 4
  %swing_flag_cck.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 68
  %127 = ptrtoint ptr %swing_flag_cck.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %swing_flag_cck.i, align 2
  br label %if.end442.i

if.end442.i:                                      ; preds = %if.then439.i, %if.end433.i.if.end442.i_crit_edge
  %128 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %priv, align 8
  %swing_flag_ofdm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %129, i32 0, i32 15, i32 64
  %130 = ptrtoint ptr %swing_flag_ofdm.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %swing_flag_ofdm.i.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i.i = icmp eq i8 %131, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end442.i.if.then3.i.i_crit_edge

if.end442.i.if.then3.i.i_crit_edge:               ; preds = %if.end442.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i.i

lor.lhs.false.i.i:                                ; preds = %if.end442.i
  %swing_flag_cck.i.i = getelementptr inbounds %struct.rtl_priv, ptr %129, i32 0, i32 15, i32 68
  %132 = ptrtoint ptr %swing_flag_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %swing_flag_cck.i.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool2.not.i.i = icmp eq i8 %133, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.end444.i_crit_edge, label %lor.lhs.false.i.i.if.then3.i.i_crit_edge

lor.lhs.false.i.i.if.then3.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i.i

lor.lhs.false.i.i.if.end444.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end444.i

if.then3.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then3.i.i_crit_edge, %if.end442.i.if.then3.i.i_crit_edge
  %current_channel.i.i = getelementptr inbounds %struct.rtl_priv, ptr %129, i32 0, i32 14, i32 10
  %134 = ptrtoint ptr %current_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %current_channel.i.i, align 1
  tail call void @rtl88e_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %135) #8
  %136 = ptrtoint ptr %swing_flag_ofdm.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %swing_flag_ofdm.i.i, align 2
  %swing_flag_cck5.i.i = getelementptr inbounds %struct.rtl_priv, ptr %129, i32 0, i32 15, i32 68
  %137 = ptrtoint ptr %swing_flag_cck5.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %swing_flag_cck5.i.i, align 2
  br label %if.end444.i

if.end444.i:                                      ; preds = %if.then3.i.i, %lor.lhs.false.i.i.if.end444.i_crit_edge, %land.lhs.true.i.if.end444.i_crit_edge, %if.end242.i.if.end444.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %cond225.i)
  %cmp446.i = icmp ugt i8 %cond225.i, 7
  br i1 %cmp446.i, label %if.then448.i, label %if.end444.i.if.end451.i_crit_edge

if.end444.i.if.end451.i_crit_edge:                ; preds = %if.end444.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end451.i

if.then448.i:                                     ; preds = %if.end444.i
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %thermalvalue_iqk208.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %thermalvalue.0.i, ptr %thermalvalue_iqk208.i, align 4
  tail call void @rtl88e_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext false) #8
  br label %if.end451.i

if.end451.i:                                      ; preds = %if.then448.i, %if.end444.i.if.end451.i_crit_edge
  %txpower_track_control452.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 34
  %139 = ptrtoint ptr %txpower_track_control452.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %txpower_track_control452.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool453.not.i = icmp eq i8 %140, 0
  br i1 %tobool453.not.i, label %if.end451.i.if.end456.i_crit_edge, label %if.then454.i

if.end451.i.if.end456.i_crit_edge:                ; preds = %if.end451.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end456.i

if.then454.i:                                     ; preds = %if.end451.i
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %thermalvalue8.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %thermalvalue.0.i, ptr %thermalvalue8.i, align 2
  br label %if.end456.i

if.end456.i:                                      ; preds = %if.then454.i, %if.end451.i.if.end456.i_crit_edge
  %txpowercount.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 18
  %142 = ptrtoint ptr %txpowercount.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %txpowercount.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.9) #8
  br label %dm_txpower_track_cb_therm.exit

dm_txpower_track_cb_therm.exit:                   ; preds = %if.end456.i, %if.else.dm_txpower_track_cb_therm.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_cck.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %dm_txpower_track_cb_therm.exit, %if.then3
  %.sink = phi i8 [ 0, %dm_txpower_track_cb_therm.exit ], [ 1, %if.then3 ]
  %143 = ptrtoint ptr %tm_trigger to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %.sink, ptr %tm_trigger, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl88e_dm_init_rate_adaptive_mask(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ratr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 1
  %2 = ptrtoint ptr %ratr_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ratr_state, align 1
  %pre_ratr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 21
  %3 = ptrtoint ptr %pre_ratr_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %pre_ratr_state, align 4
  %dm_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 32
  %4 = ptrtoint ptr %dm_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dm_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %spec.select = zext i1 %cmp to i8
  %6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select, ptr %6, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_dm_set_tx_ant_by_tx_info(ptr nocapture noundef readonly %hw, ptr nocapture noundef %pdesc, i32 noundef %mac_id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %antenna_div_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 22
  %2 = ptrtoint ptr %antenna_div_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %antenna_div_type, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %3, label %entry.if.end_crit_edge [
    i8 1, label %entry.if.then_crit_edge
    i8 4, label %entry.if.then_crit_edge30
  ]

entry.if.then_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge30
  %add.ptr.i = getelementptr i32, ptr %pdesc, i32 2
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 9, i32 %mac_id
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %and.i.i = and i32 %6, -2
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  %or.i.i = or i32 %and.i.i, %10
  store i32 %or.i.i, ptr %add.ptr.i, align 4
  %arrayidx8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 10, i32 %mac_id
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %12 to i32
  %and.i.i23 = and i32 %or.i.i, -3
  %13 = shl nuw nsw i32 %conv9, 1
  %14 = and i32 %13, 2
  %or.i.i24 = or i32 %14, %and.i.i23
  store i32 %or.i.i24, ptr %add.ptr.i, align 4
  %add.ptr.i25 = getelementptr i32, ptr %pdesc, i32 7
  %15 = ptrtoint ptr %add.ptr.i25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i25, align 4
  %arrayidx10 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 11, i32 %mac_id
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %18 to i32
  %and.i.i28 = and i32 %16, -33
  %19 = shl nuw nsw i32 %conv11, 5
  %20 = and i32 %19, 32
  %or.i.i29 = or i32 %20, %and.i.i28
  store i32 %or.i.i29, ptr %add.ptr.i25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl88e_dm_ant_sel_statistics(ptr nocapture noundef readonly %hw, i8 noundef zeroext %antsel_tr_mux, i32 noundef %mac_id, i32 noundef %rx_pwdb_all) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %antenna_div_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 22
  %2 = ptrtoint ptr %antenna_div_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %antenna_div_type, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %3, label %entry.if.end37_crit_edge [
    i8 1, label %if.then
    i8 2, label %if.then17
  ]

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %antsel_tr_mux)
  %cmp4 = icmp eq i8 %antsel_tr_mux, 1
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 12, i32 %mac_id
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %rx_pwdb_all
  store i32 %add, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 14, i32 %mac_id
  br label %if.end37.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 13, i32 %mac_id
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx8, align 4
  %add9 = add i32 %8, %rx_pwdb_all
  store i32 %add9, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 15, i32 %mac_id
  br label %if.end37.sink.split

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %antsel_tr_mux)
  %cmp19 = icmp eq i8 %antsel_tr_mux, 0
  br i1 %cmp19, label %if.then21, label %if.else28

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 12, i32 %mac_id
  %9 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %10, %rx_pwdb_all
  store i32 %add24, ptr %arrayidx23, align 4
  %arrayidx26 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 14, i32 %mac_id
  br label %if.end37.sink.split

if.else28:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx30 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 13, i32 %mac_id
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 %12, %rx_pwdb_all
  store i32 %add31, ptr %arrayidx30, align 4
  %arrayidx33 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 15, i32 %mac_id
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.else28, %if.then21, %if.else, %if.then6
  %arrayidx33.sink58 = phi ptr [ %arrayidx33, %if.else28 ], [ %arrayidx26, %if.then21 ], [ %arrayidx7, %if.then6 ], [ %arrayidx10, %if.else ]
  %13 = ptrtoint ptr %arrayidx33.sink58 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx33.sink58, align 4
  %inc34 = add i32 %14, 1
  store i32 %inc34, ptr %arrayidx33.sink58, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_dm_fast_antenna_training_callback(ptr nocapture noundef readonly %t) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1008
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @rtl88e_dm_fast_ant_training(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl88e_dm_fast_ant_training(ptr noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fat_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 7
  %2 = ptrtoint ptr %fat_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fat_state, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 1, label %for.body.preheader
    i8 0, label %if.then63
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 5, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 6, i32 0
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  br label %13

if.end:                                           ; preds = %for.body.preheader
  %arrayidx9 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 4, i32 0
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9, align 4
  %div = udiv i32 %10, %6
  %11 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 6, i32 0
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp16.not = icmp ugt i32 %6, %10
  br i1 %cmp16.not, label %if.end._crit_edge, label %if.end._crit_edge175

if.end._crit_edge175:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %14

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %13

13:                                               ; preds = %if.end._crit_edge, %if.end.thread
  br label %14

14:                                               ; preds = %13, %if.end._crit_edge175
  %div.sink162 = phi i32 [ 0, %13 ], [ %div, %if.end._crit_edge175 ]
  %15 = phi i8 [ 2, %13 ], [ 0, %if.end._crit_edge175 ]
  %arrayidx.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.1 = icmp eq i32 %17, 0
  br i1 %cmp5.1, label %if.then7.1, label %if.else.1

if.else.1:                                        ; preds = %14
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.1, align 4
  %div.1 = udiv i32 %19, %17
  br label %if.end.1

if.then7.1:                                       ; preds = %14
  call void @__sanitizer_cov_trace_pc() #10
  %20 = xor i1 %cmp5, true
  br label %if.end.1

if.end.1:                                         ; preds = %if.then7.1, %if.else.1
  %div.1.sink = phi i32 [ 0, %if.then7.1 ], [ %div.1, %if.else.1 ]
  %bpkt_filter_match.1.off0.1 = phi i1 [ %20, %if.then7.1 ], [ true, %if.else.1 ]
  %21 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 6, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div.1.sink, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1.sink, i32 %div.sink162)
  %cmp16.1 = icmp ugt i32 %div.1.sink, %div.sink162
  %23 = tail call i32 @llvm.umax.i32(i32 %div.1.sink, i32 %div.sink162)
  %spec.select120.1 = select i1 %cmp16.1, i8 1, i8 %15
  %arrayidx.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 5, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp5.2 = icmp eq i32 %25, 0
  br i1 %cmp5.2, label %if.end.1.if.end.2_crit_edge, label %if.else.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2

if.else.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 4, i32 2
  %26 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx9.2, align 4
  %div.2 = udiv i32 %27, %25
  br label %if.end.2

if.end.2:                                         ; preds = %if.else.2, %if.end.1.if.end.2_crit_edge
  %div.2.sink = phi i32 [ %div.2, %if.else.2 ], [ 0, %if.end.1.if.end.2_crit_edge ]
  %bpkt_filter_match.1.off0.2 = phi i1 [ true, %if.else.2 ], [ %bpkt_filter_match.1.off0.1, %if.end.1.if.end.2_crit_edge ]
  %28 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 6, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div.2.sink, ptr %28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2.sink, i32 %23)
  %cmp16.2 = icmp ugt i32 %div.2.sink, %23
  %30 = tail call i32 @llvm.umax.i32(i32 %div.2.sink, i32 %23)
  %spec.select120.2 = select i1 %cmp16.2, i8 2, i8 %spec.select120.1
  %arrayidx.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 5, i32 3
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp5.3 = icmp eq i32 %32, 0
  br i1 %cmp5.3, label %if.end.2.if.end.3_crit_edge, label %if.else.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.3

if.else.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 4, i32 3
  %33 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx9.3, align 4
  %div.3 = udiv i32 %34, %32
  br label %if.end.3

if.end.3:                                         ; preds = %if.else.3, %if.end.2.if.end.3_crit_edge
  %div.3.sink = phi i32 [ %div.3, %if.else.3 ], [ 0, %if.end.2.if.end.3_crit_edge ]
  %bpkt_filter_match.1.off0.3 = phi i1 [ true, %if.else.3 ], [ %bpkt_filter_match.1.off0.2, %if.end.2.if.end.3_crit_edge ]
  %35 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 6, i32 3
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div.3.sink, ptr %35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3.sink, i32 %30)
  %cmp16.3 = icmp ugt i32 %div.3.sink, %30
  %37 = tail call i32 @llvm.umax.i32(i32 %div.3.sink, i32 %30)
  %spec.select120.3 = select i1 %cmp16.3, i8 3, i8 %spec.select120.2
  %arrayidx.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 5, i32 4
  %38 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp5.4 = icmp eq i32 %39, 0
  br i1 %cmp5.4, label %if.end.3.if.end.4_crit_edge, label %if.else.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.4

if.else.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 4, i32 4
  %40 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx9.4, align 4
  %div.4 = udiv i32 %41, %39
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.4, %if.end.3.if.end.4_crit_edge
  %div.4.sink = phi i32 [ %div.4, %if.else.4 ], [ 0, %if.end.3.if.end.4_crit_edge ]
  %bpkt_filter_match.1.off0.4 = phi i1 [ true, %if.else.4 ], [ %bpkt_filter_match.1.off0.3, %if.end.3.if.end.4_crit_edge ]
  %42 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 6, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div.4.sink, ptr %42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.4.sink, i32 %37)
  %cmp16.4 = icmp ugt i32 %div.4.sink, %37
  %44 = tail call i32 @llvm.umax.i32(i32 %div.4.sink, i32 %37)
  %spec.select120.4 = select i1 %cmp16.4, i8 4, i8 %spec.select120.3
  %arrayidx.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 5, i32 5
  %45 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp5.5 = icmp eq i32 %46, 0
  br i1 %cmp5.5, label %if.end.4.if.end.5_crit_edge, label %if.else.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.5

if.else.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 4, i32 5
  %47 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx9.5, align 4
  %div.5 = udiv i32 %48, %46
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.5, %if.end.4.if.end.5_crit_edge
  %div.5.sink = phi i32 [ %div.5, %if.else.5 ], [ 0, %if.end.4.if.end.5_crit_edge ]
  %bpkt_filter_match.1.off0.5 = phi i1 [ true, %if.else.5 ], [ %bpkt_filter_match.1.off0.4, %if.end.4.if.end.5_crit_edge ]
  %49 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 6, i32 5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div.5.sink, ptr %49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.5.sink, i32 %44)
  %cmp16.5 = icmp ugt i32 %div.5.sink, %44
  %51 = tail call i32 @llvm.umax.i32(i32 %div.5.sink, i32 %44)
  %spec.select120.5 = select i1 %cmp16.5, i8 5, i8 %spec.select120.4
  %arrayidx.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 5, i32 6
  %52 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp5.6 = icmp eq i32 %53, 0
  br i1 %cmp5.6, label %if.end.6, label %if.end.6.thread

if.end.6.thread:                                  ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 4, i32 6
  %54 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx9.6, align 4
  %div.6 = udiv i32 %55, %53
  %56 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 6, i32 6
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div.6, ptr %56, align 4
  br label %if.else24

if.end.6:                                         ; preds = %if.end.5
  %58 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 6, i32 6
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %58, align 4
  br i1 %bpkt_filter_match.1.off0.5, label %if.end.6.if.else24_crit_edge, label %if.then23

if.end.6.if.else24_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else24

if.then23:                                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %61, i32 0, i32 32
  %62 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %65, i32 0, i32 46
  %66 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %67(ptr noundef %hw, i32 noundef 3592, i32 noundef 65536, i32 noundef 0) #8
  br label %if.end45.sink.split

if.else24:                                        ; preds = %if.end.6.if.else24_crit_edge, %if.end.6.thread
  %div.6.sink166 = phi i32 [ %div.6, %if.end.6.thread ], [ 0, %if.end.6.if.else24_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div.6.sink166, i32 %51)
  %cmp16.6 = icmp ugt i32 %div.6.sink166, %51
  %spec.select120.6 = select i1 %cmp16.6, i8 6, i8 %spec.select120.5
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 8
  %cfg.i126 = getelementptr inbounds %struct.rtl_priv, ptr %69, i32 0, i32 32
  %70 = ptrtoint ptr %cfg.i126 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i126, align 8
  %ops.i127 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %ops.i127 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i127, align 4
  %set_bbreg.i128 = getelementptr inbounds %struct.rtl_hal_ops, ptr %73, i32 0, i32 46
  %74 = ptrtoint ptr %set_bbreg.i128 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_bbreg.i128, align 4
  tail call void %75(ptr noundef %hw, i32 noundef 3592, i32 noundef 65536, i32 noundef 0) #8
  %conv25 = zext i8 %spec.select120.6 to i32
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 8
  %cfg.i130 = getelementptr inbounds %struct.rtl_priv, ptr %77, i32 0, i32 32
  %78 = ptrtoint ptr %cfg.i130 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i130, align 8
  %ops.i131 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %ops.i131 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i131, align 4
  %set_bbreg.i132 = getelementptr inbounds %struct.rtl_hal_ops, ptr %81, i32 0, i32 46
  %82 = ptrtoint ptr %set_bbreg.i132 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_bbreg.i132, align 4
  tail call void %83(ptr noundef %hw, i32 noundef 2148, i32 noundef 448, i32 noundef %conv25) #8
  %84 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv, align 8
  %cfg.i134 = getelementptr inbounds %struct.rtl_priv, ptr %85, i32 0, i32 32
  %86 = ptrtoint ptr %cfg.i134 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i134, align 8
  %ops.i135 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %ops.i135 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i135, align 4
  %set_bbreg.i136 = getelementptr inbounds %struct.rtl_hal_ops, ptr %89, i32 0, i32 46
  %90 = ptrtoint ptr %set_bbreg.i136 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_bbreg.i136, align 4
  tail call void %91(ptr noundef %hw, i32 noundef 2060, i32 noundef 2097152, i32 noundef 1) #8
  %and = and i8 %spec.select120.6, 1
  %train_idx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 8
  %92 = ptrtoint ptr %train_idx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %train_idx, align 4
  %arrayidx28 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 9, i32 %93
  %94 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %and, ptr %arrayidx28, align 1
  %and30 = lshr i8 %spec.select120.6, 1
  %shr = and i8 %and30, 1
  %95 = load i32, ptr %train_idx, align 4
  %arrayidx33 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 10, i32 %95
  %96 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %shr, ptr %arrayidx33, align 1
  %and35 = lshr i8 %spec.select120.6, 2
  %97 = load i32, ptr %train_idx, align 4
  %arrayidx39 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 11, i32 %97
  %98 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %and35, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select120.6)
  %cmp41 = icmp eq i8 %spec.select120.6, 0
  br i1 %cmp41, label %if.else24.if.end45.sink.split_crit_edge, label %if.else24.if.end45_crit_edge

if.else24.if.end45_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else24.if.end45.sink.split_crit_edge:          ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %if.else24.if.end45.sink.split_crit_edge, %if.then23
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv, align 8
  %cfg.i138 = getelementptr inbounds %struct.rtl_priv, ptr %100, i32 0, i32 32
  %101 = ptrtoint ptr %cfg.i138 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cfg.i138, align 8
  %ops.i139 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %ops.i139 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops.i139, align 4
  %set_bbreg.i140 = getelementptr inbounds %struct.rtl_hal_ops, ptr %104, i32 0, i32 46
  %105 = ptrtoint ptr %set_bbreg.i140 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %set_bbreg.i140, align 4
  tail call void %106(ptr noundef %hw, i32 noundef 3152, i32 noundef 128, i32 noundef 0) #8
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.else24.if.end45_crit_edge
  %arrayidx51 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 4, i32 0
  %107 = ptrtoint ptr %fat_state to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %fat_state, align 4
  %108 = call ptr @memset(ptr %arrayidx51, i32 0, i32 56)
  br label %cleanup

if.then63:                                        ; preds = %entry
  %mac80211.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %109 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp.i = icmp ugt i32 %110, 1
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.then63.rtl88e_set_next_mac_address_target.exit_crit_edge

if.then63.rtl88e_set_next_mac_address_target.exit_crit_edge: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_set_next_mac_address_target.exit

for.cond.preheader.i:                             ; preds = %if.then63
  %train_idx.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 8
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %entry_list_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 8
  %entry_list.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc87.i.for.body.i_crit_edge, %for.cond.preheader.i
  %j.0140.i = phi i32 [ 0, %for.cond.preheader.i ], [ %j.3.i, %for.inc87.i.for.body.i_crit_edge ]
  %i.0139.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc88.i, %for.inc87.i.for.body.i_crit_edge ]
  %111 = ptrtoint ptr %train_idx.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %train_idx.i, align 4
  %add.i = add i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add.i)
  %cmp4.i = icmp eq i32 %add.i, 33
  %.add.i = select i1 %cmp4.i, i32 0, i32 %add.i
  %113 = ptrtoint ptr %train_idx.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %.add.i, ptr %train_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.add.i)
  %cmp9.i = icmp eq i32 %.add.i, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.end32.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 5
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %115 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx12.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 4
  %116 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx12.i, align 4
  %conv13.i = zext i8 %117 to i32
  %or.i = or i32 %shl.i, %conv13.i
  %118 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %119, i32 0, i32 32
  %120 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %123, i32 0, i32 46
  %124 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %125(ptr noundef %hw, i32 noundef 1972, i32 noundef 65535, i32 noundef %or.i) #8
  %arrayidx15.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 3
  %126 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %127 to i32
  %shl17.i = shl nuw i32 %conv16.i, 24
  %arrayidx19.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %128 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx19.i, align 2
  %conv20.i = zext i8 %129 to i32
  %shl21.i = shl nuw nsw i32 %conv20.i, 16
  %or22.i = or i32 %shl21.i, %shl17.i
  %arrayidx24.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 1
  %130 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %131 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 8
  %or27.i = or i32 %or22.i, %shl26.i
  %132 = ptrtoint ptr %mac80211.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %mac80211.i, align 8
  %conv30.i = zext i8 %133 to i32
  %or31.i = or i32 %or27.i, %conv30.i
  %134 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %priv, align 8
  %cfg.i126.i = getelementptr inbounds %struct.rtl_priv, ptr %135, i32 0, i32 32
  %136 = ptrtoint ptr %cfg.i126.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cfg.i126.i, align 8
  %ops.i127.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %ops.i127.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ops.i127.i, align 4
  %set_bbreg.i128.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %139, i32 0, i32 46
  %140 = ptrtoint ptr %set_bbreg.i128.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %set_bbreg.i128.i, align 4
  tail call void %141(ptr noundef %hw, i32 noundef 1968, i32 noundef -1, i32 noundef %or31.i) #8
  br label %rtl88e_set_next_mac_address_target.exit

if.end32.i:                                       ; preds = %for.body.i
  %142 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %143)
  %cmp34.not.i = icmp eq i32 %143, 2
  br i1 %cmp34.not.i, label %if.end32.i.for.inc87.i_crit_edge, label %if.then36.i

if.end32.i.for.inc87.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc87.i

if.then36.i:                                      ; preds = %if.end32.i
  tail call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock.i) #8
  br label %for.cond37.i

for.cond37.i:                                     ; preds = %for.body41.i.for.cond37.i_crit_edge, %if.then36.i
  %j.1.i = phi i32 [ %j.0140.i, %if.then36.i ], [ %inc42.i, %for.body41.i.for.cond37.i_crit_edge ]
  %drv_priv.0.in.i = phi ptr [ %entry_list.i, %if.then36.i ], [ %drv_priv.0.i, %for.body41.i.for.cond37.i_crit_edge ]
  %144 = ptrtoint ptr %drv_priv.0.in.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %drv_priv.0.i = load ptr, ptr %drv_priv.0.in.i, align 1
  %cmp39.not.i = icmp eq ptr %drv_priv.0.i, %entry_list.i
  br i1 %cmp39.not.i, label %for.cond37.i.for.end.i_crit_edge, label %for.body41.i

for.cond37.i.for.end.i_crit_edge:                 ; preds = %for.cond37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body41.i:                                     ; preds = %for.cond37.i
  %inc42.i = add i32 %j.1.i, 1
  %145 = ptrtoint ptr %train_idx.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %train_idx.i, align 4
  %cmp44.not.i = icmp eq i32 %inc42.i, %146
  br i1 %cmp44.not.i, label %if.end47.i, label %for.body41.i.for.cond37.i_crit_edge

for.body41.i.for.cond37.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond37.i

if.end47.i:                                       ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  %mac_addr48.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.0.i, i32 0, i32 7
  %arrayidx49.i = getelementptr %struct.rtl_sta_info, ptr %drv_priv.0.i, i32 0, i32 7, i32 5
  %147 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx49.i, align 1
  %conv50.i = zext i8 %148 to i32
  %shl51.i = shl nuw nsw i32 %conv50.i, 8
  %arrayidx53.i = getelementptr %struct.rtl_sta_info, ptr %drv_priv.0.i, i32 0, i32 7, i32 4
  %149 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %150 to i32
  %or55.i = or i32 %shl51.i, %conv54.i
  %151 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %priv, align 8
  %cfg.i130.i = getelementptr inbounds %struct.rtl_priv, ptr %152, i32 0, i32 32
  %153 = ptrtoint ptr %cfg.i130.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cfg.i130.i, align 8
  %ops.i131.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %ops.i131.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ops.i131.i, align 4
  %set_bbreg.i132.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %156, i32 0, i32 46
  %157 = ptrtoint ptr %set_bbreg.i132.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %set_bbreg.i132.i, align 4
  tail call void %158(ptr noundef %hw, i32 noundef 1972, i32 noundef 65535, i32 noundef %or55.i) #8
  %arrayidx57.i = getelementptr %struct.rtl_sta_info, ptr %drv_priv.0.i, i32 0, i32 7, i32 3
  %159 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx57.i, align 1
  %conv58.i = zext i8 %160 to i32
  %shl59.i = shl nuw i32 %conv58.i, 24
  %arrayidx61.i = getelementptr %struct.rtl_sta_info, ptr %drv_priv.0.i, i32 0, i32 7, i32 2
  %161 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx61.i, align 1
  %conv62.i = zext i8 %162 to i32
  %shl63.i = shl nuw nsw i32 %conv62.i, 16
  %or64.i = or i32 %shl63.i, %shl59.i
  %arrayidx66.i = getelementptr %struct.rtl_sta_info, ptr %drv_priv.0.i, i32 0, i32 7, i32 1
  %163 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx66.i, align 1
  %conv67.i = zext i8 %164 to i32
  %shl68.i = shl nuw nsw i32 %conv67.i, 8
  %or69.i = or i32 %or64.i, %shl68.i
  %165 = ptrtoint ptr %mac_addr48.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %mac_addr48.i, align 1
  %conv72.i = zext i8 %166 to i32
  %or73.i = or i32 %or69.i, %conv72.i
  %167 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %priv, align 8
  %cfg.i134.i = getelementptr inbounds %struct.rtl_priv, ptr %168, i32 0, i32 32
  %169 = ptrtoint ptr %cfg.i134.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cfg.i134.i, align 8
  %ops.i135.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %ops.i135.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ops.i135.i, align 4
  %set_bbreg.i136.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %172, i32 0, i32 46
  %173 = ptrtoint ptr %set_bbreg.i136.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %set_bbreg.i136.i, align 4
  tail call void %174(ptr noundef %hw, i32 noundef 1968, i32 noundef -1, i32 noundef %or73.i) #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end47.i, %for.cond37.i.for.end.i_crit_edge
  %j.2.i = phi i32 [ %inc42.i, %if.end47.i ], [ %j.1.i, %for.cond37.i.for.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i) #8
  %175 = ptrtoint ptr %train_idx.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %train_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2.i, i32 %176)
  %cmp82.i = icmp eq i32 %j.2.i, %176
  br i1 %cmp82.i, label %for.end.i.rtl88e_set_next_mac_address_target.exit_crit_edge, label %for.end.i.for.inc87.i_crit_edge

for.end.i.for.inc87.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc87.i

for.end.i.rtl88e_set_next_mac_address_target.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_set_next_mac_address_target.exit

for.inc87.i:                                      ; preds = %for.end.i.for.inc87.i_crit_edge, %if.end32.i.for.inc87.i_crit_edge
  %j.3.i = phi i32 [ %j.2.i, %for.end.i.for.inc87.i_crit_edge ], [ %j.0140.i, %if.end32.i.for.inc87.i_crit_edge ]
  %inc88.i = add nuw nsw i32 %i.0139.i, 1
  %exitcond.not.i = icmp eq i32 %inc88.i, 33
  br i1 %exitcond.not.i, label %for.inc87.i.rtl88e_set_next_mac_address_target.exit_crit_edge, label %for.inc87.i.for.body.i_crit_edge

for.inc87.i.for.body.i_crit_edge:                 ; preds = %for.inc87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc87.i.rtl88e_set_next_mac_address_target.exit_crit_edge: ; preds = %for.inc87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_set_next_mac_address_target.exit

rtl88e_set_next_mac_address_target.exit:          ; preds = %for.inc87.i.rtl88e_set_next_mac_address_target.exit_crit_edge, %for.end.i.rtl88e_set_next_mac_address_target.exit_crit_edge, %if.then10.i, %if.then63.rtl88e_set_next_mac_address_target.exit_crit_edge
  %177 = ptrtoint ptr %fat_state to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %fat_state, align 4
  %178 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %priv, align 8
  %cfg.i143 = getelementptr inbounds %struct.rtl_priv, ptr %179, i32 0, i32 32
  %180 = ptrtoint ptr %cfg.i143 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cfg.i143, align 8
  %ops.i144 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %181, i32 0, i32 4
  %182 = ptrtoint ptr %ops.i144 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ops.i144, align 4
  %set_bbreg.i145 = getelementptr inbounds %struct.rtl_hal_ops, ptr %183, i32 0, i32 46
  %184 = ptrtoint ptr %set_bbreg.i145 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %set_bbreg.i145, align 4
  tail call void %185(ptr noundef %hw, i32 noundef 3592, i32 noundef 65536, i32 noundef 1) #8
  %186 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %priv, align 8
  %cfg.i147 = getelementptr inbounds %struct.rtl_priv, ptr %187, i32 0, i32 32
  %188 = ptrtoint ptr %cfg.i147 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cfg.i147, align 8
  %ops.i148 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %189, i32 0, i32 4
  %190 = ptrtoint ptr %ops.i148 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ops.i148, align 4
  %set_bbreg.i149 = getelementptr inbounds %struct.rtl_hal_ops, ptr %191, i32 0, i32 46
  %192 = ptrtoint ptr %set_bbreg.i149 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %set_bbreg.i149, align 4
  tail call void %193(ptr noundef %hw, i32 noundef 3152, i32 noundef 128, i32 noundef 1) #8
  %fast_antenna_training_timer = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %194 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %194, 200
  %call65 = tail call i32 @mod_timer(ptr noundef %fast_antenna_training_timer, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %rtl88e_set_next_mac_address_target.exit, %if.end45, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_dm_init(ptr noundef %hw) local_unnamed_addr #2 align 64 {
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
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 3152, i32 noundef 127) #8
  %dm_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 32
  %8 = ptrtoint ptr %dm_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %dm_type, align 2
  tail call void @rtl_dm_diginit(ptr noundef %hw, i32 noundef %call.i) #8
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %dynamic_txpower_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 15, i32 6
  %11 = ptrtoint ptr %dynamic_txpower_enable.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %dynamic_txpower_enable.i, align 1
  %last_dtp_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 15, i32 24
  %12 = ptrtoint ptr %last_dtp_lvl.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %last_dtp_lvl.i, align 1
  %dynamic_txhighpower_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 15, i32 29
  %13 = ptrtoint ptr %dynamic_txhighpower_lvl.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %dynamic_txhighpower_lvl.i, align 1
  %14 = load ptr, ptr %priv, align 8
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 15, i32 7
  %15 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %current_turbo_edca.i, align 2
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 15, i32 8
  %16 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %is_any_nonbepkts.i, align 1
  %is_cur_rdlstate.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 15, i32 9
  %17 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_cur_rdlstate.i, align 8
  %18 = load ptr, ptr %priv, align 8
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 22, i32 1
  %19 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ratr_state.i, align 1
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 22, i32 21
  %20 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %pre_ratr_state.i, align 4
  %dm_type.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 15, i32 32
  %21 = ptrtoint ptr %dm_type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dm_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp.i = icmp eq i8 %22, 1
  %spec.select.i = zext i1 %cmp.i to i8
  %23 = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 15, i32 14
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select.i, ptr %23, align 1
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %txpower_tracking.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 15, i32 13
  %27 = ptrtoint ptr %txpower_tracking.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %txpower_tracking.i, align 4
  %txpower_trackinginit.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 15, i32 10
  %28 = ptrtoint ptr %txpower_trackinginit.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %txpower_trackinginit.i, align 1
  %txpowercount.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 15, i32 18
  %29 = ptrtoint ptr %txpowercount.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %txpowercount.i, align 4
  %txpower_track_control.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 15, i32 34
  %30 = ptrtoint ptr %txpower_track_control.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %txpower_track_control.i, align 8
  %swing_idx_ofdm.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 15, i32 61
  %31 = ptrtoint ptr %swing_idx_ofdm.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 12, ptr %swing_idx_ofdm.i, align 1
  %swing_idx_ofdm_cur.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 15, i32 62
  %32 = ptrtoint ptr %swing_idx_ofdm_cur.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 12, ptr %swing_idx_ofdm_cur.i, align 1
  %swing_flag_ofdm.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 15, i32 64
  %33 = ptrtoint ptr %swing_flag_ofdm.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %swing_flag_ofdm.i, align 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef 1) #8
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  %dm_pstable1.i = getelementptr inbounds %struct.rtl_priv, ptr %35, i32 0, i32 36
  %rssi_val_min.i = getelementptr inbounds %struct.rtl_priv, ptr %35, i32 0, i32 36, i32 5
  %36 = ptrtoint ptr %dm_pstable1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 33686018, ptr %dm_pstable1.i, align 4
  %37 = ptrtoint ptr %rssi_val_min.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rssi_val_min.i, align 4
  %38 = load ptr, ptr %priv, align 8
  %antenna_div_type.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 17, i32 22
  %39 = ptrtoint ptr %antenna_div_type.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %antenna_div_type.i, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %40, label %entry.rtl88e_dm_antenna_div_init.exit_crit_edge [
    i8 2, label %if.then.i
    i8 1, label %if.then6.i
    i8 4, label %if.then12.i
  ]

entry.rtl88e_dm_antenna_div_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_antenna_div_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %42 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i.i, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %45, i32 0, i32 45
  %46 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i = tail call i32 %47(ptr noundef %hw, i32 noundef 76, i32 noundef -1) #8
  %or.i.i = or i32 %call.i.i.i, 41943040
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  %cfg.i12.i.i = getelementptr inbounds %struct.rtl_priv, ptr %49, i32 0, i32 32
  %50 = ptrtoint ptr %cfg.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i12.i.i, align 8
  %ops.i13.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ops.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i13.i.i, align 4
  %set_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %53, i32 0, i32 46
  %54 = ptrtoint ptr %set_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_bbreg.i.i.i, align 4
  tail call void %55(ptr noundef %hw, i32 noundef 76, i32 noundef -1, i32 noundef %or.i.i) #8
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 8
  %cfg.i15.i.i = getelementptr inbounds %struct.rtl_priv, ptr %57, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i15.i.i, align 8
  %ops.i16.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %ops.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i16.i.i, align 4
  %set_bbreg.i17.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %61, i32 0, i32 46
  %62 = ptrtoint ptr %set_bbreg.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_bbreg.i17.i.i, align 4
  tail call void %63(ptr noundef %hw, i32 noundef 2160, i32 noundef 768, i32 noundef 0) #8
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 8
  %cfg.i19.i.i = getelementptr inbounds %struct.rtl_priv, ptr %65, i32 0, i32 32
  %66 = ptrtoint ptr %cfg.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg.i19.i.i, align 8
  %ops.i20.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %ops.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i20.i.i, align 4
  %set_bbreg.i21.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %69, i32 0, i32 46
  %70 = ptrtoint ptr %set_bbreg.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_bbreg.i21.i.i, align 4
  tail call void %71(ptr noundef %hw, i32 noundef 2148, i32 noundef 1024, i32 noundef 0) #8
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 8
  %cfg.i23.i.i = getelementptr inbounds %struct.rtl_priv, ptr %73, i32 0, i32 32
  %74 = ptrtoint ptr %cfg.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cfg.i23.i.i, align 8
  %ops.i24.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %ops.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i24.i.i, align 4
  %set_bbreg.i25.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %77, i32 0, i32 46
  %78 = ptrtoint ptr %set_bbreg.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_bbreg.i25.i.i, align 4
  tail call void %79(ptr noundef %hw, i32 noundef 2860, i32 noundef 4194304, i32 noundef 1) #8
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 8
  %cfg.i27.i.i = getelementptr inbounds %struct.rtl_priv, ptr %81, i32 0, i32 32
  %82 = ptrtoint ptr %cfg.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfg.i27.i.i, align 8
  %ops.i28.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %ops.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i28.i.i, align 4
  %set_bbreg.i29.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %85, i32 0, i32 46
  %86 = ptrtoint ptr %set_bbreg.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %set_bbreg.i29.i.i, align 4
  tail call void %87(ptr noundef %hw, i32 noundef 2860, i32 noundef -2147483648, i32 noundef 1) #8
  %88 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv, align 8
  %cfg.i31.i.i = getelementptr inbounds %struct.rtl_priv, ptr %89, i32 0, i32 32
  %90 = ptrtoint ptr %cfg.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cfg.i31.i.i, align 8
  %ops.i32.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %ops.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i32.i.i, align 4
  %set_bbreg.i33.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %93, i32 0, i32 46
  %94 = ptrtoint ptr %set_bbreg.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_bbreg.i33.i.i, align 4
  tail call void %95(ptr noundef %hw, i32 noundef 3236, i32 noundef -1, i32 noundef 160) #8
  %96 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %priv, align 8
  %cfg.i35.i.i = getelementptr inbounds %struct.rtl_priv, ptr %97, i32 0, i32 32
  %98 = ptrtoint ptr %cfg.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cfg.i35.i.i, align 8
  %ops.i36.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %ops.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i36.i.i, align 4
  %set_bbreg.i37.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %101, i32 0, i32 46
  %102 = ptrtoint ptr %set_bbreg.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %set_bbreg.i37.i.i, align 4
  tail call void %103(ptr noundef %hw, i32 noundef 2676, i32 noundef 128, i32 noundef 1) #8
  %104 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %priv, align 8
  %cfg.i39.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 32
  %106 = ptrtoint ptr %cfg.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cfg.i39.i.i, align 8
  %ops.i40.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %ops.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ops.i40.i.i, align 4
  %set_bbreg.i41.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %109, i32 0, i32 46
  %110 = ptrtoint ptr %set_bbreg.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %set_bbreg.i41.i.i, align 4
  tail call void %111(ptr noundef %hw, i32 noundef 2572, i32 noundef 16, i32 noundef 1) #8
  tail call fastcc void @rtl88e_dm_update_rx_idle_ant(ptr noundef %hw, i8 noundef zeroext 0) #8
  %112 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %priv, align 8
  %cfg.i43.i.i = getelementptr inbounds %struct.rtl_priv, ptr %113, i32 0, i32 32
  %114 = ptrtoint ptr %cfg.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i43.i.i, align 8
  %ops.i44.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %ops.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ops.i44.i.i, align 4
  %set_bbreg.i45.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %117, i32 0, i32 46
  %118 = ptrtoint ptr %set_bbreg.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %set_bbreg.i45.i.i, align 4
  tail call void %119(ptr noundef %hw, i32 noundef 2324, i32 noundef 65535, i32 noundef 513) #8
  br label %rtl88e_dm_antenna_div_init.exit

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i.i21.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %120 = ptrtoint ptr %cfg.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cfg.i.i21.i, align 8
  %ops.i.i22.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %ops.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops.i.i22.i, align 4
  %get_bbreg.i.i23.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %123, i32 0, i32 45
  %124 = ptrtoint ptr %get_bbreg.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %get_bbreg.i.i23.i, align 4
  %call.i.i24.i = tail call i32 %125(ptr noundef %hw, i32 noundef 76, i32 noundef -1) #8
  %or.i25.i = or i32 %call.i.i24.i, 41943040
  %126 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %priv, align 8
  %cfg.i13.i.i = getelementptr inbounds %struct.rtl_priv, ptr %127, i32 0, i32 32
  %128 = ptrtoint ptr %cfg.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cfg.i13.i.i, align 8
  %ops.i14.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %129, i32 0, i32 4
  %130 = ptrtoint ptr %ops.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ops.i14.i.i, align 4
  %set_bbreg.i.i26.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %131, i32 0, i32 46
  %132 = ptrtoint ptr %set_bbreg.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %set_bbreg.i.i26.i, align 4
  tail call void %133(ptr noundef %hw, i32 noundef 76, i32 noundef -1, i32 noundef %or.i25.i) #8
  %134 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %priv, align 8
  %cfg.i16.i.i = getelementptr inbounds %struct.rtl_priv, ptr %135, i32 0, i32 32
  %136 = ptrtoint ptr %cfg.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cfg.i16.i.i, align 8
  %ops.i17.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %ops.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ops.i17.i.i, align 4
  %set_bbreg.i18.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %139, i32 0, i32 46
  %140 = ptrtoint ptr %set_bbreg.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %set_bbreg.i18.i.i, align 4
  tail call void %141(ptr noundef %hw, i32 noundef 2160, i32 noundef 768, i32 noundef 0) #8
  %142 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %priv, align 8
  %cfg.i20.i.i = getelementptr inbounds %struct.rtl_priv, ptr %143, i32 0, i32 32
  %144 = ptrtoint ptr %cfg.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cfg.i20.i.i, align 8
  %ops.i21.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %ops.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ops.i21.i.i, align 4
  %set_bbreg.i22.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %147, i32 0, i32 46
  %148 = ptrtoint ptr %set_bbreg.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %set_bbreg.i22.i.i, align 4
  tail call void %149(ptr noundef %hw, i32 noundef 2148, i32 noundef 1024, i32 noundef 0) #8
  %150 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv, align 8
  %cfg.i24.i.i = getelementptr inbounds %struct.rtl_priv, ptr %151, i32 0, i32 32
  %152 = ptrtoint ptr %cfg.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cfg.i24.i.i, align 8
  %ops.i25.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %153, i32 0, i32 4
  %154 = ptrtoint ptr %ops.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ops.i25.i.i, align 4
  %set_bbreg.i26.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %155, i32 0, i32 46
  %156 = ptrtoint ptr %set_bbreg.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %set_bbreg.i26.i.i, align 4
  tail call void %157(ptr noundef %hw, i32 noundef 2860, i32 noundef 4194304, i32 noundef 0) #8
  %158 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %priv, align 8
  %cfg.i28.i.i = getelementptr inbounds %struct.rtl_priv, ptr %159, i32 0, i32 32
  %160 = ptrtoint ptr %cfg.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cfg.i28.i.i, align 8
  %ops.i29.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %ops.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ops.i29.i.i, align 4
  %set_bbreg.i30.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %163, i32 0, i32 46
  %164 = ptrtoint ptr %set_bbreg.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %set_bbreg.i30.i.i, align 4
  tail call void %165(ptr noundef %hw, i32 noundef 2860, i32 noundef -2147483648, i32 noundef 1) #8
  %166 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %priv, align 8
  %cfg.i32.i.i = getelementptr inbounds %struct.rtl_priv, ptr %167, i32 0, i32 32
  %168 = ptrtoint ptr %cfg.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %cfg.i32.i.i, align 8
  %ops.i33.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %ops.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ops.i33.i.i, align 4
  %set_bbreg.i34.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %171, i32 0, i32 46
  %172 = ptrtoint ptr %set_bbreg.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %set_bbreg.i34.i.i, align 4
  tail call void %173(ptr noundef %hw, i32 noundef 3236, i32 noundef -1, i32 noundef 160) #8
  %174 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %priv, align 8
  %cfg.i36.i.i = getelementptr inbounds %struct.rtl_priv, ptr %175, i32 0, i32 32
  %176 = ptrtoint ptr %cfg.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cfg.i36.i.i, align 8
  %ops.i37.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %177, i32 0, i32 4
  %178 = ptrtoint ptr %ops.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ops.i37.i.i, align 4
  %set_bbreg.i38.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %179, i32 0, i32 46
  %180 = ptrtoint ptr %set_bbreg.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %set_bbreg.i38.i.i, align 4
  tail call void %181(ptr noundef %hw, i32 noundef 2676, i32 noundef 128, i32 noundef 1) #8
  %182 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %priv, align 8
  %cfg.i40.i.i = getelementptr inbounds %struct.rtl_priv, ptr %183, i32 0, i32 32
  %184 = ptrtoint ptr %cfg.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cfg.i40.i.i, align 8
  %ops.i41.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %185, i32 0, i32 4
  %186 = ptrtoint ptr %ops.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ops.i41.i.i, align 4
  %set_bbreg.i42.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %187, i32 0, i32 46
  %188 = ptrtoint ptr %set_bbreg.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %set_bbreg.i42.i.i, align 4
  tail call void %189(ptr noundef %hw, i32 noundef 2572, i32 noundef 16, i32 noundef 1) #8
  %190 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %priv, align 8
  %cfg.i44.i.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 32
  %192 = ptrtoint ptr %cfg.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cfg.i44.i.i, align 8
  %ops.i45.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %ops.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ops.i45.i.i, align 4
  %set_bbreg.i46.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %195, i32 0, i32 46
  %196 = ptrtoint ptr %set_bbreg.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %set_bbreg.i46.i.i, align 4
  tail call void %197(ptr noundef %hw, i32 noundef 2060, i32 noundef 2097152, i32 noundef 0) #8
  tail call fastcc void @rtl88e_dm_update_rx_idle_ant(ptr noundef %hw, i8 noundef zeroext 0) #8
  %198 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %priv, align 8
  %cfg.i48.i.i = getelementptr inbounds %struct.rtl_priv, ptr %199, i32 0, i32 32
  %200 = ptrtoint ptr %cfg.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %cfg.i48.i.i, align 8
  %ops.i49.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %201, i32 0, i32 4
  %202 = ptrtoint ptr %ops.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ops.i49.i.i, align 4
  %set_bbreg.i50.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %203, i32 0, i32 46
  %204 = ptrtoint ptr %set_bbreg.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %set_bbreg.i50.i.i, align 4
  tail call void %205(ptr noundef %hw, i32 noundef 2324, i32 noundef 65535, i32 noundef 513) #8
  br label %rtl88e_dm_antenna_div_init.exit

if.then12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fat_table.i.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 15, i32 72
  %arrayidx1.i.i = getelementptr %struct.rtl_priv, ptr %38, i32 0, i32 15, i32 72, i32 4, i32 0
  %arrayidx2.i.i = getelementptr %struct.rtl_priv, ptr %38, i32 0, i32 15, i32 72, i32 5, i32 0
  %arrayidx3.i.i = getelementptr %struct.rtl_priv, ptr %38, i32 0, i32 15, i32 72, i32 6, i32 0
  %train_idx.i.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 15, i32 72, i32 8
  %206 = ptrtoint ptr %train_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %train_idx.i.i, align 4
  %fat_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 15, i32 72, i32 7
  %207 = ptrtoint ptr %fat_state.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %fat_state.i.i, align 4
  %208 = call ptr @memset(ptr %fat_table.i.i, i32 0, i32 6)
  %209 = call ptr @memset(ptr %arrayidx1.i.i, i32 0, i32 24)
  %210 = call ptr @memset(ptr %arrayidx2.i.i, i32 0, i32 24)
  %211 = call ptr @memset(ptr %arrayidx3.i.i, i32 0, i32 24)
  %212 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %priv, align 8
  %cfg.i.i27.i = getelementptr inbounds %struct.rtl_priv, ptr %213, i32 0, i32 32
  %214 = ptrtoint ptr %cfg.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cfg.i.i27.i, align 8
  %ops.i.i28.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %215, i32 0, i32 4
  %216 = ptrtoint ptr %ops.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ops.i.i28.i, align 4
  %get_bbreg.i.i29.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %217, i32 0, i32 45
  %218 = ptrtoint ptr %get_bbreg.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %get_bbreg.i.i29.i, align 4
  %call.i.i30.i = tail call i32 %219(ptr noundef %hw, i32 noundef 76, i32 noundef -1) #8
  %or.i31.i = or i32 %call.i.i30.i, 41943040
  %220 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %priv, align 8
  %cfg.i36.i32.i = getelementptr inbounds %struct.rtl_priv, ptr %221, i32 0, i32 32
  %222 = ptrtoint ptr %cfg.i36.i32.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cfg.i36.i32.i, align 8
  %ops.i37.i33.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %223, i32 0, i32 4
  %224 = ptrtoint ptr %ops.i37.i33.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ops.i37.i33.i, align 4
  %set_bbreg.i.i34.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %225, i32 0, i32 46
  %226 = ptrtoint ptr %set_bbreg.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %set_bbreg.i.i34.i, align 4
  tail call void %227(ptr noundef %hw, i32 noundef 76, i32 noundef -1, i32 noundef %or.i31.i) #8
  %228 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %priv, align 8
  %cfg.i39.i35.i = getelementptr inbounds %struct.rtl_priv, ptr %229, i32 0, i32 32
  %230 = ptrtoint ptr %cfg.i39.i35.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %cfg.i39.i35.i, align 8
  %ops.i40.i36.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %231, i32 0, i32 4
  %232 = ptrtoint ptr %ops.i40.i36.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ops.i40.i36.i, align 4
  %get_bbreg.i41.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %233, i32 0, i32 45
  %234 = ptrtoint ptr %get_bbreg.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %get_bbreg.i41.i.i, align 4
  %call.i42.i.i = tail call i32 %235(ptr noundef %hw, i32 noundef 1972, i32 noundef -1) #8
  %or5.i.i = or i32 %call.i42.i.i, 196608
  %236 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %priv, align 8
  %cfg.i44.i37.i = getelementptr inbounds %struct.rtl_priv, ptr %237, i32 0, i32 32
  %238 = ptrtoint ptr %cfg.i44.i37.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cfg.i44.i37.i, align 8
  %ops.i45.i38.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %239, i32 0, i32 4
  %240 = ptrtoint ptr %ops.i45.i38.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ops.i45.i38.i, align 4
  %set_bbreg.i46.i39.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %241, i32 0, i32 46
  %242 = ptrtoint ptr %set_bbreg.i46.i39.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %set_bbreg.i46.i39.i, align 4
  tail call void %243(ptr noundef %hw, i32 noundef 1972, i32 noundef -1, i32 noundef %or5.i.i) #8
  %244 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %priv, align 8
  %cfg.i48.i40.i = getelementptr inbounds %struct.rtl_priv, ptr %245, i32 0, i32 32
  %246 = ptrtoint ptr %cfg.i48.i40.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cfg.i48.i40.i, align 8
  %ops.i49.i41.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %247, i32 0, i32 4
  %248 = ptrtoint ptr %ops.i49.i41.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ops.i49.i41.i, align 4
  %set_bbreg.i50.i42.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %249, i32 0, i32 46
  %250 = ptrtoint ptr %set_bbreg.i50.i42.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %set_bbreg.i50.i42.i, align 4
  tail call void %251(ptr noundef %hw, i32 noundef 1972, i32 noundef 65535, i32 noundef 0) #8
  %252 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %priv, align 8
  %cfg.i52.i.i = getelementptr inbounds %struct.rtl_priv, ptr %253, i32 0, i32 32
  %254 = ptrtoint ptr %cfg.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %cfg.i52.i.i, align 8
  %ops.i53.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %255, i32 0, i32 4
  %256 = ptrtoint ptr %ops.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ops.i53.i.i, align 4
  %set_bbreg.i54.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %257, i32 0, i32 46
  %258 = ptrtoint ptr %set_bbreg.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %set_bbreg.i54.i.i, align 4
  tail call void %259(ptr noundef %hw, i32 noundef 1968, i32 noundef -1, i32 noundef 0) #8
  %260 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %priv, align 8
  %cfg.i56.i.i = getelementptr inbounds %struct.rtl_priv, ptr %261, i32 0, i32 32
  %262 = ptrtoint ptr %cfg.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %cfg.i56.i.i, align 8
  %ops.i57.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %263, i32 0, i32 4
  %264 = ptrtoint ptr %ops.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ops.i57.i.i, align 4
  %set_bbreg.i58.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %265, i32 0, i32 46
  %266 = ptrtoint ptr %set_bbreg.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %set_bbreg.i58.i.i, align 4
  tail call void %267(ptr noundef %hw, i32 noundef 2160, i32 noundef 768, i32 noundef 0) #8
  %268 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %priv, align 8
  %cfg.i60.i.i = getelementptr inbounds %struct.rtl_priv, ptr %269, i32 0, i32 32
  %270 = ptrtoint ptr %cfg.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %cfg.i60.i.i, align 8
  %ops.i61.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %271, i32 0, i32 4
  %272 = ptrtoint ptr %ops.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %ops.i61.i.i, align 4
  %set_bbreg.i62.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %273, i32 0, i32 46
  %274 = ptrtoint ptr %set_bbreg.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %set_bbreg.i62.i.i, align 4
  tail call void %275(ptr noundef %hw, i32 noundef 2148, i32 noundef 1024, i32 noundef 0) #8
  %276 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %priv, align 8
  %cfg.i64.i.i = getelementptr inbounds %struct.rtl_priv, ptr %277, i32 0, i32 32
  %278 = ptrtoint ptr %cfg.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %cfg.i64.i.i, align 8
  %ops.i65.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %279, i32 0, i32 4
  %280 = ptrtoint ptr %ops.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %ops.i65.i.i, align 4
  %set_bbreg.i66.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %281, i32 0, i32 46
  %282 = ptrtoint ptr %set_bbreg.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %set_bbreg.i66.i.i, align 4
  tail call void %283(ptr noundef %hw, i32 noundef 2860, i32 noundef 4194304, i32 noundef 0) #8
  %284 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %priv, align 8
  %cfg.i68.i.i = getelementptr inbounds %struct.rtl_priv, ptr %285, i32 0, i32 32
  %286 = ptrtoint ptr %cfg.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %cfg.i68.i.i, align 8
  %ops.i69.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %287, i32 0, i32 4
  %288 = ptrtoint ptr %ops.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ops.i69.i.i, align 4
  %set_bbreg.i70.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %289, i32 0, i32 46
  %290 = ptrtoint ptr %set_bbreg.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %set_bbreg.i70.i.i, align 4
  tail call void %291(ptr noundef %hw, i32 noundef 2860, i32 noundef -2147483648, i32 noundef 1) #8
  %292 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %priv, align 8
  %cfg.i72.i.i = getelementptr inbounds %struct.rtl_priv, ptr %293, i32 0, i32 32
  %294 = ptrtoint ptr %cfg.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %cfg.i72.i.i, align 8
  %ops.i73.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %295, i32 0, i32 4
  %296 = ptrtoint ptr %ops.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ops.i73.i.i, align 4
  %set_bbreg.i74.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %297, i32 0, i32 46
  %298 = ptrtoint ptr %set_bbreg.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %set_bbreg.i74.i.i, align 4
  tail call void %299(ptr noundef %hw, i32 noundef 3236, i32 noundef -1, i32 noundef 160) #8
  %300 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %priv, align 8
  %cfg.i76.i.i = getelementptr inbounds %struct.rtl_priv, ptr %301, i32 0, i32 32
  %302 = ptrtoint ptr %cfg.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %cfg.i76.i.i, align 8
  %ops.i77.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %303, i32 0, i32 4
  %304 = ptrtoint ptr %ops.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %ops.i77.i.i, align 4
  %set_bbreg.i78.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %305, i32 0, i32 46
  %306 = ptrtoint ptr %set_bbreg.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %set_bbreg.i78.i.i, align 4
  tail call void %307(ptr noundef %hw, i32 noundef 2324, i32 noundef 255, i32 noundef 1) #8
  %308 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %priv, align 8
  %cfg.i80.i.i = getelementptr inbounds %struct.rtl_priv, ptr %309, i32 0, i32 32
  %310 = ptrtoint ptr %cfg.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %cfg.i80.i.i, align 8
  %ops.i81.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %311, i32 0, i32 4
  %312 = ptrtoint ptr %ops.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %ops.i81.i.i, align 4
  %set_bbreg.i82.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %313, i32 0, i32 46
  %314 = ptrtoint ptr %set_bbreg.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %set_bbreg.i82.i.i, align 4
  tail call void %315(ptr noundef %hw, i32 noundef 2324, i32 noundef 65280, i32 noundef 2) #8
  %316 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %priv, align 8
  %cfg.i84.i.i = getelementptr inbounds %struct.rtl_priv, ptr %317, i32 0, i32 32
  %318 = ptrtoint ptr %cfg.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %cfg.i84.i.i, align 8
  %ops.i85.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %319, i32 0, i32 4
  %320 = ptrtoint ptr %ops.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %ops.i85.i.i, align 4
  %set_bbreg.i86.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %321, i32 0, i32 46
  %322 = ptrtoint ptr %set_bbreg.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %set_bbreg.i86.i.i, align 4
  tail call void %323(ptr noundef %hw, i32 noundef 2060, i32 noundef 2097152, i32 noundef 1) #8
  %324 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %priv, align 8
  %cfg.i88.i.i = getelementptr inbounds %struct.rtl_priv, ptr %325, i32 0, i32 32
  %326 = ptrtoint ptr %cfg.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %cfg.i88.i.i, align 8
  %ops.i89.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %327, i32 0, i32 4
  %328 = ptrtoint ptr %ops.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %ops.i89.i.i, align 4
  %set_bbreg.i90.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %329, i32 0, i32 46
  %330 = ptrtoint ptr %set_bbreg.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %set_bbreg.i90.i.i, align 4
  tail call void %331(ptr noundef %hw, i32 noundef 2148, i32 noundef 56, i32 noundef 0) #8
  %332 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %priv, align 8
  %cfg.i92.i.i = getelementptr inbounds %struct.rtl_priv, ptr %333, i32 0, i32 32
  %334 = ptrtoint ptr %cfg.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %cfg.i92.i.i, align 8
  %ops.i93.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %335, i32 0, i32 4
  %336 = ptrtoint ptr %ops.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ops.i93.i.i, align 4
  %set_bbreg.i94.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %337, i32 0, i32 46
  %338 = ptrtoint ptr %set_bbreg.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %set_bbreg.i94.i.i, align 4
  tail call void %339(ptr noundef %hw, i32 noundef 2148, i32 noundef 448, i32 noundef 1) #8
  %340 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %priv, align 8
  %cfg.i96.i.i = getelementptr inbounds %struct.rtl_priv, ptr %341, i32 0, i32 32
  %342 = ptrtoint ptr %cfg.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %cfg.i96.i.i, align 8
  %ops.i97.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %343, i32 0, i32 4
  %344 = ptrtoint ptr %ops.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %ops.i97.i.i, align 4
  %set_bbreg.i98.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %345, i32 0, i32 46
  %346 = ptrtoint ptr %set_bbreg.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %set_bbreg.i98.i.i, align 4
  tail call void %347(ptr noundef %hw, i32 noundef 2148, i32 noundef 7, i32 noundef 1) #8
  %348 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %priv, align 8
  %cfg.i100.i.i = getelementptr inbounds %struct.rtl_priv, ptr %349, i32 0, i32 32
  %350 = ptrtoint ptr %cfg.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %cfg.i100.i.i, align 8
  %ops.i101.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %351, i32 0, i32 4
  %352 = ptrtoint ptr %ops.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %ops.i101.i.i, align 4
  %set_bbreg.i102.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %353, i32 0, i32 46
  %354 = ptrtoint ptr %set_bbreg.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %set_bbreg.i102.i.i, align 4
  tail call void %355(ptr noundef %hw, i32 noundef 3152, i32 noundef 128, i32 noundef 1) #8
  br label %rtl88e_dm_antenna_div_init.exit

rtl88e_dm_antenna_div_init.exit:                  ; preds = %if.then12.i, %if.then6.i, %if.then.i, %entry.rtl88e_dm_antenna_div_init.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_dm_diginit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_dm_watchdog(ptr noundef %hw) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %fw_current_inpsmode = alloca i8, align 1
  %fw_ps_awake = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inpsmode) #8
  %2 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fw_current_inpsmode, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_ps_awake) #8
  %3 = ptrtoint ptr %fw_ps_awake to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %fw_ps_awake, align 1
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %get_hw_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_hw_reg, align 4
  call void %9(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inpsmode) #8
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 8
  %ops3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops3, align 4
  %get_hw_reg4 = getelementptr inbounds %struct.rtl_hal_ops, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %get_hw_reg4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_hw_reg4, align 4
  call void %15(ptr noundef %hw, i8 noundef zeroext 86, ptr noundef nonnull %fw_ps_awake) #8
  %p2p_ps_info = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39
  %16 = ptrtoint ptr %p2p_ps_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p2p_ps_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %fw_ps_awake to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %fw_ps_awake, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rf_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 5
  call void @_raw_spin_lock(ptr noundef %rf_ps_lock) #8
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %19 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.not = icmp eq i8 %22, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %23 = ptrtoint ptr %fw_ps_awake to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw_ps_awake, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not = icmp eq i8 %24, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end11_crit_edge, label %land.lhs.true8

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %25 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rfchange_inprogress, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not = icmp eq i8 %26, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true8.if.end11_crit_edge

land.lhs.true8.if.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true8
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %oem_id.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 10, i32 12
  %29 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %oem_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %30)
  %cmp.i = icmp eq i8 %30, 27
  br i1 %cmp.i, label %if.then.i, label %if.then10.if.end9.i_crit_edge

if.then10.if.end9.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %if.then10
  %stats.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 24
  %31 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %stats.i, align 8
  %33 = load i64, ptr @rtl88e_dm_pwdb_monitor.last_record_txok_cnt, align 8
  %sub.i = sub i64 %32, %33
  %rxbytesunicast.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 24, i32 3
  %34 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rxbytesunicast.i, align 8
  %36 = load i64, ptr @rtl88e_dm_pwdb_monitor.last_record_rxok_cnt, align 8
  %sub5.i = sub i64 %35, %36
  store i64 %sub.i, ptr @rtl88e_dm_pwdb_monitor.last_record_txok_cnt, align 8
  store i64 %sub5.i, ptr @rtl88e_dm_pwdb_monitor.last_record_rxok_cnt, align 8
  %mul.i = mul i64 %sub.i, 6
  call void @__sanitizer_cov_trace_cmp8(i64 %sub5.i, i64 %mul.i)
  %cmp6.i = icmp ugt i64 %sub5.i, %mul.i
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 13, i32 7
  %37 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write32_async.i.i, align 4
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i
  call void %38(ptr noundef %28, i32 noundef 1092, i32 noundef 585749) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i, label %if.then8.i.if.end9.i_crit_edge, label %if.then8.i.if.end9.sink.split.i_crit_edge

if.then8.i.if.end9.sink.split.i_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split.i

if.then8.i.if.end9.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.else.i:                                        ; preds = %if.then.i
  call void %38(ptr noundef %28, i32 noundef 1092, i32 noundef 1044501) #8
  %cfg.i89.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 32
  %43 = ptrtoint ptr %cfg.i89.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i89.i, align 8
  %write_readback.i90.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_readback.i90.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %write_readback.i90.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i91.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i91.i, label %if.else.i.if.end9.i_crit_edge, label %if.else.i.if.end9.sink.split.i_crit_edge

if.else.i.if.end9.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.sink.split.i:                             ; preds = %if.else.i.if.end9.sink.split.i_crit_edge, %if.then8.i.if.end9.sink.split.i_crit_edge
  %read32_sync.i92.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 13, i32 11
  %47 = ptrtoint ptr %read32_sync.i92.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32_sync.i92.i, align 4
  %call.i93.i = call i32 %48(ptr noundef %28, i32 noundef 1092) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end9.sink.split.i, %if.else.i.if.end9.i_crit_edge, %if.then8.i.if.end9.i_crit_edge, %if.then10.if.end9.i_crit_edge
  %entry_list_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 7, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock.i) #8
  %entry_list.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 28
  %49 = ptrtoint ptr %entry_list.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %drv_priv.0101.i = load ptr, ptr %entry_list.i, align 1
  %cmp11.not102.i = icmp eq ptr %drv_priv.0101.i, %entry_list.i
  br i1 %cmp11.not102.i, label %for.end.thread.i, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

for.end.thread.i:                                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i) #8
  br label %if.else37.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %drv_priv.0105.i = phi ptr [ %drv_priv.0.i, %for.body.i.for.body.i_crit_edge ], [ %drv_priv.0101.i, %if.end9.i.for.body.i_crit_edge ]
  %tmp_entry_max_pwdb.0104.i = phi i32 [ %53, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %tmp_entry_min_pwdb.0103.i = phi i32 [ %52, %for.body.i.for.body.i_crit_edge ], [ 255, %if.end9.i.for.body.i_crit_edge ]
  %rssi_stat.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.0105.i, i32 0, i32 2
  %50 = ptrtoint ptr %rssi_stat.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %rssi_stat.i, align 1
  %52 = call i32 @llvm.smin.i32(i32 %51, i32 %tmp_entry_min_pwdb.0103.i) #8
  %53 = call i32 @llvm.smax.i32(i32 %51, i32 %tmp_entry_max_pwdb.0104.i) #8
  %54 = ptrtoint ptr %drv_priv.0105.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %drv_priv.0.i = load ptr, ptr %drv_priv.0105.i, align 1
  %cmp11.not.i = icmp eq ptr %drv_priv.0.i, %entry_list.i
  br i1 %cmp11.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp34.not.i = icmp eq i32 %53, 0
  br i1 %cmp34.not.i, label %for.end.i.if.else37.i_crit_edge, label %if.then36.i

for.end.i.if.else37.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else37.i

if.then36.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %entry_max_undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 3
  %55 = ptrtoint ptr %entry_max_undec_sm_pwdb.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %53, ptr %entry_max_undec_sm_pwdb.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 13, i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %53, i32 noundef %53) #8
  br label %if.end40.i

if.else37.i:                                      ; preds = %for.end.i.if.else37.i_crit_edge, %for.end.thread.i
  %tmp_entry_min_pwdb.0.lcssa112.i = phi i32 [ 255, %for.end.thread.i ], [ %52, %for.end.i.if.else37.i_crit_edge ]
  %entry_max_undec_sm_pwdb39.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 3
  %56 = ptrtoint ptr %entry_max_undec_sm_pwdb39.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %entry_max_undec_sm_pwdb39.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else37.i, %if.then36.i
  %tmp_entry_min_pwdb.0.lcssa111.i = phi i32 [ %tmp_entry_min_pwdb.0.lcssa112.i, %if.else37.i ], [ %52, %if.then36.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %tmp_entry_min_pwdb.0.lcssa111.i)
  %cmp41.not.i = icmp eq i32 %tmp_entry_min_pwdb.0.lcssa111.i, 255
  %dm46.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15
  br i1 %cmp41.not.i, label %if.else45.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %dm46.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %tmp_entry_min_pwdb.0.lcssa111.i, ptr %dm46.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 13, i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %tmp_entry_min_pwdb.0.lcssa111.i, i32 noundef %tmp_entry_min_pwdb.0.lcssa111.i) #8
  br label %if.end48.i

if.else45.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %dm46.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %dm46.i, align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else45.i, %if.then43.i
  %useramask.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 14
  %59 = ptrtoint ptr %useramask.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %useramask.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i, label %if.then50.i, label %if.end48.i.rtl88e_dm_pwdb_monitor.exit_crit_edge

if.end48.i.rtl88e_dm_pwdb_monitor.exit_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_pwdb_monitor.exit

if.then50.i:                                      ; preds = %if.end48.i
  %undec_sm_pwdb52.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 2
  %61 = ptrtoint ptr %undec_sm_pwdb52.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %undec_sm_pwdb52.i, align 8
  %conv53.i = trunc i32 %62 to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 13, i32 5
  %63 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8_async.i.i, align 4
  call void %64(ptr noundef %28, i32 noundef 1278, i8 noundef zeroext %conv53.i) #8
  %cfg.i96.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 32
  %65 = ptrtoint ptr %cfg.i96.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i96.i, align 8
  %write_readback.i97.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i97.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i97.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i98.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i98.i, label %if.then50.i.rtl88e_dm_pwdb_monitor.exit_crit_edge, label %if.then.i100.i

if.then50.i.rtl88e_dm_pwdb_monitor.exit_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_pwdb_monitor.exit

if.then.i100.i:                                   ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 13, i32 9
  %69 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i99.i = call zeroext i8 %70(ptr noundef %28, i32 noundef 1278) #8
  br label %rtl88e_dm_pwdb_monitor.exit

rtl88e_dm_pwdb_monitor.exit:                      ; preds = %if.then.i100.i, %if.then50.i.rtl88e_dm_pwdb_monitor.exit_crit_edge, %if.end48.i.rtl88e_dm_pwdb_monitor.exit_crit_edge
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 8
  %cur_igvalue.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 9
  %73 = ptrtoint ptr %cur_igvalue.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cur_igvalue.i, align 4
  %conv.i = trunc i32 %74 to i8
  %dm_initialgain_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 15, i32 5
  %75 = ptrtoint ptr %dm_initialgain_enable.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %dm_initialgain_enable.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i31 = icmp eq i8 %76, 0
  br i1 %tobool.not.i31, label %rtl88e_dm_pwdb_monitor.exit.rtl88e_dm_dig.exit_crit_edge, label %if.end.i

rtl88e_dm_pwdb_monitor.exit.rtl88e_dm_dig.exit_crit_edge: ; preds = %rtl88e_dm_pwdb_monitor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_dig.exit

if.end.i:                                         ; preds = %rtl88e_dm_pwdb_monitor.exit
  %dig_enable_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 11
  %77 = ptrtoint ptr %dig_enable_flag.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dig_enable_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool3.not.i = icmp eq i8 %78, 0
  br i1 %tobool3.not.i, label %if.end.i.rtl88e_dm_dig.exit_crit_edge, label %if.end5.i

if.end.i.rtl88e_dm_dig.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_dig.exit

if.end5.i:                                        ; preds = %if.end.i
  %act_scanning.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 9, i32 20
  %79 = ptrtoint ptr %act_scanning.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %act_scanning.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool6.not.i = icmp eq i8 %80, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end5.i.rtl88e_dm_dig.exit_crit_edge

if.end5.i.rtl88e_dm_dig.exit_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_dig.exit

if.end8.i:                                        ; preds = %if.end5.i
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 9, i32 10
  %81 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i32 = icmp ugt i32 %82, 1
  %spec.select359.i = zext i1 %cmp.i32 to i8
  %83 = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 40
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %spec.select359.i, ptr %83, align 1
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 9, i32 8
  %85 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %opmode.i, align 8
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %86, label %if.end8.i.if.end22.i_crit_edge [
    i32 3, label %if.end8.i.if.then20.i_crit_edge
    i32 1, label %if.end8.i.if.then20.i_crit_edge119
  ]

if.end8.i.if.then20.i_crit_edge119:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

if.end8.i.if.then20.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

if.end8.i.if.end22.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end8.i.if.then20.i_crit_edge, %if.end8.i.if.then20.i_crit_edge119
  %88 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %83, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end8.i.if.end22.i_crit_edge
  %dig_min_0.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 51
  %89 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp24.i = icmp ugt i32 %90, 1
  br i1 %cmp24.i, label %land.rhs.i, label %if.end22.i.land.end.i_crit_edge

if.end22.i.land.end.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %media_connect_0.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 54
  %91 = ptrtoint ptr %media_connect_0.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %media_connect_0.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool26.not.i = icmp eq i8 %92, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end22.i.land.end.i_crit_edge
  %93 = phi i1 [ %tobool26.not.i, %land.rhs.i ], [ false, %if.end22.i.land.end.i_crit_edge ]
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv, align 8
  %curmultista_cstate.i.i = getelementptr inbounds %struct.rtl_priv, ptr %95, i32 0, i32 35, i32 19
  %96 = ptrtoint ptr %curmultista_cstate.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %curmultista_cstate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %97)
  %cmp.i.i = icmp eq i8 %97, 4
  %cur_sta_cstate.i.i = getelementptr inbounds %struct.rtl_priv, ptr %95, i32 0, i32 35, i32 40
  %98 = ptrtoint ptr %cur_sta_cstate.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %cur_sta_cstate.i.i, align 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.else19.thread.i.i

land.lhs.true.i.i:                                ; preds = %land.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp3.i.i = icmp eq i8 %99, 1
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.else19.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %95, i32 0, i32 15
  %100 = ptrtoint ptr %dm.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dm.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp5.not.i.i = icmp eq i32 %101, 0
  %undec_sm_pwdb18.i.i = getelementptr inbounds %struct.rtl_priv, ptr %95, i32 0, i32 15, i32 2
  %102 = ptrtoint ptr %undec_sm_pwdb18.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %undec_sm_pwdb18.i.i, align 8
  %104 = call i32 @llvm.smin.i32(i32 %101, i32 %103) #8
  %spec.select.i.i = select i1 %cmp5.not.i.i, i32 %103, i32 %104
  br label %rtl88e_dm_initial_gain_min_pwdb.exit.i

if.else19.i.i:                                    ; preds = %land.lhs.true.i.i
  %.off.i.i = add i8 %99, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  br i1 %switch.i.i, label %if.else19.i.i.if.then28.i.i_crit_edge, label %if.then36.i.i

if.else19.i.i.if.then28.i.i_crit_edge:            ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i.i

if.else19.thread.i.i:                             ; preds = %land.end.i
  %.off57.i.i = add i8 %99, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off57.i.i)
  %switch58.i.i = icmp ult i8 %.off57.i.i, 2
  br i1 %switch58.i.i, label %if.else19.thread.i.i.if.then28.i.i_crit_edge, label %if.else19.thread.i.i.rtl88e_dm_initial_gain_min_pwdb.exit.i_crit_edge

if.else19.thread.i.i.rtl88e_dm_initial_gain_min_pwdb.exit.i_crit_edge: ; preds = %if.else19.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_initial_gain_min_pwdb.exit.i

if.else19.thread.i.i.if.then28.i.i_crit_edge:     ; preds = %if.else19.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.else19.thread.i.i.if.then28.i.i_crit_edge, %if.else19.i.i.if.then28.i.i_crit_edge
  %undec_sm_pwdb30.i.i = getelementptr inbounds %struct.rtl_priv, ptr %95, i32 0, i32 15, i32 2
  br label %if.end41.sink.split.i.i

if.then36.i.i:                                    ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dm37.i.i = getelementptr inbounds %struct.rtl_priv, ptr %95, i32 0, i32 15
  br label %if.end41.sink.split.i.i

if.end41.sink.split.i.i:                          ; preds = %if.then36.i.i, %if.then28.i.i
  %undec_sm_pwdb30.sink.i.i = phi ptr [ %undec_sm_pwdb30.i.i, %if.then28.i.i ], [ %dm37.i.i, %if.then36.i.i ]
  %105 = ptrtoint ptr %undec_sm_pwdb30.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %undec_sm_pwdb30.sink.i.i, align 8
  br label %rtl88e_dm_initial_gain_min_pwdb.exit.i

rtl88e_dm_initial_gain_min_pwdb.exit.i:           ; preds = %if.end41.sink.split.i.i, %if.else19.thread.i.i.rtl88e_dm_initial_gain_min_pwdb.exit.i_crit_edge, %if.then.i.i
  %rssi_val_min.0.i.i = phi i32 [ 0, %if.else19.thread.i.i.rtl88e_dm_initial_gain_min_pwdb.exit.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i ], [ %106, %if.end41.sink.split.i.i ]
  %conv42.i.i = trunc i32 %rssi_val_min.0.i.i to i8
  %rssi_val_min.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 27
  %107 = ptrtoint ptr %rssi_val_min.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv42.i.i, ptr %rssi_val_min.i, align 4
  br i1 %cmp24.i, label %if.then30.i, label %if.else78.i

if.then30.i:                                      ; preds = %rtl88e_dm_initial_gain_min_pwdb.exit.i
  %add.i = add i8 %conv42.i.i, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %conv42.i.i)
  %cmp34.i = icmp ugt i8 %conv42.i.i, 42
  br i1 %cmp34.i, label %if.then36.i33, label %if.else37.i34

if.then36.i33:                                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_gain_max.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 24
  %108 = ptrtoint ptr %rx_gain_max.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 62, ptr %rx_gain_max.i, align 1
  br label %if.end53.i

if.else37.i34:                                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv42.i.i)
  %cmp42.i = icmp ult i8 %conv42.i.i, 10
  %rx_gain_max45.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 24
  br i1 %cmp42.i, label %if.then44.i, label %if.else46.i

if.then44.i:                                      ; preds = %if.else37.i34
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %rx_gain_max45.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 30, ptr %rx_gain_max45.i, align 1
  br label %if.end53.i

if.else46.i:                                      ; preds = %if.else37.i34
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %rx_gain_max45.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %add.i, ptr %rx_gain_max45.i, align 1
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else46.i, %if.then44.i, %if.then36.i33
  %antenna_div_type.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 17, i32 22
  %111 = ptrtoint ptr %antenna_div_type.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %antenna_div_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %112)
  %cmp55.i = icmp eq i8 %112, 1
  br i1 %cmp55.i, label %if.then57.i, label %if.else59.i

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  %antdiv_rssi_max.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 56
  %113 = ptrtoint ptr %antdiv_rssi_max.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %antdiv_rssi_max.i, align 4
  %conv58.i = trunc i32 %114 to i8
  br label %if.end80.i

if.else59.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %rssi_val_min.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %rssi_val_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %116)
  %cmp63.i = icmp ult i8 %116, 30
  %117 = call i8 @llvm.umax.i8(i8 %116, i8 50) #8
  %spec.select357.i = select i1 %cmp63.i, i8 30, i8 %117
  br label %if.end80.i

if.else78.i:                                      ; preds = %rtl88e_dm_initial_gain_min_pwdb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_gain_max79.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 24
  %118 = ptrtoint ptr %rx_gain_max79.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 62, ptr %rx_gain_max79.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %72, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.17) #8
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else78.i, %if.else59.i, %if.then57.i
  %dig_dynamic_min.0.i = phi i8 [ %conv58.i, %if.then57.i ], [ 30, %if.else78.i ], [ %spec.select357.i, %if.else59.i ]
  %cnt_all.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 26, i32 8
  %119 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cnt_all.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %120)
  %cmp81.i = icmp ugt i32 %120, 10000
  br i1 %cmp81.i, label %if.then83.i, label %if.else114.i

if.then83.i:                                      ; preds = %if.end80.i
  %large_fa_hit.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 36
  %121 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %large_fa_hit.i, align 1
  %inc.i = add i8 %122, 1
  store i8 %inc.i, ptr %large_fa_hit.i, align 1
  %forbidden_igi.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 37
  %123 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %forbidden_igi.i, align 2
  %conv84.i = zext i8 %124 to i32
  %conv85.i = and i32 %74, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv85.i, i32 %conv84.i)
  %cmp86.i = icmp ugt i32 %conv85.i, %conv84.i
  br i1 %cmp86.i, label %if.end91.thread.i, label %if.end91.i

if.end91.thread.i:                                ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv.i, ptr %forbidden_igi.i, align 2
  %126 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %large_fa_hit.i, align 1
  br label %if.end153.i

if.end91.i:                                       ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc.i)
  %cmp94.i = icmp ugt i8 %inc.i, 2
  br i1 %cmp94.i, label %if.then96.i, label %if.end91.i.if.end153.i_crit_edge

if.end91.i.if.end153.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153.i

if.then96.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_gain_max100.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 24
  %127 = ptrtoint ptr %rx_gain_max100.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %rx_gain_max100.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %124, i8 %128)
  %cmp102.not.i = icmp ult i8 %124, %128
  %add99.i = add nuw i8 %124, 1
  %spec.select360.i = select i1 %cmp102.not.i, i8 %add99.i, i8 %128
  %129 = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 25
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %spec.select360.i, ptr %129, align 2
  %recover_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 7
  %131 = ptrtoint ptr %recover_cnt.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 3600, ptr %recover_cnt.i, align 4
  br label %if.end153.i

if.else114.i:                                     ; preds = %if.end80.i
  %recover_cnt115.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 7
  %132 = ptrtoint ptr %recover_cnt115.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %recover_cnt115.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp116.not.i = icmp eq i32 %133, 0
  br i1 %cmp116.not.i, label %if.else120.i, label %if.then118.i

if.then118.i:                                     ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %133, -1
  %134 = ptrtoint ptr %recover_cnt115.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %dec.i, ptr %recover_cnt115.i, align 4
  br label %if.end153.i

if.else120.i:                                     ; preds = %if.else114.i
  %large_fa_hit121.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 36
  %135 = ptrtoint ptr %large_fa_hit121.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %large_fa_hit121.i, align 1
  %137 = zext i8 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %136, label %if.else120.i.if.end153.i_crit_edge [
    i8 0, label %if.then125.i
    i8 3, label %if.then148.i
  ]

if.else120.i.if.end153.i_crit_edge:               ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153.i

if.then125.i:                                     ; preds = %if.else120.i
  %forbidden_igi126.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 37
  %138 = ptrtoint ptr %forbidden_igi126.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %forbidden_igi126.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %139, i8 %dig_dynamic_min.0.i)
  %cmp129.not.i = icmp ugt i8 %139, %dig_dynamic_min.0.i
  br i1 %cmp129.not.i, label %if.else134.i, label %if.then131.i

if.then131.i:                                     ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %forbidden_igi126.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %dig_dynamic_min.0.i, ptr %forbidden_igi126.i, align 2
  %rx_gain_min133.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 25
  %141 = ptrtoint ptr %rx_gain_min133.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %dig_dynamic_min.0.i, ptr %rx_gain_min133.i, align 2
  br label %if.end153.i

if.else134.i:                                     ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec136.i = add i8 %139, -1
  %142 = ptrtoint ptr %forbidden_igi126.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %dec136.i, ptr %forbidden_igi126.i, align 2
  %rx_gain_min141.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 25
  %143 = ptrtoint ptr %rx_gain_min141.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %139, ptr %rx_gain_min141.i, align 2
  br label %if.end153.i

if.then148.i:                                     ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %large_fa_hit121.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %large_fa_hit121.i, align 1
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then148.i, %if.else134.i, %if.then131.i, %if.else120.i.if.end153.i_crit_edge, %if.then118.i, %if.then96.i, %if.end91.i.if.end153.i_crit_edge, %if.end91.thread.i
  %145 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %146)
  %cmp156.i = icmp eq i8 %146, 1
  br i1 %cmp156.i, label %if.then158.i, label %if.else189.i

if.then158.i:                                     ; preds = %if.end153.i
  br i1 %93, label %if.then160.i, label %if.else162.i

if.then160.i:                                     ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %rssi_val_min.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %rssi_val_min.i, align 4
  br label %if.end215.i

if.else162.i:                                     ; preds = %if.then158.i
  %149 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cnt_all.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %150)
  %cmp165.i = icmp ugt i32 %150, 1024
  br i1 %cmp165.i, label %if.then167.i, label %if.else171.i

if.then167.i:                                     ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv170.i = add i8 %conv.i, 2
  br label %if.end215.i

if.else171.i:                                     ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %150)
  %cmp174.i = icmp ugt i32 %150, 768
  br i1 %cmp174.i, label %if.then176.i, label %if.else178.i

if.then176.i:                                     ; preds = %if.else171.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc177.i = add i8 %conv.i, 1
  br label %if.end215.i

if.else178.i:                                     ; preds = %if.else171.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %150)
  %cmp181.i = icmp ult i32 %150, 512
  %dec184.i = sext i1 %cmp181.i to i8
  %spec.select.i = add i8 %dec184.i, %conv.i
  br label %if.end215.i

if.else189.i:                                     ; preds = %if.end153.i
  %151 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cnt_all.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %152)
  %cmp192.i = icmp ugt i32 %152, 10000
  br i1 %cmp192.i, label %if.then194.i, label %if.else198.i

if.then194.i:                                     ; preds = %if.else189.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv197.i = add i8 %conv.i, 2
  br label %if.end215.i

if.else198.i:                                     ; preds = %if.else189.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %152)
  %cmp201.i = icmp ugt i32 %152, 8000
  br i1 %cmp201.i, label %if.then203.i, label %if.else205.i

if.then203.i:                                     ; preds = %if.else198.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc204.i = add i8 %conv.i, 1
  br label %if.end215.i

if.else205.i:                                     ; preds = %if.else198.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %152)
  %cmp208.i = icmp ult i32 %152, 500
  %dec211.i = sext i1 %cmp208.i to i8
  %spec.select341.i = add i8 %dec211.i, %conv.i
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.else205.i, %if.then203.i, %if.then194.i, %if.else178.i, %if.then176.i, %if.then167.i, %if.then160.i
  %current_igi.0.i = phi i8 [ %148, %if.then160.i ], [ %conv170.i, %if.then167.i ], [ %inc177.i, %if.then176.i ], [ %conv197.i, %if.then194.i ], [ %inc204.i, %if.then203.i ], [ %spec.select.i, %if.else178.i ], [ %spec.select341.i, %if.else205.i ]
  %153 = call i8 @llvm.umax.i8(i8 %current_igi.0.i, i8 30) #8
  %154 = call i8 @llvm.umin.i8(i8 %153, i8 62) #8
  %155 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cnt_all.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %156)
  %cmp229.i = icmp ugt i32 %156, 10000
  %157 = zext i8 %154 to i32
  %conv233.i = select i1 %cmp229.i, i32 62, i32 %157
  %158 = ptrtoint ptr %cur_igvalue.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %conv233.i, ptr %cur_igvalue.i, align 4
  %159 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %priv, align 8
  %cur_igvalue.i.i = getelementptr inbounds %struct.rtl_priv, ptr %160, i32 0, i32 35, i32 9
  %161 = ptrtoint ptr %cur_igvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cur_igvalue.i.i, align 4
  %pre_igvalue.i.i = getelementptr inbounds %struct.rtl_priv, ptr %160, i32 0, i32 35, i32 8
  %163 = ptrtoint ptr %pre_igvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %pre_igvalue.i.i, align 4
  %back_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %160, i32 0, i32 35, i32 21
  %165 = ptrtoint ptr %back_val.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %back_val.i.i, align 2
  %conv.i.i = sext i8 %166 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %160, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %162, i32 noundef %164, i32 noundef %conv.i.i) #8
  %167 = ptrtoint ptr %cur_igvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cur_igvalue.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %168)
  %cmp.i345.i = icmp ugt i32 %168, 63
  br i1 %cmp.i345.i, label %if.then.i346.i, label %if.end215.i.if.end.i.i_crit_edge

if.end215.i.if.end.i.i_crit_edge:                 ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i346.i:                                   ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #10
  %169 = ptrtoint ptr %cur_igvalue.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 63, ptr %cur_igvalue.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i346.i, %if.end215.i.if.end.i.i_crit_edge
  %170 = ptrtoint ptr %pre_igvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %pre_igvalue.i.i, align 4
  %172 = ptrtoint ptr %cur_igvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cur_igvalue.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %173)
  %cmp6.not.i.i = icmp eq i32 %171, %173
  br i1 %cmp6.not.i.i, label %if.end.i.i.rtl88e_dm_write_dig.exit.i_crit_edge, label %if.then8.i.i

if.end.i.i.rtl88e_dm_write_dig.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_write_dig.exit.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %174 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %priv, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %175, i32 0, i32 32
  %176 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %177, i32 0, i32 4
  %178 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ops.i.i.i, align 4
  %set_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %179, i32 0, i32 46
  %180 = ptrtoint ptr %set_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %set_bbreg.i.i.i, align 4
  call void %181(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %173) #8
  %182 = ptrtoint ptr %cur_igvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cur_igvalue.i.i, align 4
  %184 = ptrtoint ptr %pre_igvalue.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %pre_igvalue.i.i, align 4
  br label %rtl88e_dm_write_dig.exit.i

rtl88e_dm_write_dig.exit.i:                       ; preds = %if.then8.i.i, %if.end.i.i.rtl88e_dm_write_dig.exit.i_crit_edge
  %185 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %186)
  %cmp236.i = icmp ugt i32 %186, 1
  %media_connect_0239.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 35, i32 54
  %frombool240.i = zext i1 %cmp236.i to i8
  %187 = ptrtoint ptr %media_connect_0239.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %frombool240.i, ptr %media_connect_0239.i, align 1
  %188 = ptrtoint ptr %dig_min_0.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %dig_dynamic_min.0.i, ptr %dig_min_0.i, align 4
  %189 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %priv, align 8
  %cur_sta_cstate.i348.i = getelementptr inbounds %struct.rtl_priv, ptr %190, i32 0, i32 35, i32 40
  %191 = ptrtoint ptr %cur_sta_cstate.i348.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %cur_sta_cstate.i348.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %192)
  %cmp.i349.i = icmp eq i8 %192, 1
  br i1 %cmp.i349.i, label %if.then.i350.i, label %rtl88e_dm_write_dig.exit.i.if.end31.sink.split.i.i_crit_edge

rtl88e_dm_write_dig.exit.i.if.end31.sink.split.i.i_crit_edge: ; preds = %rtl88e_dm_write_dig.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.sink.split.i.i

if.then.i350.i:                                   ; preds = %rtl88e_dm_write_dig.exit.i
  %curmultista_cstate.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %190, i32 0, i32 35, i32 19
  %193 = ptrtoint ptr %curmultista_cstate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %curmultista_cstate.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %194)
  %cmp.i.i.i = icmp eq i8 %194, 4
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end41.sink.split.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i350.i
  call void @__sanitizer_cov_trace_pc() #10
  %dm.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %190, i32 0, i32 15
  %195 = ptrtoint ptr %dm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %dm.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp5.not.i.i.i = icmp eq i32 %196, 0
  %undec_sm_pwdb18.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %190, i32 0, i32 15, i32 2
  %197 = ptrtoint ptr %undec_sm_pwdb18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %undec_sm_pwdb18.i.i.i, align 8
  %199 = call i32 @llvm.smin.i32(i32 %196, i32 %198) #8
  %spec.select.i.i.i = select i1 %cmp5.not.i.i.i, i32 %198, i32 %199
  br label %rtl88e_dm_initial_gain_min_pwdb.exit.i.i

if.end41.sink.split.i.i.i:                        ; preds = %if.then.i350.i
  call void @__sanitizer_cov_trace_pc() #10
  %undec_sm_pwdb30.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %190, i32 0, i32 15, i32 2
  %200 = ptrtoint ptr %undec_sm_pwdb30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %undec_sm_pwdb30.i.i.i, align 8
  br label %rtl88e_dm_initial_gain_min_pwdb.exit.i.i

rtl88e_dm_initial_gain_min_pwdb.exit.i.i:         ; preds = %if.end41.sink.split.i.i.i, %if.then.i.i.i
  %rssi_val_min.0.i.i.i = phi i32 [ %spec.select.i.i.i, %if.then.i.i.i ], [ %201, %if.end41.sink.split.i.i.i ]
  %conv42.i.i.i = trunc i32 %rssi_val_min.0.i.i.i to i8
  %rssi_val_min.i.i = getelementptr inbounds %struct.rtl_priv, ptr %190, i32 0, i32 35, i32 27
  %202 = ptrtoint ptr %rssi_val_min.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv42.i.i.i, ptr %rssi_val_min.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %conv42.i.i.i)
  %cmp4.i.i = icmp ugt i8 %conv42.i.i.i, 25
  br i1 %cmp4.i.i, label %rtl88e_dm_initial_gain_min_pwdb.exit.i.i.if.end31.i.i_crit_edge, label %land.lhs.true.i351.i

rtl88e_dm_initial_gain_min_pwdb.exit.i.i.if.end31.i.i_crit_edge: ; preds = %rtl88e_dm_initial_gain_min_pwdb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i

land.lhs.true.i351.i:                             ; preds = %rtl88e_dm_initial_gain_min_pwdb.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv42.i.i.i)
  %cmp13.i.i = icmp ugt i8 %conv42.i.i.i, 10
  br i1 %cmp13.i.i, label %land.lhs.true.i351.i.if.end31.i.i_crit_edge, label %land.lhs.true.i351.i.if.end31.sink.split.i.i_crit_edge

land.lhs.true.i351.i.if.end31.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i351.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.sink.split.i.i

land.lhs.true.i351.i.if.end31.i.i_crit_edge:      ; preds = %land.lhs.true.i351.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i

if.end31.sink.split.i.i:                          ; preds = %land.lhs.true.i351.i.if.end31.sink.split.i.i_crit_edge, %rtl88e_dm_write_dig.exit.i.if.end31.sink.split.i.i_crit_edge
  %cnt_cck_fail25.i.i = getelementptr inbounds %struct.rtl_priv, ptr %190, i32 0, i32 26, i32 7
  %203 = ptrtoint ptr %cnt_cck_fail25.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %cnt_cck_fail25.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %204)
  %cmp26.i.i = icmp ugt i32 %204, 1000
  %.59.i.i = select i1 %cmp26.i.i, i8 -125, i8 64
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.end31.sink.split.i.i, %land.lhs.true.i351.i.if.end31.i.i_crit_edge, %rtl88e_dm_initial_gain_min_pwdb.exit.i.i.if.end31.i.i_crit_edge
  %cur_cck_cca_thresh.0.i.i = phi i8 [ -51, %rtl88e_dm_initial_gain_min_pwdb.exit.i.i.if.end31.i.i_crit_edge ], [ -125, %land.lhs.true.i351.i.if.end31.i.i_crit_edge ], [ %.59.i.i, %if.end31.sink.split.i.i ]
  %cur_cck_cca_thres.i.i = getelementptr inbounds %struct.rtl_priv, ptr %190, i32 0, i32 35, i32 29
  %205 = ptrtoint ptr %cur_cck_cca_thres.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %cur_cck_cca_thres.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %206, i8 %cur_cck_cca_thresh.0.i.i)
  %cmp34.not.i.i = icmp eq i8 %206, %cur_cck_cca_thresh.0.i.i
  %.pre.i.i = zext i8 %cur_cck_cca_thresh.0.i.i to i32
  br i1 %cmp34.not.i.i, label %if.end31.i.i.rtl88e_dm_cck_packet_detection_thresh.exit.i_crit_edge, label %if.then36.i355.i

if.end31.i.i.rtl88e_dm_cck_packet_detection_thresh.exit.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_cck_packet_detection_thresh.exit.i

if.then36.i355.i:                                 ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %207 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %priv, align 8
  %cfg.i.i352.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 32
  %209 = ptrtoint ptr %cfg.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cfg.i.i352.i, align 8
  %ops.i.i353.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %210, i32 0, i32 4
  %211 = ptrtoint ptr %ops.i.i353.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ops.i.i353.i, align 4
  %set_bbreg.i.i354.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %212, i32 0, i32 46
  %213 = ptrtoint ptr %set_bbreg.i.i354.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %set_bbreg.i.i354.i, align 4
  call void %214(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef %.pre.i.i) #8
  br label %rtl88e_dm_cck_packet_detection_thresh.exit.i

rtl88e_dm_cck_packet_detection_thresh.exit.i:     ; preds = %if.then36.i355.i, %if.end31.i.i.rtl88e_dm_cck_packet_detection_thresh.exit.i_crit_edge
  %215 = ptrtoint ptr %cur_cck_cca_thres.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %cur_cck_cca_thresh.0.i.i, ptr %cur_cck_cca_thres.i.i, align 2
  %pre_cck_cca_thres.i.i = getelementptr inbounds %struct.rtl_priv, ptr %190, i32 0, i32 35, i32 28
  %216 = ptrtoint ptr %pre_cck_cca_thres.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %cur_cck_cca_thresh.0.i.i, ptr %pre_cck_cca_thres.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %190, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.18, i32 noundef %.pre.i.i) #8
  br label %rtl88e_dm_dig.exit

rtl88e_dm_dig.exit:                               ; preds = %rtl88e_dm_cck_packet_detection_thresh.exit.i, %if.end5.i.rtl88e_dm_dig.exit_crit_edge, %if.end.i.rtl88e_dm_dig.exit_crit_edge, %rtl88e_dm_pwdb_monitor.exit.rtl88e_dm_dig.exit_crit_edge
  %217 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %priv, align 8
  %falsealm_cnt1.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26
  %cfg.i.i36 = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 32
  %219 = ptrtoint ptr %cfg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cfg.i.i36, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %220, i32 0, i32 4
  %221 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %222, i32 0, i32 46
  %223 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %set_bbreg.i.i, align 4
  call void %224(ptr noundef %hw, i32 noundef 3072, i32 noundef -2147483648, i32 noundef 1) #8
  %225 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %priv, align 8
  %cfg.i133.i = getelementptr inbounds %struct.rtl_priv, ptr %226, i32 0, i32 32
  %227 = ptrtoint ptr %cfg.i133.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %cfg.i133.i, align 8
  %ops.i134.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %228, i32 0, i32 4
  %229 = ptrtoint ptr %ops.i134.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ops.i134.i, align 4
  %set_bbreg.i135.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %230, i32 0, i32 46
  %231 = ptrtoint ptr %set_bbreg.i135.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %set_bbreg.i135.i, align 4
  call void %232(ptr noundef %hw, i32 noundef 3328, i32 noundef -2147483648, i32 noundef 1) #8
  %233 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %priv, align 8
  %cfg.i137.i = getelementptr inbounds %struct.rtl_priv, ptr %234, i32 0, i32 32
  %235 = ptrtoint ptr %cfg.i137.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %cfg.i137.i, align 8
  %ops.i138.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %ops.i138.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ops.i138.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %238, i32 0, i32 45
  %239 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = call i32 %240(ptr noundef %hw, i32 noundef 3312, i32 noundef -1) #8
  %and.i = and i32 %call.i.i, 65535
  %cnt_fast_fsync_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 4
  %241 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %and.i, ptr %cnt_fast_fsync_fail.i, align 4
  %shr.i = lshr i32 %call.i.i, 16
  %cnt_sb_search_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 5
  %242 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %shr.i, ptr %cnt_sb_search_fail.i, align 4
  %243 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %priv, align 8
  %cfg.i140.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 0, i32 32
  %245 = ptrtoint ptr %cfg.i140.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %cfg.i140.i, align 8
  %ops.i141.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %246, i32 0, i32 4
  %247 = ptrtoint ptr %ops.i141.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ops.i141.i, align 4
  %get_bbreg.i142.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %248, i32 0, i32 45
  %249 = ptrtoint ptr %get_bbreg.i142.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %get_bbreg.i142.i, align 4
  %call.i143.i = call i32 %250(ptr noundef %hw, i32 noundef 3488, i32 noundef -1) #8
  %and4.i = and i32 %call.i143.i, 65535
  %cnt_ofdm_cca.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 9
  %251 = ptrtoint ptr %cnt_ofdm_cca.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %and4.i, ptr %cnt_ofdm_cca.i, align 4
  %shr6.i = lshr i32 %call.i143.i, 16
  %252 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %shr6.i, ptr %falsealm_cnt1.i, align 4
  %253 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %priv, align 8
  %cfg.i145.i = getelementptr inbounds %struct.rtl_priv, ptr %254, i32 0, i32 32
  %255 = ptrtoint ptr %cfg.i145.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %cfg.i145.i, align 8
  %ops.i146.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %256, i32 0, i32 4
  %257 = ptrtoint ptr %ops.i146.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ops.i146.i, align 4
  %get_bbreg.i147.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %258, i32 0, i32 45
  %259 = ptrtoint ptr %get_bbreg.i147.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %get_bbreg.i147.i, align 4
  %call.i148.i = call i32 %260(ptr noundef %hw, i32 noundef 3492, i32 noundef -1) #8
  %and8.i = and i32 %call.i148.i, 65535
  %cnt_rate_illegal.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 1
  %261 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %and8.i, ptr %cnt_rate_illegal.i, align 4
  %shr10.i = lshr i32 %call.i148.i, 16
  %cnt_crc8_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 2
  %262 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %shr10.i, ptr %cnt_crc8_fail.i, align 4
  %263 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %priv, align 8
  %cfg.i150.i = getelementptr inbounds %struct.rtl_priv, ptr %264, i32 0, i32 32
  %265 = ptrtoint ptr %cfg.i150.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %cfg.i150.i, align 8
  %ops.i151.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %266, i32 0, i32 4
  %267 = ptrtoint ptr %ops.i151.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %ops.i151.i, align 4
  %get_bbreg.i152.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %268, i32 0, i32 45
  %269 = ptrtoint ptr %get_bbreg.i152.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %get_bbreg.i152.i, align 4
  %call.i153.i = call i32 %270(ptr noundef %hw, i32 noundef 3496, i32 noundef -1) #8
  %and12.i = and i32 %call.i153.i, 65535
  %cnt_mcs_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 3
  %271 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %and12.i, ptr %cnt_mcs_fail.i, align 4
  %272 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %falsealm_cnt1.i, align 4
  %274 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %cnt_rate_illegal.i, align 4
  %276 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %cnt_crc8_fail.i, align 4
  %278 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %cnt_fast_fsync_fail.i, align 4
  %280 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %cnt_sb_search_fail.i, align 4
  %add.i37 = add i32 %273, %and12.i
  %add16.i = add i32 %add.i37, %275
  %add18.i = add i32 %add16.i, %277
  %add20.i = add i32 %add18.i, %279
  %add22.i = add i32 %add20.i, %281
  %cnt_ofdm_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 6
  %282 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %add22.i, ptr %cnt_ofdm_fail.i, align 4
  %283 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %priv, align 8
  %cfg.i155.i = getelementptr inbounds %struct.rtl_priv, ptr %284, i32 0, i32 32
  %285 = ptrtoint ptr %cfg.i155.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %cfg.i155.i, align 8
  %ops.i156.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %286, i32 0, i32 4
  %287 = ptrtoint ptr %ops.i156.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %ops.i156.i, align 4
  %get_bbreg.i157.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %288, i32 0, i32 45
  %289 = ptrtoint ptr %get_bbreg.i157.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %get_bbreg.i157.i, align 4
  %call.i158.i = call i32 %290(ptr noundef %hw, i32 noundef 2244, i32 noundef -1) #8
  %and24.i = and i32 %call.i158.i, 65535
  %cnt_bw_lsc.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 13
  %291 = ptrtoint ptr %cnt_bw_lsc.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %and24.i, ptr %cnt_bw_lsc.i, align 4
  %shr26.i = lshr i32 %call.i158.i, 16
  %cnt_bw_usc.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 12
  %292 = ptrtoint ptr %cnt_bw_usc.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %shr26.i, ptr %cnt_bw_usc.i, align 4
  %293 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %priv, align 8
  %cfg.i160.i = getelementptr inbounds %struct.rtl_priv, ptr %294, i32 0, i32 32
  %295 = ptrtoint ptr %cfg.i160.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %cfg.i160.i, align 8
  %ops.i161.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %296, i32 0, i32 4
  %297 = ptrtoint ptr %ops.i161.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %ops.i161.i, align 4
  %set_bbreg.i162.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %298, i32 0, i32 46
  %299 = ptrtoint ptr %set_bbreg.i162.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %set_bbreg.i162.i, align 4
  call void %300(ptr noundef %hw, i32 noundef 2604, i32 noundef 4096, i32 noundef 1) #8
  %301 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %priv, align 8
  %cfg.i164.i = getelementptr inbounds %struct.rtl_priv, ptr %302, i32 0, i32 32
  %303 = ptrtoint ptr %cfg.i164.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %cfg.i164.i, align 8
  %ops.i165.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %304, i32 0, i32 4
  %305 = ptrtoint ptr %ops.i165.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %ops.i165.i, align 4
  %set_bbreg.i166.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %306, i32 0, i32 46
  %307 = ptrtoint ptr %set_bbreg.i166.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %set_bbreg.i166.i, align 4
  call void %308(ptr noundef %hw, i32 noundef 2604, i32 noundef 16384, i32 noundef 1) #8
  %309 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %priv, align 8
  %cfg.i168.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 32
  %311 = ptrtoint ptr %cfg.i168.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %cfg.i168.i, align 8
  %ops.i169.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %312, i32 0, i32 4
  %313 = ptrtoint ptr %ops.i169.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %ops.i169.i, align 4
  %get_bbreg.i170.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %314, i32 0, i32 45
  %315 = ptrtoint ptr %get_bbreg.i170.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %get_bbreg.i170.i, align 4
  %call.i171.i = call i32 %316(ptr noundef %hw, i32 noundef 2652, i32 noundef 255) #8
  %cnt_cck_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 7
  %317 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %call.i171.i, ptr %cnt_cck_fail.i, align 4
  %318 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %priv, align 8
  %cfg.i173.i = getelementptr inbounds %struct.rtl_priv, ptr %319, i32 0, i32 32
  %320 = ptrtoint ptr %cfg.i173.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %cfg.i173.i, align 8
  %ops.i174.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %321, i32 0, i32 4
  %322 = ptrtoint ptr %ops.i174.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %ops.i174.i, align 4
  %get_bbreg.i175.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %323, i32 0, i32 45
  %324 = ptrtoint ptr %get_bbreg.i175.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %get_bbreg.i175.i, align 4
  %call.i176.i = call i32 %325(ptr noundef %hw, i32 noundef 2648, i32 noundef -16777216) #8
  %and29.i = shl i32 %call.i176.i, 8
  %shl.i = and i32 %and29.i, 65280
  %326 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %cnt_cck_fail.i, align 4
  %add31.i = add i32 %shl.i, %327
  store i32 %add31.i, ptr %cnt_cck_fail.i, align 4
  %328 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %priv, align 8
  %cfg.i178.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 32
  %330 = ptrtoint ptr %cfg.i178.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %cfg.i178.i, align 8
  %ops.i179.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %331, i32 0, i32 4
  %332 = ptrtoint ptr %ops.i179.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %ops.i179.i, align 4
  %get_bbreg.i180.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %333, i32 0, i32 45
  %334 = ptrtoint ptr %get_bbreg.i180.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %get_bbreg.i180.i, align 4
  %call.i181.i = call i32 %335(ptr noundef %hw, i32 noundef 2656, i32 noundef -1) #8
  %trunc.i = trunc i32 %call.i181.i to i16
  %rev.i = call i16 @llvm.bswap.i16(i16 %trunc.i) #8
  %or.i = zext i16 %rev.i to i32
  %cnt_cck_cca.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 10
  %336 = ptrtoint ptr %cnt_cck_cca.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %or.i, ptr %cnt_cck_cca.i, align 4
  %337 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %cnt_fast_fsync_fail.i, align 4
  %339 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %cnt_sb_search_fail.i, align 4
  %add39.i = add i32 %340, %338
  %341 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %falsealm_cnt1.i, align 4
  %add41.i = add i32 %add39.i, %342
  %343 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %cnt_rate_illegal.i, align 4
  %add43.i = add i32 %add41.i, %344
  %345 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %cnt_crc8_fail.i, align 4
  %add45.i = add i32 %add43.i, %346
  %347 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %cnt_mcs_fail.i, align 4
  %add47.i = add i32 %add45.i, %348
  %349 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %cnt_cck_fail.i, align 4
  %add49.i = add i32 %add47.i, %350
  %cnt_all.i38 = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 8
  %351 = ptrtoint ptr %cnt_all.i38 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %add49.i, ptr %cnt_all.i38, align 4
  %352 = ptrtoint ptr %cnt_ofdm_cca.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %cnt_ofdm_cca.i, align 4
  %add52.i = add i32 %353, %or.i
  %cnt_cca_all.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 11
  %354 = ptrtoint ptr %cnt_cca_all.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %add52.i, ptr %cnt_cca_all.i, align 4
  %355 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %priv, align 8
  %cfg.i183.i = getelementptr inbounds %struct.rtl_priv, ptr %356, i32 0, i32 32
  %357 = ptrtoint ptr %cfg.i183.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %cfg.i183.i, align 8
  %ops.i184.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %358, i32 0, i32 4
  %359 = ptrtoint ptr %ops.i184.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %ops.i184.i, align 4
  %set_bbreg.i185.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %360, i32 0, i32 46
  %361 = ptrtoint ptr %set_bbreg.i185.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %set_bbreg.i185.i, align 4
  call void %362(ptr noundef %hw, i32 noundef 3084, i32 noundef -2147483648, i32 noundef 1) #8
  %363 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %priv, align 8
  %cfg.i187.i = getelementptr inbounds %struct.rtl_priv, ptr %364, i32 0, i32 32
  %365 = ptrtoint ptr %cfg.i187.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %cfg.i187.i, align 8
  %ops.i188.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %366, i32 0, i32 4
  %367 = ptrtoint ptr %ops.i188.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %ops.i188.i, align 4
  %set_bbreg.i189.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %368, i32 0, i32 46
  %369 = ptrtoint ptr %set_bbreg.i189.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %set_bbreg.i189.i, align 4
  call void %370(ptr noundef %hw, i32 noundef 3084, i32 noundef -2147483648, i32 noundef 0) #8
  %371 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %priv, align 8
  %cfg.i191.i = getelementptr inbounds %struct.rtl_priv, ptr %372, i32 0, i32 32
  %373 = ptrtoint ptr %cfg.i191.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %cfg.i191.i, align 8
  %ops.i192.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %374, i32 0, i32 4
  %375 = ptrtoint ptr %ops.i192.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %ops.i192.i, align 4
  %set_bbreg.i193.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %376, i32 0, i32 46
  %377 = ptrtoint ptr %set_bbreg.i193.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %set_bbreg.i193.i, align 4
  call void %378(ptr noundef %hw, i32 noundef 3328, i32 noundef 134217728, i32 noundef 1) #8
  %379 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %priv, align 8
  %cfg.i195.i = getelementptr inbounds %struct.rtl_priv, ptr %380, i32 0, i32 32
  %381 = ptrtoint ptr %cfg.i195.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %cfg.i195.i, align 8
  %ops.i196.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %382, i32 0, i32 4
  %383 = ptrtoint ptr %ops.i196.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %ops.i196.i, align 4
  %set_bbreg.i197.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %384, i32 0, i32 46
  %385 = ptrtoint ptr %set_bbreg.i197.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %set_bbreg.i197.i, align 4
  call void %386(ptr noundef %hw, i32 noundef 3328, i32 noundef 134217728, i32 noundef 0) #8
  %387 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %priv, align 8
  %cfg.i199.i = getelementptr inbounds %struct.rtl_priv, ptr %388, i32 0, i32 32
  %389 = ptrtoint ptr %cfg.i199.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %cfg.i199.i, align 8
  %ops.i200.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %390, i32 0, i32 4
  %391 = ptrtoint ptr %ops.i200.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %ops.i200.i, align 4
  %set_bbreg.i201.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %392, i32 0, i32 46
  %393 = ptrtoint ptr %set_bbreg.i201.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %set_bbreg.i201.i, align 4
  call void %394(ptr noundef %hw, i32 noundef 3072, i32 noundef -2147483648, i32 noundef 0) #8
  %395 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %priv, align 8
  %cfg.i203.i = getelementptr inbounds %struct.rtl_priv, ptr %396, i32 0, i32 32
  %397 = ptrtoint ptr %cfg.i203.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %cfg.i203.i, align 8
  %ops.i204.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %398, i32 0, i32 4
  %399 = ptrtoint ptr %ops.i204.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %ops.i204.i, align 4
  %set_bbreg.i205.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %400, i32 0, i32 46
  %401 = ptrtoint ptr %set_bbreg.i205.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %set_bbreg.i205.i, align 4
  call void %402(ptr noundef %hw, i32 noundef 3328, i32 noundef -2147483648, i32 noundef 0) #8
  %403 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %priv, align 8
  %cfg.i207.i = getelementptr inbounds %struct.rtl_priv, ptr %404, i32 0, i32 32
  %405 = ptrtoint ptr %cfg.i207.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %cfg.i207.i, align 8
  %ops.i208.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %406, i32 0, i32 4
  %407 = ptrtoint ptr %ops.i208.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %ops.i208.i, align 4
  %set_bbreg.i209.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %408, i32 0, i32 46
  %409 = ptrtoint ptr %set_bbreg.i209.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %set_bbreg.i209.i, align 4
  call void %410(ptr noundef %hw, i32 noundef 2604, i32 noundef 12288, i32 noundef 0) #8
  %411 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %priv, align 8
  %cfg.i211.i = getelementptr inbounds %struct.rtl_priv, ptr %412, i32 0, i32 32
  %413 = ptrtoint ptr %cfg.i211.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %cfg.i211.i, align 8
  %ops.i212.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %414, i32 0, i32 4
  %415 = ptrtoint ptr %ops.i212.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %ops.i212.i, align 4
  %set_bbreg.i213.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %416, i32 0, i32 46
  %417 = ptrtoint ptr %set_bbreg.i213.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %set_bbreg.i213.i, align 4
  call void %418(ptr noundef %hw, i32 noundef 2604, i32 noundef 12288, i32 noundef 2) #8
  %419 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %priv, align 8
  %cfg.i215.i = getelementptr inbounds %struct.rtl_priv, ptr %420, i32 0, i32 32
  %421 = ptrtoint ptr %cfg.i215.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %cfg.i215.i, align 8
  %ops.i216.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %422, i32 0, i32 4
  %423 = ptrtoint ptr %ops.i216.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %ops.i216.i, align 4
  %set_bbreg.i217.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %424, i32 0, i32 46
  %425 = ptrtoint ptr %set_bbreg.i217.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %set_bbreg.i217.i, align 4
  call void %426(ptr noundef %hw, i32 noundef 2604, i32 noundef 49152, i32 noundef 0) #8
  %427 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %priv, align 8
  %cfg.i219.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 32
  %429 = ptrtoint ptr %cfg.i219.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %cfg.i219.i, align 8
  %ops.i220.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %430, i32 0, i32 4
  %431 = ptrtoint ptr %ops.i220.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %ops.i220.i, align 4
  %set_bbreg.i221.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %432, i32 0, i32 46
  %433 = ptrtoint ptr %set_bbreg.i221.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %set_bbreg.i221.i, align 4
  call void %434(ptr noundef %hw, i32 noundef 2604, i32 noundef 49152, i32 noundef 2) #8
  %435 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %falsealm_cnt1.i, align 4
  %437 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %cnt_rate_illegal.i, align 4
  %439 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %cnt_crc8_fail.i, align 4
  %441 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %cnt_mcs_fail.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %218, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.19, i32 noundef %436, i32 noundef %438, i32 noundef %440, i32 noundef %442) #8
  %443 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %cnt_ofdm_fail.i, align 4
  %445 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %cnt_cck_fail.i, align 4
  %447 = ptrtoint ptr %cnt_all.i38 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %cnt_all.i38, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %218, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.20, i32 noundef %444, i32 noundef %446, i32 noundef %448) #8
  %449 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %priv, align 8
  %dm.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 15
  %dynamic_txpower_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 15, i32 6
  %451 = ptrtoint ptr %dynamic_txpower_enable.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %dynamic_txpower_enable.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %452)
  %tobool.not.i40 = icmp eq i8 %452, 0
  br i1 %tobool.not.i40, label %rtl88e_dm_dig.exit.rtl92c_dm_dynamic_txpower.exit_crit_edge, label %if.end.i42

rtl88e_dm_dig.exit.rtl92c_dm_dynamic_txpower.exit_crit_edge: ; preds = %rtl88e_dm_dig.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92c_dm_dynamic_txpower.exit

if.end.i42:                                       ; preds = %rtl88e_dm_dig.exit
  %dm_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 15, i32 30
  %453 = ptrtoint ptr %dm_flag.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %dm_flag.i, align 4
  %455 = and i8 %454, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %455)
  %tobool3.not.i41 = icmp eq i8 %455, 0
  br i1 %tobool3.not.i41, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #10
  %dynamic_txhighpower_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 15, i32 29
  %456 = ptrtoint ptr %dynamic_txhighpower_lvl.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 0, ptr %dynamic_txhighpower_lvl.i, align 1
  br label %rtl92c_dm_dynamic_txpower.exit

if.end6.i:                                        ; preds = %if.end.i42
  %link_state.i43 = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 9, i32 10
  %457 = ptrtoint ptr %link_state.i43 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %link_state.i43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %458)
  %cmp.i44 = icmp ult i32 %458, 2
  br i1 %cmp.i44, label %land.lhs.true.i, label %if.then19.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %459 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %dm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %460)
  %cmp9.i = icmp eq i32 %460, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.else28.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %450, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.21) #8
  %dynamic_txhighpower_lvl13.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 15, i32 29
  %461 = ptrtoint ptr %dynamic_txhighpower_lvl13.i to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 0, ptr %dynamic_txhighpower_lvl13.i, align 1
  %last_dtp_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 15, i32 24
  %462 = ptrtoint ptr %last_dtp_lvl.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 0, ptr %last_dtp_lvl.i, align 1
  br label %rtl92c_dm_dynamic_txpower.exit

if.then19.i:                                      ; preds = %if.end6.i
  %opmode.i45 = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 9, i32 8
  %463 = ptrtoint ptr %opmode.i45 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %opmode.i45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %464)
  %cmp20.i = icmp eq i32 %464, 1
  br i1 %cmp20.i, label %if.then22.i, label %if.else.i46

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  %465 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %dm.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %450, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %466) #8
  br label %if.end31.i

if.else.i46:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  %undec_sm_pwdb26.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 15, i32 2
  %467 = ptrtoint ptr %undec_sm_pwdb26.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %undec_sm_pwdb26.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %450, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %468) #8
  br label %if.end31.i

if.else28.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %450, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %460) #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else28.i, %if.else.i46, %if.then22.i
  %undec_sm_pwdb.0.i = phi i32 [ %466, %if.then22.i ], [ %468, %if.else.i46 ], [ %460, %if.else28.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %undec_sm_pwdb.0.i)
  %cmp32.i = icmp sgt i32 %undec_sm_pwdb.0.i, 73
  br i1 %cmp32.i, label %if.end31.i.if.end54.sink.split.i_crit_edge, label %if.else37.i47

if.end31.i.if.end54.sink.split.i_crit_edge:       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.sink.split.i

if.else37.i47:                                    ; preds = %if.end31.i
  %469 = add i32 %undec_sm_pwdb.0.i, -67
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %469)
  %470 = icmp ult i32 %469, 4
  br i1 %470, label %if.else37.i47.if.end54.sink.split.i_crit_edge, label %if.else46.i48

if.else37.i47.if.end54.sink.split.i_crit_edge:    ; preds = %if.else37.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.sink.split.i

if.else46.i48:                                    ; preds = %if.else37.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %undec_sm_pwdb.0.i)
  %cmp47.i = icmp slt i32 %undec_sm_pwdb.0.i, 62
  br i1 %cmp47.i, label %if.else46.i48.if.end54.sink.split.i_crit_edge, label %if.else46.i48.if.end54.i_crit_edge

if.else46.i48.if.end54.i_crit_edge:               ; preds = %if.else46.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.else46.i48.if.end54.sink.split.i_crit_edge:    ; preds = %if.else46.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.sink.split.i

if.end54.sink.split.i:                            ; preds = %if.else46.i48.if.end54.sink.split.i_crit_edge, %if.else37.i47.if.end54.sink.split.i_crit_edge, %if.end31.i.if.end54.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.end31.i.if.end54.sink.split.i_crit_edge ], [ 1, %if.else37.i47.if.end54.sink.split.i_crit_edge ], [ 0, %if.else46.i48.if.end54.sink.split.i_crit_edge ]
  %.str.26.sink.i = phi ptr [ @.str.25, %if.end31.i.if.end54.sink.split.i_crit_edge ], [ @.str.26, %if.else37.i47.if.end54.sink.split.i_crit_edge ], [ @.str.27, %if.else46.i48.if.end54.sink.split.i_crit_edge ]
  %dynamic_txhighpower_lvl45.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 15, i32 29
  %471 = ptrtoint ptr %dynamic_txhighpower_lvl45.i to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 %.sink.i, ptr %dynamic_txhighpower_lvl45.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %450, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull %.str.26.sink.i) #8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end54.sink.split.i, %if.else46.i48.if.end54.i_crit_edge
  %dynamic_txhighpower_lvl56.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 15, i32 29
  %472 = ptrtoint ptr %dynamic_txhighpower_lvl56.i to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %dynamic_txhighpower_lvl56.i, align 1
  %last_dtp_lvl59.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 15, i32 24
  %474 = ptrtoint ptr %last_dtp_lvl59.i to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %last_dtp_lvl59.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %473, i8 %475)
  %cmp61.not.i = icmp eq i8 %473, %475
  br i1 %cmp61.not.i, label %if.end54.i.if.end66.i_crit_edge, label %if.then63.i

if.end54.i.if.end66.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then63.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %current_channel.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 14, i32 10
  %476 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %current_channel.i, align 1
  %conv64.i = zext i8 %477 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %450, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.28, i32 noundef %conv64.i) #8
  %478 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %current_channel.i, align 1
  call void @rtl88e_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %479) #8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then63.i, %if.end54.i.if.end66.i_crit_edge
  %480 = ptrtoint ptr %dynamic_txhighpower_lvl56.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %dynamic_txhighpower_lvl56.i, align 1
  %482 = ptrtoint ptr %last_dtp_lvl59.i to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 %481, ptr %last_dtp_lvl59.i, align 1
  br label %rtl92c_dm_dynamic_txpower.exit

rtl92c_dm_dynamic_txpower.exit:                   ; preds = %if.end66.i, %if.then11.i, %if.then4.i, %rtl88e_dm_dig.exit.rtl92c_dm_dynamic_txpower.exit_crit_edge
  call void @rtl88e_dm_check_txpower_tracking(ptr noundef %hw)
  %483 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %priv, align 8
  %state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 10, i32 14
  %485 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %486)
  %cmp.i.i50 = icmp eq i8 %486, 0
  br i1 %cmp.i.i50, label %if.then.i51, label %if.end.i54

if.then.i51:                                      ; preds = %rtl92c_dm_dynamic_txpower.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %484, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.29) #8
  br label %rtl88e_dm_refresh_rate_adaptive_mask.exit

if.end.i54:                                       ; preds = %rtl92c_dm_dynamic_txpower.exit
  %useramask.i52 = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 15, i32 14
  %487 = ptrtoint ptr %useramask.i52 to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %useramask.i52, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %488)
  %tobool.not.i53 = icmp eq i8 %488, 0
  br i1 %tobool.not.i53, label %if.then4.i55, label %if.end5.i58

if.then4.i55:                                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %484, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.30) #8
  br label %rtl88e_dm_refresh_rate_adaptive_mask.exit

if.end5.i58:                                      ; preds = %if.end.i54
  %link_state.i56 = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 9, i32 10
  %489 = ptrtoint ptr %link_state.i56 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %link_state.i56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %490)
  %cmp.i57 = icmp eq i32 %490, 2
  br i1 %cmp.i57, label %land.lhs.true.i61, label %if.end5.i58.rtl88e_dm_refresh_rate_adaptive_mask.exit_crit_edge

if.end5.i58.rtl88e_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %if.end5.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_refresh_rate_adaptive_mask.exit

land.lhs.true.i61:                                ; preds = %if.end5.i58
  %opmode.i59 = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 9, i32 8
  %491 = ptrtoint ptr %opmode.i59 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %opmode.i59, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %492)
  %cmp6.i60 = icmp eq i32 %492, 2
  br i1 %cmp6.i60, label %if.then7.i, label %land.lhs.true.i61.rtl88e_dm_refresh_rate_adaptive_mask.exit_crit_edge

land.lhs.true.i61.rtl88e_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_refresh_rate_adaptive_mask.exit

if.then7.i:                                       ; preds = %land.lhs.true.i61
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 22, i32 21
  %493 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %pre_ratr_state.i, align 4
  %495 = zext i8 %494 to i64
  call void @__sanitizer_cov_trace_switch(i64 %495, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %494, label %if.then7.i.sw.epilog.i_crit_edge [
    i8 3, label %sw.bb9.i
    i8 2, label %sw.bb8.i
  ]

if.then7.i.sw.epilog.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb9.i, %sw.bb8.i, %if.then7.i.sw.epilog.i_crit_edge
  %low_rssithresh_for_ra.0.i = phi i32 [ 25, %sw.bb9.i ], [ 20, %sw.bb8.i ], [ 20, %if.then7.i.sw.epilog.i_crit_edge ]
  %high_rssithresh_for_ra.0.i = phi i32 [ 50, %sw.bb9.i ], [ 55, %sw.bb8.i ], [ 50, %if.then7.i.sw.epilog.i_crit_edge ]
  %undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 15, i32 2
  %496 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %undec_sm_pwdb.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %497, i32 %high_rssithresh_for_ra.0.i)
  %cmp11.i = icmp sgt i32 %497, %high_rssithresh_for_ra.0.i
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i62

if.then13.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 22, i32 1
  %498 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 1, ptr %ratr_state.i, align 1
  br label %if.end23.i

if.else.i62:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_cmp4(i32 %497, i32 %low_rssithresh_for_ra.0.i)
  %cmp16.i = icmp sgt i32 %497, %low_rssithresh_for_ra.0.i
  %ratr_state19.i = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 22, i32 1
  br i1 %cmp16.i, label %if.then18.i, label %if.else20.i

if.then18.i:                                      ; preds = %if.else.i62
  call void @__sanitizer_cov_trace_pc() #10
  %499 = ptrtoint ptr %ratr_state19.i to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 2, ptr %ratr_state19.i, align 1
  br label %if.end23.i

if.else20.i:                                      ; preds = %if.else.i62
  call void @__sanitizer_cov_trace_pc() #10
  %500 = ptrtoint ptr %ratr_state19.i to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 3, ptr %ratr_state19.i, align 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else20.i, %if.then18.i, %if.then13.i
  %501 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %pre_ratr_state.i, align 4
  %ratr_state26.i = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 22, i32 1
  %503 = ptrtoint ptr %ratr_state26.i to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %ratr_state26.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %502, i8 %504)
  %cmp28.not.i = icmp eq i8 %502, %504
  br i1 %cmp28.not.i, label %if.end23.i.rtl88e_dm_refresh_rate_adaptive_mask.exit_crit_edge, label %if.then30.i64

if.end23.i.rtl88e_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl88e_dm_refresh_rate_adaptive_mask.exit

if.then30.i64:                                    ; preds = %if.end23.i
  %505 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %undec_sm_pwdb.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %484, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %506) #8
  %507 = ptrtoint ptr %ratr_state26.i to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %ratr_state26.i, align 1
  %conv34.i = zext i8 %508 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %484, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %conv34.i) #8
  %509 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %pre_ratr_state.i, align 4
  %conv36.i = zext i8 %510 to i32
  %511 = ptrtoint ptr %ratr_state26.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %ratr_state26.i, align 1
  %conv38.i = zext i8 %512 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %484, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %conv36.i, i32 noundef %conv38.i) #8
  %513 = call i32 @llvm.read_register.i32(metadata !112) #8
  %and.i.i.i.i.i.i = and i32 %513, -16384
  %514 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %514, i32 0, i32 1
  %515 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %516, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !123
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i63 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i63, label %if.then30.i64.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i66

if.then30.i64.rcu_read_lock.exit.i_crit_edge:     ; preds = %if.then30.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i66:                              ; preds = %if.then30.i64
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i65 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i65, label %land.lhs.true.i.i66.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i66.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i66
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i67

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i67:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i67, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i66.rcu_read_lock.exit.i_crit_edge, %if.then30.i64.rcu_read_lock.exit.i_crit_edge
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 9, i32 34
  %517 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %priv, align 8
  %vif.i.i = getelementptr inbounds %struct.rtl_priv, ptr %518, i32 0, i32 9, i32 7
  %519 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %vif.i.i, align 4
  %call.i82.i = call ptr @ieee80211_find_sta(ptr noundef %520, ptr noundef %bssid.i) #8
  %tobool40.not.i = icmp eq ptr %call.i82.i, null
  br i1 %tobool40.not.i, label %rcu_read_lock.exit.i.if.end43.i_crit_edge, label %if.then41.i

rcu_read_lock.exit.i.if.end43.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then41.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 32
  %521 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %522, i32 0, i32 4
  %523 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %ops.i, align 4
  %update_rate_tbl.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %524, i32 0, i32 21
  %525 = ptrtoint ptr %update_rate_tbl.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %update_rate_tbl.i, align 4
  %527 = ptrtoint ptr %ratr_state26.i to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %ratr_state26.i, align 1
  call void %526(ptr noundef %hw, ptr noundef nonnull %call.i82.i, i8 noundef zeroext %528, i1 noundef zeroext true) #8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %rcu_read_lock.exit.i.if.end43.i_crit_edge
  %call.i83.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i83.i, label %if.end43.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i86.i

if.end43.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i86.i:                              ; preds = %if.end43.i
  %call1.i84.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84.i)
  %tobool.not.i85.i = icmp eq i32 %call1.i84.i, 0
  br i1 %tobool.not.i85.i, label %land.lhs.true.i86.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i88.i

land.lhs.true.i86.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i88.i:                             ; preds = %land.lhs.true.i86.i
  %.b4.i87.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i87.i, label %land.lhs.true2.i88.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i89.i

land.lhs.true2.i88.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i89.i:                                    ; preds = %land.lhs.true2.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i89.i, %land.lhs.true2.i88.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i86.i.rcu_read_unlock.exit.i_crit_edge, %if.end43.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !124
  %529 = call i32 @llvm.read_register.i32(metadata !112) #8
  %and.i.i.i.i.i90.i = and i32 %529, -16384
  %530 = inttoptr i32 %and.i.i.i.i.i90.i to ptr
  %preempt_count.i.i.i.i91.i = getelementptr inbounds %struct.thread_info, ptr %530, i32 0, i32 1
  %531 = ptrtoint ptr %preempt_count.i.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load volatile i32, ptr %preempt_count.i.i.i.i91.i, align 4
  %sub.i.i.i.i = add i32 %532, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i91.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %533 = ptrtoint ptr %ratr_state26.i to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %ratr_state26.i, align 1
  %535 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 %534, ptr %pre_ratr_state.i, align 4
  br label %rtl88e_dm_refresh_rate_adaptive_mask.exit

rtl88e_dm_refresh_rate_adaptive_mask.exit:        ; preds = %rcu_read_unlock.exit.i, %if.end23.i.rtl88e_dm_refresh_rate_adaptive_mask.exit_crit_edge, %land.lhs.true.i61.rtl88e_dm_refresh_rate_adaptive_mask.exit_crit_edge, %if.end5.i58.rtl88e_dm_refresh_rate_adaptive_mask.exit_crit_edge, %if.then4.i55, %if.then.i51
  %536 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %priv, align 8
  %538 = load i32, ptr @rtl88e_dm_check_edca_turbo.last_bt_edca_ul, align 4
  %bt_edca_ul.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 49, i32 23
  %539 = ptrtoint ptr %bt_edca_ul.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %bt_edca_ul.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %538, i32 %540)
  %cmp.not.i = icmp eq i32 %538, %540
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %rtl88e_dm_refresh_rate_adaptive_mask.exit.if.then.i69_crit_edge

rtl88e_dm_refresh_rate_adaptive_mask.exit.if.then.i69_crit_edge: ; preds = %rtl88e_dm_refresh_rate_adaptive_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i69

lor.lhs.false.i:                                  ; preds = %rtl88e_dm_refresh_rate_adaptive_mask.exit
  %541 = load i32, ptr @rtl88e_dm_check_edca_turbo.last_bt_edca_dl, align 4
  %bt_edca_dl.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 49, i32 24
  %542 = ptrtoint ptr %bt_edca_dl.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %bt_edca_dl.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %541, i32 %543)
  %cmp3.not.i = icmp eq i32 %541, %543
  br i1 %cmp3.not.i, label %lor.lhs.false.i.if.end.i72_crit_edge, label %lor.lhs.false.i.if.then.i69_crit_edge

lor.lhs.false.i.if.then.i69_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i69

lor.lhs.false.i.if.end.i72_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i72

if.then.i69:                                      ; preds = %lor.lhs.false.i.if.then.i69_crit_edge, %rtl88e_dm_refresh_rate_adaptive_mask.exit.if.then.i69_crit_edge
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 15, i32 7
  %544 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 0, ptr %current_turbo_edca.i, align 2
  store i32 %540, ptr @rtl88e_dm_check_edca_turbo.last_bt_edca_ul, align 4
  %bt_edca_dl7.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 49, i32 24
  %545 = ptrtoint ptr %bt_edca_dl7.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %bt_edca_dl7.i, align 8
  store i32 %546, ptr @rtl88e_dm_check_edca_turbo.last_bt_edca_dl, align 4
  br label %if.end.i72

if.end.i72:                                       ; preds = %if.then.i69, %lor.lhs.false.i.if.end.i72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %540)
  %cmp10.not.i = icmp eq i32 %540, 0
  %spec.select.i70 = select i1 %cmp10.not.i, i32 6202411, i32 %540
  %bt_edca_dl16.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 49, i32 24
  %547 = ptrtoint ptr %bt_edca_dl16.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %bt_edca_dl16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %548)
  %cmp17.not.i = icmp eq i32 %548, 0
  %edca_be_ul.1.i = select i1 %cmp17.not.i, i32 %spec.select.i70, i32 %548
  %link_state.i71 = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 9, i32 10
  %549 = ptrtoint ptr %link_state.i71 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %link_state.i71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %550)
  %cmp22.not.i = icmp eq i32 %550, 2
  br i1 %cmp22.not.i, label %if.end26.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #10
  %current_turbo_edca25.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 15, i32 7
  %551 = ptrtoint ptr %current_turbo_edca25.i to i32
  call void @__asan_store1_noabort(i32 %551)
  store i8 0, ptr %current_turbo_edca25.i, align 2
  br label %rtl88e_dm_check_edca_turbo.exit

if.end26.i:                                       ; preds = %if.end.i72
  %552 = select i1 %cmp17.not.i, i1 %cmp10.not.i, i1 false
  br i1 %552, label %lor.lhs.false27.i, label %if.end26.i.if.then32.i_crit_edge

if.end26.i.if.then32.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

lor.lhs.false27.i:                                ; preds = %if.end26.i
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 15, i32 8
  %553 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_load1_noabort(i32 %553)
  %554 = load i8, ptr %is_any_nonbepkts.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %554)
  %tobool29.not.i = icmp eq i8 %554, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i73, label %lor.lhs.false27.i.if.else61.i_crit_edge

lor.lhs.false27.i.if.else61.i_crit_edge:          ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else61.i

land.lhs.true.i73:                                ; preds = %lor.lhs.false27.i
  %disable_framebursting.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 15, i32 11
  %555 = ptrtoint ptr %disable_framebursting.i to i32
  call void @__asan_load1_noabort(i32 %555)
  %556 = load i8, ptr %disable_framebursting.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %556)
  %tobool31.not.i = icmp eq i8 %556, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i73.if.then32.i_crit_edge, label %land.lhs.true.i73.if.else61.i_crit_edge

land.lhs.true.i73.if.else61.i_crit_edge:          ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else61.i

land.lhs.true.i73.if.then32.i_crit_edge:          ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.then32.i:                                      ; preds = %land.lhs.true.i73.if.then32.i_crit_edge, %if.end26.i.if.then32.i_crit_edge
  %stats.i74 = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 24
  %557 = ptrtoint ptr %stats.i74 to i32
  call void @__asan_load8_noabort(i32 %557)
  %558 = load i64, ptr %stats.i74, align 8
  %559 = load i64, ptr @rtl88e_dm_check_edca_turbo.last_txok_cnt, align 8
  %sub.i75 = sub i64 %558, %559
  %rxbytesunicast.i76 = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 24, i32 3
  %560 = ptrtoint ptr %rxbytesunicast.i76 to i32
  call void @__asan_load8_noabort(i32 %560)
  %561 = load i64, ptr %rxbytesunicast.i76, align 8
  %562 = load i64, ptr @rtl88e_dm_check_edca_turbo.last_rxok_cnt, align 8
  %sub34.i = sub i64 %561, %562
  %mul.i77 = shl i64 %sub.i75, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub34.i, i64 %mul.i77)
  %cmp35.i = icmp ugt i64 %sub34.i, %mul.i77
  %is_cur_rdlstate.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 15, i32 9
  %563 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %is_cur_rdlstate.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %564)
  %tobool38.not.i = icmp eq i8 %564, 0
  br i1 %cmp35.i, label %if.then36.i78, label %if.else.i84

if.then36.i78:                                    ; preds = %if.then32.i
  br i1 %tobool38.not.i, label %if.then36.i78.if.then43.i83_crit_edge, label %lor.lhs.false39.i

if.then36.i78.if.then43.i83_crit_edge:            ; preds = %if.then36.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i83

lor.lhs.false39.i:                                ; preds = %if.then36.i78
  %current_turbo_edca41.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 15, i32 7
  %565 = ptrtoint ptr %current_turbo_edca41.i to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %current_turbo_edca41.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %566)
  %tobool42.not.i = icmp eq i8 %566, 0
  br i1 %tobool42.not.i, label %lor.lhs.false39.i.if.then43.i83_crit_edge, label %lor.lhs.false39.i.if.end58.i_crit_edge

lor.lhs.false39.i.if.end58.i_crit_edge:           ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

lor.lhs.false39.i.if.then43.i83_crit_edge:        ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i83

if.then43.i83:                                    ; preds = %lor.lhs.false39.i.if.then43.i83_crit_edge, %if.then36.i78.if.then43.i83_crit_edge
  %write32_async.i.i79 = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 13, i32 7
  %567 = ptrtoint ptr %write32_async.i.i79 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %write32_async.i.i79, align 4
  call void %568(ptr noundef %537, i32 noundef 1288, i32 noundef 6202411) #8
  %cfg.i.i80 = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 32
  %569 = ptrtoint ptr %cfg.i.i80 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %cfg.i.i80, align 8
  %write_readback.i.i81 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %570, i32 0, i32 1
  %571 = ptrtoint ptr %write_readback.i.i81 to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %write_readback.i.i81, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %572)
  %tobool.not.i.i82 = icmp eq i8 %572, 0
  br i1 %tobool.not.i.i82, label %if.then43.i83.if.end58.sink.split.i_crit_edge, label %if.then43.i83.if.end58.sink.split.sink.split.i_crit_edge

if.then43.i83.if.end58.sink.split.sink.split.i_crit_edge: ; preds = %if.then43.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.sink.split.i

if.then43.i83.if.end58.sink.split.i_crit_edge:    ; preds = %if.then43.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.i

if.else.i84:                                      ; preds = %if.then32.i
  br i1 %tobool38.not.i, label %lor.lhs.false50.i, label %if.else.i84.if.then54.i_crit_edge

if.else.i84.if.then54.i_crit_edge:                ; preds = %if.else.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.i

lor.lhs.false50.i:                                ; preds = %if.else.i84
  %current_turbo_edca52.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 15, i32 7
  %573 = ptrtoint ptr %current_turbo_edca52.i to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %current_turbo_edca52.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %574)
  %tobool53.not.i = icmp eq i8 %574, 0
  br i1 %tobool53.not.i, label %lor.lhs.false50.i.if.then54.i_crit_edge, label %lor.lhs.false50.i.if.end58.i_crit_edge

lor.lhs.false50.i.if.end58.i_crit_edge:           ; preds = %lor.lhs.false50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

lor.lhs.false50.i.if.then54.i_crit_edge:          ; preds = %lor.lhs.false50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.i

if.then54.i:                                      ; preds = %lor.lhs.false50.i.if.then54.i_crit_edge, %if.else.i84.if.then54.i_crit_edge
  %write32_async.i113.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 13, i32 7
  %575 = ptrtoint ptr %write32_async.i113.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %write32_async.i113.i, align 4
  call void %576(ptr noundef %537, i32 noundef 1288, i32 noundef %edca_be_ul.1.i) #8
  %cfg.i114.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 32
  %577 = ptrtoint ptr %cfg.i114.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %cfg.i114.i, align 8
  %write_readback.i115.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %578, i32 0, i32 1
  %579 = ptrtoint ptr %write_readback.i115.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %write_readback.i115.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %580)
  %tobool.not.i116.i = icmp eq i8 %580, 0
  br i1 %tobool.not.i116.i, label %if.then54.i.if.end58.sink.split.i_crit_edge, label %if.then54.i.if.end58.sink.split.sink.split.i_crit_edge

if.then54.i.if.end58.sink.split.sink.split.i_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.sink.split.i

if.then54.i.if.end58.sink.split.i_crit_edge:      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.i

if.end58.sink.split.sink.split.i:                 ; preds = %if.then54.i.if.end58.sink.split.sink.split.i_crit_edge, %if.then43.i83.if.end58.sink.split.sink.split.i_crit_edge
  %.sink.ph.i = phi i8 [ 1, %if.then43.i83.if.end58.sink.split.sink.split.i_crit_edge ], [ 0, %if.then54.i.if.end58.sink.split.sink.split.i_crit_edge ]
  %read32_sync.i117.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 13, i32 11
  %581 = ptrtoint ptr %read32_sync.i117.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %read32_sync.i117.i, align 4
  %call.i118.i = call i32 %582(ptr noundef %537, i32 noundef 1288) #8
  br label %if.end58.sink.split.i

if.end58.sink.split.i:                            ; preds = %if.end58.sink.split.sink.split.i, %if.then54.i.if.end58.sink.split.i_crit_edge, %if.then43.i83.if.end58.sink.split.i_crit_edge
  %.sink.i85 = phi i8 [ 1, %if.then43.i83.if.end58.sink.split.i_crit_edge ], [ 0, %if.then54.i.if.end58.sink.split.i_crit_edge ], [ %.sink.ph.i, %if.end58.sink.split.sink.split.i ]
  %583 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 %.sink.i85, ptr %is_cur_rdlstate.i, align 8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end58.sink.split.i, %lor.lhs.false50.i.if.end58.i_crit_edge, %lor.lhs.false39.i.if.end58.i_crit_edge
  %current_turbo_edca60.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 15, i32 7
  %584 = ptrtoint ptr %current_turbo_edca60.i to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 1, ptr %current_turbo_edca60.i, align 2
  br label %if.end69.i

if.else61.i:                                      ; preds = %land.lhs.true.i73.if.else61.i_crit_edge, %lor.lhs.false27.i.if.else61.i_crit_edge
  %current_turbo_edca63.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 15, i32 7
  %585 = ptrtoint ptr %current_turbo_edca63.i to i32
  call void @__asan_load1_noabort(i32 %585)
  %586 = load i8, ptr %current_turbo_edca63.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %586)
  %tobool64.not.i = icmp eq i8 %586, 0
  br i1 %tobool64.not.i, label %if.else61.i.if.end69.i_crit_edge, label %if.then65.i

if.else61.i.if.end69.i_crit_edge:                 ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then65.i:                                      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %587 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 0, ptr %tmp.i, align 1
  %cfg.i86 = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 32
  %588 = ptrtoint ptr %cfg.i86 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %cfg.i86, align 8
  %ops.i87 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %589, i32 0, i32 4
  %590 = ptrtoint ptr %ops.i87 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %ops.i87, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %591, i32 0, i32 20
  %592 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %set_hw_reg.i, align 4
  call void %593(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %tmp.i) #8
  %594 = ptrtoint ptr %current_turbo_edca63.i to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 0, ptr %current_turbo_edca63.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then65.i, %if.else61.i.if.end69.i_crit_edge, %if.end58.i
  %is_any_nonbepkts71.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 15, i32 8
  %595 = ptrtoint ptr %is_any_nonbepkts71.i to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 0, ptr %is_any_nonbepkts71.i, align 1
  %stats72.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 24
  %596 = ptrtoint ptr %stats72.i to i32
  call void @__asan_load8_noabort(i32 %596)
  %597 = load i64, ptr %stats72.i, align 8
  store i64 %597, ptr @rtl88e_dm_check_edca_turbo.last_txok_cnt, align 8
  %rxbytesunicast75.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 24, i32 3
  %598 = ptrtoint ptr %rxbytesunicast75.i to i32
  call void @__asan_load8_noabort(i32 %598)
  %599 = load i64, ptr %rxbytesunicast75.i, align 8
  store i64 %599, ptr @rtl88e_dm_check_edca_turbo.last_rxok_cnt, align 8
  br label %rtl88e_dm_check_edca_turbo.exit

rtl88e_dm_check_edca_turbo.exit:                  ; preds = %if.end69.i, %if.then23.i
  %600 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %priv, align 8
  %link_state.i89 = getelementptr inbounds %struct.rtl_priv, ptr %601, i32 0, i32 9, i32 10
  %602 = ptrtoint ptr %link_state.i89 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %link_state.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %603)
  %cmp.i90 = icmp ult i32 %603, 2
  br i1 %cmp.i90, label %if.then.i92, label %if.else.i101

if.then.i92:                                      ; preds = %rtl88e_dm_check_edca_turbo.exit
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %601, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.37) #8
  %becomelinked.i = getelementptr inbounds %struct.rtl_priv, ptr %601, i32 0, i32 15, i32 72, i32 17
  %604 = ptrtoint ptr %becomelinked.i to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %becomelinked.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %605)
  %tobool.not.i91 = icmp eq i8 %605, 0
  br i1 %tobool.not.i91, label %if.then.i92.if.end11_crit_edge, label %if.then4.i97

if.then.i92.if.end11_crit_edge:                   ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then4.i97:                                     ; preds = %if.then.i92
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %601, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.38) #8
  %606 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %priv, align 8
  %cfg.i.i93 = getelementptr inbounds %struct.rtl_priv, ptr %607, i32 0, i32 32
  %608 = ptrtoint ptr %cfg.i.i93 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %cfg.i.i93, align 8
  %ops.i.i94 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %609, i32 0, i32 4
  %610 = ptrtoint ptr %ops.i.i94 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %ops.i.i94, align 4
  %set_bbreg.i.i95 = getelementptr inbounds %struct.rtl_hal_ops, ptr %611, i32 0, i32 46
  %612 = ptrtoint ptr %set_bbreg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %set_bbreg.i.i95, align 4
  call void %613(ptr noundef %hw, i32 noundef 3152, i32 noundef 128, i32 noundef 0) #8
  %614 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %priv, align 8
  %cfg.i76.i = getelementptr inbounds %struct.rtl_priv, ptr %615, i32 0, i32 32
  %616 = ptrtoint ptr %cfg.i76.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %cfg.i76.i, align 8
  %ops.i77.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %617, i32 0, i32 4
  %618 = ptrtoint ptr %ops.i77.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %ops.i77.i, align 4
  %set_bbreg.i78.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %619, i32 0, i32 46
  %620 = ptrtoint ptr %set_bbreg.i78.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %set_bbreg.i78.i, align 4
  call void %621(ptr noundef %hw, i32 noundef 2560, i32 noundef 32768, i32 noundef 0) #8
  %antenna_div_type.i96 = getelementptr inbounds %struct.rtl_priv, ptr %601, i32 0, i32 17, i32 22
  %622 = ptrtoint ptr %antenna_div_type.i96 to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %antenna_div_type.i96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %623)
  %cmp5.i = icmp eq i8 %623, 1
  br i1 %cmp5.i, label %if.then7.i98, label %if.then4.i97.if.end.i100_crit_edge

if.then4.i97.if.end.i100_crit_edge:               ; preds = %if.then4.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i100

if.then7.i98:                                     ; preds = %if.then4.i97
  call void @__sanitizer_cov_trace_pc() #10
  %624 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %priv, align 8
  %cfg.i80.i = getelementptr inbounds %struct.rtl_priv, ptr %625, i32 0, i32 32
  %626 = ptrtoint ptr %cfg.i80.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %cfg.i80.i, align 8
  %ops.i81.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %627, i32 0, i32 4
  %628 = ptrtoint ptr %ops.i81.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %ops.i81.i, align 4
  %set_bbreg.i82.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %629, i32 0, i32 46
  %630 = ptrtoint ptr %set_bbreg.i82.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %set_bbreg.i82.i, align 4
  call void %631(ptr noundef %hw, i32 noundef 2060, i32 noundef 2097152, i32 noundef 0) #8
  br label %if.end.i100

if.end.i100:                                      ; preds = %if.then7.i98, %if.then4.i97.if.end.i100_crit_edge
  %632 = ptrtoint ptr %link_state.i89 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %link_state.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %633)
  %cmp9.i99 = icmp eq i32 %633, 2
  %frombool.i = zext i1 %cmp9.i99 to i8
  %634 = ptrtoint ptr %becomelinked.i to i32
  call void @__asan_store1_noabort(i32 %634)
  store i8 %frombool.i, ptr %becomelinked.i, align 1
  br label %if.end11

if.else.i101:                                     ; preds = %rtl88e_dm_check_edca_turbo.exit
  %becomelinked14.i = getelementptr inbounds %struct.rtl_priv, ptr %601, i32 0, i32 15, i32 72, i32 17
  %635 = ptrtoint ptr %becomelinked14.i to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %becomelinked14.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %636)
  %tobool15.not.i = icmp eq i8 %636, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.else.i101.if.end31.i104_crit_edge

if.else.i101.if.end31.i104_crit_edge:             ; preds = %if.else.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i104

if.then16.i:                                      ; preds = %if.else.i101
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %601, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.39) #8
  %637 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %priv, align 8
  %cfg.i84.i = getelementptr inbounds %struct.rtl_priv, ptr %638, i32 0, i32 32
  %639 = ptrtoint ptr %cfg.i84.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %cfg.i84.i, align 8
  %ops.i85.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %640, i32 0, i32 4
  %641 = ptrtoint ptr %ops.i85.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %ops.i85.i, align 4
  %set_bbreg.i86.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %642, i32 0, i32 46
  %643 = ptrtoint ptr %set_bbreg.i86.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %set_bbreg.i86.i, align 4
  call void %644(ptr noundef %hw, i32 noundef 3152, i32 noundef 128, i32 noundef 1) #8
  %645 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %priv, align 8
  %cfg.i88.i = getelementptr inbounds %struct.rtl_priv, ptr %646, i32 0, i32 32
  %647 = ptrtoint ptr %cfg.i88.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %cfg.i88.i, align 8
  %ops.i89.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %648, i32 0, i32 4
  %649 = ptrtoint ptr %ops.i89.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %ops.i89.i, align 4
  %set_bbreg.i90.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %650, i32 0, i32 46
  %651 = ptrtoint ptr %set_bbreg.i90.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %set_bbreg.i90.i, align 4
  call void %652(ptr noundef %hw, i32 noundef 2560, i32 noundef 32768, i32 noundef 1) #8
  %antenna_div_type17.i = getelementptr inbounds %struct.rtl_priv, ptr %601, i32 0, i32 17, i32 22
  %653 = ptrtoint ptr %antenna_div_type17.i to i32
  call void @__asan_load1_noabort(i32 %653)
  %654 = load i8, ptr %antenna_div_type17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %654)
  %cmp19.i = icmp eq i8 %654, 1
  br i1 %cmp19.i, label %if.then21.i, label %if.then16.i.if.end22.i103_crit_edge

if.then16.i.if.end22.i103_crit_edge:              ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i103

if.then21.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  %655 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %priv, align 8
  %cfg.i92.i = getelementptr inbounds %struct.rtl_priv, ptr %656, i32 0, i32 32
  %657 = ptrtoint ptr %cfg.i92.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %cfg.i92.i, align 8
  %ops.i93.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %658, i32 0, i32 4
  %659 = ptrtoint ptr %ops.i93.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %ops.i93.i, align 4
  %set_bbreg.i94.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %660, i32 0, i32 46
  %661 = ptrtoint ptr %set_bbreg.i94.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %set_bbreg.i94.i, align 4
  call void %662(ptr noundef %hw, i32 noundef 2060, i32 noundef 2097152, i32 noundef 1) #8
  br label %if.end22.i103

if.end22.i103:                                    ; preds = %if.then21.i, %if.then16.i.if.end22.i103_crit_edge
  %663 = ptrtoint ptr %link_state.i89 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %link_state.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %664)
  %cmp24.i102 = icmp ugt i32 %664, 1
  %frombool29.i = zext i1 %cmp24.i102 to i8
  %665 = ptrtoint ptr %becomelinked14.i to i32
  call void @__asan_store1_noabort(i32 %665)
  store i8 %frombool29.i, ptr %becomelinked14.i, align 1
  br label %if.end31.i104

if.end31.i104:                                    ; preds = %if.end22.i103, %if.else.i101.if.end31.i104_crit_edge
  %antenna_div_type32.i = getelementptr inbounds %struct.rtl_priv, ptr %601, i32 0, i32 17, i32 22
  %666 = ptrtoint ptr %antenna_div_type32.i to i32
  call void @__asan_load1_noabort(i32 %666)
  %667 = load i8, ptr %antenna_div_type32.i, align 1
  %668 = zext i8 %667 to i64
  call void @__sanitizer_cov_trace_switch(i64 %668, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %667, label %if.end31.i104.if.end11_crit_edge [
    i8 1, label %if.end31.i104.if.then40.i_crit_edge
    i8 2, label %if.end31.i104.if.then40.i_crit_edge120
    i8 4, label %if.then46.i
  ]

if.end31.i104.if.then40.i_crit_edge120:           ; preds = %if.end31.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i

if.end31.i104.if.then40.i_crit_edge:              ; preds = %if.end31.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i

if.end31.i104.if.end11_crit_edge:                 ; preds = %if.end31.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then40.i:                                      ; preds = %if.end31.i104.if.then40.i_crit_edge, %if.end31.i104.if.then40.i_crit_edge120
  %669 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %priv, align 8
  %main_ant_cnt.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 14
  %671 = ptrtoint ptr %main_ant_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %main_ant_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %672)
  %cmp.not.i.i = icmp eq i32 %672, 0
  br i1 %cmp.not.i.i, label %if.then40.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then40.i.cond.end.i.i_crit_edge:               ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  %main_ant_sum.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 12
  %673 = ptrtoint ptr %main_ant_sum.i.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %main_ant_sum.i.i, align 4
  %div.i.i = udiv i32 %674, %672
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then40.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %div.i.i, %cond.true.i.i ], [ 0, %if.then40.i.cond.end.i.i_crit_edge ]
  %aux_ant_cnt.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 15
  %675 = ptrtoint ptr %aux_ant_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %aux_ant_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %676)
  %cmp7.not.i.i = icmp eq i32 %676, 0
  br i1 %cmp7.not.i.i, label %cond.end.i.i.cond.end14.i.i_crit_edge, label %cond.true8.i.i

cond.end.i.i.cond.end14.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14.i.i

cond.true8.i.i:                                   ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %aux_ant_sum.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 13
  %677 = ptrtoint ptr %aux_ant_sum.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %aux_ant_sum.i.i, align 4
  %div12.i.i = udiv i32 %678, %676
  br label %cond.end14.i.i

cond.end14.i.i:                                   ; preds = %cond.true8.i.i, %cond.end.i.i.cond.end14.i.i_crit_edge
  %cond15.i.i = phi i32 [ %div12.i.i, %cond.true8.i.i ], [ 0, %cond.end.i.i.cond.end14.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %cond15.i.i)
  %cmp16.i.i = icmp eq i32 %cond.i.i, %cond15.i.i
  br i1 %cmp16.i.i, label %cond.true17.i.i, label %cond.false19.i.i

cond.true17.i.i:                                  ; preds = %cond.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_idle_ant18.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 16
  %679 = ptrtoint ptr %rx_idle_ant18.i.i to i32
  call void @__asan_load1_noabort(i32 %679)
  %680 = load i8, ptr %rx_idle_ant18.i.i, align 4
  br label %cond.end23.i.i

cond.false19.i.i:                                 ; preds = %cond.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %cond15.i.i)
  %cmp20.not.i.i = icmp ult i32 %cond.i.i, %cond15.i.i
  %cond22.i.i = zext i1 %cmp20.not.i.i to i8
  br label %cond.end23.i.i

cond.end23.i.i:                                   ; preds = %cond.false19.i.i, %cond.true17.i.i
  %cond24.i.i = phi i8 [ %680, %cond.true17.i.i ], [ %cond22.i.i, %cond.false19.i.i ]
  %main_ant_sum26.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 12
  %681 = ptrtoint ptr %main_ant_sum26.i.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %main_ant_sum26.i.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %670, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.40, i32 noundef %682, i32 noundef %672) #8
  %aux_ant_sum30.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 13
  %683 = ptrtoint ptr %aux_ant_sum30.i.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %aux_ant_sum30.i.i, align 4
  %685 = ptrtoint ptr %aux_ant_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load i32, ptr %aux_ant_cnt.i.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %670, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef %684, i32 noundef %686) #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %670, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.42, i32 noundef %cond.i.i, i32 noundef %cond15.i.i) #8
  %687 = call i32 @llvm.umax.i32(i32 %cond.i.i, i32 %cond15.i.i) #8
  %688 = add i32 %687, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %688)
  %689 = icmp ult i32 %688, 39
  %ant_div_max_rssi.0.i.i = select i1 %689, i32 %687, i32 0
  %rx_idle_ant48.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 16
  %690 = ptrtoint ptr %rx_idle_ant48.i.i to i32
  call void @__asan_load1_noabort(i32 %690)
  %691 = load i8, ptr %rx_idle_ant48.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %691)
  %cmp50.i.i = icmp eq i8 %691, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp53.i.i = icmp eq i32 %cond.i.i, 0
  %or.cond326.i.i = select i1 %cmp50.i.i, i1 %cmp53.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %691)
  %cmp58.i.i = icmp eq i8 %691, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond15.i.i)
  %cmp61.i.i = icmp eq i32 %cond15.i.i, 0
  %or.cond327.i.i = select i1 %cmp58.i.i, i1 %cmp61.i.i, i1 false
  %spec.select.i.i105 = select i1 %or.cond327.i.i, i32 %cond.i.i, i32 %cond15.i.i
  %main_rssi.0.i.i = select i1 %or.cond326.i.i, i32 %cond15.i.i, i32 %cond.i.i
  %aux_rssi.0.i.i = select i1 %or.cond326.i.i, i32 %cond15.i.i, i32 %spec.select.i.i105
  %692 = call i32 @llvm.umin.i32(i32 %main_rssi.0.i.i, i32 %aux_rssi.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %692)
  %cmp72.i.i = icmp ult i32 %692, 255
  %693 = call i32 @llvm.umin.i32(i32 %692, i32 255) #8
  %rx_idle_ant.0.i.i = select i1 %cmp72.i.i, i8 %cond24.i.i, i8 0
  %antenna_div_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 17, i32 22
  %694 = ptrtoint ptr %antenna_div_type.i.i to i32
  call void @__asan_load1_noabort(i32 %694)
  %695 = load i8, ptr %antenna_div_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %695)
  %cmp77.i.i = icmp eq i8 %695, 1
  br i1 %cmp77.i.i, label %if.then79.i.i, label %cond.end23.i.i.if.end80.i.i_crit_edge

cond.end23.i.i.if.end80.i.i_crit_edge:            ; preds = %cond.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i.i

if.then79.i.i:                                    ; preds = %cond.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %696 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond24.i.i)
  %cmp.i.i.i106 = icmp eq i8 %cond24.i.i, 0
  %.str.13..str.14.i.i.i = select i1 %cmp.i.i.i106, ptr @.str.13, ptr @.str.14
  %..i.i.i = zext i1 %cmp.i.i.i106 to i8
  %arrayidx.i.i.i = getelementptr %struct.rtl_priv, ptr %697, i32 0, i32 15, i32 72, i32 9, i32 0
  %698 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 %..i.i.i, ptr %arrayidx.i.i.i, align 1
  %arrayidx8.i.i.i = getelementptr %struct.rtl_priv, ptr %697, i32 0, i32 15, i32 72, i32 10, i32 0
  %699 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %699)
  store i8 0, ptr %arrayidx8.i.i.i, align 1
  %arrayidx13.i.i.i = getelementptr %struct.rtl_priv, ptr %697, i32 0, i32 15, i32 72, i32 11, i32 0
  %700 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %700)
  store i8 0, ptr %arrayidx13.i.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %697, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.43, ptr noundef nonnull %.str.13..str.14.i.i.i) #8
  %701 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %701)
  %702 = load i8, ptr %arrayidx13.i.i.i, align 1
  %conv19.i.i.i = zext i8 %702 to i32
  %703 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv22.i.i.i = zext i8 %704 to i32
  %705 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %705)
  %706 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv25.i.i.i = zext i8 %706 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %697, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %conv19.i.i.i, i32 noundef %conv22.i.i.i, i32 noundef %conv25.i.i.i) #8
  br label %if.end80.i.i

if.end80.i.i:                                     ; preds = %if.then79.i.i, %cond.end23.i.i.if.end80.i.i_crit_edge
  %opmode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 9, i32 8
  %707 = ptrtoint ptr %opmode.i.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %opmode.i.i, align 8
  %709 = zext i32 %708 to i64
  call void @__sanitizer_cov_trace_switch(i64 %709, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %708, label %if.end80.i.i.if.end188.i.i_crit_edge [
    i32 3, label %if.end80.i.i.if.then87.i.i_crit_edge
    i32 1, label %if.end80.i.i.if.then87.i.i_crit_edge121
  ]

if.end80.i.i.if.then87.i.i_crit_edge121:          ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then87.i.i

if.end80.i.i.if.then87.i.i_crit_edge:             ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then87.i.i

if.end80.i.i.if.end188.i.i_crit_edge:             ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188.i.i

if.then87.i.i:                                    ; preds = %if.end80.i.i.if.then87.i.i_crit_edge, %if.end80.i.i.if.then87.i.i_crit_edge121
  %entry_list_lock.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 7, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock.i.i) #8
  %entry_list.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 28
  %710 = ptrtoint ptr %entry_list.i.i to i32
  call void @__asan_loadN_noabort(i32 %710, i32 4)
  %drv_priv.0342.i.i = load ptr, ptr %entry_list.i.i, align 1
  %cmp89.not343.i.i = icmp eq ptr %drv_priv.0342.i.i, %entry_list.i.i
  br i1 %cmp89.not343.i.i, label %if.then87.i.i.for.end.i.i_crit_edge, label %if.then87.i.i.for.body.i.i_crit_edge

if.then87.i.i.for.body.i.i_crit_edge:             ; preds = %if.then87.i.i
  br label %for.body.i.i

if.then87.i.i.for.end.i.i_crit_edge:              ; preds = %if.then87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then87.i.i.for.body.i.i_crit_edge
  %drv_priv.0349.i.i = phi ptr [ %drv_priv.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %drv_priv.0342.i.i, %if.then87.i.i.for.body.i.i_crit_edge ]
  %rx_idle_ant.1348.i.i = phi i8 [ %rx_idle_ant.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rx_idle_ant.0.i.i, %if.then87.i.i.for.body.i.i_crit_edge ]
  %max_rssi.1347.i.i = phi i32 [ %722, %for.inc.i.i.for.body.i.i_crit_edge ], [ %687, %if.then87.i.i.for.body.i.i_crit_edge ]
  %ant_div_max_rssi.1346.i.i = phi i32 [ %ant_div_max_rssi.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %ant_div_max_rssi.0.i.i, %if.then87.i.i.for.body.i.i_crit_edge ]
  %min_rssi.1345.i.i = phi i32 [ %726, %for.inc.i.i.for.body.i.i_crit_edge ], [ %693, %if.then87.i.i.for.body.i.i_crit_edge ]
  %i.0344.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then87.i.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %i.0344.i.i, 1
  %arrayidx92.i.i = getelementptr %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 14, i32 %inc.i.i
  %711 = ptrtoint ptr %arrayidx92.i.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %arrayidx92.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %712)
  %cmp93.not.i.i = icmp eq i32 %712, 0
  br i1 %cmp93.not.i.i, label %for.body.i.i.cond.end102.i.i_crit_edge, label %cond.true95.i.i

for.body.i.i.cond.end102.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end102.i.i

cond.true95.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx97.i.i = getelementptr %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 12, i32 %inc.i.i
  %713 = ptrtoint ptr %arrayidx97.i.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %arrayidx97.i.i, align 4
  %div100.i.i = udiv i32 %714, %712
  br label %cond.end102.i.i

cond.end102.i.i:                                  ; preds = %cond.true95.i.i, %for.body.i.i.cond.end102.i.i_crit_edge
  %cond103.i.i = phi i32 [ %div100.i.i, %cond.true95.i.i ], [ 0, %for.body.i.i.cond.end102.i.i_crit_edge ]
  %arrayidx105.i.i = getelementptr %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 15, i32 %inc.i.i
  %715 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %arrayidx105.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %716)
  %cmp106.not.i.i = icmp eq i32 %716, 0
  br i1 %cmp106.not.i.i, label %cond.end102.i.i.cond.end115.i.i_crit_edge, label %cond.true108.i.i

cond.end102.i.i.cond.end115.i.i_crit_edge:        ; preds = %cond.end102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end115.i.i

cond.true108.i.i:                                 ; preds = %cond.end102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx110.i.i = getelementptr %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 13, i32 %inc.i.i
  %717 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %arrayidx110.i.i, align 4
  %div113.i.i = udiv i32 %718, %716
  br label %cond.end115.i.i

cond.end115.i.i:                                  ; preds = %cond.true108.i.i, %cond.end102.i.i.cond.end115.i.i_crit_edge
  %cond116.i.i = phi i32 [ %div113.i.i, %cond.true108.i.i ], [ 0, %cond.end102.i.i.cond.end115.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond103.i.i, i32 %cond116.i.i)
  %cmp117.i.i = icmp eq i32 %cond103.i.i, %cond116.i.i
  br i1 %cmp117.i.i, label %cond.true119.i.i, label %cond.false122.i.i

cond.true119.i.i:                                 ; preds = %cond.end115.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %719 = ptrtoint ptr %rx_idle_ant48.i.i to i32
  call void @__asan_load1_noabort(i32 %719)
  %720 = load i8, ptr %rx_idle_ant48.i.i, align 4
  br label %cond.end126.i.i

cond.false122.i.i:                                ; preds = %cond.end115.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %cond103.i.i, i32 %cond116.i.i)
  %cmp123.not.i.i = icmp ult i32 %cond103.i.i, %cond116.i.i
  %cond125.i.i = zext i1 %cmp123.not.i.i to i8
  br label %cond.end126.i.i

cond.end126.i.i:                                  ; preds = %cond.false122.i.i, %cond.true119.i.i
  %cond127.i.i = phi i8 [ %720, %cond.true119.i.i ], [ %cond125.i.i, %cond.false122.i.i ]
  %721 = call i32 @llvm.umax.i32(i32 %cond103.i.i, i32 %cond116.i.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %721, i32 %ant_div_max_rssi.1346.i.i)
  %cmp135.i.i = icmp ugt i32 %721, %ant_div_max_rssi.1346.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %721)
  %cmp138.i.i = icmp ult i32 %721, 40
  %or.cond328.i.i = and i1 %cmp135.i.i, %cmp138.i.i
  %ant_div_max_rssi.2.i.i = select i1 %or.cond328.i.i, i32 %721, i32 %ant_div_max_rssi.1346.i.i
  %722 = call i32 @llvm.umax.i32(i32 %721, i32 %max_rssi.1347.i.i) #8
  %723 = ptrtoint ptr %rx_idle_ant48.i.i to i32
  call void @__asan_load1_noabort(i32 %723)
  %724 = load i8, ptr %rx_idle_ant48.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %724)
  %cmp148.i.i = icmp eq i8 %724, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond103.i.i)
  %cmp151.i.i = icmp eq i32 %cond103.i.i, 0
  %or.cond329.i.i = select i1 %cmp148.i.i, i1 %cmp151.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %724)
  %cmp157.i.i = icmp eq i8 %724, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond116.i.i)
  %cmp160.i.i = icmp eq i32 %cond116.i.i, 0
  %or.cond330.i.i = select i1 %cmp157.i.i, i1 %cmp160.i.i, i1 false
  %spec.select331.i.i = select i1 %or.cond330.i.i, i32 %cond103.i.i, i32 %cond116.i.i
  %main_rssi.1.i.i = select i1 %or.cond329.i.i, i32 %cond116.i.i, i32 %cond103.i.i
  %aux_rssi.1.i.i = select i1 %or.cond329.i.i, i32 %cond116.i.i, i32 %spec.select331.i.i
  %725 = call i32 @llvm.umin.i32(i32 %main_rssi.1.i.i, i32 %aux_rssi.1.i.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %725, i32 %min_rssi.1345.i.i)
  %cmp171.i.i = icmp ult i32 %725, %min_rssi.1345.i.i
  %726 = call i32 @llvm.umin.i32(i32 %725, i32 %min_rssi.1345.i.i) #8
  %rx_idle_ant.2.i.i = select i1 %cmp171.i.i, i8 %cond127.i.i, i8 %rx_idle_ant.1348.i.i
  %727 = ptrtoint ptr %antenna_div_type.i.i to i32
  call void @__asan_load1_noabort(i32 %727)
  %728 = load i8, ptr %antenna_div_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %728)
  %cmp177.i.i = icmp eq i8 %728, 1
  br i1 %cmp177.i.i, label %if.then179.i.i, label %cond.end126.i.i.for.inc.i.i_crit_edge

cond.end126.i.i.for.inc.i.i_crit_edge:            ; preds = %cond.end126.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then179.i.i:                                   ; preds = %cond.end126.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %729 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond127.i.i)
  %cmp.i333.i.i = icmp eq i8 %cond127.i.i, 0
  %.str.13..str.14.i334.i.i = select i1 %cmp.i333.i.i, ptr @.str.13, ptr @.str.14
  %..i335.i.i = zext i1 %cmp.i333.i.i to i8
  %arrayidx.i336.i.i = getelementptr %struct.rtl_priv, ptr %730, i32 0, i32 15, i32 72, i32 9, i32 %inc.i.i
  %731 = ptrtoint ptr %arrayidx.i336.i.i to i32
  call void @__asan_store1_noabort(i32 %731)
  store i8 %..i335.i.i, ptr %arrayidx.i336.i.i, align 1
  %arrayidx8.i337.i.i = getelementptr %struct.rtl_priv, ptr %730, i32 0, i32 15, i32 72, i32 10, i32 %inc.i.i
  %732 = ptrtoint ptr %arrayidx8.i337.i.i to i32
  call void @__asan_store1_noabort(i32 %732)
  store i8 0, ptr %arrayidx8.i337.i.i, align 1
  %arrayidx13.i338.i.i = getelementptr %struct.rtl_priv, ptr %730, i32 0, i32 15, i32 72, i32 11, i32 %inc.i.i
  %733 = ptrtoint ptr %arrayidx13.i338.i.i to i32
  call void @__asan_store1_noabort(i32 %733)
  store i8 0, ptr %arrayidx13.i338.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %730, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.43, ptr noundef nonnull %.str.13..str.14.i334.i.i) #8
  %734 = ptrtoint ptr %arrayidx13.i338.i.i to i32
  call void @__asan_load1_noabort(i32 %734)
  %735 = load i8, ptr %arrayidx13.i338.i.i, align 1
  %conv19.i339.i.i = zext i8 %735 to i32
  %736 = ptrtoint ptr %arrayidx8.i337.i.i to i32
  call void @__asan_load1_noabort(i32 %736)
  %737 = load i8, ptr %arrayidx8.i337.i.i, align 1
  %conv22.i340.i.i = zext i8 %737 to i32
  %738 = ptrtoint ptr %arrayidx.i336.i.i to i32
  call void @__asan_load1_noabort(i32 %738)
  %739 = load i8, ptr %arrayidx.i336.i.i, align 1
  %conv25.i341.i.i = zext i8 %739 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %730, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %conv19.i339.i.i, i32 noundef %conv22.i340.i.i, i32 noundef %conv25.i341.i.i) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then179.i.i, %cond.end126.i.i.for.inc.i.i_crit_edge
  %740 = ptrtoint ptr %drv_priv.0349.i.i to i32
  call void @__asan_loadN_noabort(i32 %740, i32 4)
  %drv_priv.0.i.i = load ptr, ptr %drv_priv.0349.i.i, align 1
  %cmp89.not.i.i = icmp eq ptr %drv_priv.0.i.i, %entry_list.i.i
  br i1 %cmp89.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then87.i.i.for.end.i.i_crit_edge
  %ant_div_max_rssi.1.lcssa.i.i = phi i32 [ %ant_div_max_rssi.0.i.i, %if.then87.i.i.for.end.i.i_crit_edge ], [ %ant_div_max_rssi.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %max_rssi.1.lcssa.i.i = phi i32 [ %687, %if.then87.i.i.for.end.i.i_crit_edge ], [ %722, %for.inc.i.i.for.end.i.i_crit_edge ]
  %rx_idle_ant.1.lcssa.i.i = phi i8 [ %rx_idle_ant.0.i.i, %if.then87.i.i.for.end.i.i_crit_edge ], [ %rx_idle_ant.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i.i) #8
  br label %if.end188.i.i

if.end188.i.i:                                    ; preds = %for.end.i.i, %if.end80.i.i.if.end188.i.i_crit_edge
  %ant_div_max_rssi.3.i.i = phi i32 [ %ant_div_max_rssi.1.lcssa.i.i, %for.end.i.i ], [ %ant_div_max_rssi.0.i.i, %if.end80.i.i.if.end188.i.i_crit_edge ]
  %max_rssi.3.i.i = phi i32 [ %max_rssi.1.lcssa.i.i, %for.end.i.i ], [ %687, %if.end80.i.i.if.end188.i.i_crit_edge ]
  %rx_idle_ant.3.i.i = phi i8 [ %rx_idle_ant.1.lcssa.i.i, %for.end.i.i ], [ %rx_idle_ant.0.i.i, %if.end80.i.i.if.end188.i.i_crit_edge ]
  br label %for.body192.i.i

for.body192.i.i:                                  ; preds = %for.body192.i.i.for.body192.i.i_crit_edge, %if.end188.i.i
  %i.1352.i.i = phi i32 [ 0, %if.end188.i.i ], [ %inc202.i.i, %for.body192.i.i.for.body192.i.i_crit_edge ]
  %arrayidx194.i.i = getelementptr %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 12, i32 %i.1352.i.i
  %741 = ptrtoint ptr %arrayidx194.i.i to i32
  call void @__asan_store4_noabort(i32 %741)
  store i32 0, ptr %arrayidx194.i.i, align 4
  %arrayidx196.i.i = getelementptr %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 13, i32 %i.1352.i.i
  %742 = ptrtoint ptr %arrayidx196.i.i to i32
  call void @__asan_store4_noabort(i32 %742)
  store i32 0, ptr %arrayidx196.i.i, align 4
  %arrayidx198.i.i = getelementptr %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 14, i32 %i.1352.i.i
  %743 = ptrtoint ptr %arrayidx198.i.i to i32
  call void @__asan_store4_noabort(i32 %743)
  store i32 0, ptr %arrayidx198.i.i, align 4
  %arrayidx200.i.i = getelementptr %struct.rtl_priv, ptr %670, i32 0, i32 15, i32 72, i32 15, i32 %i.1352.i.i
  %744 = ptrtoint ptr %arrayidx200.i.i to i32
  call void @__asan_store4_noabort(i32 %744)
  store i32 0, ptr %arrayidx200.i.i, align 4
  %inc202.i.i = add nuw nsw i32 %i.1352.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc202.i.i, 33
  br i1 %exitcond.not.i.i, label %rtl88e_dm_hw_ant_div.exit.i, label %for.body192.i.i.for.body192.i.i_crit_edge

for.body192.i.i.for.body192.i.i_crit_edge:        ; preds = %for.body192.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body192.i.i

rtl88e_dm_hw_ant_div.exit.i:                      ; preds = %for.body192.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rtl88e_dm_update_rx_idle_ant(ptr noundef %hw, i8 noundef zeroext %rx_idle_ant.3.i.i) #8
  %antdiv_rssi_max.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 35, i32 56
  %745 = ptrtoint ptr %antdiv_rssi_max.i.i to i32
  call void @__asan_store4_noabort(i32 %745)
  store i32 %ant_div_max_rssi.3.i.i, ptr %antdiv_rssi_max.i.i, align 4
  %rssi_max.i.i = getelementptr inbounds %struct.rtl_priv, ptr %670, i32 0, i32 35, i32 57
  %746 = ptrtoint ptr %rssi_max.i.i to i32
  call void @__asan_store4_noabort(i32 %746)
  store i32 %max_rssi.3.i.i, ptr %rssi_max.i.i, align 4
  br label %if.end11

if.then46.i:                                      ; preds = %if.end31.i104
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rtl88e_dm_fast_ant_training(ptr noundef %hw) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then46.i, %rtl88e_dm_hw_ant_div.exit.i, %if.end31.i104.if.end11_crit_edge, %if.end.i100, %if.then.i92.if.end11_crit_edge, %land.lhs.true8.if.end11_crit_edge, %land.lhs.true6.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_ps_awake) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inpsmode) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_lc_calibrate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_iq_calibrate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_set_txpower_level(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl88e_dm_update_rx_idle_ant(ptr noundef %hw, i8 noundef zeroext %ant) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rx_idle_ant = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 16
  %2 = ptrtoint ptr %rx_idle_ant to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_idle_ant, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %ant)
  %cmp.not = icmp eq i8 %3, %ant
  br i1 %cmp.not, label %entry.if.end40_crit_edge, label %if.then

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then:                                          ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.11) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ant)
  %cmp6 = icmp eq i8 %ant, 0
  %4 = ptrtoint ptr %rx_idle_ant to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_idle_ant, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp11 = icmp eq i8 %5, 1
  %not.cmp11 = xor i1 %cmp11, true
  %cmp11.not.cmp11 = select i1 %cmp6, i1 %cmp11, i1 %not.cmp11
  %not.cmp11.cmp11 = select i1 %cmp6, i1 %not.cmp11, i1 %cmp11
  %optional_ant.0 = zext i1 %not.cmp11.cmp11 to i32
  %default_ant.0 = zext i1 %cmp11.not.cmp11 to i32
  %antenna_div_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 22
  %6 = ptrtoint ptr %antenna_div_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %antenna_div_type, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %7, label %if.then.if.end40_crit_edge [
    i8 1, label %if.then31
    i8 2, label %if.then37
  ]

if.then.if.end40_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then31:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 32
  %11 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %16(ptr noundef %hw, i32 noundef 2148, i32 noundef 56, i32 noundef %default_ant.0) #8
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %cfg.i69 = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 32
  %19 = ptrtoint ptr %cfg.i69 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i69, align 8
  %ops.i70 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ops.i70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i70, align 4
  %set_bbreg.i71 = getelementptr inbounds %struct.rtl_hal_ops, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %set_bbreg.i71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_bbreg.i71, align 4
  tail call void %24(ptr noundef %hw, i32 noundef 2148, i32 noundef 448, i32 noundef %optional_ant.0) #8
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %cfg.i73 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %27 = ptrtoint ptr %cfg.i73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.i73, align 8
  %ops.i74 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ops.i74 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i74, align 4
  %set_bbreg.i75 = getelementptr inbounds %struct.rtl_hal_ops, ptr %30, i32 0, i32 46
  %31 = ptrtoint ptr %set_bbreg.i75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_bbreg.i75, align 4
  tail call void %32(ptr noundef %hw, i32 noundef 2144, i32 noundef 28672, i32 noundef %default_ant.0) #8
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %cfg.i77 = getelementptr inbounds %struct.rtl_priv, ptr %34, i32 0, i32 32
  %35 = ptrtoint ptr %cfg.i77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i77, align 8
  %ops.i78 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %ops.i78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i78, align 4
  %set_bbreg.i79 = getelementptr inbounds %struct.rtl_hal_ops, ptr %38, i32 0, i32 46
  %39 = ptrtoint ptr %set_bbreg.i79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_bbreg.i79, align 4
  tail call void %40(ptr noundef %hw, i32 noundef 1752, i32 noundef 192, i32 noundef %default_ant.0) #8
  br label %if.end40

if.then37:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %cfg.i81 = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 0, i32 32
  %43 = ptrtoint ptr %cfg.i81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i81, align 8
  %ops.i82 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %ops.i82 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i82, align 4
  %set_bbreg.i83 = getelementptr inbounds %struct.rtl_hal_ops, ptr %46, i32 0, i32 46
  %47 = ptrtoint ptr %set_bbreg.i83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_bbreg.i83, align 4
  tail call void %48(ptr noundef %hw, i32 noundef 2148, i32 noundef 56, i32 noundef %default_ant.0) #8
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  %cfg.i85 = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 32
  %51 = ptrtoint ptr %cfg.i85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg.i85, align 8
  %ops.i86 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %ops.i86 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i86, align 4
  %set_bbreg.i87 = getelementptr inbounds %struct.rtl_hal_ops, ptr %54, i32 0, i32 46
  %55 = ptrtoint ptr %set_bbreg.i87 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_bbreg.i87, align 4
  tail call void %56(ptr noundef %hw, i32 noundef 2148, i32 noundef 448, i32 noundef %optional_ant.0) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then31, %if.then.if.end40_crit_edge, %entry.if.end40_crit_edge
  %57 = ptrtoint ptr %rx_idle_ant to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %ant, ptr %rx_idle_ant, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ant)
  %cmp43 = icmp eq i8 %ant, 0
  %cond45 = select i1 %cmp43, ptr @.str.13, ptr @.str.14
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond45) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 693, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1105, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1110, i32 3}
!6 = !{ptr @dm_txpower_track_cb_therm.delta_swing_table_idx, !7, !"delta_swing_table_idx", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 873, i32 18}
!8 = distinct !{null, !9, !"thermal_threshold", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 877, i32 18}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 884, i32 2}
!12 = !{ptr @__func__.dm_txpower_track_cb_therm, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 891, i32 2}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 903, i32 4}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 918, i32 5}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 930, i32 5}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 990, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1075, i32 2}
!25 = !{ptr @ofdmswing_table, !26, !"ofdmswing_table", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 15, i32 18}
!27 = !{ptr @cck_tbl_ch14, !28, !"cck_tbl_ch14", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 97, i32 17}
!29 = !{ptr @cck_tbl_ch1_13, !30, !"cck_tbl_ch1_13", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 61, i32 17}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1090, i32 2}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1227, i32 3}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1263, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rtl88e_dm_pwdb_monitor.last_record_txok_cnt, !40, !"last_record_txok_cnt", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 713, i32 13}
!41 = !{ptr @rtl88e_dm_pwdb_monitor.last_record_rxok_cnt, !42, !"last_record_rxok_cnt", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 714, i32 13}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 748, i32 3}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 756, i32 3}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 523, i32 3}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 462, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 418, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 424, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 627, i32 3}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 640, i32 4}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 646, i32 4}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 654, i32 3}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 661, i32 3}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 668, i32 3}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 673, i32 3}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 679, i32 3}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1141, i32 3}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1147, i32 3}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1183, i32 4}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1186, i32 4}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1188, i32 4}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rtl88e_dm_check_edca_turbo.last_txok_cnt, !89, !"last_txok_cnt", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 779, i32 13}
!90 = !{ptr @rtl88e_dm_check_edca_turbo.last_rxok_cnt, !91, !"last_rxok_cnt", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 780, i32 13}
!92 = !{ptr @rtl88e_dm_check_edca_turbo.last_bt_edca_ul, !93, !"last_bt_edca_ul", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 781, i32 13}
!94 = !{ptr @rtl88e_dm_check_edca_turbo.last_bt_edca_dl, !95, !"last_bt_edca_dl", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 782, i32 13}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1702, i32 3}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1704, i32 4}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1719, i32 4}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1467, i32 2}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1471, i32 2}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1474, i32 2}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1283, i32 2}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/dm.c", i32 1285, i32 2}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i8 0, i8 2}
!123 = !{i64 2149377042}
!124 = !{i64 2149377308}
