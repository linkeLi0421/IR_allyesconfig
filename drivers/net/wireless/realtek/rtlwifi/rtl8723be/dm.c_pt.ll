; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c"
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
%struct.rtl_btc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Trigger 8723be Thermal Meter!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Schedule TxPowerTracking !!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rtlpriv->dm.txpower_tracking = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rtl8723be_dm_txpower_tracking_callback_thermalmeter.delta_swing_table_idx_tup_a = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\02\02\02\03\03\03\04\05\05\06\06\07\07\08\08\09\09\09\0A\0A\0B\0B\0C\0C\0D\0E\0F", [34 x i8] zeroinitializer }, align 32
@rtl8723be_dm_txpower_tracking_callback_thermalmeter.delta_swing_table_idx_tdown_a = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\02\02\02\03\03\03\04\05\05\06\06\06\06\07\07\07\08\08\09\09\0A\0A\0B\0C\0D\0E\0F", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.rtl8723be_dm_txpower_tracking_callback_thermalmeter = private unnamed_addr constant [52 x i8] c"rtl8723be_dm_txpower_tracking_callback_thermalmeter\00", align 1
@.str.4 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x delta 0x%x delta_lck 0x%x delta_iqk 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"end\0A\00", [27 x i8] zeroinitializer }, align 32
@cckswing_table_ch1ch13 = internal constant { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"\09\08\07\06\04\03\01\01", [8 x i8] c"\09\09\08\06\05\03\01\01", [8 x i8] c"\0A\09\08\07\05\03\02\01", [8 x i8] c"\0A\0A\09\07\05\03\02\01", [8 x i8] c"\0B\0A\09\08\06\04\02\01", [8 x i8] c"\0B\0B\0A\08\06\04\02\01", [8 x i8] c"\0C\0C\0A\09\06\04\02\01", [8 x i8] c"\0D\0C\0B\09\07\04\02\01", [8 x i8] c"\0D\0D\0C\0A\07\05\02\01", [8 x i8] c"\0E\0E\0C\0A\08\05\02\01", [8 x i8] c"\0F\0F\0D\0B\08\05\03\01", [8 x i8] c"\10\10\0E\0B\08\05\03\01", [8 x i8] c"\11\11\0F\0C\09\06\03\01", [8 x i8] c"\12\12\0F\0C\09\06\03\01", [8 x i8] c"\13\13\10\0D\0A\06\03\01", [8 x i8] c"\14\14\11\0E\0B\07\03\02", [8 x i8] c"\16\15\12\0F\0B\07\04\01", [8 x i8] c"\17\16\13\10\0C\08\04\02", [8 x i8] c"\18\17\15\11\0C\08\04\02", [8 x i8] c"\1A\19\16\12\0D\09\04\02", [8 x i8] c"\1B\1A\17\13\0E\09\04\02", [8 x i8] c"\1D\1C\18\14\0F\0A\05\02", [8 x i8] c"\1F\1E\1A\15\10\0A\05\02", [8 x i8] c"  \1B\16\11\08\05\02", [8 x i8] c"\22!\1D\18\11\0B\06\02", [8 x i8] c"$#\1F\19\13\0C\06\03", [8 x i8] c"&%!\1B\14\0D\06\03", [8 x i8] c"((\22\1C\15\0D\07\03", [8 x i8] c"+*%\1E\16\0E\07\03", [8 x i8] c"--'\1F\18\0F\08\03", [8 x i8] c"0/)!\19\10\08\03", [8 x i8] c"32+#\1A\11\08\04", [8 x i8] c"65.%\1C\12\09\04"], [88 x i8] zeroinitializer }, align 32
@cckswing_table_ch14 = internal constant { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"\09\08\07\04\00\00\00\00", [8 x i8] c"\09\09\08\05\00\00\00\00", [8 x i8] c"\0A\09\08\05\00\00\00\00", [8 x i8] c"\0A\0A\09\05\00\00\00\00", [8 x i8] c"\0B\0A\09\05\00\00\00\00", [8 x i8] c"\0B\0B\0A\06\00\00\00\00", [8 x i8] c"\0C\0C\0A\06\00\00\00\00", [8 x i8] c"\0D\0C\0B\06\00\00\00\00", [8 x i8] c"\0D\0D\0C\07\00\00\00\00", [8 x i8] c"\0E\0E\0C\07\00\00\00\00", [8 x i8] c"\0F\0F\0D\08\00\00\00\00", [8 x i8] c"\10\10\0E\08\00\00\00\00", [8 x i8] c"\11\11\0F\09\00\00\00\00", [8 x i8] c"\12\12\0F\09\00\00\00\00", [8 x i8] c"\13\13\10\0A\00\00\00\00", [8 x i8] c"\14\14\11\0A\00\00\00\00", [8 x i8] c"\16\15\12\0B\00\00\00\00", [8 x i8] c"\17\16\13\0B\00\00\00\00", [8 x i8] c"\18\17\15\0C\00\00\00\00", [8 x i8] c"\1A\19\16\0D\00\00\00\00", [8 x i8] c"\1B\1A\17\0E\00\00\00\00", [8 x i8] c"\1D\1C\18\0E\00\00\00\00", [8 x i8] c"\1F\1E\1A\0F\00\00\00\00", [8 x i8] c"  \1B\10\00\00\00\00", [8 x i8] c"\22!\1D\11\00\00\00\00", [8 x i8] c"$#\1F\12\00\00\00\00", [8 x i8] c"&%!\13\00\00\00\00", [8 x i8] c"(($\14\00\00\00\00", [8 x i8] c"+*%\15\00\00\00\00", [8 x i8] c"--\17\17\00\00\00\00", [8 x i8] c"0/)\18\00\00\00\00", [8 x i8] c"32+\19\00\00\00\00", [8 x i8] c"65.\1B\00\00\00\00"], [88 x i8] zeroinitializer }, align 32
@ofdmswing_table = internal constant { [43 x i32], [52 x i8] } { [43 x i32] [i32 188743725, i32 201326640, i32 213909555, i32 226492470, i32 239075385, i32 251658300, i32 268435520, i32 285212740, i32 301989960, i32 318767180, i32 339738705, i32 360710230, i32 381681755, i32 402653280, i32 427819110, i32 452984940, i32 478150770, i32 507510905, i32 536871040, i32 570425480, i32 603979920, i32 637534360, i32 679477410, i32 717226155, i32 759169205, i32 805306560, i32 851443915, i32 901775575, i32 956301540, i32 1015021810, i32 1073742080, i32 1136656655, i32 1203765535, i32 1275068720, i32 1350566210, i32 1430258005, i32 1514144105, i32 1606418815, i32 1698693525, i32 1803551150, i32 1908408775, i32 2021655010, i32 2139095550], [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"cnt_parity_fail = %d, cnt_rate_illegal = %d, cnt_crc8_fail = %d, cnt_mcs_fail = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"cnt_ofdm_fail = %x, cnt_cck_fail = %x, cnt_all = %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EntryMaxPWDB = 0x%lx(%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EntryMinPWDB = 0x%lx(%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not connected to any\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"STA Default Port PWDB = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AP Ext Port or disconnect PWDB = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MinUndecoratedPWDBForDM =%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no link\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CCK cca thresh hold =%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"driver is going to unload\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"driver does not control rate adaptive mask\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RSSI = %ld\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RSSI_LEVEL = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PreState = %d, CurState = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rtl8723be_dm_check_edca_turbo.last_txok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rtl8723be_dm_check_edca_turbo.last_rxok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"odm_DynamicATCSwitch(): Disable CFO tracking for BT!!\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 893, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 898, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 228, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"delta_swing_table_idx_tup_a\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 739, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant [30 x i8] c"delta_swing_table_idx_tdown_a\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 743, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 750, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 758, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 795, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 879, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [23 x i8] c"cckswing_table_ch1ch13\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 63, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"cckswing_table_ch14\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 99, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"ofdmswing_table\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 17, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 579, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 586, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 323, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 333, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 268, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 276, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 282, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 289, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 293, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 424, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1076, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 917, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 923, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 952, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 955, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 957, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 695, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 723, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"last_txok_cnt\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 989, i32 13 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"last_rxok_cnt\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 990, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1124, i32 5 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rtl8723be_dm_txpower_tracking_callback_thermalmeter.delta_swing_table_idx_tup_a, ptr @rtl8723be_dm_txpower_tracking_callback_thermalmeter.delta_swing_table_idx_tdown_a, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cckswing_table_ch1ch13, ptr @cckswing_table_ch14, ptr @ofdmswing_table, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @rtl8723be_dm_check_edca_turbo.last_txok_cnt, ptr @rtl8723be_dm_check_edca_turbo.last_rxok_cnt, ptr @.str.26], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_dm_txpower_tracking_callback_thermalmeter.delta_swing_table_idx_tup_a to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_dm_txpower_tracking_callback_thermalmeter.delta_swing_table_idx_tdown_a to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cckswing_table_ch1ch13 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cckswing_table_ch14 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdmswing_table to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_dm_check_edca_turbo.last_txok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_dm_check_edca_turbo.last_rxok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8723be_dm_txpower_track_adjust(ptr nocapture noundef readonly %hw, i8 noundef zeroext %type, ptr nocapture noundef %pdirection, ptr nocapture noundef writeonly %poutwrite_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  switch i8 %type, label %entry.if.end47_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then22
  ]

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then:                                          ; preds = %entry
  %swing_idx_ofdm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 61
  %7 = ptrtoint ptr %swing_idx_ofdm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %swing_idx_ofdm, align 1
  %swing_idx_ofdm_base = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63
  %9 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %swing_idx_ofdm_base, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp8.not = icmp ugt i8 %8, %10
  br i1 %cmp8.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %pdirection, align 1
  %sub = sub i8 %10, %8
  br label %if.end39

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %pdirection, align 1
  %sub16 = sub i8 %8, %10
  br label %if.end39

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp25.not = icmp ugt i8 %5, %3
  br i1 %cmp25.not, label %if.else32, label %if.then27

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %pdirection, align 1
  %sub30 = sub i8 %3, %5
  br label %if.end39

if.else32:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %pdirection, align 1
  %sub35 = sub i8 %5, %3
  br label %if.end39

if.end39:                                         ; preds = %if.else32, %if.then27, %if.else, %if.then10
  %pwr_val.0 = phi i8 [ %sub, %if.then10 ], [ %sub16, %if.else ], [ %sub30, %if.then27 ], [ %sub35, %if.else32 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %pwr_val.0)
  %cmp41 = icmp ugt i8 %pwr_val.0, 5
  br i1 %cmp41, label %land.lhs.true, label %if.end39.if.end47_crit_edge

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %pdirection to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pdirection, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp44 = icmp eq i8 %16, 1
  %spec.select = select i1 %cmp44, i8 6, i8 %pwr_val.0
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true, %if.end39.if.end47_crit_edge, %entry.if.end47_crit_edge
  %pwr_val.1 = phi i8 [ %pwr_val.0, %if.end39.if.end47_crit_edge ], [ %spec.select, %land.lhs.true ], [ 0, %entry.if.end47_crit_edge ]
  %conv48 = zext i8 %pwr_val.1 to i32
  %or55 = mul nuw i32 %conv48, 16843009
  %17 = ptrtoint ptr %poutwrite_val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or55, ptr %poutwrite_val, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8723be_dm_init_rate_adaptive_mask(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %high_rssi_thresh_for_ra = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 3
  %8 = ptrtoint ptr %high_rssi_thresh_for_ra to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 50, ptr %high_rssi_thresh_for_ra, align 4
  %low_rssi_thresh_for_ra40m = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 6
  %9 = ptrtoint ptr %low_rssi_thresh_for_ra40m to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %low_rssi_thresh_for_ra40m, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_dm_init(ptr noundef %hw) local_unnamed_addr #2 align 64 {
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
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 3152, i32 noundef 127) #7
  %dm_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 32
  %8 = ptrtoint ptr %dm_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %dm_type, align 2
  tail call void @rtl_dm_diginit(ptr noundef %hw, i32 noundef %call.i) #7
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 22, i32 1
  %11 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ratr_state.i, align 1
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 22, i32 21
  %12 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %pre_ratr_state.i, align 4
  %dm_type.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 15, i32 32
  %13 = ptrtoint ptr %dm_type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dm_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i = icmp eq i8 %14, 1
  %spec.select.i = zext i1 %cmp.i to i8
  %15 = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 15, i32 14
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select.i, ptr %15, align 1
  %high_rssi_thresh_for_ra.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 22, i32 3
  %17 = ptrtoint ptr %high_rssi_thresh_for_ra.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50, ptr %high_rssi_thresh_for_ra.i, align 4
  %low_rssi_thresh_for_ra40m.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 22, i32 6
  %18 = ptrtoint ptr %low_rssi_thresh_for_ra40m.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 20, ptr %low_rssi_thresh_for_ra40m.i, align 4
  tail call void @rtl8723_dm_init_edca_turbo(ptr noundef %hw) #7
  tail call void @rtl8723_dm_init_dynamic_bb_powersaving(ptr noundef %hw) #7
  tail call void @rtl8723_dm_init_dynamic_txpower(ptr noundef %hw) #7
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  %txpower_tracking.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 15, i32 13
  %21 = ptrtoint ptr %txpower_tracking.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %txpower_tracking.i, align 4
  %txpower_track_control.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 15, i32 34
  %22 = ptrtoint ptr %txpower_track_control.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %txpower_track_control.i, align 8
  %thermalvalue.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 15, i32 23
  %23 = ptrtoint ptr %thermalvalue.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %thermalvalue.i, align 2
  %ofdm_index.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 15, i32 37
  %24 = ptrtoint ptr %ofdm_index.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 30, ptr %ofdm_index.i, align 1
  %cck_index.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 15, i32 40
  %25 = ptrtoint ptr %cck_index.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 20, ptr %cck_index.i, align 1
  %swing_idx_cck_base.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 15, i32 67
  %26 = ptrtoint ptr %swing_idx_cck_base.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 20, ptr %swing_idx_cck_base.i, align 1
  %swing_idx_ofdm_base.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 15, i32 63
  %27 = ptrtoint ptr %swing_idx_ofdm_base.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 30, ptr %swing_idx_ofdm_base.i, align 2
  %delta_power_index.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 15, i32 41
  %28 = ptrtoint ptr %delta_power_index.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %delta_power_index.i, align 2
  %delta_power_index_last.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 15, i32 42
  %29 = ptrtoint ptr %delta_power_index_last.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %delta_power_index_last.i, align 2
  %power_index_offset.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 15, i32 43
  %30 = ptrtoint ptr %power_index_offset.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %power_index_offset.i, align 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %20, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef 1) #7
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %crystalcap.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 17, i32 58
  %33 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %crystalcap.i, align 2
  %conv.i = zext i8 %34 to i32
  %crystal_cap.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 15, i32 56
  %35 = ptrtoint ptr %crystal_cap.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv.i, ptr %crystal_cap.i, align 8
  %36 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %40, i32 0, i32 45
  %41 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = tail call i32 %42(ptr noundef %hw, i32 noundef 3372, i32 noundef 2048) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i = icmp ne i32 %call.i.i, 0
  %atc_status.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 15, i32 51
  %frombool.i = zext i1 %tobool.i to i8
  %43 = ptrtoint ptr %atc_status.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool.i, ptr %atc_status.i, align 8
  %cfo_threshold.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 15, i32 57
  %44 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 10, ptr %cfo_threshold.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_dm_diginit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_dm_init_dynamic_bb_powersaving(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_dm_init_dynamic_txpower(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_dm_write_dig(ptr noundef %hw, i8 noundef zeroext %current_igi) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %stop_dig = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 20
  %2 = ptrtoint ptr %stop_dig to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_dig, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_igvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 9
  %4 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_igvalue, align 4
  %conv = zext i8 %current_igi to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %11(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %conv) #7
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp6.not = icmp eq i8 %13, 0
  br i1 %cmp6.not, label %if.then3.if.end11_crit_edge, label %if.then8

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %cfg.i27 = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 32
  %16 = ptrtoint ptr %cfg.i27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i27, align 8
  %ops.i28 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ops.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i28, align 4
  %set_bbreg.i29 = getelementptr inbounds %struct.rtl_hal_ops, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %set_bbreg.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_bbreg.i29, align 4
  tail call void %21(ptr noundef %hw, i32 noundef 3160, i32 noundef 127, i32 noundef %conv) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then3.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %22 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_igvalue, align 4
  %pre_igvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 8
  %24 = ptrtoint ptr %pre_igvalue to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pre_igvalue, align 4
  store i32 %conv, ptr %cur_igvalue, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_dm_check_txpower_tracking(ptr noundef %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %txpower_tracking = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 13
  %2 = ptrtoint ptr %txpower_tracking to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txpower_tracking, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %11(ptr noundef %hw, i32 noundef 0, i32 noundef 66, i32 noundef 196608, i32 noundef 3) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str) #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.1) #7
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %txpower_trackinginit.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 10
  %14 = ptrtoint ptr %txpower_trackinginit.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %txpower_trackinginit.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rtl8723be_dm_txpower_tracking_callback_thermalmeter) #7
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
  %call.i.i = tail call i32 %22(ptr noundef %hw, i32 noundef 0, i32 noundef 66, i32 noundef 64512) #7
  %conv.i = trunc i32 %call.i.i to i8
  %txpower_track_control.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 34
  %23 = ptrtoint ptr %txpower_track_control.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %txpower_track_control.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.else.cleanup.sink.split_crit_edge, label %lor.lhs.false.i

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false.i:                                  ; preds = %if.else
  %conv5.i = and i32 %call.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5.i)
  %cmp.i = icmp eq i32 %conv5.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.cleanup.sink.split_crit_edge, label %lor.lhs.false7.i

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %eeprom_thermalmeter.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 55
  %25 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %eeprom_thermalmeter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp9.i = icmp eq i8 %26, -1
  br i1 %cmp9.i, label %lor.lhs.false7.i.cleanup.sink.split_crit_edge, label %if.end.i

lor.lhs.false7.i.cleanup.sink.split_crit_edge:    ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %lor.lhs.false7.i
  %conv8.i = zext i8 %26 to i32
  %thermalvalue12.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 23
  %27 = ptrtoint ptr %thermalvalue12.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %thermalvalue12.i, align 2
  %conv13.i = zext i8 %28 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv5.i, i32 noundef %conv13.i, i32 noundef %conv8.i) #7
  %29 = ptrtoint ptr %thermalvalue12.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %thermalvalue12.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool17.not.i = icmp eq i8 %30, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %thermalvalue_lck.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 22
  %31 = ptrtoint ptr %thermalvalue_lck.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %thermalvalue_lck.i, align 1
  %thermalvalue_iqk.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 21
  %32 = ptrtoint ptr %thermalvalue_iqk.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %thermalvalue_iqk.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end.i.if.end21.i_crit_edge
  %thermalvalue_avg_index.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 26
  %33 = ptrtoint ptr %thermalvalue_avg_index.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %thermalvalue_avg_index.i, align 8
  %idxprom.i = zext i8 %34 to i32
  %arrayidx.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %36 = load i8, ptr %thermalvalue_avg_index.i, align 8
  %inc.i = add i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc.i)
  %cmp26.i = icmp eq i8 %inc.i, 4
  %spec.select.i = select i1 %cmp26.i, i8 0, i8 %inc.i
  %37 = ptrtoint ptr %thermalvalue_avg_index.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %spec.select.i, ptr %thermalvalue_avg_index.i, align 8
  %arrayidx34.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 0
  %38 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool35.not.i = icmp ne i8 %39, 0
  %inc40.i = zext i1 %tobool35.not.i to i8
  %arrayidx34.1.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 1
  %40 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx34.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool35.not.1.i = icmp ne i8 %41, 0
  %inc40.1.i = zext i1 %tobool35.not.1.i to i8
  %thermalvalue_avg_count.1.1.i = add nuw nsw i8 %inc40.1.i, %inc40.i
  %arrayidx34.2.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 2
  %42 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx34.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool35.not.2.i = icmp ne i8 %43, 0
  %inc40.2.i = zext i1 %tobool35.not.2.i to i8
  %thermalvalue_avg_count.1.2.i = add nuw nsw i8 %thermalvalue_avg_count.1.1.i, %inc40.2.i
  %arrayidx34.3.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 3
  %44 = ptrtoint ptr %arrayidx34.3.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx34.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool35.not.3.i = icmp ne i8 %45, 0
  %inc40.3.i = zext i1 %tobool35.not.3.i to i8
  %thermalvalue_avg_count.1.3.i = add nuw nsw i8 %thermalvalue_avg_count.1.2.i, %inc40.3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %thermalvalue_avg_count.1.3.i)
  %tobool43.not.i = icmp eq i8 %thermalvalue_avg_count.1.3.i, 0
  br i1 %tobool43.not.i, label %if.end21.i.if.end47.i_crit_edge, label %if.then44.i

if.end21.i.if.end47.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.then44.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv39.i = zext i8 %39 to i16
  %conv39.1.i = zext i8 %41 to i16
  %thermalvalue_avg.1.1.i = add nuw nsw i16 %conv39.1.i, %conv39.i
  %conv39.2.i = zext i8 %43 to i16
  %thermalvalue_avg.1.2.i = add nuw nsw i16 %thermalvalue_avg.1.1.i, %conv39.2.i
  %conv39.3.i = zext i8 %45 to i16
  %thermalvalue_avg.1.3.i = add nuw nsw i16 %thermalvalue_avg.1.2.i, %conv39.3.i
  %conv45.i = zext i8 %thermalvalue_avg_count.1.3.i to i16
  %div.i = udiv i16 %thermalvalue_avg.1.3.i, %conv45.i
  %conv46.i = trunc i16 %div.i to i8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then44.i, %if.end21.i.if.end47.i_crit_edge
  %thermalvalue.0.i = phi i8 [ %conv46.i, %if.then44.i ], [ %conv.i, %if.end21.i.if.end47.i_crit_edge ]
  %conv48.i = zext i8 %thermalvalue.0.i to i32
  %46 = ptrtoint ptr %thermalvalue12.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %thermalvalue12.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %47)
  %cmp52.i = icmp ugt i8 %thermalvalue.0.i, %47
  %sub.i = sub i8 %thermalvalue.0.i, %47
  %sub62.i = sub i8 %47, %thermalvalue.0.i
  %cond.i = select i1 %cmp52.i, i8 %sub.i, i8 %sub62.i
  %thermalvalue_lck66.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 22
  %48 = ptrtoint ptr %thermalvalue_lck66.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %thermalvalue_lck66.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %49)
  %cmp68.i = icmp ugt i8 %thermalvalue.0.i, %49
  %sub75.i = sub i8 %thermalvalue.0.i, %49
  %sub81.i = sub i8 %49, %thermalvalue.0.i
  %cond83.i = select i1 %cmp68.i, i8 %sub75.i, i8 %sub81.i
  %thermalvalue_iqk87.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 21
  %50 = ptrtoint ptr %thermalvalue_iqk87.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %thermalvalue_iqk87.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %51)
  %cmp89.i = icmp ugt i8 %thermalvalue.0.i, %51
  %sub96.i = sub i8 %thermalvalue.0.i, %51
  %sub102.i = sub i8 %51, %thermalvalue.0.i
  %cond104.i = select i1 %cmp89.i, i8 %sub96.i, i8 %sub102.i
  %conv109.i = zext i8 %47 to i32
  %52 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %eeprom_thermalmeter.i, align 4
  %conv111.i = zext i8 %53 to i32
  %conv112.i = zext i8 %cond.i to i32
  %conv113.i = zext i8 %cond83.i to i32
  %conv114.i = zext i8 %cond104.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %conv48.i, i32 noundef %conv109.i, i32 noundef %conv111.i, i32 noundef %conv112.i, i32 noundef %conv113.i, i32 noundef %conv114.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %cond83.i)
  %cmp116.i = icmp ugt i8 %cond83.i, 7
  br i1 %cmp116.i, label %if.then118.i, label %if.end47.i.if.end121.i_crit_edge

if.end47.i.if.end121.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.i

if.then118.i:                                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %thermalvalue_lck66.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %thermalvalue.0.i, ptr %thermalvalue_lck66.i, align 1
  tail call void @rtl8723be_phy_lc_calibrate(ptr noundef %hw) #7
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then118.i, %if.end47.i.if.end121.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond.i)
  %cmp123.not.i = icmp eq i8 %cond.i, 0
  br i1 %cmp123.not.i, label %if.end121.i.if.else251.i_crit_edge, label %land.lhs.true.i

if.end121.i.if.else251.i_crit_edge:               ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else251.i

land.lhs.true.i:                                  ; preds = %if.end121.i
  %55 = ptrtoint ptr %txpower_track_control.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %txpower_track_control.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool128.not.i = icmp eq i8 %56, 0
  br i1 %tobool128.not.i, label %land.lhs.true.i.if.else251.i_crit_edge, label %if.then129.i

land.lhs.true.i.if.else251.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else251.i

if.then129.i:                                     ; preds = %land.lhs.true.i
  %57 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %eeprom_thermalmeter.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %58)
  %cmp133.i = icmp ugt i8 %thermalvalue.0.i, %58
  %sub139.i = sub i8 %thermalvalue.0.i, %58
  %sub144.i = sub i8 %58, %thermalvalue.0.i
  %cond146.i = select i1 %cmp133.i, i8 %sub139.i, i8 %sub144.i
  %59 = tail call i8 @llvm.umin.i8(i8 %cond146.i, i8 29) #7
  %delta_power_index.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 41
  %60 = ptrtoint ptr %delta_power_index.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %delta_power_index.i, align 2
  %delta_power_index_last.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 42
  %62 = ptrtoint ptr %delta_power_index_last.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %delta_power_index_last.i, align 2
  %idxprom161.i = zext i8 %59 to i32
  br i1 %cmp133.i, label %if.then158.i, label %if.else.i

if.then158.i:                                     ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx162.i = getelementptr [30 x i8], ptr @rtl8723be_dm_txpower_tracking_callback_thermalmeter.delta_swing_table_idx_tup_a, i32 0, i32 %idxprom161.i
  %63 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx162.i, align 1
  br label %if.end175.i

if.else.i:                                        ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx170.i = getelementptr [30 x i8], ptr @rtl8723be_dm_txpower_tracking_callback_thermalmeter.delta_swing_table_idx_tdown_a, i32 0, i32 %idxprom161.i
  %65 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx170.i, align 1
  %mul.i = sub i8 0, %66
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.else.i, %if.then158.i
  %mul.sink.i = phi i8 [ %mul.i, %if.else.i ], [ %64, %if.then158.i ]
  %67 = ptrtoint ptr %delta_power_index.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %mul.sink.i, ptr %delta_power_index.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %mul.sink.i, i8 %61)
  %cmp182.i = icmp eq i8 %mul.sink.i, %61
  %sub193.i = sub i8 %mul.sink.i, %61
  %sub193.sink.i = select i1 %cmp182.i, i8 0, i8 %sub193.i
  %68 = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 43
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %sub193.sink.i, ptr %68, align 2
  %swing_idx_ofdm_base.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 63
  %70 = ptrtoint ptr %swing_idx_ofdm_base.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %swing_idx_ofdm_base.i, align 2
  %add203.i = add i8 %71, %sub193.sink.i
  %ofdm_index.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 37
  %72 = ptrtoint ptr %ofdm_index.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %add203.i, ptr %ofdm_index.i, align 1
  %swing_idx_cck_base.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 67
  %73 = ptrtoint ptr %swing_idx_cck_base.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %swing_idx_cck_base.i, align 1
  %add210.i = add i8 %74, %sub193.sink.i
  %cck_index.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 40
  %75 = ptrtoint ptr %cck_index.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %add210.i, ptr %cck_index.i, align 1
  %swing_idx_cck.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 65
  %76 = ptrtoint ptr %swing_idx_cck.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %add210.i, ptr %swing_idx_cck.i, align 1
  %swing_idx_ofdm.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 61
  %77 = ptrtoint ptr %swing_idx_ofdm.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %add203.i, ptr %swing_idx_ofdm.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %add203.i)
  %cmp219.i = icmp sgt i8 %add203.i, 36
  br i1 %cmp219.i, label %if.end175.i.if.end235.sink.split.i_crit_edge, label %if.else224.i

if.end175.i.if.end235.sink.split.i_crit_edge:     ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end235.sink.split.i

if.else224.i:                                     ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %add203.i)
  %cmp229.i = icmp slt i8 %add203.i, 6
  br i1 %cmp229.i, label %if.else224.i.if.end235.sink.split.i_crit_edge, label %if.else224.i.if.end235.i_crit_edge

if.else224.i.if.end235.i_crit_edge:               ; preds = %if.else224.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end235.i

if.else224.i.if.end235.sink.split.i_crit_edge:    ; preds = %if.else224.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end235.sink.split.i

if.end235.sink.split.i:                           ; preds = %if.else224.i.if.end235.sink.split.i_crit_edge, %if.end175.i.if.end235.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 36, %if.end175.i.if.end235.sink.split.i_crit_edge ], [ 6, %if.else224.i.if.end235.sink.split.i_crit_edge ]
  %78 = ptrtoint ptr %ofdm_index.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %.sink.i, ptr %ofdm_index.i, align 1
  br label %if.end235.i

if.end235.i:                                      ; preds = %if.end235.sink.split.i, %if.else224.i.if.end235.i_crit_edge
  %79 = ptrtoint ptr %cck_index.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %cck_index.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %80)
  %cmp238.i = icmp sgt i8 %80, 32
  br i1 %cmp238.i, label %if.then240.i, label %if.else242.i

if.then240.i:                                     ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %cck_index.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 32, ptr %cck_index.i, align 1
  br label %if.end254.i

if.else242.i:                                     ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp245.i = icmp slt i8 %80, 0
  br i1 %cmp245.i, label %if.then247.i, label %if.else242.i.if.end254.i_crit_edge

if.else242.i.if.end254.i_crit_edge:               ; preds = %if.else242.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end254.i

if.then247.i:                                     ; preds = %if.else242.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %cck_index.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %cck_index.i, align 1
  br label %if.end254.i

if.else251.i:                                     ; preds = %land.lhs.true.i.if.else251.i_crit_edge, %if.end121.i.if.else251.i_crit_edge
  %power_index_offset252.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 43
  %83 = ptrtoint ptr %power_index_offset252.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %power_index_offset252.i, align 2
  br label %if.end254.i

if.end254.i:                                      ; preds = %if.else251.i, %if.then247.i, %if.else242.i.if.end254.i_crit_edge, %if.then240.i
  %power_index_offset255.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 43
  %84 = ptrtoint ptr %power_index_offset255.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %power_index_offset255.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp258.not.i = icmp eq i8 %85, 0
  br i1 %cmp258.not.i, label %if.end254.i.if.end272.i_crit_edge, label %land.lhs.true260.i

if.end254.i.if.end272.i_crit_edge:                ; preds = %if.end254.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end272.i

land.lhs.true260.i:                               ; preds = %if.end254.i
  %86 = ptrtoint ptr %txpower_track_control.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %txpower_track_control.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool263.not.i = icmp eq i8 %87, 0
  br i1 %tobool263.not.i, label %land.lhs.true260.i.if.end272.i_crit_edge, label %if.then264.i

land.lhs.true260.i.if.end272.i_crit_edge:         ; preds = %land.lhs.true260.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end272.i

if.then264.i:                                     ; preds = %land.lhs.true260.i
  %done_txpower.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 28
  %88 = ptrtoint ptr %done_txpower.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %done_txpower.i, align 2
  %89 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv, align 8
  %swing_idx_cck.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 15, i32 65
  %91 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %swing_idx_cck.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %92)
  %cmp4.i.i = icmp ugt i8 %92, 32
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.then264.i.if.end.i.i_crit_edge

if.then264.i.if.end.i.i_crit_edge:                ; preds = %if.then264.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then6.i.i:                                     ; preds = %if.then264.i
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 32, ptr %swing_idx_cck.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then6.i.i, %if.then264.i.if.end.i.i_crit_edge
  %cck_inch14.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 15, i32 12
  %94 = ptrtoint ptr %cck_inch14.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %cck_inch14.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i.i = icmp eq i8 %95, 0
  %96 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom.i.i = zext i8 %97 to i32
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.else39.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom.i.i
  %98 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i.i, align 1
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 5
  %100 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %101(ptr noundef %90, i32 noundef 2594, i8 noundef zeroext %99) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 32
  %102 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %write_readback.i.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i.i.i = icmp eq i8 %105, 0
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

if.then8.i.i.rtl_write_byte.exit.i.i_crit_edge:   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %106 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %107(ptr noundef %90, i32 noundef 2594) #7
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then8.i.i.rtl_write_byte.exit.i.i_crit_edge
  %108 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom12.i.i = zext i8 %109 to i32
  %arrayidx14.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom12.i.i, i32 1
  %110 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx14.i.i, align 1
  %112 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %113(ptr noundef %90, i32 noundef 2595, i8 noundef zeroext %111) #7
  %114 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i3.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write_readback.i3.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %write_readback.i3.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i4.i.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i4.i.i, label %rtl_write_byte.exit.i.i.rtl_write_byte.exit8.i.i_crit_edge, label %if.then.i7.i.i

rtl_write_byte.exit.i.i.rtl_write_byte.exit8.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit8.i.i

if.then.i7.i.i:                                   ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i5.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %118 = ptrtoint ptr %read8_sync.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read8_sync.i5.i.i, align 4
  %call.i6.i.i = tail call zeroext i8 %119(ptr noundef %90, i32 noundef 2595) #7
  br label %rtl_write_byte.exit8.i.i

rtl_write_byte.exit8.i.i:                         ; preds = %if.then.i7.i.i, %rtl_write_byte.exit.i.i.rtl_write_byte.exit8.i.i_crit_edge
  %120 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom16.i.i = zext i8 %121 to i32
  %arrayidx18.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom16.i.i, i32 2
  %122 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx18.i.i, align 1
  %124 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %125(ptr noundef %90, i32 noundef 2596, i8 noundef zeroext %123) #7
  %126 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i11.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %write_readback.i11.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %write_readback.i11.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i12.i.i = icmp eq i8 %129, 0
  br i1 %tobool.not.i12.i.i, label %rtl_write_byte.exit8.i.i.rtl_write_byte.exit16.i.i_crit_edge, label %if.then.i15.i.i

rtl_write_byte.exit8.i.i.rtl_write_byte.exit16.i.i_crit_edge: ; preds = %rtl_write_byte.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit16.i.i

if.then.i15.i.i:                                  ; preds = %rtl_write_byte.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i13.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %130 = ptrtoint ptr %read8_sync.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read8_sync.i13.i.i, align 4
  %call.i14.i.i = tail call zeroext i8 %131(ptr noundef %90, i32 noundef 2596) #7
  br label %rtl_write_byte.exit16.i.i

rtl_write_byte.exit16.i.i:                        ; preds = %if.then.i15.i.i, %rtl_write_byte.exit8.i.i.rtl_write_byte.exit16.i.i_crit_edge
  %132 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom20.i.i = zext i8 %133 to i32
  %arrayidx22.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom20.i.i, i32 3
  %134 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx22.i.i, align 1
  %136 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %137(ptr noundef %90, i32 noundef 2597, i8 noundef zeroext %135) #7
  %138 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i19.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %write_readback.i19.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %write_readback.i19.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i20.i.i = icmp eq i8 %141, 0
  br i1 %tobool.not.i20.i.i, label %rtl_write_byte.exit16.i.i.rtl_write_byte.exit24.i.i_crit_edge, label %if.then.i23.i.i

rtl_write_byte.exit16.i.i.rtl_write_byte.exit24.i.i_crit_edge: ; preds = %rtl_write_byte.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit24.i.i

if.then.i23.i.i:                                  ; preds = %rtl_write_byte.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i21.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %142 = ptrtoint ptr %read8_sync.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read8_sync.i21.i.i, align 4
  %call.i22.i.i = tail call zeroext i8 %143(ptr noundef %90, i32 noundef 2597) #7
  br label %rtl_write_byte.exit24.i.i

rtl_write_byte.exit24.i.i:                        ; preds = %if.then.i23.i.i, %rtl_write_byte.exit16.i.i.rtl_write_byte.exit24.i.i_crit_edge
  %144 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom24.i.i = zext i8 %145 to i32
  %arrayidx26.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom24.i.i, i32 4
  %146 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx26.i.i, align 1
  %148 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %149(ptr noundef %90, i32 noundef 2598, i8 noundef zeroext %147) #7
  %150 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i27.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %write_readback.i27.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %write_readback.i27.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i28.i.i = icmp eq i8 %153, 0
  br i1 %tobool.not.i28.i.i, label %rtl_write_byte.exit24.i.i.rtl_write_byte.exit32.i.i_crit_edge, label %if.then.i31.i.i

rtl_write_byte.exit24.i.i.rtl_write_byte.exit32.i.i_crit_edge: ; preds = %rtl_write_byte.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit32.i.i

if.then.i31.i.i:                                  ; preds = %rtl_write_byte.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i29.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %154 = ptrtoint ptr %read8_sync.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read8_sync.i29.i.i, align 4
  %call.i30.i.i = tail call zeroext i8 %155(ptr noundef %90, i32 noundef 2598) #7
  br label %rtl_write_byte.exit32.i.i

rtl_write_byte.exit32.i.i:                        ; preds = %if.then.i31.i.i, %rtl_write_byte.exit24.i.i.rtl_write_byte.exit32.i.i_crit_edge
  %156 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom28.i.i = zext i8 %157 to i32
  %arrayidx30.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom28.i.i, i32 5
  %158 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx30.i.i, align 1
  %160 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %161(ptr noundef %90, i32 noundef 2599, i8 noundef zeroext %159) #7
  %162 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i35.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %write_readback.i35.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %write_readback.i35.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i36.i.i = icmp eq i8 %165, 0
  br i1 %tobool.not.i36.i.i, label %rtl_write_byte.exit32.i.i.rtl_write_byte.exit40.i.i_crit_edge, label %if.then.i39.i.i

rtl_write_byte.exit32.i.i.rtl_write_byte.exit40.i.i_crit_edge: ; preds = %rtl_write_byte.exit32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit40.i.i

if.then.i39.i.i:                                  ; preds = %rtl_write_byte.exit32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i37.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %166 = ptrtoint ptr %read8_sync.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %read8_sync.i37.i.i, align 4
  %call.i38.i.i = tail call zeroext i8 %167(ptr noundef %90, i32 noundef 2599) #7
  br label %rtl_write_byte.exit40.i.i

rtl_write_byte.exit40.i.i:                        ; preds = %if.then.i39.i.i, %rtl_write_byte.exit32.i.i.rtl_write_byte.exit40.i.i_crit_edge
  %168 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom32.i.i = zext i8 %169 to i32
  %arrayidx34.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom32.i.i, i32 6
  %170 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx34.i.i, align 1
  %172 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %173(ptr noundef %90, i32 noundef 2600, i8 noundef zeroext %171) #7
  %174 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i43.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %write_readback.i43.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %write_readback.i43.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i44.i.i = icmp eq i8 %177, 0
  br i1 %tobool.not.i44.i.i, label %rtl_write_byte.exit40.i.i.rtl_write_byte.exit48.i.i_crit_edge, label %if.then.i47.i.i

rtl_write_byte.exit40.i.i.rtl_write_byte.exit48.i.i_crit_edge: ; preds = %rtl_write_byte.exit40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit48.i.i

if.then.i47.i.i:                                  ; preds = %rtl_write_byte.exit40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i45.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %178 = ptrtoint ptr %read8_sync.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read8_sync.i45.i.i, align 4
  %call.i46.i.i = tail call zeroext i8 %179(ptr noundef %90, i32 noundef 2600) #7
  br label %rtl_write_byte.exit48.i.i

rtl_write_byte.exit48.i.i:                        ; preds = %if.then.i47.i.i, %rtl_write_byte.exit40.i.i.rtl_write_byte.exit48.i.i_crit_edge
  %180 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom36.i.i = zext i8 %181 to i32
  %arrayidx38.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom36.i.i, i32 7
  %182 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx38.i.i, align 1
  %184 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %185(ptr noundef %90, i32 noundef 2601, i8 noundef zeroext %183) #7
  %186 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i51.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %write_readback.i51.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %write_readback.i51.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool.not.i52.i.i = icmp eq i8 %189, 0
  br i1 %tobool.not.i52.i.i, label %rtl_write_byte.exit48.i.i.if.then76.i.i_crit_edge, label %rtl_write_byte.exit48.i.i.if.then76.sink.split.i.i_crit_edge

rtl_write_byte.exit48.i.i.if.then76.sink.split.i.i_crit_edge: ; preds = %rtl_write_byte.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76.sink.split.i.i

rtl_write_byte.exit48.i.i.if.then76.i.i_crit_edge: ; preds = %rtl_write_byte.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76.i.i

if.else39.i.i:                                    ; preds = %if.end.i.i
  %arrayidx42.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom.i.i
  %190 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx42.i.i, align 1
  %write8_async.i57.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 5
  %192 = ptrtoint ptr %write8_async.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write8_async.i57.i.i, align 4
  tail call void %193(ptr noundef %90, i32 noundef 2594, i8 noundef zeroext %191) #7
  %cfg.i58.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 32
  %194 = ptrtoint ptr %cfg.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cfg.i58.i.i, align 8
  %write_readback.i59.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %write_readback.i59.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %write_readback.i59.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i60.i.i = icmp eq i8 %197, 0
  br i1 %tobool.not.i60.i.i, label %if.else39.i.i.rtl_write_byte.exit64.i.i_crit_edge, label %if.then.i63.i.i

if.else39.i.i.rtl_write_byte.exit64.i.i_crit_edge: ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit64.i.i

if.then.i63.i.i:                                  ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i61.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %198 = ptrtoint ptr %read8_sync.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %read8_sync.i61.i.i, align 4
  %call.i62.i.i = tail call zeroext i8 %199(ptr noundef %90, i32 noundef 2594) #7
  br label %rtl_write_byte.exit64.i.i

rtl_write_byte.exit64.i.i:                        ; preds = %if.then.i63.i.i, %if.else39.i.i.rtl_write_byte.exit64.i.i_crit_edge
  %200 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom45.i.i = zext i8 %201 to i32
  %arrayidx47.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom45.i.i, i32 1
  %202 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx47.i.i, align 1
  %204 = ptrtoint ptr %write8_async.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %write8_async.i57.i.i, align 4
  tail call void %205(ptr noundef %90, i32 noundef 2595, i8 noundef zeroext %203) #7
  %206 = ptrtoint ptr %cfg.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cfg.i58.i.i, align 8
  %write_readback.i67.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %write_readback.i67.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %write_readback.i67.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool.not.i68.i.i = icmp eq i8 %209, 0
  br i1 %tobool.not.i68.i.i, label %rtl_write_byte.exit64.i.i.rtl_write_byte.exit72.i.i_crit_edge, label %if.then.i71.i.i

rtl_write_byte.exit64.i.i.rtl_write_byte.exit72.i.i_crit_edge: ; preds = %rtl_write_byte.exit64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit72.i.i

if.then.i71.i.i:                                  ; preds = %rtl_write_byte.exit64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i69.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %210 = ptrtoint ptr %read8_sync.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %read8_sync.i69.i.i, align 4
  %call.i70.i.i = tail call zeroext i8 %211(ptr noundef %90, i32 noundef 2595) #7
  br label %rtl_write_byte.exit72.i.i

rtl_write_byte.exit72.i.i:                        ; preds = %if.then.i71.i.i, %rtl_write_byte.exit64.i.i.rtl_write_byte.exit72.i.i_crit_edge
  %212 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom49.i.i = zext i8 %213 to i32
  %arrayidx51.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom49.i.i, i32 2
  %214 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx51.i.i, align 1
  %216 = ptrtoint ptr %write8_async.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %write8_async.i57.i.i, align 4
  tail call void %217(ptr noundef %90, i32 noundef 2596, i8 noundef zeroext %215) #7
  %218 = ptrtoint ptr %cfg.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cfg.i58.i.i, align 8
  %write_readback.i75.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %write_readback.i75.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %write_readback.i75.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool.not.i76.i.i = icmp eq i8 %221, 0
  br i1 %tobool.not.i76.i.i, label %rtl_write_byte.exit72.i.i.rtl_write_byte.exit80.i.i_crit_edge, label %if.then.i79.i.i

rtl_write_byte.exit72.i.i.rtl_write_byte.exit80.i.i_crit_edge: ; preds = %rtl_write_byte.exit72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit80.i.i

if.then.i79.i.i:                                  ; preds = %rtl_write_byte.exit72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i77.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %222 = ptrtoint ptr %read8_sync.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %read8_sync.i77.i.i, align 4
  %call.i78.i.i = tail call zeroext i8 %223(ptr noundef %90, i32 noundef 2596) #7
  br label %rtl_write_byte.exit80.i.i

rtl_write_byte.exit80.i.i:                        ; preds = %if.then.i79.i.i, %rtl_write_byte.exit72.i.i.rtl_write_byte.exit80.i.i_crit_edge
  %224 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom53.i.i = zext i8 %225 to i32
  %arrayidx55.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom53.i.i, i32 3
  %226 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx55.i.i, align 1
  %228 = ptrtoint ptr %write8_async.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %write8_async.i57.i.i, align 4
  tail call void %229(ptr noundef %90, i32 noundef 2597, i8 noundef zeroext %227) #7
  %230 = ptrtoint ptr %cfg.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %cfg.i58.i.i, align 8
  %write_readback.i83.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %write_readback.i83.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %write_readback.i83.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool.not.i84.i.i = icmp eq i8 %233, 0
  br i1 %tobool.not.i84.i.i, label %rtl_write_byte.exit80.i.i.rtl_write_byte.exit88.i.i_crit_edge, label %if.then.i87.i.i

rtl_write_byte.exit80.i.i.rtl_write_byte.exit88.i.i_crit_edge: ; preds = %rtl_write_byte.exit80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit88.i.i

if.then.i87.i.i:                                  ; preds = %rtl_write_byte.exit80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i85.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %234 = ptrtoint ptr %read8_sync.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %read8_sync.i85.i.i, align 4
  %call.i86.i.i = tail call zeroext i8 %235(ptr noundef %90, i32 noundef 2597) #7
  br label %rtl_write_byte.exit88.i.i

rtl_write_byte.exit88.i.i:                        ; preds = %if.then.i87.i.i, %rtl_write_byte.exit80.i.i.rtl_write_byte.exit88.i.i_crit_edge
  %236 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom57.i.i = zext i8 %237 to i32
  %arrayidx59.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom57.i.i, i32 4
  %238 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx59.i.i, align 1
  %240 = ptrtoint ptr %write8_async.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %write8_async.i57.i.i, align 4
  tail call void %241(ptr noundef %90, i32 noundef 2598, i8 noundef zeroext %239) #7
  %242 = ptrtoint ptr %cfg.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %cfg.i58.i.i, align 8
  %write_readback.i91.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %write_readback.i91.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %write_readback.i91.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool.not.i92.i.i = icmp eq i8 %245, 0
  br i1 %tobool.not.i92.i.i, label %rtl_write_byte.exit88.i.i.rtl_write_byte.exit96.i.i_crit_edge, label %if.then.i95.i.i

rtl_write_byte.exit88.i.i.rtl_write_byte.exit96.i.i_crit_edge: ; preds = %rtl_write_byte.exit88.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit96.i.i

if.then.i95.i.i:                                  ; preds = %rtl_write_byte.exit88.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i93.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %246 = ptrtoint ptr %read8_sync.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %read8_sync.i93.i.i, align 4
  %call.i94.i.i = tail call zeroext i8 %247(ptr noundef %90, i32 noundef 2598) #7
  br label %rtl_write_byte.exit96.i.i

rtl_write_byte.exit96.i.i:                        ; preds = %if.then.i95.i.i, %rtl_write_byte.exit88.i.i.rtl_write_byte.exit96.i.i_crit_edge
  %248 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom61.i.i = zext i8 %249 to i32
  %arrayidx63.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom61.i.i, i32 5
  %250 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx63.i.i, align 1
  %252 = ptrtoint ptr %write8_async.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %write8_async.i57.i.i, align 4
  tail call void %253(ptr noundef %90, i32 noundef 2599, i8 noundef zeroext %251) #7
  %254 = ptrtoint ptr %cfg.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %cfg.i58.i.i, align 8
  %write_readback.i99.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %255, i32 0, i32 1
  %256 = ptrtoint ptr %write_readback.i99.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %write_readback.i99.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool.not.i100.i.i = icmp eq i8 %257, 0
  br i1 %tobool.not.i100.i.i, label %rtl_write_byte.exit96.i.i.rtl_write_byte.exit104.i.i_crit_edge, label %if.then.i103.i.i

rtl_write_byte.exit96.i.i.rtl_write_byte.exit104.i.i_crit_edge: ; preds = %rtl_write_byte.exit96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit104.i.i

if.then.i103.i.i:                                 ; preds = %rtl_write_byte.exit96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i101.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %258 = ptrtoint ptr %read8_sync.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %read8_sync.i101.i.i, align 4
  %call.i102.i.i = tail call zeroext i8 %259(ptr noundef %90, i32 noundef 2599) #7
  br label %rtl_write_byte.exit104.i.i

rtl_write_byte.exit104.i.i:                       ; preds = %if.then.i103.i.i, %rtl_write_byte.exit96.i.i.rtl_write_byte.exit104.i.i_crit_edge
  %260 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom65.i.i = zext i8 %261 to i32
  %arrayidx67.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom65.i.i, i32 6
  %262 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx67.i.i, align 1
  %264 = ptrtoint ptr %write8_async.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write8_async.i57.i.i, align 4
  tail call void %265(ptr noundef %90, i32 noundef 2600, i8 noundef zeroext %263) #7
  %266 = ptrtoint ptr %cfg.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %cfg.i58.i.i, align 8
  %write_readback.i107.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %write_readback.i107.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %write_readback.i107.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool.not.i108.i.i = icmp eq i8 %269, 0
  br i1 %tobool.not.i108.i.i, label %rtl_write_byte.exit104.i.i.rtl_write_byte.exit112.i.i_crit_edge, label %if.then.i111.i.i

rtl_write_byte.exit104.i.i.rtl_write_byte.exit112.i.i_crit_edge: ; preds = %rtl_write_byte.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit112.i.i

if.then.i111.i.i:                                 ; preds = %rtl_write_byte.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i109.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %270 = ptrtoint ptr %read8_sync.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %read8_sync.i109.i.i, align 4
  %call.i110.i.i = tail call zeroext i8 %271(ptr noundef %90, i32 noundef 2600) #7
  br label %rtl_write_byte.exit112.i.i

rtl_write_byte.exit112.i.i:                       ; preds = %if.then.i111.i.i, %rtl_write_byte.exit104.i.i.rtl_write_byte.exit112.i.i_crit_edge
  %272 = ptrtoint ptr %swing_idx_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %swing_idx_cck.i.i, align 1
  %idxprom69.i.i = zext i8 %273 to i32
  %arrayidx71.i.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom69.i.i, i32 7
  %274 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx71.i.i, align 1
  %276 = ptrtoint ptr %write8_async.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %write8_async.i57.i.i, align 4
  tail call void %277(ptr noundef %90, i32 noundef 2601, i8 noundef zeroext %275) #7
  %278 = ptrtoint ptr %cfg.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %cfg.i58.i.i, align 8
  %write_readback.i115.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %write_readback.i115.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %write_readback.i115.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool.not.i116.i.i = icmp eq i8 %281, 0
  br i1 %tobool.not.i116.i.i, label %rtl_write_byte.exit112.i.i.if.then76.i.i_crit_edge, label %rtl_write_byte.exit112.i.i.if.then76.sink.split.i.i_crit_edge

rtl_write_byte.exit112.i.i.if.then76.sink.split.i.i_crit_edge: ; preds = %rtl_write_byte.exit112.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76.sink.split.i.i

rtl_write_byte.exit112.i.i.if.then76.i.i_crit_edge: ; preds = %rtl_write_byte.exit112.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76.i.i

if.then76.sink.split.i.i:                         ; preds = %rtl_write_byte.exit112.i.i.if.then76.sink.split.i.i_crit_edge, %rtl_write_byte.exit48.i.i.if.then76.sink.split.i.i_crit_edge
  %read8_sync.i117.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %282 = ptrtoint ptr %read8_sync.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %read8_sync.i117.i.i, align 4
  %call.i118.i.i = tail call zeroext i8 %283(ptr noundef %90, i32 noundef 2601) #7
  br label %if.then76.i.i

if.then76.i.i:                                    ; preds = %if.then76.sink.split.i.i, %rtl_write_byte.exit112.i.i.if.then76.i.i_crit_edge, %rtl_write_byte.exit48.i.i.if.then76.i.i_crit_edge
  %swing_idx_ofdm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 15, i32 61
  %284 = ptrtoint ptr %swing_idx_ofdm.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %swing_idx_ofdm.i.i, align 1
  %value.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 14, i32 35, i32 0, i32 1
  %286 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %value.i.i, align 4
  %288 = tail call i8 @llvm.umin.i8(i8 %285, i8 42) #7
  %idxprom.i.i.i = zext i8 %288 to i32
  %arrayidx.i.i.i = getelementptr [43 x i32], ptr @ofdmswing_table, i32 0, i32 %idxprom.i.i.i
  %289 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %cmp2.not.i.i.i = icmp eq i32 %287, 0
  br i1 %cmp2.not.i.i.i, label %sw.bb32.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx98.i.i = getelementptr %struct.rtl_priv, ptr %90, i32 0, i32 14, i32 35, i32 0, i32 1, i32 0, i32 1
  %291 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %arrayidx98.i.i, align 4
  %shr.i.i.i = lshr i32 %290, 22
  %and5.i.i.i = and i32 %287, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %cmp6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  %or.i.i.i = or i32 %287, -1024
  %spec.select.i.i.i = select i1 %cmp6.not.i.i.i, i32 %287, i32 %or.i.i.i
  %mul.i.i.i = mul i32 %spec.select.i.i.i, %shr.i.i.i
  %293 = lshr i32 %mul.i.i.i, 8
  %and11.i.i.i = and i32 %293, 1023
  %and12.i.i.i = and i32 %292, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i)
  %cmp13.not.i.i.i = icmp eq i32 %and12.i.i.i, 0
  %or16.i.i.i = or i32 %292, -1024
  %iqk_result_y.addr.0.i.i.i = select i1 %cmp13.not.i.i.i, i32 %292, i32 %or16.i.i.i
  %mul18.i.i.i = mul i32 %iqk_result_y.addr.0.i.i.i, %shr.i.i.i
  %shl.i.i.i = and i32 %290, -4194304
  %294 = shl i32 %mul18.i.i.i, 8
  %shl23.i.i.i = and i32 %294, 4128768
  %or24.i.i.i = or i32 %and11.i.i.i, %shl.i.i.i
  %or25.i.i.i = or i32 %or24.i.i.i, %shl23.i.i.i
  %295 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %priv, align 8
  %cfg.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %296, i32 0, i32 32
  %297 = ptrtoint ptr %cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cfg.i.i.i.i, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %298, i32 0, i32 4
  %299 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_bbreg.i.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %300, i32 0, i32 46
  %301 = ptrtoint ptr %set_bbreg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %set_bbreg.i.i.i.i, align 4
  tail call void %302(ptr noundef %hw, i32 noundef 3200, i32 noundef -1, i32 noundef %or25.i.i.i) #7
  %and26.i.i.i = lshr i32 %mul18.i.i.i, 14
  %303 = and i32 %and26.i.i.i, 15
  %304 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %priv, align 8
  %cfg.i3.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %305, i32 0, i32 32
  %306 = ptrtoint ptr %cfg.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %cfg.i3.i.i.i, align 8
  %ops.i4.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %307, i32 0, i32 4
  %308 = ptrtoint ptr %ops.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %ops.i4.i.i.i, align 4
  %set_bbreg.i5.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %309, i32 0, i32 46
  %310 = ptrtoint ptr %set_bbreg.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %set_bbreg.i5.i.i.i, align 4
  tail call void %311(ptr noundef %hw, i32 noundef 3220, i32 noundef -268435456, i32 noundef %303) #7
  %shr291.i.i.i = lshr i32 %mul.i.i.i, 7
  %and30.i.i.i = and i32 %shr291.i.i.i, 1
  br label %rtl8723be_dm_tx_power_track_set_power.exit.i

sw.bb32.i.i.i:                                    ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %312 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %priv, align 8
  %cfg.i11.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 32
  %314 = ptrtoint ptr %cfg.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %cfg.i11.i.i.i, align 8
  %ops.i12.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %315, i32 0, i32 4
  %316 = ptrtoint ptr %ops.i12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %ops.i12.i.i.i, align 4
  %set_bbreg.i13.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %317, i32 0, i32 46
  %318 = ptrtoint ptr %set_bbreg.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %set_bbreg.i13.i.i.i, align 4
  tail call void %319(ptr noundef %hw, i32 noundef 3200, i32 noundef -1, i32 noundef %290) #7
  %320 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %priv, align 8
  %cfg.i15.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %321, i32 0, i32 32
  %322 = ptrtoint ptr %cfg.i15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %cfg.i15.i.i.i, align 8
  %ops.i16.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %323, i32 0, i32 4
  %324 = ptrtoint ptr %ops.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %ops.i16.i.i.i, align 4
  %set_bbreg.i17.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %325, i32 0, i32 46
  %326 = ptrtoint ptr %set_bbreg.i17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %set_bbreg.i17.i.i.i, align 4
  tail call void %327(ptr noundef %hw, i32 noundef 3220, i32 noundef -268435456, i32 noundef 0) #7
  br label %rtl8723be_dm_tx_power_track_set_power.exit.i

rtl8723be_dm_tx_power_track_set_power.exit.i:     ; preds = %sw.bb32.i.i.i, %if.then4.i.i.i
  %.sink.i.i.i = phi i32 [ 0, %sw.bb32.i.i.i ], [ %and30.i.i.i, %if.then4.i.i.i ]
  %328 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %priv, align 8
  %cfg.i19.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 32
  %330 = ptrtoint ptr %cfg.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %cfg.i19.i.i.i, align 8
  %ops.i20.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %331, i32 0, i32 4
  %332 = ptrtoint ptr %ops.i20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %ops.i20.i.i.i, align 4
  %set_bbreg.i21.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %333, i32 0, i32 46
  %334 = ptrtoint ptr %set_bbreg.i21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %set_bbreg.i21.i.i.i, align 4
  tail call void %335(ptr noundef %hw, i32 noundef 3148, i32 noundef 16777216, i32 noundef %.sink.i.i.i) #7
  %swing_idx_cck265.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 65
  %336 = ptrtoint ptr %swing_idx_cck265.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %swing_idx_cck265.i, align 1
  %swing_idx_cck_base266.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 67
  %338 = ptrtoint ptr %swing_idx_cck_base266.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %337, ptr %swing_idx_cck_base266.i, align 1
  %swing_idx_ofdm267.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 61
  %339 = ptrtoint ptr %swing_idx_ofdm267.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %swing_idx_ofdm267.i, align 1
  %swing_idx_ofdm_base269.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 63
  %341 = ptrtoint ptr %swing_idx_ofdm_base269.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %340, ptr %swing_idx_ofdm_base269.i, align 2
  %342 = ptrtoint ptr %thermalvalue12.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %thermalvalue.0.i, ptr %thermalvalue12.i, align 2
  br label %if.end272.i

if.end272.i:                                      ; preds = %rtl8723be_dm_tx_power_track_set_power.exit.i, %land.lhs.true260.i.if.end272.i_crit_edge, %if.end254.i.if.end272.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %cond104.i)
  %cmp274.i = icmp ugt i8 %cond104.i, 7
  br i1 %cmp274.i, label %if.then276.i, label %if.end272.i.if.end278.i_crit_edge

if.end272.i.if.end278.i_crit_edge:                ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end278.i

if.then276.i:                                     ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #9
  %343 = ptrtoint ptr %thermalvalue_iqk87.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %thermalvalue.0.i, ptr %thermalvalue_iqk87.i, align 4
  tail call void @rtl8723be_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext false) #7
  br label %if.end278.i

if.end278.i:                                      ; preds = %if.then276.i, %if.end272.i.if.end278.i_crit_edge
  %txpowercount.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 18
  %344 = ptrtoint ptr %txpowercount.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 0, ptr %txpowercount.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.6) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end278.i, %lor.lhs.false7.i.cleanup.sink.split_crit_edge, %lor.lhs.false.i.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.then3
  %.sink = phi i8 [ 1, %if.then3 ], [ 0, %if.else.cleanup.sink.split_crit_edge ], [ 0, %lor.lhs.false.i.cleanup.sink.split_crit_edge ], [ 0, %lor.lhs.false7.i.cleanup.sink.split_crit_edge ], [ 0, %if.end278.i ]
  %345 = ptrtoint ptr %tm_trigger to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %.sink, ptr %tm_trigger, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_dm_watchdog(ptr noundef %hw) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %fw_current_in_ps_mode.i = alloca i8, align 1
  %h2c_parameter.i = alloca [3 x i8], align 1
  %fw_current_inpsmode = alloca i8, align 1
  %fw_ps_awake = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inpsmode) #7
  %2 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fw_current_inpsmode, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_ps_awake) #7
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
  call void %9(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inpsmode) #7
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
  call void %15(ptr noundef %hw, i8 noundef zeroext 86, ptr noundef nonnull %fw_ps_awake) #7
  %p2p_ps_info = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39
  %16 = ptrtoint ptr %p2p_ps_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p2p_ps_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %fw_ps_awake to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %fw_ps_awake, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rf_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 5
  call void @_raw_spin_lock(ptr noundef %rf_ps_lock) #7
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %19 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.not = icmp eq i8 %22, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %23 = ptrtoint ptr %fw_ps_awake to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw_ps_awake, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not = icmp eq i8 %24, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end11_crit_edge, label %land.lhs.true8

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %25 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rfchange_inprogress, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not = icmp eq i8 %26, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true8.if.end11_crit_edge

land.lhs.true8.if.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true8
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %one_entry_only.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 49
  %29 = ptrtoint ptr %one_entry_only.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %one_entry_only.i, align 1
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 9, i32 8
  %30 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %opmode.i, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %31, label %if.then10.rtl8723be_dm_common_info_self_update.exit_crit_edge [
    i32 2, label %land.lhs.true.i
    i32 3, label %if.then10.if.then15.i_crit_edge
    i32 1, label %if.then10.if.then15.i_crit_edge148
    i32 7, label %if.then10.if.then15.i_crit_edge149
  ]

if.then10.if.then15.i_crit_edge149:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

if.then10.if.then15.i_crit_edge148:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

if.then10.if.then15.i_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

if.then10.rtl8723be_dm_common_info_self_update.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_common_info_self_update.exit

land.lhs.true.i:                                  ; preds = %if.then10
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 9, i32 10
  %33 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp2.i = icmp ugt i32 %34, 1
  br i1 %cmp2.i, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true.i.rtl8723be_dm_common_info_self_update.exit_crit_edge

land.lhs.true.i.rtl8723be_dm_common_info_self_update.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_common_info_self_update.exit

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then15.i:                                      ; preds = %if.then10.if.then15.i_crit_edge, %if.then10.if.then15.i_crit_edge148, %if.then10.if.then15.i_crit_edge149
  %entry_list_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 7, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock.i) #7
  %entry_list.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 28
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then15.i
  %drv_priv.0.in.i = phi ptr [ %entry_list.i, %if.then15.i ], [ %drv_priv.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %cnt.0.i = phi i8 [ 0, %if.then15.i ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %35 = ptrtoint ptr %drv_priv.0.in.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %drv_priv.0.i = load ptr, ptr %drv_priv.0.in.i, align 1
  %cmp17.not.i = icmp eq ptr %drv_priv.0.i, %entry_list.i
  %inc.i = add i8 %cnt.0.i, 1
  br i1 %cmp17.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cnt.0.i)
  %cmp25.i = icmp eq i8 %cnt.0.i, 1
  br i1 %cmp25.i, label %for.end.i.cleanup.sink.split.i_crit_edge, label %for.end.i.rtl8723be_dm_common_info_self_update.exit_crit_edge

for.end.i.rtl8723be_dm_common_info_self_update.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_common_info_self_update.exit

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.end.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i.cleanup.sink.split.i_crit_edge
  %36 = ptrtoint ptr %one_entry_only.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %one_entry_only.i, align 1
  br label %rtl8723be_dm_common_info_self_update.exit

rtl8723be_dm_common_info_self_update.exit:        ; preds = %cleanup.sink.split.i, %for.end.i.rtl8723be_dm_common_info_self_update.exit_crit_edge, %land.lhs.true.i.rtl8723be_dm_common_info_self_update.exit_crit_edge, %if.then10.rtl8723be_dm_common_info_self_update.exit_crit_edge
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %falsealm_cnt1.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_bbreg.i.i, align 4
  call void %44(ptr noundef %hw, i32 noundef 3072, i32 noundef -2147483648, i32 noundef 1) #7
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %cfg.i124.i = getelementptr inbounds %struct.rtl_priv, ptr %46, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i124.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i124.i, align 8
  %ops.i125.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops.i125.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i125.i, align 4
  %set_bbreg.i126.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %set_bbreg.i126.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_bbreg.i126.i, align 4
  call void %52(ptr noundef %hw, i32 noundef 3328, i32 noundef -2147483648, i32 noundef 1) #7
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %cfg.i128.i = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 32
  %55 = ptrtoint ptr %cfg.i128.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i128.i, align 8
  %ops.i129.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %ops.i129.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i129.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %58, i32 0, i32 45
  %59 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = call i32 %60(ptr noundef %hw, i32 noundef 3312, i32 noundef -1) #7
  %and.i = and i32 %call.i.i, 65535
  %cnt_fast_fsync_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 4
  %61 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and.i, ptr %cnt_fast_fsync_fail.i, align 4
  %shr.i = lshr i32 %call.i.i, 16
  %cnt_sb_search_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 5
  %62 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shr.i, ptr %cnt_sb_search_fail.i, align 4
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  %cfg.i131.i = getelementptr inbounds %struct.rtl_priv, ptr %64, i32 0, i32 32
  %65 = ptrtoint ptr %cfg.i131.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i131.i, align 8
  %ops.i132.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %ops.i132.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i132.i, align 4
  %get_bbreg.i133.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %68, i32 0, i32 45
  %69 = ptrtoint ptr %get_bbreg.i133.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %get_bbreg.i133.i, align 4
  %call.i134.i = call i32 %70(ptr noundef %hw, i32 noundef 3488, i32 noundef -1) #7
  %and4.i = and i32 %call.i134.i, 65535
  %cnt_ofdm_cca.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 9
  %71 = ptrtoint ptr %cnt_ofdm_cca.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and4.i, ptr %cnt_ofdm_cca.i, align 4
  %shr6.i = lshr i32 %call.i134.i, 16
  %72 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shr6.i, ptr %falsealm_cnt1.i, align 4
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 8
  %cfg.i136.i = getelementptr inbounds %struct.rtl_priv, ptr %74, i32 0, i32 32
  %75 = ptrtoint ptr %cfg.i136.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg.i136.i, align 8
  %ops.i137.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %ops.i137.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i137.i, align 4
  %get_bbreg.i138.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %78, i32 0, i32 45
  %79 = ptrtoint ptr %get_bbreg.i138.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %get_bbreg.i138.i, align 4
  %call.i139.i = call i32 %80(ptr noundef %hw, i32 noundef 3492, i32 noundef -1) #7
  %and8.i = and i32 %call.i139.i, 65535
  %cnt_rate_illegal.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 1
  %81 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and8.i, ptr %cnt_rate_illegal.i, align 4
  %shr10.i = lshr i32 %call.i139.i, 16
  %cnt_crc8_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 2
  %82 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shr10.i, ptr %cnt_crc8_fail.i, align 4
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 8
  %cfg.i141.i = getelementptr inbounds %struct.rtl_priv, ptr %84, i32 0, i32 32
  %85 = ptrtoint ptr %cfg.i141.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i141.i, align 8
  %ops.i142.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %ops.i142.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i142.i, align 4
  %get_bbreg.i143.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %88, i32 0, i32 45
  %89 = ptrtoint ptr %get_bbreg.i143.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %get_bbreg.i143.i, align 4
  %call.i144.i = call i32 %90(ptr noundef %hw, i32 noundef 3496, i32 noundef -1) #7
  %and12.i = and i32 %call.i144.i, 65535
  %cnt_mcs_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 3
  %91 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and12.i, ptr %cnt_mcs_fail.i, align 4
  %92 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %falsealm_cnt1.i, align 4
  %94 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cnt_rate_illegal.i, align 4
  %96 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cnt_crc8_fail.i, align 4
  %98 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cnt_fast_fsync_fail.i, align 4
  %100 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cnt_sb_search_fail.i, align 4
  %add.i = add i32 %93, %and12.i
  %add16.i = add i32 %add.i, %95
  %add18.i = add i32 %add16.i, %97
  %add20.i = add i32 %add18.i, %99
  %add22.i = add i32 %add20.i, %101
  %cnt_ofdm_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 6
  %102 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add22.i, ptr %cnt_ofdm_fail.i, align 4
  %103 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %priv, align 8
  %cfg.i146.i = getelementptr inbounds %struct.rtl_priv, ptr %104, i32 0, i32 32
  %105 = ptrtoint ptr %cfg.i146.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg.i146.i, align 8
  %ops.i147.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %ops.i147.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i147.i, align 4
  %set_bbreg.i148.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %108, i32 0, i32 46
  %109 = ptrtoint ptr %set_bbreg.i148.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %set_bbreg.i148.i, align 4
  call void %110(ptr noundef %hw, i32 noundef 2604, i32 noundef 4096, i32 noundef 1) #7
  %111 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %priv, align 8
  %cfg.i150.i = getelementptr inbounds %struct.rtl_priv, ptr %112, i32 0, i32 32
  %113 = ptrtoint ptr %cfg.i150.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cfg.i150.i, align 8
  %ops.i151.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %ops.i151.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops.i151.i, align 4
  %set_bbreg.i152.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %116, i32 0, i32 46
  %117 = ptrtoint ptr %set_bbreg.i152.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %set_bbreg.i152.i, align 4
  call void %118(ptr noundef %hw, i32 noundef 2604, i32 noundef 16384, i32 noundef 1) #7
  %119 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %priv, align 8
  %cfg.i154.i = getelementptr inbounds %struct.rtl_priv, ptr %120, i32 0, i32 32
  %121 = ptrtoint ptr %cfg.i154.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cfg.i154.i, align 8
  %ops.i155.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %ops.i155.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops.i155.i, align 4
  %get_bbreg.i156.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %124, i32 0, i32 45
  %125 = ptrtoint ptr %get_bbreg.i156.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %get_bbreg.i156.i, align 4
  %call.i157.i = call i32 %126(ptr noundef %hw, i32 noundef 2604, i32 noundef 255) #7
  %cnt_cck_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 7
  %127 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call.i157.i, ptr %cnt_cck_fail.i, align 4
  %128 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %priv, align 8
  %cfg.i159.i = getelementptr inbounds %struct.rtl_priv, ptr %129, i32 0, i32 32
  %130 = ptrtoint ptr %cfg.i159.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cfg.i159.i, align 8
  %ops.i160.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %ops.i160.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ops.i160.i, align 4
  %get_bbreg.i161.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %133, i32 0, i32 45
  %134 = ptrtoint ptr %get_bbreg.i161.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %get_bbreg.i161.i, align 4
  %call.i162.i = call i32 %135(ptr noundef %hw, i32 noundef 2648, i32 noundef -16777216) #7
  %and25.i = shl i32 %call.i162.i, 8
  %shl.i = and i32 %and25.i, 65280
  %136 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cnt_cck_fail.i, align 4
  %add27.i = add i32 %shl.i, %137
  store i32 %add27.i, ptr %cnt_cck_fail.i, align 4
  %138 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %priv, align 8
  %cfg.i164.i = getelementptr inbounds %struct.rtl_priv, ptr %139, i32 0, i32 32
  %140 = ptrtoint ptr %cfg.i164.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cfg.i164.i, align 8
  %ops.i165.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %ops.i165.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ops.i165.i, align 4
  %get_bbreg.i166.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %143, i32 0, i32 45
  %144 = ptrtoint ptr %get_bbreg.i166.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %get_bbreg.i166.i, align 4
  %call.i167.i = call i32 %145(ptr noundef %hw, i32 noundef 2656, i32 noundef -1) #7
  %trunc.i = trunc i32 %call.i167.i to i16
  %rev.i = call i16 @llvm.bswap.i16(i16 %trunc.i) #7
  %or.i = zext i16 %rev.i to i32
  %cnt_cck_cca.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 10
  %146 = ptrtoint ptr %cnt_cck_cca.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or.i, ptr %cnt_cck_cca.i, align 4
  %147 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cnt_fast_fsync_fail.i, align 4
  %149 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cnt_sb_search_fail.i, align 4
  %add35.i = add i32 %150, %148
  %151 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %falsealm_cnt1.i, align 4
  %add37.i = add i32 %add35.i, %152
  %153 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cnt_rate_illegal.i, align 4
  %add39.i = add i32 %add37.i, %154
  %155 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cnt_crc8_fail.i, align 4
  %add41.i = add i32 %add39.i, %156
  %157 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cnt_mcs_fail.i, align 4
  %add43.i = add i32 %add41.i, %158
  %159 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cnt_cck_fail.i, align 4
  %add45.i = add i32 %add43.i, %160
  %cnt_all.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 8
  %161 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add45.i, ptr %cnt_all.i, align 4
  %162 = ptrtoint ptr %cnt_ofdm_cca.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cnt_ofdm_cca.i, align 4
  %add48.i = add i32 %163, %or.i
  %cnt_cca_all.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 11
  %164 = ptrtoint ptr %cnt_cca_all.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %add48.i, ptr %cnt_cca_all.i, align 4
  %165 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %priv, align 8
  %cfg.i169.i = getelementptr inbounds %struct.rtl_priv, ptr %166, i32 0, i32 32
  %167 = ptrtoint ptr %cfg.i169.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cfg.i169.i, align 8
  %ops.i170.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %168, i32 0, i32 4
  %169 = ptrtoint ptr %ops.i170.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ops.i170.i, align 4
  %set_bbreg.i171.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %170, i32 0, i32 46
  %171 = ptrtoint ptr %set_bbreg.i171.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %set_bbreg.i171.i, align 4
  call void %172(ptr noundef %hw, i32 noundef 3084, i32 noundef -2147483648, i32 noundef 1) #7
  %173 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %priv, align 8
  %cfg.i173.i = getelementptr inbounds %struct.rtl_priv, ptr %174, i32 0, i32 32
  %175 = ptrtoint ptr %cfg.i173.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cfg.i173.i, align 8
  %ops.i174.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %176, i32 0, i32 4
  %177 = ptrtoint ptr %ops.i174.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ops.i174.i, align 4
  %set_bbreg.i175.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %178, i32 0, i32 46
  %179 = ptrtoint ptr %set_bbreg.i175.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %set_bbreg.i175.i, align 4
  call void %180(ptr noundef %hw, i32 noundef 3084, i32 noundef -2147483648, i32 noundef 0) #7
  %181 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %priv, align 8
  %cfg.i177.i = getelementptr inbounds %struct.rtl_priv, ptr %182, i32 0, i32 32
  %183 = ptrtoint ptr %cfg.i177.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cfg.i177.i, align 8
  %ops.i178.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %ops.i178.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ops.i178.i, align 4
  %set_bbreg.i179.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %186, i32 0, i32 46
  %187 = ptrtoint ptr %set_bbreg.i179.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %set_bbreg.i179.i, align 4
  call void %188(ptr noundef %hw, i32 noundef 3328, i32 noundef 134217728, i32 noundef 1) #7
  %189 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %priv, align 8
  %cfg.i181.i = getelementptr inbounds %struct.rtl_priv, ptr %190, i32 0, i32 32
  %191 = ptrtoint ptr %cfg.i181.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cfg.i181.i, align 8
  %ops.i182.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %192, i32 0, i32 4
  %193 = ptrtoint ptr %ops.i182.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ops.i182.i, align 4
  %set_bbreg.i183.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %194, i32 0, i32 46
  %195 = ptrtoint ptr %set_bbreg.i183.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %set_bbreg.i183.i, align 4
  call void %196(ptr noundef %hw, i32 noundef 3328, i32 noundef 134217728, i32 noundef 0) #7
  %197 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %priv, align 8
  %cfg.i185.i = getelementptr inbounds %struct.rtl_priv, ptr %198, i32 0, i32 32
  %199 = ptrtoint ptr %cfg.i185.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cfg.i185.i, align 8
  %ops.i186.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %200, i32 0, i32 4
  %201 = ptrtoint ptr %ops.i186.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ops.i186.i, align 4
  %set_bbreg.i187.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %202, i32 0, i32 46
  %203 = ptrtoint ptr %set_bbreg.i187.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %set_bbreg.i187.i, align 4
  call void %204(ptr noundef %hw, i32 noundef 3072, i32 noundef -2147483648, i32 noundef 0) #7
  %205 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %priv, align 8
  %cfg.i189.i = getelementptr inbounds %struct.rtl_priv, ptr %206, i32 0, i32 32
  %207 = ptrtoint ptr %cfg.i189.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cfg.i189.i, align 8
  %ops.i190.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %208, i32 0, i32 4
  %209 = ptrtoint ptr %ops.i190.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ops.i190.i, align 4
  %set_bbreg.i191.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %210, i32 0, i32 46
  %211 = ptrtoint ptr %set_bbreg.i191.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %set_bbreg.i191.i, align 4
  call void %212(ptr noundef %hw, i32 noundef 3328, i32 noundef -2147483648, i32 noundef 0) #7
  %213 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %priv, align 8
  %cfg.i193.i = getelementptr inbounds %struct.rtl_priv, ptr %214, i32 0, i32 32
  %215 = ptrtoint ptr %cfg.i193.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cfg.i193.i, align 8
  %ops.i194.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %216, i32 0, i32 4
  %217 = ptrtoint ptr %ops.i194.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ops.i194.i, align 4
  %set_bbreg.i195.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %218, i32 0, i32 46
  %219 = ptrtoint ptr %set_bbreg.i195.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %set_bbreg.i195.i, align 4
  call void %220(ptr noundef %hw, i32 noundef 2604, i32 noundef 12288, i32 noundef 0) #7
  %221 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %priv, align 8
  %cfg.i197.i = getelementptr inbounds %struct.rtl_priv, ptr %222, i32 0, i32 32
  %223 = ptrtoint ptr %cfg.i197.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cfg.i197.i, align 8
  %ops.i198.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %224, i32 0, i32 4
  %225 = ptrtoint ptr %ops.i198.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ops.i198.i, align 4
  %set_bbreg.i199.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %226, i32 0, i32 46
  %227 = ptrtoint ptr %set_bbreg.i199.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %set_bbreg.i199.i, align 4
  call void %228(ptr noundef %hw, i32 noundef 2604, i32 noundef 12288, i32 noundef 2) #7
  %229 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %priv, align 8
  %cfg.i201.i = getelementptr inbounds %struct.rtl_priv, ptr %230, i32 0, i32 32
  %231 = ptrtoint ptr %cfg.i201.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %cfg.i201.i, align 8
  %ops.i202.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %232, i32 0, i32 4
  %233 = ptrtoint ptr %ops.i202.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ops.i202.i, align 4
  %set_bbreg.i203.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %234, i32 0, i32 46
  %235 = ptrtoint ptr %set_bbreg.i203.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %set_bbreg.i203.i, align 4
  call void %236(ptr noundef %hw, i32 noundef 2604, i32 noundef 49152, i32 noundef 0) #7
  %237 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %priv, align 8
  %cfg.i205.i = getelementptr inbounds %struct.rtl_priv, ptr %238, i32 0, i32 32
  %239 = ptrtoint ptr %cfg.i205.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %cfg.i205.i, align 8
  %ops.i206.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %240, i32 0, i32 4
  %241 = ptrtoint ptr %ops.i206.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ops.i206.i, align 4
  %set_bbreg.i207.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %242, i32 0, i32 46
  %243 = ptrtoint ptr %set_bbreg.i207.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %set_bbreg.i207.i, align 4
  call void %244(ptr noundef %hw, i32 noundef 2604, i32 noundef 49152, i32 noundef 2) #7
  %245 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %falsealm_cnt1.i, align 4
  %247 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %cnt_rate_illegal.i, align 4
  %249 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %cnt_crc8_fail.i, align 4
  %251 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %cnt_mcs_fail.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %38, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.7, i32 noundef %246, i32 noundef %248, i32 noundef %250, i32 noundef %252) #7
  %253 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %cnt_ofdm_fail.i, align 4
  %255 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %cnt_cck_fail.i, align 4
  %257 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %cnt_all.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %38, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.8, i32 noundef %254, i32 noundef %256, i32 noundef %258) #7
  %259 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %h2c_parameter.i) #7
  %261 = call ptr @memset(ptr %h2c_parameter.i, i32 0, i32 3)
  %entry_list_lock.i36 = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 7, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock.i36) #7
  %entry_list.i37 = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 28
  %262 = ptrtoint ptr %entry_list.i37 to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %drv_priv.076.i = load ptr, ptr %entry_list.i37, align 1
  %cmp.not77.i = icmp eq ptr %drv_priv.076.i, %entry_list.i37
  br i1 %cmp.not77.i, label %for.end.thread.i, label %rtl8723be_dm_common_info_self_update.exit.for.body.i_crit_edge

rtl8723be_dm_common_info_self_update.exit.for.body.i_crit_edge: ; preds = %rtl8723be_dm_common_info_self_update.exit
  br label %for.body.i

for.end.thread.i:                                 ; preds = %rtl8723be_dm_common_info_self_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i36) #7
  br label %if.else.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %rtl8723be_dm_common_info_self_update.exit.for.body.i_crit_edge
  %drv_priv.080.i = phi ptr [ %drv_priv.0.i38, %for.body.i.for.body.i_crit_edge ], [ %drv_priv.076.i, %rtl8723be_dm_common_info_self_update.exit.for.body.i_crit_edge ]
  %tmp_entry_max_pwdb.079.i = phi i32 [ %266, %for.body.i.for.body.i_crit_edge ], [ 0, %rtl8723be_dm_common_info_self_update.exit.for.body.i_crit_edge ]
  %tmp_entry_min_pwdb.078.i = phi i32 [ %265, %for.body.i.for.body.i_crit_edge ], [ 255, %rtl8723be_dm_common_info_self_update.exit.for.body.i_crit_edge ]
  %rssi_stat.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.080.i, i32 0, i32 2
  %263 = ptrtoint ptr %rssi_stat.i to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %264 = load i32, ptr %rssi_stat.i, align 1
  %265 = call i32 @llvm.smin.i32(i32 %264, i32 %tmp_entry_min_pwdb.078.i) #7
  %266 = call i32 @llvm.smax.i32(i32 %264, i32 %tmp_entry_max_pwdb.079.i) #7
  %267 = ptrtoint ptr %drv_priv.080.i to i32
  call void @__asan_loadN_noabort(i32 %267, i32 4)
  %drv_priv.0.i38 = load ptr, ptr %drv_priv.080.i, align 1
  %cmp.not.i = icmp eq ptr %drv_priv.0.i38, %entry_list.i37
  br i1 %cmp.not.i, label %for.end.i39, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i39:                                      ; preds = %for.body.i
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %cmp20.not.i = icmp eq i32 %266, 0
  br i1 %cmp20.not.i, label %for.end.i39.if.else.i_crit_edge, label %if.then21.i

for.end.i39.if.else.i_crit_edge:                  ; preds = %for.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then21.i:                                      ; preds = %for.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  %entry_max_undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 15, i32 3
  %268 = ptrtoint ptr %entry_max_undec_sm_pwdb.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %266, ptr %entry_max_undec_sm_pwdb.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %260, i64 noundef 13, i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %266, i32 noundef %266) #7
  br label %if.end24.i

if.else.i:                                        ; preds = %for.end.i39.if.else.i_crit_edge, %for.end.thread.i
  %tmp_entry_min_pwdb.0.lcssa87.i = phi i32 [ 255, %for.end.thread.i ], [ %265, %for.end.i39.if.else.i_crit_edge ]
  %entry_max_undec_sm_pwdb23.i = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 15, i32 3
  %269 = ptrtoint ptr %entry_max_undec_sm_pwdb23.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 0, ptr %entry_max_undec_sm_pwdb23.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %if.then21.i
  %tmp_entry_min_pwdb.0.lcssa86.i = phi i32 [ %tmp_entry_min_pwdb.0.lcssa87.i, %if.else.i ], [ %265, %if.then21.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %tmp_entry_min_pwdb.0.lcssa86.i)
  %cmp25.not.i = icmp eq i32 %tmp_entry_min_pwdb.0.lcssa86.i, 255
  %dm29.i = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 15
  br i1 %cmp25.not.i, label %if.else28.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %270 = ptrtoint ptr %dm29.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %tmp_entry_min_pwdb.0.lcssa86.i, ptr %dm29.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %260, i64 noundef 13, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %tmp_entry_min_pwdb.0.lcssa86.i, i32 noundef %tmp_entry_min_pwdb.0.lcssa86.i) #7
  br label %if.end31.i

if.else28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %271 = ptrtoint ptr %dm29.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %dm29.i, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else28.i, %if.then26.i
  %useramask.i = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 15, i32 14
  %272 = ptrtoint ptr %useramask.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %useramask.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %tobool.not.i = icmp eq i8 %273, 0
  %undec_sm_pwdb40.i = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 15, i32 2
  %274 = ptrtoint ptr %undec_sm_pwdb40.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %undec_sm_pwdb40.i, align 8
  %conv41.i = trunc i32 %275 to i8
  br i1 %tobool.not.i, label %if.else38.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr inbounds [3 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %276 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %conv41.i, ptr %arrayidx.i, align 1
  %arrayidx36.i = getelementptr inbounds [3 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %277 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 32, ptr %arrayidx36.i, align 1
  %278 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 0, ptr %h2c_parameter.i, align 1
  call void @rtl8723be_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 66, i32 noundef 3, ptr noundef nonnull %h2c_parameter.i) #7
  br label %if.end42.i

if.else38.i:                                      ; preds = %if.end31.i
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 13, i32 5
  %279 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %write8_async.i.i, align 4
  call void %280(ptr noundef %260, i32 noundef 1278, i8 noundef zeroext %conv41.i) #7
  %cfg.i.i40 = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 32
  %281 = ptrtoint ptr %cfg.i.i40 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %cfg.i.i40, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %write_readback.i.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %tobool.not.i.i = icmp eq i8 %284, 0
  br i1 %tobool.not.i.i, label %if.else38.i.if.end42.i_crit_edge, label %if.then.i.i

if.else38.i.if.end42.i_crit_edge:                 ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then.i.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 13, i32 9
  %285 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i41 = call zeroext i8 %286(ptr noundef %260, i32 noundef 1278) #7
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then.i.i, %if.else38.i.if.end42.i_crit_edge, %if.then33.i
  %287 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %priv, align 8
  %link_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %288, i32 0, i32 9, i32 10
  %289 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %link_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %290)
  %cmp.i.i = icmp ult i32 %290, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end42.i.if.then4.i.i_crit_edge

if.end42.i.if.then4.i.i_crit_edge:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i.i

land.lhs.true.i.i:                                ; preds = %if.end42.i
  %dm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %288, i32 0, i32 15
  %291 = ptrtoint ptr %dm.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %dm.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %cmp1.i.i = icmp eq i32 %292, 0
  br i1 %cmp1.i.i, label %if.then.i75.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i75.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %min_undec_pwdb_for_dm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %288, i32 0, i32 35, i32 26
  %293 = ptrtoint ptr %min_undec_pwdb_for_dm.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %min_undec_pwdb_for_dm.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %288, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.11) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i75.i, %land.lhs.true.i.i.if.end.i.i_crit_edge
  %294 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %.pr.i.i = load i32, ptr %link_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i.i)
  %cmp3.i.i = icmp ugt i32 %.pr.i.i, 1
  br i1 %cmp3.i.i, label %if.end.i.i.if.then4.i.i_crit_edge, label %if.else20.i.i

if.end.i.i.if.then4.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i.if.then4.i.i_crit_edge, %if.end42.i.if.then4.i.i_crit_edge
  %opmode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %288, i32 0, i32 9, i32 8
  %295 = ptrtoint ptr %opmode.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %opmode.i.i, align 8
  %297 = zext i32 %296 to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %296, label %if.else.i.i [
    i32 3, label %if.then4.i.i.if.then8.i.i_crit_edge
    i32 1, label %if.then4.i.i.if.then8.i.i_crit_edge150
  ]

if.then4.i.i.if.then8.i.i_crit_edge150:           ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i.i

if.then4.i.i.if.then8.i.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.then4.i.i.if.then8.i.i_crit_edge, %if.then4.i.i.if.then8.i.i_crit_edge150
  %dm9.i.i = getelementptr inbounds %struct.rtl_priv, ptr %288, i32 0, i32 15
  %298 = ptrtoint ptr %dm9.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %dm9.i.i, align 8
  %conv.i.i = trunc i32 %299 to i8
  %min_undec_pwdb_for_dm11.i.i = getelementptr inbounds %struct.rtl_priv, ptr %288, i32 0, i32 35, i32 26
  %300 = ptrtoint ptr %min_undec_pwdb_for_dm11.i.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %conv.i.i, ptr %min_undec_pwdb_for_dm11.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %288, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %299) #7
  br label %rtl8723be_dm_check_rssi_monitor.exit

if.else.i.i:                                      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %undec_sm_pwdb.i.i = getelementptr inbounds %struct.rtl_priv, ptr %288, i32 0, i32 15, i32 2
  %301 = ptrtoint ptr %undec_sm_pwdb.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %undec_sm_pwdb.i.i, align 8
  %conv15.i.i = trunc i32 %302 to i8
  %min_undec_pwdb_for_dm16.i.i = getelementptr inbounds %struct.rtl_priv, ptr %288, i32 0, i32 35, i32 26
  %303 = ptrtoint ptr %min_undec_pwdb_for_dm16.i.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %conv15.i.i, ptr %min_undec_pwdb_for_dm16.i.i, align 1
  %conv18.i.i = and i32 %302, 255
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %288, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %conv18.i.i) #7
  br label %rtl8723be_dm_check_rssi_monitor.exit

if.else20.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %304 = ptrtoint ptr %dm.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %dm.i.i, align 8
  %conv23.i.i = trunc i32 %305 to i8
  %min_undec_pwdb_for_dm24.i.i = getelementptr inbounds %struct.rtl_priv, ptr %288, i32 0, i32 35, i32 26
  %306 = ptrtoint ptr %min_undec_pwdb_for_dm24.i.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %conv23.i.i, ptr %min_undec_pwdb_for_dm24.i.i, align 1
  %conv26.i.i = and i32 %305, 255
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %288, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %conv26.i.i) #7
  br label %rtl8723be_dm_check_rssi_monitor.exit

rtl8723be_dm_check_rssi_monitor.exit:             ; preds = %if.else20.i.i, %if.else.i.i, %if.then8.i.i
  %min_undec_pwdb_for_dm28.i.i = getelementptr inbounds %struct.rtl_priv, ptr %288, i32 0, i32 35, i32 26
  %307 = ptrtoint ptr %min_undec_pwdb_for_dm28.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %min_undec_pwdb_for_dm28.i.i, align 1
  %conv29.i.i = zext i8 %308 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %288, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv29.i.i) #7
  %min_undec_pwdb_for_dm.i = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 35, i32 26
  %309 = ptrtoint ptr %min_undec_pwdb_for_dm.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %min_undec_pwdb_for_dm.i, align 1
  %rssi_val_min.i = getelementptr inbounds %struct.rtl_priv, ptr %260, i32 0, i32 35, i32 27
  %311 = ptrtoint ptr %rssi_val_min.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %310, ptr %rssi_val_min.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter.i) #7
  %312 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %priv, align 8
  %cur_igvalue.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 9
  %314 = ptrtoint ptr %cur_igvalue.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %cur_igvalue.i, align 4
  %conv.i = trunc i32 %315 to i8
  %act_scanning.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 9, i32 20
  %316 = ptrtoint ptr %act_scanning.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %act_scanning.i, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %317)
  %tobool.not.i43 = icmp eq i8 %317, 0
  br i1 %tobool.not.i43, label %if.end.i, label %rtl8723be_dm_check_rssi_monitor.exit.rtl8723be_dm_dig.exit_crit_edge

rtl8723be_dm_check_rssi_monitor.exit.rtl8723be_dm_dig.exit_crit_edge: ; preds = %rtl8723be_dm_check_rssi_monitor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_dig.exit

if.end.i:                                         ; preds = %rtl8723be_dm_check_rssi_monitor.exit
  %dig_min_03.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 51
  %link_state.i44 = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 9, i32 10
  %318 = ptrtoint ptr %link_state.i44 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %link_state.i44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %319)
  %cmp.i = icmp ugt i32 %319, 1
  %media_connect_0.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 54
  %320 = ptrtoint ptr %media_connect_0.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %media_connect_0.i, align 1, !range !84
  br i1 %cmp.i, label %if.then18.i, label %if.else68.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool5.not.i = icmp eq i8 %321, 0
  %rssi_val_min.i45 = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 27
  %322 = ptrtoint ptr %rssi_val_min.i45 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %rssi_val_min.i45, align 4
  %add.i46 = add i8 %323, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %323)
  %cmp21.i = icmp ugt i8 %323, 80
  br i1 %cmp21.i, label %if.then23.i, label %if.else.i47

if.then23.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_gain_max.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 24
  %324 = ptrtoint ptr %rx_gain_max.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 90, ptr %rx_gain_max.i, align 1
  br label %if.end39.i

if.else.i47:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %323)
  %cmp28.i = icmp ult i8 %323, 20
  %rx_gain_max31.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 24
  br i1 %cmp28.i, label %if.then30.i, label %if.else32.i

if.then30.i:                                      ; preds = %if.else.i47
  call void @__sanitizer_cov_trace_pc() #9
  %325 = ptrtoint ptr %rx_gain_max31.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 30, ptr %rx_gain_max31.i, align 1
  br label %if.end39.i

if.else32.i:                                      ; preds = %if.else.i47
  call void @__sanitizer_cov_trace_pc() #9
  %326 = ptrtoint ptr %rx_gain_max31.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %add.i46, ptr %rx_gain_max31.i, align 1
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else32.i, %if.then30.i, %if.then23.i
  %one_entry_only.i48 = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 15, i32 49
  %327 = ptrtoint ptr %one_entry_only.i48 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %one_entry_only.i48, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool40.not.i = icmp eq i8 %328, 0
  br i1 %tobool40.not.i, label %if.end39.i.if.end70.i_crit_edge, label %if.then41.i

if.end39.i.if.end70.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.then41.i:                                      ; preds = %if.end39.i
  %329 = ptrtoint ptr %rssi_val_min.i45 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %rssi_val_min.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %330)
  %cmp46.i = icmp ult i8 %330, 42
  br i1 %cmp46.i, label %if.then41.i.if.end70.i_crit_edge, label %if.else49.i

if.then41.i.if.end70.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.else49.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i8 %330, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %330)
  %cmp55.i = icmp ugt i8 %330, 62
  %.sub.i = select i1 %cmp55.i, i8 50, i8 %sub.i
  br label %if.end70.i

if.else68.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool11.i = icmp ne i8 %321, 0
  %rx_gain_max69.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 24
  %331 = ptrtoint ptr %rx_gain_max69.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 90, ptr %rx_gain_max69.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %313, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.16) #7
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else68.i, %if.else49.i, %if.then41.i.if.end70.i_crit_edge, %if.end39.i.if.end70.i_crit_edge
  %332 = phi i1 [ %tobool11.i, %if.else68.i ], [ false, %if.then41.i.if.end70.i_crit_edge ], [ false, %if.else49.i ], [ false, %if.end39.i.if.end70.i_crit_edge ]
  %333 = phi i1 [ false, %if.else68.i ], [ %tobool5.not.i, %if.then41.i.if.end70.i_crit_edge ], [ %tobool5.not.i, %if.else49.i ], [ %tobool5.not.i, %if.end39.i.if.end70.i_crit_edge ]
  %dig_min_0.0.i = phi i8 [ 30, %if.else68.i ], [ 30, %if.then41.i.if.end70.i_crit_edge ], [ %.sub.i, %if.else49.i ], [ 30, %if.end39.i.if.end70.i_crit_edge ]
  %cnt_all.i49 = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 26, i32 8
  %334 = ptrtoint ptr %cnt_all.i49 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %cnt_all.i49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %335)
  %cmp71.i = icmp ugt i32 %335, 10000
  br i1 %cmp71.i, label %if.then73.i, label %if.else110.i

if.then73.i:                                      ; preds = %if.end70.i
  %large_fa_hit.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 36
  %336 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %large_fa_hit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %337)
  %cmp75.not.i = icmp eq i8 %337, 3
  br i1 %cmp75.not.i, label %if.then73.i.if.end79.i_crit_edge, label %if.then77.i

if.then73.i.if.end79.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

if.then77.i:                                      ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i50 = add i8 %337, 1
  %338 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %inc.i50, ptr %large_fa_hit.i, align 1
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then77.i, %if.then73.i.if.end79.i_crit_edge
  %forbidden_igi.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 37
  %339 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %forbidden_igi.i, align 2
  %conv80.i = zext i8 %340 to i32
  %conv81.i = and i32 %315, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv81.i, i32 %conv80.i)
  %cmp82.i = icmp ugt i32 %conv81.i, %conv80.i
  br i1 %cmp82.i, label %if.end87.thread.i, label %if.end87.i

if.end87.thread.i:                                ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  %341 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %conv.i, ptr %forbidden_igi.i, align 2
  %342 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 1, ptr %large_fa_hit.i, align 1
  br label %if.end144.i

if.end87.i:                                       ; preds = %if.end79.i
  %343 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %.pr.i = load i8, ptr %large_fa_hit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr.i)
  %cmp90.i = icmp ugt i8 %.pr.i, 2
  br i1 %cmp90.i, label %if.then92.i, label %if.end87.i.if.end144.i_crit_edge

if.end87.i.if.end144.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144.i

if.then92.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_gain_max96.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 24
  %344 = ptrtoint ptr %rx_gain_max96.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %rx_gain_max96.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %340, i8 %345)
  %cmp98.not.i = icmp ult i8 %340, %345
  %add95.i = add nuw i8 %340, 1
  %spec.select.i = select i1 %cmp98.not.i, i8 %add95.i, i8 %345
  %346 = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 25
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %spec.select.i, ptr %346, align 2
  %recover_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 7
  %348 = ptrtoint ptr %recover_cnt.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 3600, ptr %recover_cnt.i, align 4
  br label %if.end144.i

if.else110.i:                                     ; preds = %if.end70.i
  %recover_cnt111.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 7
  %349 = ptrtoint ptr %recover_cnt111.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %recover_cnt111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %cmp112.not.i = icmp eq i32 %350, 0
  br i1 %cmp112.not.i, label %if.else116.i, label %if.then114.i

if.then114.i:                                     ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add i32 %350, -1
  %351 = ptrtoint ptr %recover_cnt111.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %dec.i, ptr %recover_cnt111.i, align 4
  br label %if.end144.i

if.else116.i:                                     ; preds = %if.else110.i
  %large_fa_hit117.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 36
  %352 = ptrtoint ptr %large_fa_hit117.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %large_fa_hit117.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %353)
  %cmp119.i = icmp ult i8 %353, 3
  br i1 %cmp119.i, label %if.then121.i, label %if.else140.i

if.then121.i:                                     ; preds = %if.else116.i
  %forbidden_igi122.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 37
  %354 = ptrtoint ptr %forbidden_igi122.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %forbidden_igi122.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %355, i8 %dig_min_0.0.i)
  %cmp126.not.i = icmp ugt i8 %355, %dig_min_0.0.i
  br i1 %cmp126.not.i, label %if.else131.i, label %if.then128.i

if.then128.i:                                     ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #9
  %356 = ptrtoint ptr %forbidden_igi122.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %dig_min_0.0.i, ptr %forbidden_igi122.i, align 2
  %rx_gain_min130.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 25
  %357 = ptrtoint ptr %rx_gain_min130.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %dig_min_0.0.i, ptr %rx_gain_min130.i, align 2
  br label %if.end144.i

if.else131.i:                                     ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec133.i = add i8 %355, -1
  %358 = ptrtoint ptr %forbidden_igi122.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %dec133.i, ptr %forbidden_igi122.i, align 2
  %rx_gain_min138.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 25
  %359 = ptrtoint ptr %rx_gain_min138.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %355, ptr %rx_gain_min138.i, align 2
  br label %if.end144.i

if.else140.i:                                     ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #9
  %360 = ptrtoint ptr %large_fa_hit117.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 0, ptr %large_fa_hit117.i, align 1
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.else140.i, %if.else131.i, %if.then128.i, %if.then114.i, %if.then92.i, %if.end87.i.if.end144.i_crit_edge, %if.end87.thread.i
  %rx_gain_min145.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 25
  %361 = ptrtoint ptr %rx_gain_min145.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %rx_gain_min145.i, align 2
  %rx_gain_max147.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 24
  %363 = ptrtoint ptr %rx_gain_max147.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %rx_gain_max147.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %362, i8 %364)
  %cmp149.i = icmp ugt i8 %362, %364
  br i1 %cmp149.i, label %if.then151.i, label %if.end144.i.if.end154.i_crit_edge

if.end144.i.if.end154.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154.i

if.then151.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #9
  %365 = ptrtoint ptr %rx_gain_min145.i to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %364, ptr %rx_gain_min145.i, align 2
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.then151.i, %if.end144.i.if.end154.i_crit_edge
  %366 = ptrtoint ptr %link_state.i44 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %link_state.i44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %367)
  %cmp156.i = icmp ugt i32 %367, 1
  br i1 %cmp156.i, label %if.then158.i, label %if.else202.i

if.then158.i:                                     ; preds = %if.end154.i
  br i1 %333, label %if.then160.i, label %if.else171.i

if.then160.i:                                     ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #9
  %rssi_val_min161.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 27
  %368 = ptrtoint ptr %rssi_val_min161.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %rssi_val_min161.i, align 4
  %370 = call i8 @llvm.umin.i8(i8 %369, i8 50) #7
  %large_fa_hit170.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 35, i32 36
  %371 = ptrtoint ptr %large_fa_hit170.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 0, ptr %large_fa_hit170.i, align 1
  br label %if.end237.i

if.else171.i:                                     ; preds = %if.then158.i
  %372 = ptrtoint ptr %cnt_all.i49 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %cnt_all.i49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %373)
  %cmp174.i = icmp ugt i32 %373, 1024
  br i1 %cmp174.i, label %if.then176.i, label %if.else180.i

if.then176.i:                                     ; preds = %if.else171.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv179.i = add i8 %conv.i, 4
  br label %if.end237.i

if.else180.i:                                     ; preds = %if.else171.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %373)
  %cmp183.i = icmp ugt i32 %373, 768
  br i1 %cmp183.i, label %if.then185.i, label %if.else189.i

if.then185.i:                                     ; preds = %if.else180.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv188.i = add i8 %conv.i, 2
  br label %if.end237.i

if.else189.i:                                     ; preds = %if.else180.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %373)
  %cmp192.i = icmp ult i32 %373, 512
  %conv197.i = add i8 %conv.i, -2
  %spec.select367.i = select i1 %cmp192.i, i8 %conv197.i, i8 %conv.i
  br label %if.end237.i

if.else202.i:                                     ; preds = %if.end154.i
  br i1 %332, label %if.then204.i, label %if.else206.i

if.then204.i:                                     ; preds = %if.else202.i
  call void @__sanitizer_cov_trace_pc() #9
  %374 = ptrtoint ptr %rx_gain_min145.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %rx_gain_min145.i, align 2
  br label %if.end237.i

if.else206.i:                                     ; preds = %if.else202.i
  %376 = ptrtoint ptr %cnt_all.i49 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %cnt_all.i49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %377)
  %cmp209.i = icmp ugt i32 %377, 10000
  br i1 %cmp209.i, label %if.then211.i, label %if.else215.i

if.then211.i:                                     ; preds = %if.else206.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv214.i = add i8 %conv.i, 4
  br label %if.end237.i

if.else215.i:                                     ; preds = %if.else206.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %377)
  %cmp218.i = icmp ugt i32 %377, 8000
  br i1 %cmp218.i, label %if.then220.i, label %if.else224.i

if.then220.i:                                     ; preds = %if.else215.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv223.i = add i8 %conv.i, 2
  br label %if.end237.i

if.else224.i:                                     ; preds = %if.else215.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %377)
  %cmp227.i = icmp ult i32 %377, 500
  %conv232.i = add i8 %conv.i, -2
  %spec.select368.i = select i1 %cmp227.i, i8 %conv232.i, i8 %conv.i
  br label %if.end237.i

if.end237.i:                                      ; preds = %if.else224.i, %if.then220.i, %if.then211.i, %if.then204.i, %if.else189.i, %if.then185.i, %if.then176.i, %if.then160.i
  %current_igi.1.i = phi i8 [ %370, %if.then160.i ], [ %conv179.i, %if.then176.i ], [ %conv188.i, %if.then185.i ], [ %375, %if.then204.i ], [ %conv214.i, %if.then211.i ], [ %conv223.i, %if.then220.i ], [ %spec.select367.i, %if.else189.i ], [ %spec.select368.i, %if.else224.i ]
  %378 = ptrtoint ptr %rx_gain_max147.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %rx_gain_max147.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %current_igi.1.i, i8 %379)
  %cmp241.i = icmp ugt i8 %current_igi.1.i, %379
  br i1 %cmp241.i, label %if.end237.i.if.end254.i_crit_edge, label %if.else245.i

if.end237.i.if.end254.i_crit_edge:                ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end254.i

if.else245.i:                                     ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #9
  %380 = ptrtoint ptr %rx_gain_min145.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %rx_gain_min145.i, align 2
  %382 = call i8 @llvm.umax.i8(i8 %current_igi.1.i, i8 %381) #7
  br label %if.end254.i

if.end254.i:                                      ; preds = %if.else245.i, %if.end237.i.if.end254.i_crit_edge
  %current_igi.2.i = phi i8 [ %379, %if.end237.i.if.end254.i_crit_edge ], [ %382, %if.else245.i ]
  %383 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %priv, align 8
  %stop_dig.i.i = getelementptr inbounds %struct.rtl_priv, ptr %384, i32 0, i32 35, i32 20
  %385 = ptrtoint ptr %stop_dig.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %stop_dig.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %386)
  %tobool.not.i.i51 = icmp eq i8 %386, 0
  br i1 %tobool.not.i.i51, label %if.end.i.i53, label %if.end254.i.rtl8723be_dm_write_dig.exit.i_crit_edge

if.end254.i.rtl8723be_dm_write_dig.exit.i_crit_edge: ; preds = %if.end254.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_write_dig.exit.i

if.end.i.i53:                                     ; preds = %if.end254.i
  %cur_igvalue.i.i = getelementptr inbounds %struct.rtl_priv, ptr %384, i32 0, i32 35, i32 9
  %387 = ptrtoint ptr %cur_igvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %cur_igvalue.i.i, align 4
  %conv.i.i52 = zext i8 %current_igi.2.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %388, i32 %conv.i.i52)
  %cmp.not.i.i = icmp eq i32 %388, %conv.i.i52
  br i1 %cmp.not.i.i, label %if.end.i.i53.if.end11.i.i_crit_edge, label %if.then3.i.i

if.end.i.i53.if.end11.i.i_crit_edge:              ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i53
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %384, i32 0, i32 32
  %389 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %390, i32 0, i32 4
  %391 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %ops.i.i.i, align 4
  %set_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %392, i32 0, i32 46
  %393 = ptrtoint ptr %set_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %set_bbreg.i.i.i, align 4
  call void %394(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %conv.i.i52) #7
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %384, i32 0, i32 14, i32 4
  %395 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %396)
  %cmp6.not.i.i = icmp eq i8 %396, 0
  br i1 %cmp6.not.i.i, label %if.then3.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i54

if.then3.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then8.i.i54:                                   ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %397 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %priv, align 8
  %cfg.i27.i.i = getelementptr inbounds %struct.rtl_priv, ptr %398, i32 0, i32 32
  %399 = ptrtoint ptr %cfg.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %cfg.i27.i.i, align 8
  %ops.i28.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %400, i32 0, i32 4
  %401 = ptrtoint ptr %ops.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %ops.i28.i.i, align 4
  %set_bbreg.i29.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %402, i32 0, i32 46
  %403 = ptrtoint ptr %set_bbreg.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %set_bbreg.i29.i.i, align 4
  call void %404(ptr noundef %hw, i32 noundef 3160, i32 noundef 127, i32 noundef %conv.i.i52) #7
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i54, %if.then3.i.i.if.end11.i.i_crit_edge, %if.end.i.i53.if.end11.i.i_crit_edge
  %405 = ptrtoint ptr %cur_igvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %cur_igvalue.i.i, align 4
  %pre_igvalue.i.i = getelementptr inbounds %struct.rtl_priv, ptr %384, i32 0, i32 35, i32 8
  %407 = ptrtoint ptr %pre_igvalue.i.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %406, ptr %pre_igvalue.i.i, align 4
  store i32 %conv.i.i52, ptr %cur_igvalue.i.i, align 4
  br label %rtl8723be_dm_write_dig.exit.i

rtl8723be_dm_write_dig.exit.i:                    ; preds = %if.end11.i.i, %if.end254.i.rtl8723be_dm_write_dig.exit.i_crit_edge
  %408 = ptrtoint ptr %link_state.i44 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %link_state.i44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %409)
  %cmp256.i = icmp ugt i32 %409, 1
  %frombool260.i = zext i1 %cmp256.i to i8
  %410 = ptrtoint ptr %media_connect_0.i to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 %frombool260.i, ptr %media_connect_0.i, align 1
  %411 = ptrtoint ptr %dig_min_03.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 %dig_min_0.0.i, ptr %dig_min_03.i, align 4
  br label %rtl8723be_dm_dig.exit

rtl8723be_dm_dig.exit:                            ; preds = %rtl8723be_dm_write_dig.exit.i, %rtl8723be_dm_check_rssi_monitor.exit.rtl8723be_dm_dig.exit_crit_edge
  %412 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_in_ps_mode.i) #7
  %414 = ptrtoint ptr %fw_current_in_ps_mode.i to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 0, ptr %fw_current_in_ps_mode.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 32
  %415 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %416, i32 0, i32 4
  %417 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %ops.i, align 4
  %get_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %418, i32 0, i32 19
  %419 = ptrtoint ptr %get_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %get_hw_reg.i, align 4
  call void %420(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_in_ps_mode.i) #7
  %421 = ptrtoint ptr %fw_current_in_ps_mode.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %fw_current_in_ps_mode.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %422)
  %tobool.not.i56 = icmp eq i8 %422, 0
  br i1 %tobool.not.i56, label %if.end.i62, label %rtl8723be_dm_dig.exit.rtl8723be_dm_dynamic_edcca.exit_crit_edge

rtl8723be_dm_dig.exit.rtl8723be_dm_dynamic_edcca.exit_crit_edge: ; preds = %rtl8723be_dm_dig.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_dynamic_edcca.exit

if.end.i62:                                       ; preds = %rtl8723be_dm_dig.exit
  %423 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %priv, align 8
  %cfg.i.i57 = getelementptr inbounds %struct.rtl_priv, ptr %424, i32 0, i32 32
  %425 = ptrtoint ptr %cfg.i.i57 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %cfg.i.i57, align 8
  %ops.i.i58 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %426, i32 0, i32 4
  %427 = ptrtoint ptr %ops.i.i58 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %ops.i.i58, align 4
  %get_bbreg.i.i59 = getelementptr inbounds %struct.rtl_hal_ops, ptr %428, i32 0, i32 45
  %429 = ptrtoint ptr %get_bbreg.i.i59 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %get_bbreg.i.i59, align 4
  %call.i.i60 = call i32 %430(ptr noundef %hw, i32 noundef 3152, i32 noundef 255) #7
  %431 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %priv, align 8
  %cfg.i43.i = getelementptr inbounds %struct.rtl_priv, ptr %432, i32 0, i32 32
  %433 = ptrtoint ptr %cfg.i43.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %cfg.i43.i, align 8
  %ops.i44.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %434, i32 0, i32 4
  %435 = ptrtoint ptr %ops.i44.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %ops.i44.i, align 4
  %get_bbreg.i45.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %436, i32 0, i32 45
  %437 = ptrtoint ptr %get_bbreg.i45.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %get_bbreg.i45.i, align 4
  %call.i46.i = call i32 %438(ptr noundef %hw, i32 noundef 3160, i32 noundef 255) #7
  %conv3.i = and i32 %call.i.i60, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %conv3.i)
  %cmp.i61 = icmp ugt i32 %conv3.i, 40
  %conv5.i = and i32 %call.i46.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %conv5.i)
  %cmp6.i = icmp ugt i32 %conv5.i, 40
  %or.cond.i = select i1 %cmp.i61, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %if.then8.i, label %if.else.i68

if.then8.i:                                       ; preds = %if.end.i62
  %pre_edcca_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 10, i32 7
  %439 = ptrtoint ptr %pre_edcca_enable.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %pre_edcca_enable.i, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %440)
  %tobool9.not.i = icmp eq i8 %440, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.then8.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge

if.then8.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_dynamic_edcca.exit

if.then10.i:                                      ; preds = %if.then8.i
  %write8_async.i.i63 = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 13, i32 5
  %441 = ptrtoint ptr %write8_async.i.i63 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %write8_async.i.i63, align 4
  call void %442(ptr noundef %413, i32 noundef 3148, i8 noundef zeroext 3) #7
  %443 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.i64 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %444, i32 0, i32 1
  %445 = ptrtoint ptr %write_readback.i.i64 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %write_readback.i.i64, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %446)
  %tobool.not.i.i65 = icmp eq i8 %446, 0
  br i1 %tobool.not.i.i65, label %if.then10.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i67

if.then10.i.rtl_write_byte.exit.i_crit_edge:      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i67:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i66 = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 13, i32 9
  %447 = ptrtoint ptr %read8_sync.i.i66 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %read8_sync.i.i66, align 4
  %call.i48.i = call zeroext i8 %448(ptr noundef %413, i32 noundef 3148) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i67, %if.then10.i.rtl_write_byte.exit.i_crit_edge
  %449 = ptrtoint ptr %write8_async.i.i63 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %write8_async.i.i63, align 4
  call void %450(ptr noundef %413, i32 noundef 3150, i8 noundef zeroext 0) #7
  %451 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %cfg.i, align 8
  %write_readback.i51.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %452, i32 0, i32 1
  %453 = ptrtoint ptr %write_readback.i51.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %write_readback.i51.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %454)
  %tobool.not.i52.i = icmp eq i8 %454, 0
  br i1 %tobool.not.i52.i, label %rtl_write_byte.exit.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge, label %rtl_write_byte.exit.i.cleanup.sink.split.i70_crit_edge

rtl_write_byte.exit.i.cleanup.sink.split.i70_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i70

rtl_write_byte.exit.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_dynamic_edcca.exit

if.else.i68:                                      ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %conv3.i)
  %cmp13.i = icmp ult i32 %conv3.i, 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %conv5.i)
  %cmp17.i = icmp ult i32 %conv5.i, 37
  %or.cond41.i = select i1 %cmp13.i, i1 %cmp17.i, i1 false
  br i1 %or.cond41.i, label %if.then19.i, label %if.else.i68.rtl8723be_dm_dynamic_edcca.exit_crit_edge

if.else.i68.rtl8723be_dm_dynamic_edcca.exit_crit_edge: ; preds = %if.else.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_dynamic_edcca.exit

if.then19.i:                                      ; preds = %if.else.i68
  %pre_edcca_enable21.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 10, i32 7
  %455 = ptrtoint ptr %pre_edcca_enable21.i to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %pre_edcca_enable21.i, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %456)
  %tobool22.not.i = icmp eq i8 %456, 0
  br i1 %tobool22.not.i, label %if.then19.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge, label %if.then23.i69

if.then19.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_dynamic_edcca.exit

if.then23.i69:                                    ; preds = %if.then19.i
  %write8_async.i57.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 13, i32 5
  %457 = ptrtoint ptr %write8_async.i57.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %write8_async.i57.i, align 4
  call void %458(ptr noundef %413, i32 noundef 3148, i8 noundef zeroext 127) #7
  %459 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %cfg.i, align 8
  %write_readback.i59.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %460, i32 0, i32 1
  %461 = ptrtoint ptr %write_readback.i59.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %write_readback.i59.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %462)
  %tobool.not.i60.i = icmp eq i8 %462, 0
  br i1 %tobool.not.i60.i, label %if.then23.i69.rtl_write_byte.exit64.i_crit_edge, label %if.then.i63.i

if.then23.i69.rtl_write_byte.exit64.i_crit_edge:  ; preds = %if.then23.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit64.i

if.then.i63.i:                                    ; preds = %if.then23.i69
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i61.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 13, i32 9
  %463 = ptrtoint ptr %read8_sync.i61.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %read8_sync.i61.i, align 4
  %call.i62.i = call zeroext i8 %464(ptr noundef %413, i32 noundef 3148) #7
  br label %rtl_write_byte.exit64.i

rtl_write_byte.exit64.i:                          ; preds = %if.then.i63.i, %if.then23.i69.rtl_write_byte.exit64.i_crit_edge
  %465 = ptrtoint ptr %write8_async.i57.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %write8_async.i57.i, align 4
  call void %466(ptr noundef %413, i32 noundef 3150, i8 noundef zeroext 127) #7
  %467 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %cfg.i, align 8
  %write_readback.i67.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %468, i32 0, i32 1
  %469 = ptrtoint ptr %write_readback.i67.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %write_readback.i67.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %470)
  %tobool.not.i68.i = icmp eq i8 %470, 0
  br i1 %tobool.not.i68.i, label %rtl_write_byte.exit64.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge, label %rtl_write_byte.exit64.i.cleanup.sink.split.i70_crit_edge

rtl_write_byte.exit64.i.cleanup.sink.split.i70_crit_edge: ; preds = %rtl_write_byte.exit64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i70

rtl_write_byte.exit64.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge: ; preds = %rtl_write_byte.exit64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_dynamic_edcca.exit

cleanup.sink.split.i70:                           ; preds = %rtl_write_byte.exit64.i.cleanup.sink.split.i70_crit_edge, %rtl_write_byte.exit.i.cleanup.sink.split.i70_crit_edge
  %read8_sync.i69.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 13, i32 9
  %471 = ptrtoint ptr %read8_sync.i69.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %read8_sync.i69.i, align 4
  %call.i70.i = call zeroext i8 %472(ptr noundef %413, i32 noundef 3150) #7
  br label %rtl8723be_dm_dynamic_edcca.exit

rtl8723be_dm_dynamic_edcca.exit:                  ; preds = %cleanup.sink.split.i70, %rtl_write_byte.exit64.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge, %if.then19.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge, %if.else.i68.rtl8723be_dm_dynamic_edcca.exit_crit_edge, %rtl_write_byte.exit.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge, %if.then8.i.rtl8723be_dm_dynamic_edcca.exit_crit_edge, %rtl8723be_dm_dig.exit.rtl8723be_dm_dynamic_edcca.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_in_ps_mode.i) #7
  %473 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %priv, align 8
  %link_state.i72 = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 0, i32 9, i32 10
  %475 = ptrtoint ptr %link_state.i72 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %link_state.i72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %476)
  %cmp.i73 = icmp ugt i32 %476, 1
  br i1 %cmp.i73, label %if.then.i, label %rtl8723be_dm_dynamic_edcca.exit.if.end29.sink.split.i_crit_edge

rtl8723be_dm_dynamic_edcca.exit.if.end29.sink.split.i_crit_edge: ; preds = %rtl8723be_dm_dynamic_edcca.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.sink.split.i

if.then.i:                                        ; preds = %rtl8723be_dm_dynamic_edcca.exit
  %rssi_val_min.i74 = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 0, i32 35, i32 27
  %477 = ptrtoint ptr %rssi_val_min.i74 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %rssi_val_min.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %478)
  %cmp2.i75 = icmp ugt i8 %478, 25
  br i1 %cmp2.i75, label %if.then.i.if.end29.i_crit_edge, label %land.lhs.true.i76

if.then.i.if.end29.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

land.lhs.true.i76:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %478)
  %cmp11.i = icmp ugt i8 %478, 10
  br i1 %cmp11.i, label %land.lhs.true.i76.if.end29.i_crit_edge, label %land.lhs.true.i76.if.end29.sink.split.i_crit_edge

land.lhs.true.i76.if.end29.sink.split.i_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.sink.split.i

land.lhs.true.i76.if.end29.i_crit_edge:           ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.end29.sink.split.i:                            ; preds = %land.lhs.true.i76.if.end29.sink.split.i_crit_edge, %rtl8723be_dm_dynamic_edcca.exit.if.end29.sink.split.i_crit_edge
  %cnt_cck_fail23.i = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 0, i32 26, i32 7
  %479 = ptrtoint ptr %cnt_cck_fail23.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %cnt_cck_fail23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %480)
  %cmp24.i = icmp ugt i32 %480, 1000
  %.55.i = select i1 %cmp24.i, i8 -125, i8 64
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29.sink.split.i, %land.lhs.true.i76.if.end29.i_crit_edge, %if.then.i.if.end29.i_crit_edge
  %cur_cck_cca_thresh.0.i = phi i8 [ -51, %if.then.i.if.end29.i_crit_edge ], [ -125, %land.lhs.true.i76.if.end29.i_crit_edge ], [ %.55.i, %if.end29.sink.split.i ]
  %cur_cck_cca_thres.i = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 0, i32 35, i32 29
  %481 = ptrtoint ptr %cur_cck_cca_thres.i to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %cur_cck_cca_thres.i, align 2
  %conv31.i = zext i8 %cur_cck_cca_thresh.0.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %482, i8 %cur_cck_cca_thresh.0.i)
  %cmp32.not.i = icmp eq i8 %482, %cur_cck_cca_thresh.0.i
  br i1 %cmp32.not.i, label %if.end29.i.rtl8723be_dm_cck_packet_detection_thresh.exit_crit_edge, label %if.then34.i

if.end29.i.rtl8723be_dm_cck_packet_detection_thresh.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_cck_packet_detection_thresh.exit

if.then34.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i77 = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 0, i32 32
  %483 = ptrtoint ptr %cfg.i.i77 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %cfg.i.i77, align 8
  %ops.i.i78 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %484, i32 0, i32 4
  %485 = ptrtoint ptr %ops.i.i78 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %ops.i.i78, align 4
  %set_bbreg.i.i79 = getelementptr inbounds %struct.rtl_hal_ops, ptr %486, i32 0, i32 46
  %487 = ptrtoint ptr %set_bbreg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %set_bbreg.i.i79, align 4
  call void %488(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef %conv31.i) #7
  br label %rtl8723be_dm_cck_packet_detection_thresh.exit

rtl8723be_dm_cck_packet_detection_thresh.exit:    ; preds = %if.then34.i, %if.end29.i.rtl8723be_dm_cck_packet_detection_thresh.exit_crit_edge
  %489 = ptrtoint ptr %cur_cck_cca_thres.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %cur_cck_cca_thres.i, align 2
  %pre_cck_cca_thres.i = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 0, i32 35, i32 28
  %491 = ptrtoint ptr %pre_cck_cca_thres.i to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 %490, ptr %pre_cck_cca_thres.i, align 1
  store i8 %cur_cck_cca_thresh.0.i, ptr %cur_cck_cca_thres.i, align 2
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %474, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.17, i32 noundef %conv31.i) #7
  %492 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %priv, align 8
  %low2high_rssi_thresh_for_ra40m.i = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 22, i32 5
  %494 = ptrtoint ptr %low2high_rssi_thresh_for_ra40m.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %low2high_rssi_thresh_for_ra40m.i, align 4
  %conv.i81 = zext i8 %495 to i32
  %high_rssi_thresh_for_ra.i = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 22, i32 3
  %496 = ptrtoint ptr %high_rssi_thresh_for_ra.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %high_rssi_thresh_for_ra.i, align 4
  %state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 10, i32 14
  %498 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %499)
  %cmp.i.i82 = icmp eq i8 %499, 0
  br i1 %cmp.i.i82, label %if.then.i83, label %if.end.i86

if.then.i83:                                      ; preds = %rtl8723be_dm_cck_packet_detection_thresh.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %493, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.18) #7
  br label %rtl8723be_dm_refresh_rate_adaptive_mask.exit

if.end.i86:                                       ; preds = %rtl8723be_dm_cck_packet_detection_thresh.exit
  %useramask.i84 = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 15, i32 14
  %500 = ptrtoint ptr %useramask.i84 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %useramask.i84, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %501)
  %tobool.not.i85 = icmp eq i8 %501, 0
  br i1 %tobool.not.i85, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %493, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.19) #7
  br label %rtl8723be_dm_refresh_rate_adaptive_mask.exit

if.end5.i:                                        ; preds = %if.end.i86
  %link_state.i87 = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 9, i32 10
  %502 = ptrtoint ptr %link_state.i87 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %link_state.i87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %503)
  %cmp.i88 = icmp eq i32 %503, 2
  br i1 %cmp.i88, label %land.lhs.true.i90, label %if.end5.i.rtl8723be_dm_refresh_rate_adaptive_mask.exit_crit_edge

if.end5.i.rtl8723be_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_refresh_rate_adaptive_mask.exit

land.lhs.true.i90:                                ; preds = %if.end5.i
  %opmode.i89 = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 9, i32 8
  %504 = ptrtoint ptr %opmode.i89 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %opmode.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %505)
  %cmp7.i = icmp eq i32 %505, 2
  br i1 %cmp7.i, label %if.then9.i, label %land.lhs.true.i90.rtl8723be_dm_refresh_rate_adaptive_mask.exit_crit_edge

land.lhs.true.i90.rtl8723be_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_refresh_rate_adaptive_mask.exit

if.then9.i:                                       ; preds = %land.lhs.true.i90
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 22, i32 21
  %506 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %pre_ratr_state.i, align 4
  %508 = zext i8 %507 to i64
  call void @__sanitizer_cov_trace_switch(i64 %508, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %507, label %if.then9.i.sw.epilog.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb12.i
  ]

if.then9.i.sw.epilog.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i91 = add i32 %497, 5
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %add14.i = add i32 %497, 5
  %add16.i92 = add nuw nsw i32 %conv.i81, 5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb12.i, %sw.bb.i, %if.then9.i.sw.epilog.i_crit_edge
  %low_rssithresh_for_ra.0.i = phi i32 [ %conv.i81, %if.then9.i.sw.epilog.i_crit_edge ], [ %add16.i92, %sw.bb12.i ], [ %conv.i81, %sw.bb.i ]
  %high_rssithresh_for_ra.0.i = phi i32 [ %497, %if.then9.i.sw.epilog.i_crit_edge ], [ %add14.i, %sw.bb12.i ], [ %add.i91, %sw.bb.i ]
  %undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 15, i32 2
  %509 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %undec_sm_pwdb.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %510, i32 %high_rssithresh_for_ra.0.i)
  %cmp18.i = icmp sgt i32 %510, %high_rssithresh_for_ra.0.i
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i93

if.then20.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 22, i32 1
  %511 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 1, ptr %ratr_state.i, align 1
  br label %if.end30.i

if.else.i93:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_cmp4(i32 %510, i32 %low_rssithresh_for_ra.0.i)
  %cmp23.i = icmp sgt i32 %510, %low_rssithresh_for_ra.0.i
  %ratr_state26.i = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 22, i32 1
  br i1 %cmp23.i, label %if.then25.i, label %if.else27.i

if.then25.i:                                      ; preds = %if.else.i93
  call void @__sanitizer_cov_trace_pc() #9
  %512 = ptrtoint ptr %ratr_state26.i to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 2, ptr %ratr_state26.i, align 1
  br label %if.end30.i

if.else27.i:                                      ; preds = %if.else.i93
  call void @__sanitizer_cov_trace_pc() #9
  %513 = ptrtoint ptr %ratr_state26.i to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 3, ptr %ratr_state26.i, align 1
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else27.i, %if.then25.i, %if.then20.i
  %514 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %pre_ratr_state.i, align 4
  %ratr_state33.i = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 22, i32 1
  %516 = ptrtoint ptr %ratr_state33.i to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %ratr_state33.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %515, i8 %517)
  %cmp35.not.i = icmp eq i8 %515, %517
  br i1 %cmp35.not.i, label %if.end30.i.rtl8723be_dm_refresh_rate_adaptive_mask.exit_crit_edge, label %if.then37.i

if.end30.i.rtl8723be_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_refresh_rate_adaptive_mask.exit

if.then37.i:                                      ; preds = %if.end30.i
  %518 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %undec_sm_pwdb.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %493, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %519) #7
  %520 = ptrtoint ptr %ratr_state33.i to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %ratr_state33.i, align 1
  %conv41.i94 = zext i8 %521 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %493, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %conv41.i94) #7
  %522 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %pre_ratr_state.i, align 4
  %conv43.i = zext i8 %523 to i32
  %524 = ptrtoint ptr %ratr_state33.i to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %ratr_state33.i, align 1
  %conv45.i = zext i8 %525 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %493, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %conv43.i, i32 noundef %conv45.i) #7
  %526 = call i32 @llvm.read_register.i32(metadata !74) #7
  %and.i.i.i.i.i.i = and i32 %526, -16384
  %527 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %527, i32 0, i32 1
  %528 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %529, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i95 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i95, label %if.then37.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i97

if.then37.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i97:                              ; preds = %if.then37.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i96 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i96, label %land.lhs.true.i.i97.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i97.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i97
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i98

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i98:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i98, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i97.rcu_read_lock.exit.i_crit_edge, %if.then37.i.rcu_read_lock.exit.i_crit_edge
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 9, i32 34
  %530 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %priv, align 8
  %vif.i.i = getelementptr inbounds %struct.rtl_priv, ptr %531, i32 0, i32 9, i32 7
  %532 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %vif.i.i, align 4
  %call.i97.i = call ptr @ieee80211_find_sta(ptr noundef %533, ptr noundef %bssid.i) #7
  %tobool47.not.i = icmp eq ptr %call.i97.i, null
  br i1 %tobool47.not.i, label %rcu_read_lock.exit.i.if.end50.i_crit_edge, label %if.then48.i

rcu_read_lock.exit.i.if.end50.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then48.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i99 = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 32
  %534 = ptrtoint ptr %cfg.i99 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %cfg.i99, align 8
  %ops.i100 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %535, i32 0, i32 4
  %536 = ptrtoint ptr %ops.i100 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %ops.i100, align 4
  %update_rate_tbl.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %537, i32 0, i32 21
  %538 = ptrtoint ptr %update_rate_tbl.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %update_rate_tbl.i, align 4
  %540 = ptrtoint ptr %ratr_state33.i to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %ratr_state33.i, align 1
  call void %539(ptr noundef %hw, ptr noundef nonnull %call.i97.i, i8 noundef zeroext %541, i1 noundef zeroext true) #7
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %rcu_read_lock.exit.i.if.end50.i_crit_edge
  %call.i98.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i98.i, label %if.end50.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i101.i

if.end50.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i101.i:                             ; preds = %if.end50.i
  %call1.i99.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99.i)
  %tobool.not.i100.i = icmp eq i32 %call1.i99.i, 0
  br i1 %tobool.not.i100.i, label %land.lhs.true.i101.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i103.i

land.lhs.true.i101.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i103.i:                            ; preds = %land.lhs.true.i101.i
  %.b4.i102.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i102.i, label %land.lhs.true2.i103.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i104.i

land.lhs.true2.i103.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i104.i:                                   ; preds = %land.lhs.true2.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i104.i, %land.lhs.true2.i103.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i101.i.rcu_read_unlock.exit.i_crit_edge, %if.end50.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %542 = call i32 @llvm.read_register.i32(metadata !74) #7
  %and.i.i.i.i.i105.i = and i32 %542, -16384
  %543 = inttoptr i32 %and.i.i.i.i.i105.i to ptr
  %preempt_count.i.i.i.i106.i = getelementptr inbounds %struct.thread_info, ptr %543, i32 0, i32 1
  %544 = ptrtoint ptr %preempt_count.i.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load volatile i32, ptr %preempt_count.i.i.i.i106.i, align 4
  %sub.i.i.i.i = add i32 %545, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i106.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %546 = ptrtoint ptr %ratr_state33.i to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %ratr_state33.i, align 1
  %548 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 %547, ptr %pre_ratr_state.i, align 4
  br label %rtl8723be_dm_refresh_rate_adaptive_mask.exit

rtl8723be_dm_refresh_rate_adaptive_mask.exit:     ; preds = %rcu_read_unlock.exit.i, %if.end30.i.rtl8723be_dm_refresh_rate_adaptive_mask.exit_crit_edge, %land.lhs.true.i90.rtl8723be_dm_refresh_rate_adaptive_mask.exit_crit_edge, %if.end5.i.rtl8723be_dm_refresh_rate_adaptive_mask.exit_crit_edge, %if.then4.i, %if.then.i83
  %549 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %priv, align 8
  %stats.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 24
  %551 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %551)
  %552 = load i64, ptr %stats.i, align 8
  %553 = load i64, ptr @rtl8723be_dm_check_edca_turbo.last_txok_cnt, align 8
  %sub.i102 = sub i64 %552, %553
  %rxbytesunicast.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 24, i32 3
  %554 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load8_noabort(i32 %554)
  %555 = load i64, ptr %rxbytesunicast.i, align 8
  %556 = load i64, ptr @rtl8723be_dm_check_edca_turbo.last_rxok_cnt, align 8
  %sub3.i = sub i64 %555, %556
  %vendor.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 9, i32 35
  %557 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %vendor.i, align 8
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 8
  %559 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %is_any_nonbepkts.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %560)
  %tobool6.not.i = icmp eq i8 %560, 0
  br i1 %tobool6.not.i, label %land.rhs.i, label %rtl8723be_dm_refresh_rate_adaptive_mask.exit.land.end.i_crit_edge

rtl8723be_dm_refresh_rate_adaptive_mask.exit.land.end.i_crit_edge: ; preds = %rtl8723be_dm_refresh_rate_adaptive_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.rhs.i:                                       ; preds = %rtl8723be_dm_refresh_rate_adaptive_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %disable_framebursting.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 11
  %561 = ptrtoint ptr %disable_framebursting.i to i32
  call void @__asan_load1_noabort(i32 %561)
  %562 = load i8, ptr %disable_framebursting.i, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %562)
  %tobool8.not.i = icmp eq i8 %562, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %rtl8723be_dm_refresh_rate_adaptive_mask.exit.land.end.i_crit_edge
  %563 = phi i1 [ false, %rtl8723be_dm_refresh_rate_adaptive_mask.exit.land.end.i_crit_edge ], [ %tobool8.not.i, %land.rhs.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %558)
  %cmp12.i = icmp eq i32 %558, 6
  br i1 %cmp12.i, label %land.lhs.true.i104, label %land.end.i.if.end.i106_crit_edge

land.end.i.if.end.i106_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i106

land.lhs.true.i104:                               ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 9, i32 42
  %564 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %564)
  %565 = load i16, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %565)
  %cmp13.i103 = icmp eq i16 %565, 16
  %spec.select79.i = select i1 %cmp13.i103, i32 4105264, i32 7250987
  %spec.select80.i = select i1 %cmp13.i103, i32 6202928, i32 7250987
  br label %if.end.i106

if.end.i106:                                      ; preds = %land.lhs.true.i104, %land.end.i.if.end.i106_crit_edge
  %edca_be_ul.0.i = phi i32 [ 7250987, %land.end.i.if.end.i106_crit_edge ], [ %spec.select79.i, %land.lhs.true.i104 ]
  %edca_be_dl.0.i = phi i32 [ 7250987, %land.end.i.if.end.i106_crit_edge ], [ %spec.select80.i, %land.lhs.true.i104 ]
  %mode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 9, i32 42
  %566 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load2_noabort(i32 %566)
  %567 = load i16, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %567)
  %cmp.i.i105 = icmp eq i16 %567, 2
  br i1 %cmp.i.i105, label %if.end.i106.rtl8723be_dm_check_edca_turbo.exit_crit_edge, label %if.end17.i

if.end.i106.rtl8723be_dm_check_edca_turbo.exit_crit_edge: ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_check_edca_turbo.exit

if.end17.i:                                       ; preds = %if.end.i106
  br i1 %563, label %if.then19.i111, label %if.else41.i

if.then19.i111:                                   ; preds = %if.end17.i
  %568 = and i32 %558, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %568)
  %switch.i = icmp eq i32 %568, 4
  %mul.i = shl i64 %sub3.i, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i102, i64 %mul.i)
  %cmp22.i = icmp ule i64 %sub.i102, %mul.i
  %mul27.i = shl i64 %sub.i102, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub3.i, i64 %mul27.i)
  %cmp28.i107 = icmp ugt i64 %sub3.i, %mul27.i
  %b_is_cur_rdlstate.0.in.i = select i1 %switch.i, i1 %cmp22.i, i1 %cmp28.i107
  %edca_be_dl.0.edca_be_ul.0.i = select i1 %b_is_cur_rdlstate.0.in.i, i32 %edca_be_dl.0.i, i32 %edca_be_ul.0.i
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 13, i32 7
  %569 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %write32_async.i.i, align 4
  call void %570(ptr noundef %550, i32 noundef 1288, i32 noundef %edca_be_dl.0.edca_be_ul.0.i) #7
  %cfg.i.i108 = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 32
  %571 = ptrtoint ptr %cfg.i.i108 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %cfg.i.i108, align 8
  %write_readback.i.i109 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %572, i32 0, i32 1
  %573 = ptrtoint ptr %write_readback.i.i109 to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %write_readback.i.i109, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %574)
  %tobool.not.i.i110 = icmp eq i8 %574, 0
  br i1 %tobool.not.i.i110, label %if.then19.i111.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i113

if.then19.i111.rtl_write_dword.exit.i_crit_edge:  ; preds = %if.then19.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i

if.then.i.i113:                                   ; preds = %if.then19.i111
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 13, i32 11
  %575 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i112 = call i32 %576(ptr noundef %550, i32 noundef 1288) #7
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i113, %if.then19.i111.rtl_write_dword.exit.i_crit_edge
  %is_cur_rdlstate.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 9
  %frombool39.i = zext i1 %b_is_cur_rdlstate.0.in.i to i8
  %577 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %577)
  store i8 %frombool39.i, ptr %is_cur_rdlstate.i, align 8
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 7
  %578 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 1, ptr %current_turbo_edca.i, align 2
  br label %rtl8723be_dm_check_edca_turbo.exit

if.else41.i:                                      ; preds = %if.end17.i
  %current_turbo_edca43.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 7
  %579 = ptrtoint ptr %current_turbo_edca43.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %current_turbo_edca43.i, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %580)
  %tobool44.not.i = icmp eq i8 %580, 0
  br i1 %tobool44.not.i, label %if.else41.i.if.end46.i_crit_edge, label %if.then45.i

if.else41.i.if.end46.i_crit_edge:                 ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.then45.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %581 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 0, ptr %tmp.i, align 1
  %cfg.i114 = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 32
  %582 = ptrtoint ptr %cfg.i114 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %cfg.i114, align 8
  %ops.i115 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %583, i32 0, i32 4
  %584 = ptrtoint ptr %ops.i115 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %ops.i115, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %585, i32 0, i32 20
  %586 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %set_hw_reg.i, align 4
  call void %587(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then45.i, %if.else41.i.if.end46.i_crit_edge
  %588 = ptrtoint ptr %current_turbo_edca43.i to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 0, ptr %current_turbo_edca43.i, align 2
  br label %rtl8723be_dm_check_edca_turbo.exit

rtl8723be_dm_check_edca_turbo.exit:               ; preds = %if.end46.i, %rtl_write_dword.exit.i, %if.end.i106.rtl8723be_dm_check_edca_turbo.exit_crit_edge
  %589 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 0, ptr %is_any_nonbepkts.i, align 1
  %590 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %590)
  %591 = load i64, ptr %stats.i, align 8
  store i64 %591, ptr @rtl8723be_dm_check_edca_turbo.last_txok_cnt, align 8
  %592 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load8_noabort(i32 %592)
  %593 = load i64, ptr %rxbytesunicast.i, align 8
  store i64 %593, ptr @rtl8723be_dm_check_edca_turbo.last_rxok_cnt, align 8
  %594 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %priv, align 8
  %link_state.i117 = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 9, i32 10
  %596 = ptrtoint ptr %link_state.i117 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %link_state.i117, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %597)
  %cmp.i118 = icmp ult i32 %597, 2
  br i1 %cmp.i118, label %if.then.i120, label %if.else.i132

if.then.i120:                                     ; preds = %rtl8723be_dm_check_edca_turbo.exit
  %atc_status.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 51
  %598 = ptrtoint ptr %atc_status.i to i32
  call void @__asan_load1_noabort(i32 %598)
  %599 = load i8, ptr %atc_status.i, align 8, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %599)
  %cmp2.i119 = icmp eq i8 %599, 0
  br i1 %cmp2.i119, label %if.then4.i124, label %if.then.i120.if.end.i127_crit_edge

if.then.i120.if.end.i127_crit_edge:               ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i127

if.then4.i124:                                    ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i121 = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 32
  %600 = ptrtoint ptr %cfg.i.i121 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %cfg.i.i121, align 8
  %ops.i.i122 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %601, i32 0, i32 4
  %602 = ptrtoint ptr %ops.i.i122 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %ops.i.i122, align 4
  %set_bbreg.i.i123 = getelementptr inbounds %struct.rtl_hal_ops, ptr %603, i32 0, i32 46
  %604 = ptrtoint ptr %set_bbreg.i.i123 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %set_bbreg.i.i123, align 4
  call void %605(ptr noundef %hw, i32 noundef 3372, i32 noundef 2048, i32 noundef 1) #7
  %606 = ptrtoint ptr %atc_status.i to i32
  call void @__asan_store1_noabort(i32 %606)
  store i8 1, ptr %atc_status.i, align 8
  br label %if.end.i127

if.end.i127:                                      ; preds = %if.then4.i124, %if.then.i120.if.end.i127_crit_edge
  %cfg.i125 = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 32
  %607 = ptrtoint ptr %cfg.i125 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %cfg.i125, align 8
  %ops.i126 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %608, i32 0, i32 4
  %609 = ptrtoint ptr %ops.i126 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %ops.i126, align 4
  %get_btc_status.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %610, i32 0, i32 66
  %611 = ptrtoint ptr %get_btc_status.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %get_btc_status.i, align 4
  %call.i = call zeroext i1 %612() #7
  br i1 %call.i, label %if.then6.i, label %if.end.i127.if.end10.i_crit_edge

if.end.i127.if.end10.i_crit_edge:                 ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i127
  %btcoexist.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 49
  %613 = ptrtoint ptr %btcoexist.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %btcoexist.i, align 8
  %btc_is_bt_disabled.i = getelementptr inbounds %struct.rtl_btc_ops, ptr %614, i32 0, i32 19
  %615 = ptrtoint ptr %btc_is_bt_disabled.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %btc_is_bt_disabled.i, align 4
  %call7.i = call zeroext i1 %616(ptr noundef %595) #7
  br i1 %call7.i, label %if.then6.i.if.end10.i_crit_edge, label %if.then8.i128

if.then6.i.if.end10.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then8.i128:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %595, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.26) #7
  br label %rtl8723be_dm_dynamic_atc_switch.exit

if.end10.i:                                       ; preds = %if.then6.i.if.end10.i_crit_edge, %if.end.i127.if.end10.i_crit_edge
  %crystal_cap11.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 56
  %617 = ptrtoint ptr %crystal_cap11.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %crystal_cap11.i, align 8
  %crystalcap.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 17, i32 58
  %619 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %crystalcap.i, align 2
  %conv12.i = zext i8 %620 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %618, i32 %conv12.i)
  %cmp13.not.i = icmp eq i32 %618, %conv12.i
  br i1 %cmp13.not.i, label %if.end10.i.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge, label %if.then15.i131

if.end10.i.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_dynamic_atc_switch.exit

if.then15.i131:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %621 = ptrtoint ptr %crystal_cap11.i to i32
  call void @__asan_store4_noabort(i32 %621)
  store i32 %conv12.i, ptr %crystal_cap11.i, align 8
  %and.i129 = and i8 %620, 63
  %conv22.i = zext i8 %and.i129 to i32
  %or.i130 = mul nuw nsw i32 %conv22.i, 65
  %622 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %priv, align 8
  %cfg.i242.i = getelementptr inbounds %struct.rtl_priv, ptr %623, i32 0, i32 32
  %624 = ptrtoint ptr %cfg.i242.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %cfg.i242.i, align 8
  %ops.i243.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %625, i32 0, i32 4
  %626 = ptrtoint ptr %ops.i243.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %ops.i243.i, align 4
  %set_bbreg.i244.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %627, i32 0, i32 46
  %628 = ptrtoint ptr %set_bbreg.i244.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %set_bbreg.i244.i, align 4
  call void %629(ptr noundef %hw, i32 noundef 44, i32 noundef 16773120, i32 noundef %or.i130) #7
  br label %rtl8723be_dm_dynamic_atc_switch.exit

if.else.i132:                                     ; preds = %rtl8723be_dm_check_edca_turbo.exit
  %packet_count29.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 58
  %630 = ptrtoint ptr %packet_count29.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %packet_count29.i, align 8
  %packet_count_pre.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 59
  %632 = ptrtoint ptr %packet_count_pre.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %packet_count_pre.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %631, i32 %633)
  %cmp30.i = icmp eq i32 %631, %633
  br i1 %cmp30.i, label %if.else.i132.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge, label %if.end33.i

if.else.i132.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge: ; preds = %if.else.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_dynamic_atc_switch.exit

if.end33.i:                                       ; preds = %if.else.i132
  %arrayidx26.i = getelementptr %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 54, i32 1
  %634 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %arrayidx26.i, align 4
  %mul27.i133 = mul i32 %635, 3125
  %div28.i = sdiv i32 %mul27.i133, 1280
  %cfo_tail.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 54
  %636 = ptrtoint ptr %cfo_tail.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %cfo_tail.i, align 4
  %mul.i134 = mul i32 %637, 3125
  %div.i = sdiv i32 %mul.i134, 1280
  %638 = ptrtoint ptr %packet_count_pre.i to i32
  call void @__asan_store4_noabort(i32 %638)
  store i32 %631, ptr %packet_count_pre.i, align 4
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 14, i32 4
  %639 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %639)
  %640 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %640)
  %cmp36.i = icmp eq i8 %640, 0
  %add.i135 = add nsw i32 %div.i, %div28.i
  %shr.i136 = ashr i32 %add.i135, 1
  %cfo_ave.0.i = select i1 %cmp36.i, i32 %div.i, i32 %shr.i136
  %cfo_ave_pre.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 55
  %641 = ptrtoint ptr %cfo_ave_pre.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %cfo_ave_pre.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %642, i32 %cfo_ave.0.i)
  %cmp41.not.i = icmp slt i32 %642, %cfo_ave.0.i
  %sub.i137 = sub i32 %642, %cfo_ave.0.i
  %sub45.i = sub i32 %cfo_ave.0.i, %642
  %cond.i = select i1 %cmp41.not.i, i32 %sub45.i, i32 %sub.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %cond.i)
  %cmp46.i138 = icmp sgt i32 %cond.i, 20
  br i1 %cmp46.i138, label %land.lhs.true.i139, label %if.end33.i.if.else51.i_crit_edge

if.end33.i.if.else51.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else51.i

land.lhs.true.i139:                               ; preds = %if.end33.i
  %large_cfo_hit.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 52
  %643 = ptrtoint ptr %large_cfo_hit.i to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %large_cfo_hit.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %644)
  %tobool48.not.i = icmp eq i8 %644, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %land.lhs.true.i139.if.else51.i_crit_edge

land.lhs.true.i139.if.else51.i_crit_edge:         ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else51.i

if.then49.i:                                      ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #9
  %645 = ptrtoint ptr %large_cfo_hit.i to i32
  call void @__asan_store1_noabort(i32 %645)
  store i8 1, ptr %large_cfo_hit.i, align 1
  br label %rtl8723be_dm_dynamic_atc_switch.exit

if.else51.i:                                      ; preds = %land.lhs.true.i139.if.else51.i_crit_edge, %if.end33.i.if.else51.i_crit_edge
  %large_cfo_hit52.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 52
  %646 = ptrtoint ptr %large_cfo_hit52.i to i32
  call void @__asan_store1_noabort(i32 %646)
  store i8 0, ptr %large_cfo_hit52.i, align 1
  %647 = ptrtoint ptr %cfo_ave_pre.i to i32
  call void @__asan_store4_noabort(i32 %647)
  store i32 %cfo_ave.0.i, ptr %cfo_ave_pre.i, align 4
  %cfo_threshold.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 57
  %648 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_load1_noabort(i32 %648)
  %649 = load i8, ptr %cfo_threshold.i, align 4
  %conv55.i = zext i8 %649 to i32
  %sub56.i = sub nsw i32 0, %conv55.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %sub56.i)
  %cmp57.not.i = icmp slt i32 %cfo_ave.0.i, %sub56.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %conv55.i)
  %cmp62.not.i = icmp sgt i32 %cfo_ave.0.i, %conv55.i
  %or.cond.i140 = or i1 %cmp57.not.i, %cmp62.not.i
  br i1 %or.cond.i140, label %if.else51.i.if.end80.i_crit_edge, label %land.lhs.true64.i

if.else51.i.if.end80.i_crit_edge:                 ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

land.lhs.true64.i:                                ; preds = %if.else51.i
  %is_freeze.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 53
  %650 = ptrtoint ptr %is_freeze.i to i32
  call void @__asan_load1_noabort(i32 %650)
  %651 = load i8, ptr %is_freeze.i, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %651)
  %cmp67.i = icmp eq i8 %651, 0
  br i1 %cmp67.i, label %if.then69.i, label %land.lhs.true64.i.if.end80.i_crit_edge

land.lhs.true64.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.then69.i:                                      ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %649)
  %cmp72.i = icmp eq i8 %649, 10
  br i1 %cmp72.i, label %if.then74.i, label %if.else77.i

if.then74.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #9
  %652 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_store1_noabort(i32 %652)
  store i8 20, ptr %cfo_threshold.i, align 4
  %653 = ptrtoint ptr %is_freeze.i to i32
  call void @__asan_store1_noabort(i32 %653)
  store i8 1, ptr %is_freeze.i, align 2
  br label %if.end80.i

if.else77.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #9
  %654 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 10, ptr %cfo_threshold.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else77.i, %if.then74.i, %land.lhs.true64.i.if.end80.i_crit_edge, %if.else51.i.if.end80.i_crit_edge
  %655 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_load1_noabort(i32 %655)
  %656 = load i8, ptr %cfo_threshold.i, align 4
  %conv82.i = zext i8 %656 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %conv82.i)
  %cmp83.i = icmp sgt i32 %cfo_ave.0.i, %conv82.i
  br i1 %cmp83.i, label %land.lhs.true85.i, label %if.end80.i.if.else93.i_crit_edge

if.end80.i.if.else93.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else93.i

land.lhs.true85.i:                                ; preds = %if.end80.i
  %crystal_cap86.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 56
  %657 = ptrtoint ptr %crystal_cap86.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %crystal_cap86.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %658)
  %cmp87.i = icmp slt i32 %658, 63
  br i1 %cmp87.i, label %land.lhs.true85.i.if.end110.i_crit_edge, label %land.lhs.true85.i.if.else93.i_crit_edge

land.lhs.true85.i.if.else93.i_crit_edge:          ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else93.i

land.lhs.true85.i.if.end110.i_crit_edge:          ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.else93.i:                                      ; preds = %land.lhs.true85.i.if.else93.i_crit_edge, %if.end80.i.if.else93.i_crit_edge
  %sub97.i = sub nsw i32 0, %conv82.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %sub97.i)
  %cmp98.i = icmp slt i32 %cfo_ave.0.i, %sub97.i
  br i1 %cmp98.i, label %land.lhs.true100.i, label %if.else93.i.if.end137.i_crit_edge

if.else93.i.if.end137.i_crit_edge:                ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137.i

land.lhs.true100.i:                               ; preds = %if.else93.i
  %crystal_cap102.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 56
  %659 = ptrtoint ptr %crystal_cap102.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %crystal_cap102.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %660)
  %cmp103.i = icmp sgt i32 %660, 0
  br i1 %cmp103.i, label %land.lhs.true100.i.if.end110.i_crit_edge, label %land.lhs.true100.i.if.end137.i_crit_edge

land.lhs.true100.i.if.end137.i_crit_edge:         ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137.i

land.lhs.true100.i.if.end110.i_crit_edge:         ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.end110.i:                                      ; preds = %land.lhs.true100.i.if.end110.i_crit_edge, %land.lhs.true85.i.if.end110.i_crit_edge
  %.sink259.i = phi i32 [ -10, %land.lhs.true85.i.if.end110.i_crit_edge ], [ 10, %land.lhs.true100.i.if.end110.i_crit_edge ]
  %.sink.i = phi i32 [ 1, %land.lhs.true85.i.if.end110.i_crit_edge ], [ -1, %land.lhs.true100.i.if.end110.i_crit_edge ]
  %add106.i = add nsw i32 %.sink259.i, %cfo_ave.0.i
  %shr107.i = ashr i32 %add106.i, 1
  %sub108.i = add nsw i32 %shr107.i, %.sink.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub108.i)
  %cmp111.not.i = icmp eq i32 %sub108.i, 0
  br i1 %cmp111.not.i, label %if.end110.i.if.end137.i_crit_edge, label %if.then113.i

if.end110.i.if.end137.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137.i

if.then113.i:                                     ; preds = %if.end110.i
  %is_freeze114.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 53
  %661 = ptrtoint ptr %is_freeze114.i to i32
  call void @__asan_store1_noabort(i32 %661)
  store i8 0, ptr %is_freeze114.i, align 2
  %crystal_cap115.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 56
  %662 = ptrtoint ptr %crystal_cap115.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %crystal_cap115.i, align 8
  %add116.i = add i32 %663, %sub108.i
  store i32 %add116.i, ptr %crystal_cap115.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add116.i)
  %cmp118.i = icmp sgt i32 %add116.i, 63
  br i1 %cmp118.i, label %if.then113.i.if.end129.sink.split.i_crit_edge, label %if.else122.i

if.then113.i.if.end129.sink.split.i_crit_edge:    ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.sink.split.i

if.else122.i:                                     ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add116.i)
  %cmp124.i = icmp slt i32 %add116.i, 0
  br i1 %cmp124.i, label %if.else122.i.if.end129.sink.split.i_crit_edge, label %if.else122.i.if.end129.i_crit_edge

if.else122.i.if.end129.i_crit_edge:               ; preds = %if.else122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.i

if.else122.i.if.end129.sink.split.i_crit_edge:    ; preds = %if.else122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.sink.split.i

if.end129.sink.split.i:                           ; preds = %if.else122.i.if.end129.sink.split.i_crit_edge, %if.then113.i.if.end129.sink.split.i_crit_edge
  %.sink260.i = phi i32 [ 63, %if.then113.i.if.end129.sink.split.i_crit_edge ], [ 0, %if.else122.i.if.end129.sink.split.i_crit_edge ]
  %664 = ptrtoint ptr %crystal_cap115.i to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 %.sink260.i, ptr %crystal_cap115.i, align 8
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.end129.sink.split.i, %if.else122.i.if.end129.i_crit_edge
  %665 = ptrtoint ptr %crystal_cap115.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %crystal_cap115.i, align 8
  %conv132.i = and i32 %666, 63
  %or136.i = mul nuw nsw i32 %conv132.i, 65
  %667 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %priv, align 8
  %cfg.i246.i = getelementptr inbounds %struct.rtl_priv, ptr %668, i32 0, i32 32
  %669 = ptrtoint ptr %cfg.i246.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %cfg.i246.i, align 8
  %ops.i247.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %670, i32 0, i32 4
  %671 = ptrtoint ptr %ops.i247.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %ops.i247.i, align 4
  %set_bbreg.i248.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %672, i32 0, i32 46
  %673 = ptrtoint ptr %set_bbreg.i248.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %set_bbreg.i248.i, align 4
  call void %674(ptr noundef %hw, i32 noundef 44, i32 noundef 16773120, i32 noundef %or136.i) #7
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.end129.i, %if.end110.i.if.end137.i_crit_edge, %land.lhs.true100.i.if.end137.i_crit_edge, %if.else93.i.if.end137.i_crit_edge
  %675 = add nsw i32 %cfo_ave.0.i, 79
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %675)
  %676 = icmp ult i32 %675, 159
  %atc_status144.i = getelementptr inbounds %struct.rtl_priv, ptr %595, i32 0, i32 15, i32 51
  %677 = ptrtoint ptr %atc_status144.i to i32
  call void @__asan_load1_noabort(i32 %677)
  %678 = load i8, ptr %atc_status144.i, align 8, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %678)
  %tobool145.not.i = icmp eq i8 %678, 0
  br i1 %676, label %if.then143.i, label %if.else152.i

if.then143.i:                                     ; preds = %if.end137.i
  br i1 %tobool145.not.i, label %if.then143.i.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge, label %if.then149.i

if.then143.i.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge: ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_dynamic_atc_switch.exit

if.then149.i:                                     ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #9
  %679 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %priv, align 8
  %cfg.i250.i = getelementptr inbounds %struct.rtl_priv, ptr %680, i32 0, i32 32
  %681 = ptrtoint ptr %cfg.i250.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %cfg.i250.i, align 8
  %ops.i251.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %682, i32 0, i32 4
  %683 = ptrtoint ptr %ops.i251.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %ops.i251.i, align 4
  %set_bbreg.i252.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %684, i32 0, i32 46
  %685 = ptrtoint ptr %set_bbreg.i252.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %set_bbreg.i252.i, align 4
  call void %686(ptr noundef %hw, i32 noundef 3372, i32 noundef 2048, i32 noundef 0) #7
  %687 = ptrtoint ptr %atc_status144.i to i32
  call void @__asan_store1_noabort(i32 %687)
  store i8 0, ptr %atc_status144.i, align 8
  br label %rtl8723be_dm_dynamic_atc_switch.exit

if.else152.i:                                     ; preds = %if.end137.i
  br i1 %tobool145.not.i, label %if.then158.i141, label %if.else152.i.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge

if.else152.i.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge: ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_dm_dynamic_atc_switch.exit

if.then158.i141:                                  ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #9
  %688 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %priv, align 8
  %cfg.i254.i = getelementptr inbounds %struct.rtl_priv, ptr %689, i32 0, i32 32
  %690 = ptrtoint ptr %cfg.i254.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %cfg.i254.i, align 8
  %ops.i255.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %691, i32 0, i32 4
  %692 = ptrtoint ptr %ops.i255.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %ops.i255.i, align 4
  %set_bbreg.i256.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %693, i32 0, i32 46
  %694 = ptrtoint ptr %set_bbreg.i256.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %set_bbreg.i256.i, align 4
  call void %695(ptr noundef %hw, i32 noundef 3372, i32 noundef 2048, i32 noundef 1) #7
  %696 = ptrtoint ptr %atc_status144.i to i32
  call void @__asan_store1_noabort(i32 %696)
  store i8 1, ptr %atc_status144.i, align 8
  br label %rtl8723be_dm_dynamic_atc_switch.exit

rtl8723be_dm_dynamic_atc_switch.exit:             ; preds = %if.then158.i141, %if.else152.i.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge, %if.then149.i, %if.then143.i.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge, %if.then49.i, %if.else.i132.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge, %if.then15.i131, %if.end10.i.rtl8723be_dm_dynamic_atc_switch.exit_crit_edge, %if.then8.i128
  call void @rtl8723be_dm_check_txpower_tracking(ptr noundef %hw)
  br label %if.end11

if.end11:                                         ; preds = %rtl8723be_dm_dynamic_atc_switch.exit, %land.lhs.true8.if.end11_crit_edge, %land.lhs.true6.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #7
  %num_qry_beacon_pkt = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 50, i32 4
  %697 = ptrtoint ptr %num_qry_beacon_pkt to i32
  call void @__asan_store2_noabort(i32 %697)
  store i16 0, ptr %num_qry_beacon_pkt, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_ps_awake) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inpsmode) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_phy_lc_calibrate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_phy_iq_calibrate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !63, !64, !66, !68, !70, !72}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 893, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 898, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 228, i32 2}
!6 = !{ptr @rtl8723be_dm_txpower_tracking_callback_thermalmeter.delta_swing_table_idx_tup_a, !7, !"delta_swing_table_idx_tup_a", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 739, i32 18}
!8 = !{ptr @rtl8723be_dm_txpower_tracking_callback_thermalmeter.delta_swing_table_idx_tdown_a, !9, !"delta_swing_table_idx_tdown_a", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 743, i32 18}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 750, i32 2}
!12 = !{ptr @__func__.rtl8723be_dm_txpower_tracking_callback_thermalmeter, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 758, i32 2}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 795, i32 2}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 879, i32 2}
!19 = !{ptr @cckswing_table_ch1ch13, !20, !"cckswing_table_ch1ch13", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 63, i32 17}
!21 = !{ptr @cckswing_table_ch14, !22, !"cckswing_table_ch14", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 99, i32 17}
!23 = !{ptr @ofdmswing_table, !24, !"ofdmswing_table", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 17, i32 18}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 579, i32 2}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 586, i32 2}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 323, i32 3}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 333, i32 3}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 268, i32 3}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 276, i32 4}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 282, i32 4}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 289, i32 3}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 293, i32 2}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 424, i32 3}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 1076, i32 2}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 917, i32 3}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 923, i32 3}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 952, i32 4}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 955, i32 4}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 957, i32 4}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rtl8723be_dm_check_edca_turbo.last_txok_cnt, !65, !"last_txok_cnt", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 989, i32 13}
!66 = !{ptr @rtl8723be_dm_check_edca_turbo.last_rxok_cnt, !67, !"last_rxok_cnt", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 990, i32 13}
!68 = distinct !{null, !69, !"edca_setting_dl", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 135, i32 18}
!70 = distinct !{null, !71, !"edca_setting_ul", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 146, i32 18}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/dm.c", i32 1124, i32 5}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i8 0, i8 2}
!85 = !{i64 2149360371}
!86 = !{i64 2149360637}
