; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"cur_igvalue = 0x%x, pre_igvalue = 0x%x, back_val = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DIG is disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Trigger 92S Thermal Meter!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Schedule TxPowerTracking direct call!!\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping = internal constant { [5 x [13 x i8]], [63 x i8] } { [5 x [13 x i8]] [[13 x i8] c"\00\01\03\06\08\09\0B\0D\0E\10\11\12\12", [13 x i8] c"\00\02\04\05\07\0A\0C\0E\10\12\12\12\12", [13 x i8] c"\00\02\03\06\08\09\0B\0D\0E\10\11\12\12", [13 x i8] c"\00\02\04\05\07\0A\0D\10\10\12\12\12\12", [13 x i8] c"\00\01\02\03\04\05\06\07\07\08\09\0A\0A"], [63 x i8] zeroinitializer }, align 32
@rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping_internal_pa = internal constant { [8 x [13 x i8]], [56 x i8] } { [8 x [13 x i8]] [[13 x i8] c"\00\01\02\04\06\07\09\0B\0C\0E\0F\10\10", [13 x i8] c"\00\02\04\05\07\0A\0C\0E\10\12\12\12\12", [13 x i8] c"\00\01\02\03\05\06\08\0A\0B\0D\0E\0F\0F", [13 x i8] c"\00\02\04\05\07\0A\0C\0E\10\12\12\12\12", [13 x i8] c"\00\01\02\04\06\07\09\0B\0C\0E\0F\10\10", [13 x i8] c"\00\02\04\05\07\0A\0D\10\10\12\12\12\12", [13 x i8] c"\00\01\02\03\05\06\08\09\0A\0C\0D\0E\0E", [13 x i8] c"\00\02\04\05\07\0A\0D\10\10\12\12\12\12"], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@ofdmswing_table = internal constant { [43 x i32], [52 x i8] } { [43 x i32] [i32 2139095550, i32 2021655010, i32 1908408775, i32 1803551150, i32 1698693525, i32 1606418815, i32 1514144105, i32 1430258005, i32 1350566210, i32 1275068720, i32 1203765535, i32 1136656655, i32 1073742080, i32 1015021810, i32 956301540, i32 901775575, i32 851443915, i32 805306560, i32 759169205, i32 717226155, i32 679477410, i32 637534360, i32 603979920, i32 570425480, i32 536871040, i32 507510905, i32 478150770, i32 452984940, i32 427819110, i32 402653280, i32 381681755, i32 360710230, i32 339738705, i32 318767180, i32 301989960, i32 285212740, i32 268435520, i32 251658300, i32 239075385, i32 226492470, i32 213909555, i32 201326640, i32 188743725], [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Initial pathA ele_d reg0x%x = 0x%lx, ofdm_index=0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Initial pathB ele_d reg 0x%x = 0x%lx, ofdm_index = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reload ofdm index for band switch\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x delta 0x%x delta_lck 0x%x delta_iqk 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"temp OFDM_A_index=0x%x, OFDM_B_index = 0x%x,cck_index=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"temp OFDM_A_index=0x%x,cck_index = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"new OFDM_A_index=0x%x, OFDM_B_index = 0x%x, cck_index=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"new OFDM_A_index=0x%x,cck_index = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"TxPwrTracking for interface %d path A: X = 0x%lx, Y = 0x%lx ele_A = 0x%lx ele_C = 0x%lx ele_D = 0x%lx 0xe94 = 0x%lx 0xe9c = 0x%lx\0A\00", [61 x i8] zeroinitializer }, align 32
@cckswing_table_ch1ch13 = internal constant { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"65.%\1C\12\09\04", [8 x i8] c"32+#\1A\11\08\04", [8 x i8] c"0/)!\19\10\08\03", [8 x i8] c"--'\1F\18\0F\08\03", [8 x i8] c"+*%\1E\16\0E\07\03", [8 x i8] c"((\22\1C\15\0D\07\03", [8 x i8] c"&%!\1B\14\0D\06\03", [8 x i8] c"$#\1F\19\13\0C\06\03", [8 x i8] c"\22!\1D\18\11\0B\06\02", [8 x i8] c"  \1B\16\11\08\05\02", [8 x i8] c"\1F\1E\1A\15\10\0A\05\02", [8 x i8] c"\1D\1C\18\14\0F\0A\05\02", [8 x i8] c"\1B\1A\17\13\0E\09\04\02", [8 x i8] c"\1A\19\16\12\0D\09\04\02", [8 x i8] c"\18\17\15\11\0C\08\04\02", [8 x i8] c"\17\16\13\10\0C\08\04\02", [8 x i8] c"\16\15\12\0F\0B\07\04\01", [8 x i8] c"\14\14\11\0E\0B\07\03\02", [8 x i8] c"\13\13\10\0D\0A\06\03\01", [8 x i8] c"\12\12\0F\0C\09\06\03\01", [8 x i8] c"\11\11\0F\0C\09\06\03\01", [8 x i8] c"\10\10\0E\0B\08\05\03\01", [8 x i8] c"\0F\0F\0D\0B\08\05\03\01", [8 x i8] c"\0E\0E\0C\0A\08\05\02\01", [8 x i8] c"\0D\0D\0C\0A\07\05\02\01", [8 x i8] c"\0D\0C\0B\09\07\04\02\01", [8 x i8] c"\0C\0C\0A\09\06\04\02\01", [8 x i8] c"\0B\0B\0A\08\06\04\02\01", [8 x i8] c"\0B\0A\09\08\06\04\02\01", [8 x i8] c"\0A\0A\09\07\05\03\02\01", [8 x i8] c"\0A\09\08\07\05\03\02\01", [8 x i8] c"\09\09\08\06\05\03\01\01", [8 x i8] c"\09\08\07\06\04\03\01\01"], [88 x i8] zeroinitializer }, align 32
@cckswing_table_ch14 = internal constant { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"65.\1B\00\00\00\00", [8 x i8] c"32+\19\00\00\00\00", [8 x i8] c"0/)\18\00\00\00\00", [8 x i8] c"--\17\17\00\00\00\00", [8 x i8] c"+*%\15\00\00\00\00", [8 x i8] c"(($\14\00\00\00\00", [8 x i8] c"&%!\13\00\00\00\00", [8 x i8] c"$#\1F\12\00\00\00\00", [8 x i8] c"\22!\1D\11\00\00\00\00", [8 x i8] c"  \1B\10\00\00\00\00", [8 x i8] c"\1F\1E\1A\0F\00\00\00\00", [8 x i8] c"\1D\1C\18\0E\00\00\00\00", [8 x i8] c"\1B\1A\17\0E\00\00\00\00", [8 x i8] c"\1A\19\16\0D\00\00\00\00", [8 x i8] c"\18\17\15\0C\00\00\00\00", [8 x i8] c"\17\16\13\0B\00\00\00\00", [8 x i8] c"\16\15\12\0B\00\00\00\00", [8 x i8] c"\14\14\11\0A\00\00\00\00", [8 x i8] c"\13\13\10\0A\00\00\00\00", [8 x i8] c"\12\12\0F\09\00\00\00\00", [8 x i8] c"\11\11\0F\09\00\00\00\00", [8 x i8] c"\10\10\0E\08\00\00\00\00", [8 x i8] c"\0F\0F\0D\08\00\00\00\00", [8 x i8] c"\0E\0E\0C\07\00\00\00\00", [8 x i8] c"\0D\0D\0C\07\00\00\00\00", [8 x i8] c"\0D\0C\0B\06\00\00\00\00", [8 x i8] c"\0C\0C\0A\06\00\00\00\00", [8 x i8] c"\0B\0B\0A\06\00\00\00\00", [8 x i8] c"\0B\0A\09\05\00\00\00\00", [8 x i8] c"\0A\0A\09\05\00\00\00\00", [8 x i8] c"\0A\09\08\05\00\00\00\00", [8 x i8] c"\09\09\08\05\00\00\00\00", [8 x i8] c"\09\08\07\04\00\00\00\00"], [88 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"TxPwrTracking path B: X = 0x%lx, Y = 0x%lx ele_A = 0x%lx ele_C = 0x%lx ele_D = 0x%lx 0xeb4 = 0x%lx 0xebc = 0x%lx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"TxPwrTracking 0xc80 = 0x%x, 0xc94 = 0x%x RF 0x24 = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"<===\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Initial reg0x%x = 0x%lx, cck_index = 0x%x, ch14 %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__const.rtl92d_dm_rxgain_tracking_thermalmeter.index_mapping = private unnamed_addr constant [15 x i8] c"\0F\0F\0D\0C\0B\0A\09\08\07\06\05\04\04\03\02", align 1
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"===> Rx Gain %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pMgntInfo->txpower_tracking = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Cnt_Fast_Fsync_fail = %x, Cnt_SB_Search_fail = %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Cnt_Parity_Fail = %x, Cnt_Rate_Illegal = %x, Cnt_Crc8_fail = %x, Cnt_Mcs_fail = %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Cnt_Ofdm_fail = %x, Cnt_Cck_fail = %x, Cnt_all = %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not connected to any\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"STA Default Port PWDB = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AP Ext Port or disconnect PWDB = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MinUndecoratedPWDBForDM =%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"==>\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"progress\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"dm_DIG() Before: large_fa_hit=%d, forbidden_igi=%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"dm_DIG() Before: Recover_cnt=%d, rx_gain_min=%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dm_DIG(): Abnormally false alarm case\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"dm_DIG() After: large_fa_hit=%d, forbidden_igi=%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dm_DIG() After: recover_cnt=%d, rx_gain_min=%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"<<==\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IOT_PEER = CISCO\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Early Mode Off\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Early Mode On\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CurSTAConnectState=%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DIG_STA_CONNECT \00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DIG_STA_DISCONNECT\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CCKPDStage=%s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Low RSSI \00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"High RSSI \00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"is92d single phy =%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IBSS Client PWDB = 0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"STA Default Port PWDB = 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AP Ext Port PWDB = 0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"5G:TxHighPwrLevel_Level2 (TxPwr=0x0)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"5G:TxHighPwrLevel_Level1 (TxPwr=0x10)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"5G:TxHighPwrLevel_Normal\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x0)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x10)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TXHIGHPWRLEVEL_NORMAL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PHY_SetTxPowerLevel8192S() Channel = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92d_dm_check_edca_turbo.last_txok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rtl92d_dm_check_edca_turbo.last_rxok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 306, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 311, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1190, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1195, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"index_mapping\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 792, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"index_mapping_internal_pa\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 804, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 824, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 826, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"ofdmswing_table\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 15, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 849, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 863, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 892, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 937, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 977, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 983, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1007, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1012, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1054, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [23 x i8] c"cckswing_table_ch1ch13\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 61, i32 17 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"cckswing_table_ch14\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 97, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1138, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1143, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1165, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 698, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 669, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1175, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 197, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 201, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 207, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 224, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 232, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 238, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 244, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 249, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 355, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 374, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 390, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 393, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 399, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 438, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 441, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 453, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 330, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 334, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 339, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 290, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 293, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 296, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 490, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 496, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 504, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 512, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 518, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 523, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 531, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 541, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 547, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 552, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [14 x i8] c"last_txok_cnt\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 595, i32 13 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"last_rxok_cnt\00", align 1
@___asan_gen_.249 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 596, i32 13 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping, ptr @rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping_internal_pa, ptr @.str.4, ptr @.str.5, ptr @ofdmswing_table, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @cckswing_table_ch1ch13, ptr @cckswing_table_ch14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @rtl92d_dm_check_edca_turbo.last_txok_cnt, ptr @rtl92d_dm_check_edca_turbo.last_rxok_cnt], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping_internal_pa to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdmswing_table to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cckswing_table_ch1ch13 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cckswing_table_ch14 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_dm_check_edca_turbo.last_txok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_dm_check_edca_turbo.last_rxok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92d_dm_write_dig(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %5, i32 noundef %conv) #5
  %dig_enable_flag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 11
  %8 = ptrtoint ptr %dig_enable_flag to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dig_enable_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.1) #5
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %pre_igvalue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pre_igvalue, align 4
  %12 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_igvalue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6.not = icmp eq i32 %11, %13
  br i1 %cmp6.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 32
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %21(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %13) #5
  %22 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_igvalue, align 4
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %cfg.i30 = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i30, align 8
  %ops.i31 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ops.i31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i31, align 4
  %set_bbreg.i32 = getelementptr inbounds %struct.rtl_hal_ops, ptr %29, i32 0, i32 46
  %30 = ptrtoint ptr %set_bbreg.i32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_bbreg.i32, align 4
  tail call void %31(ptr noundef %hw, i32 noundef 3160, i32 noundef 127, i32 noundef %23) #5
  %32 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cur_igvalue, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.then
  %.sink = phi i32 [ %33, %if.then8 ], [ 23, %if.then ]
  %34 = ptrtoint ptr %pre_igvalue to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %pre_igvalue, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92d_dm_init_edca_turbo(ptr nocapture noundef readonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
define dso_local void @rtl92d_dm_check_txpower_tracking_thermal_meter(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %ofdm_index.i = alloca [2 x i8], align 1
  %ofdm_index_old.sroa.0.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %txpower_tracking = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 13
  %2 = ptrtoint ptr %txpower_tracking to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txpower_tracking, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %11(ptr noundef %hw, i32 noundef 0, i32 noundef 66, i32 noundef 196608, i32 noundef 3) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.2) #5
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.3) #5
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ofdm_index.i) #5
  %14 = ptrtoint ptr %ofdm_index.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %ofdm_index.i, align 1, !annotation !134
  %15 = getelementptr inbounds [2 x i8], ptr %ofdm_index.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %15, align 1, !annotation !134
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ofdm_index_old.sroa.0.i)
  %17 = ptrtoint ptr %ofdm_index_old.sroa.0.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %ofdm_index_old.sroa.0.i, align 2
  %version.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 13
  %18 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version.i, align 4
  %20 = and i32 %19, 119
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %20)
  %.not.i = icmp eq i32 %20, 34
  %current_channel.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 14, i32 10
  %21 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %current_channel.i, align 1
  %call.i = tail call zeroext i8 @rtl92d_get_rightchnlplace_for_iqk(i8 noundef zeroext %22) #5
  %txpower_trackinginit.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 10
  %23 = ptrtoint ptr %txpower_trackinginit.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %txpower_trackinginit.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.4) #5
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i, align 4
  %get_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %29, i32 0, i32 47
  %30 = ptrtoint ptr %get_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_rfreg.i.i, align 4
  %call.i.i = tail call i32 %31(ptr noundef %hw, i32 noundef 0, i32 noundef 66, i32 noundef 63488) #5
  %conv.i = trunc i32 %call.i.i to i8
  %conv13.i = and i32 %call.i.i, 255
  %thermalvalue15.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 23
  %32 = ptrtoint ptr %thermalvalue15.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %thermalvalue15.i, align 2
  %conv16.i = zext i8 %33 to i32
  %eeprom_thermalmeter.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 55
  %34 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %eeprom_thermalmeter.i, align 4
  %conv17.i = zext i8 %35 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %conv13.i, i32 noundef %conv16.i, i32 noundef %conv17.i) #5
  %36 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %eeprom_thermalmeter.i, align 4
  %conv21.i = sub i8 %conv.i, %37
  tail call void @rtl92d_phy_ap_calibrate(ptr noundef %hw, i8 noundef signext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool22.not.i = icmp eq i8 %conv.i, 0
  br i1 %tobool22.not.i, label %if.else.rtl92d_dm_txpower_tracking_callback_thermalmeter.exit_crit_edge, label %if.end.i

if.else.rtl92d_dm_txpower_tracking_callback_thermalmeter.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_dm_txpower_tracking_callback_thermalmeter.exit

if.end.i:                                         ; preds = %if.else
  %..i = select i1 %.not.i, i8 2, i8 1
  %38 = ptrtoint ptr %thermalvalue15.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %thermalvalue15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool29.not.i = icmp eq i8 %39, 0
  br i1 %tobool29.not.i, label %if.end.i.if.end32.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %reloadtxpowerindex.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 62
  %40 = ptrtoint ptr %reloadtxpowerindex.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reloadtxpowerindex.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool30.not.i = icmp eq i8 %41, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i.old_index_done.i_crit_edge, label %land.lhs.true.i.if.end32.i_crit_edge

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

land.lhs.true.i.old_index_done.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %old_index_done.i

if.end32.i:                                       ; preds = %land.lhs.true.i.if.end32.i_crit_edge, %if.end.i.if.end32.i_crit_edge
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 8
  %cfg.i1047.i = getelementptr inbounds %struct.rtl_priv, ptr %43, i32 0, i32 32
  %44 = ptrtoint ptr %cfg.i1047.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i1047.i, align 8
  %ops.i1048.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %ops.i1048.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i1048.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %47, i32 0, i32 45
  %48 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i1049.i = tail call i32 %49(ptr noundef %hw, i32 noundef 3200, i32 noundef -1) #5
  %and34.i = and i32 %call.i1049.i, -4194304
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end32.i
  %i.01280.i = phi i32 [ 0, %if.end32.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [43 x i32], ptr @ofdmswing_table, i32 0, i32 %i.01280.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %and37.i = and i32 %51, -4194304
  call void @__sanitizer_cov_trace_cmp4(i32 %and34.i, i32 %and37.i)
  %cmp38.i = icmp eq i32 %and34.i, %and37.i
  br i1 %cmp38.i, label %if.then40.i, label %for.inc.i

if.then40.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv41.i = trunc i32 %i.01280.i to i8
  %52 = ptrtoint ptr %ofdm_index_old.sroa.0.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv41.i, ptr %ofdm_index_old.sroa.0.i, align 2
  %conv44.i = and i32 %i.01280.i, 255
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 3200, i32 noundef %and34.i, i32 noundef %conv44.i) #5
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.01280.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 43
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then40.i
  br i1 %.not.i, label %if.then47.i, label %for.end.i.if.end67.i_crit_edge

for.end.i.if.end67.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

if.then47.i:                                      ; preds = %for.end.i
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %cfg.i1051.i = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 32
  %55 = ptrtoint ptr %cfg.i1051.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i1051.i, align 8
  %ops.i1052.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %ops.i1052.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i1052.i, align 4
  %get_bbreg.i1053.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %58, i32 0, i32 45
  %59 = ptrtoint ptr %get_bbreg.i1053.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_bbreg.i1053.i, align 4
  %call.i1054.i = tail call i32 %60(ptr noundef %hw, i32 noundef 3208, i32 noundef -1) #5
  %and49.i = and i32 %call.i1054.i, -4194304
  br label %for.body53.i

for.body53.i:                                     ; preds = %for.inc64.i.for.body53.i_crit_edge, %if.then47.i
  %i.11281.i = phi i32 [ 0, %if.then47.i ], [ %inc65.i, %for.inc64.i.for.body53.i_crit_edge ]
  %arrayidx54.i = getelementptr [43 x i32], ptr @ofdmswing_table, i32 0, i32 %i.11281.i
  %61 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx54.i, align 4
  %and55.i = and i32 %62, -4194304
  call void @__sanitizer_cov_trace_cmp4(i32 %and49.i, i32 %and55.i)
  %cmp56.i = icmp eq i32 %and49.i, %and55.i
  br i1 %cmp56.i, label %if.then58.i, label %for.inc64.i

if.then58.i:                                      ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv59.i = trunc i32 %i.11281.i to i8
  %ofdm_index_old.sroa.0.i.1.i.1.arrayidx60.sroa_idx = getelementptr inbounds i8, ptr %ofdm_index_old.sroa.0.i, i32 1
  %63 = ptrtoint ptr %ofdm_index_old.sroa.0.i.1.i.1.arrayidx60.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv59.i, ptr %ofdm_index_old.sroa.0.i.1.i.1.arrayidx60.sroa_idx, align 1
  %conv62.i = and i32 %i.11281.i, 255
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef 3208, i32 noundef %and49.i, i32 noundef %conv62.i) #5
  br label %if.end67.i

for.inc64.i:                                      ; preds = %for.body53.i
  %inc65.i = add nuw nsw i32 %i.11281.i, 1
  %exitcond1294.not.i = icmp eq i32 %inc65.i, 43
  br i1 %exitcond1294.not.i, label %for.inc64.i.if.end67.i_crit_edge, label %for.inc64.i.for.body53.i_crit_edge

for.inc64.i.for.body53.i_crit_edge:               ; preds = %for.inc64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body53.i

for.inc64.i.if.end67.i_crit_edge:                 ; preds = %for.inc64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

if.end67.i:                                       ; preds = %for.inc64.i.if.end67.i_crit_edge, %if.then58.i, %for.end.i.if.end67.i_crit_edge
  %current_bandtype.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 53
  %64 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %current_bandtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp68.i = icmp eq i32 %65, 0
  br i1 %cmp68.i, label %if.then70.i, label %if.end67.i.if.end72.i_crit_edge

if.end67.i.if.end72.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.i

if.then70.i:                                      ; preds = %if.end67.i
  %66 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv, align 8
  %interfaceindex.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 10, i32 56
  %68 = ptrtoint ptr %interfaceindex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %interfaceindex.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp.i.i.i = icmp eq i32 %69, 1
  br i1 %cmp.i.i.i, label %do.body1.i.i.i, label %if.then70.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i_crit_edge

if.then70.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i_crit_edge: ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i

do.body1.i.i.i:                                   ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  %cck_and_rw_pagea_lock.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 7, i32 12
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cck_and_rw_pagea_lock.i.i.i) #5
  br label %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i

rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i:       ; preds = %do.body1.i.i.i, %if.then70.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i_crit_edge
  %flag.0.i.i = phi i32 [ %call3.i.i.i, %do.body1.i.i.i ], [ 0, %if.then70.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i_crit_edge ]
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 32
  %72 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i.i.i, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %75, i32 0, i32 45
  %76 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i = tail call i32 %77(ptr noundef %hw, i32 noundef 2596, i32 noundef -1) #5
  %and.i.i = and i32 %call.i.i.i, 1061109567
  %78 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv, align 8
  %interfaceindex.i26.i.i = getelementptr inbounds %struct.rtl_priv, ptr %79, i32 0, i32 10, i32 56
  %80 = ptrtoint ptr %interfaceindex.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %interfaceindex.i26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i27.i.i = icmp eq i32 %81, 1
  br i1 %cmp.i27.i.i, label %if.then.i.i.i, label %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i.rtl92d_release_cckandrw_pagea_ctl.exit.i.i_crit_edge

rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i.rtl92d_release_cckandrw_pagea_ctl.exit.i.i_crit_edge: ; preds = %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_release_cckandrw_pagea_ctl.exit.i.i

if.then.i.i.i:                                    ; preds = %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %cck_and_rw_pagea_lock.i28.i.i = getelementptr inbounds %struct.rtl_priv, ptr %79, i32 0, i32 7, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cck_and_rw_pagea_lock.i28.i.i, i32 noundef %flag.0.i.i) #5
  br label %rtl92d_release_cckandrw_pagea_ctl.exit.i.i

rtl92d_release_cckandrw_pagea_ctl.exit.i.i:       ; preds = %if.then.i.i.i, %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i.rtl92d_release_cckandrw_pagea_ctl.exit.i.i_crit_edge
  %cck_inch14.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 15, i32 12
  %82 = ptrtoint ptr %cck_inch14.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %cck_inch14.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i.i = icmp eq i8 %83, 0
  %cckswing_table_ch1ch13.cckswing_table_ch14.i.i = select i1 %tobool.not.i.i, ptr @cckswing_table_ch1ch13, ptr @cckswing_table_ch14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rtl92d_release_cckandrw_pagea_ctl.exit.i.i
  %i.030.i.i = phi i32 [ 0, %rtl92d_release_cckandrw_pagea_ctl.exit.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %cckswing.0.i.i = getelementptr [33 x [8 x i8]], ptr %cckswing_table_ch1ch13.cckswing_table_ch14.i.i, i32 0, i32 %i.030.i.i, i32 2
  %84 = ptrtoint ptr %cckswing.0.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cckswing.0.i.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %86)
  %cmp4.i.i = icmp eq i32 %and.i.i, %86
  br i1 %cmp4.i.i, label %if.then5.i.i, label %for.inc.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = trunc i32 %i.030.i.i to i8
  %conv6.i.i = and i32 %i.030.i.i, 255
  %87 = zext i8 %83 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef 2596, i32 noundef %and.i.i, i32 noundef %conv6.i.i, i32 noundef %87) #5
  br label %if.end72.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.030.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 33
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end72.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.if.end72.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.i

if.end72.i:                                       ; preds = %for.inc.i.i.if.end72.i_crit_edge, %if.then5.i.i, %if.end67.i.if.end72.i_crit_edge
  %cck_index_old.1.i = phi i8 [ %conv.i.i, %if.then5.i.i ], [ 12, %if.end67.i.if.end72.i_crit_edge ], [ 0, %for.inc.i.i.if.end72.i_crit_edge ]
  %88 = ptrtoint ptr %thermalvalue15.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %thermalvalue15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool75.not.i = icmp eq i8 %89, 0
  br i1 %tobool75.not.i, label %if.then76.i, label %if.end72.i.if.end98.i_crit_edge

if.end72.i.if.end98.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98.i

if.then76.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %eeprom_thermalmeter.i, align 4
  %92 = ptrtoint ptr %thermalvalue15.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %thermalvalue15.i, align 2
  %thermalvalue_lck.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 22
  %93 = ptrtoint ptr %thermalvalue_lck.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv.i, ptr %thermalvalue_lck.i, align 1
  %thermalvalue_iqk.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 21
  %94 = ptrtoint ptr %thermalvalue_iqk.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv.i, ptr %thermalvalue_iqk.i, align 4
  %thermalvalue_rxgain.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 20
  %95 = ptrtoint ptr %thermalvalue_rxgain.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %91, ptr %thermalvalue_rxgain.i, align 1
  %conv85.i = zext i8 %..i to i32
  %uglygep.i = getelementptr i8, ptr %13, i32 42915
  %96 = call ptr @memcpy(ptr %uglygep.i, ptr %ofdm_index_old.sroa.0.i, i32 %conv85.i)
  %cck_index97.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 40
  %97 = ptrtoint ptr %cck_index97.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %cck_index_old.1.i, ptr %cck_index97.i, align 1
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then76.i, %if.end72.i.if.end98.i_crit_edge
  %reloadtxpowerindex99.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 62
  %98 = ptrtoint ptr %reloadtxpowerindex99.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %reloadtxpowerindex99.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool100.not.i = icmp eq i8 %99, 0
  br i1 %tobool100.not.i, label %if.end98.i.old_index_done.i_crit_edge, label %for.cond102.preheader.i

if.end98.i.old_index_done.i_crit_edge:            ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %old_index_done.i

for.cond102.preheader.i:                          ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv103.i = zext i8 %..i to i32
  %uglygep1295.i = getelementptr i8, ptr %13, i32 42915
  %100 = call ptr @memcpy(ptr %uglygep1295.i, ptr %ofdm_index_old.sroa.0.i, i32 %conv103.i)
  %cck_index115.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 40
  %101 = ptrtoint ptr %cck_index115.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %cck_index_old.1.i, ptr %cck_index115.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.8) #5
  br label %old_index_done.i

old_index_done.i:                                 ; preds = %for.cond102.preheader.i, %if.end98.i.old_index_done.i_crit_edge, %land.lhs.true.i.old_index_done.i_crit_edge
  %conv118.i = zext i8 %..i to i32
  %uglygep1297.i = getelementptr i8, ptr %13, i32 42915
  %102 = call ptr @memcpy(ptr %ofdm_index.i, ptr %uglygep1297.i, i32 %conv118.i)
  %thermalvalue_avg_index.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 26
  %103 = ptrtoint ptr %thermalvalue_avg_index.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %thermalvalue_avg_index.i, align 8
  %idxprom.i = zext i8 %104 to i32
  %arrayidx132.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 %idxprom.i
  %105 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv.i, ptr %arrayidx132.i, align 1
  %106 = load i8, ptr %thermalvalue_avg_index.i, align 8
  %inc135.i = add i8 %106, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc135.i)
  %cmp139.i = icmp eq i8 %inc135.i, 8
  %spec.select.i = select i1 %cmp139.i, i8 0, i8 %inc135.i
  %107 = ptrtoint ptr %thermalvalue_avg_index.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %spec.select.i, ptr %thermalvalue_avg_index.i, align 8
  %arrayidx151.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 0
  %108 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx151.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool152.not.i = icmp ne i8 %109, 0
  %inc158.i = zext i1 %tobool152.not.i to i8
  %arrayidx151.1.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 1
  %110 = ptrtoint ptr %arrayidx151.1.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx151.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool152.not.1.i = icmp ne i8 %111, 0
  %inc158.1.i = zext i1 %tobool152.not.1.i to i8
  %thermalvalue_avg_count.1.1.i = add nuw nsw i8 %inc158.1.i, %inc158.i
  %arrayidx151.2.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 2
  %112 = ptrtoint ptr %arrayidx151.2.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx151.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool152.not.2.i = icmp ne i8 %113, 0
  %inc158.2.i = zext i1 %tobool152.not.2.i to i8
  %thermalvalue_avg_count.1.2.i = add nuw nsw i8 %thermalvalue_avg_count.1.1.i, %inc158.2.i
  %arrayidx151.3.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 3
  %114 = ptrtoint ptr %arrayidx151.3.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx151.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool152.not.3.i = icmp ne i8 %115, 0
  %inc158.3.i = zext i1 %tobool152.not.3.i to i8
  %thermalvalue_avg_count.1.3.i = add nuw nsw i8 %thermalvalue_avg_count.1.2.i, %inc158.3.i
  %arrayidx151.4.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 4
  %116 = ptrtoint ptr %arrayidx151.4.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx151.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool152.not.4.i = icmp ne i8 %117, 0
  %inc158.4.i = zext i1 %tobool152.not.4.i to i8
  %thermalvalue_avg_count.1.4.i = add nuw nsw i8 %thermalvalue_avg_count.1.3.i, %inc158.4.i
  %arrayidx151.5.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 5
  %118 = ptrtoint ptr %arrayidx151.5.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx151.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool152.not.5.i = icmp ne i8 %119, 0
  %inc158.5.i = zext i1 %tobool152.not.5.i to i8
  %thermalvalue_avg_count.1.5.i = add nuw nsw i8 %thermalvalue_avg_count.1.4.i, %inc158.5.i
  %arrayidx151.6.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 6
  %120 = ptrtoint ptr %arrayidx151.6.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx151.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool152.not.6.i = icmp ne i8 %121, 0
  %inc158.6.i = zext i1 %tobool152.not.6.i to i8
  %thermalvalue_avg_count.1.6.i = add nuw nsw i8 %thermalvalue_avg_count.1.5.i, %inc158.6.i
  %arrayidx151.7.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 25, i32 7
  %122 = ptrtoint ptr %arrayidx151.7.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx151.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool152.not.7.i = icmp ne i8 %123, 0
  %inc158.7.i = zext i1 %tobool152.not.7.i to i8
  %thermalvalue_avg_count.1.7.i = add nuw nsw i8 %thermalvalue_avg_count.1.6.i, %inc158.7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %thermalvalue_avg_count.1.7.i)
  %tobool163.not.i = icmp eq i8 %thermalvalue_avg_count.1.7.i, 0
  br i1 %tobool163.not.i, label %old_index_done.i.if.end167.i_crit_edge, label %if.then164.i

old_index_done.i.if.end167.i_crit_edge:           ; preds = %old_index_done.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end167.i

if.then164.i:                                     ; preds = %old_index_done.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv157.i = zext i8 %109 to i16
  %conv157.1.i = zext i8 %111 to i16
  %thermalvalue_avg.1.1.i = add nuw nsw i16 %conv157.1.i, %conv157.i
  %conv157.2.i = zext i8 %113 to i16
  %thermalvalue_avg.1.2.i = add nuw nsw i16 %thermalvalue_avg.1.1.i, %conv157.2.i
  %conv157.3.i = zext i8 %115 to i16
  %thermalvalue_avg.1.3.i = add nuw nsw i16 %thermalvalue_avg.1.2.i, %conv157.3.i
  %conv157.4.i = zext i8 %117 to i16
  %thermalvalue_avg.1.4.i = add nuw nsw i16 %thermalvalue_avg.1.3.i, %conv157.4.i
  %conv157.5.i = zext i8 %119 to i16
  %thermalvalue_avg.1.5.i = add nuw nsw i16 %thermalvalue_avg.1.4.i, %conv157.5.i
  %conv157.6.i = zext i8 %121 to i16
  %thermalvalue_avg.1.6.i = add nuw nsw i16 %thermalvalue_avg.1.5.i, %conv157.6.i
  %conv157.7.i = zext i8 %123 to i16
  %thermalvalue_avg.1.7.i = add nuw nsw i16 %thermalvalue_avg.1.6.i, %conv157.7.i
  %div.rhs.trunc.i = zext i8 %thermalvalue_avg_count.1.7.i to i16
  %div1307.i = udiv i16 %thermalvalue_avg.1.7.i, %div.rhs.trunc.i
  %conv166.i = trunc i16 %div1307.i to i8
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.then164.i, %old_index_done.i.if.end167.i_crit_edge
  %thermalvalue.0.i = phi i8 [ %conv166.i, %if.then164.i ], [ %conv.i, %old_index_done.i.if.end167.i_crit_edge ]
  %reloadtxpowerindex168.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 62
  %124 = ptrtoint ptr %reloadtxpowerindex168.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %reloadtxpowerindex168.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool169.not.i = icmp eq i8 %125, 0
  br i1 %tobool169.not.i, label %if.else191.i, label %if.then170.i

if.then170.i:                                     ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %eeprom_thermalmeter.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %127)
  %cmp174.i = icmp ugt i8 %thermalvalue.0.i, %127
  %sub180.i = sub i8 %thermalvalue.0.i, %127
  %sub185.i = sub i8 %127, %thermalvalue.0.i
  %cond187.i = select i1 %cmp174.i, i8 %sub180.i, i8 %sub185.i
  %128 = ptrtoint ptr %reloadtxpowerindex168.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %reloadtxpowerindex168.i, align 1
  %done_txpower.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 28
  %129 = ptrtoint ptr %done_txpower.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %done_txpower.i, align 2
  br label %if.end237.i

if.else191.i:                                     ; preds = %if.end167.i
  %done_txpower193.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 28
  %130 = ptrtoint ptr %done_txpower193.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %done_txpower193.i, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool194.not.i = icmp eq i8 %131, 0
  br i1 %tobool194.not.i, label %if.else217.i, label %if.then195.i

if.then195.i:                                     ; preds = %if.else191.i
  call void @__sanitizer_cov_trace_pc() #7
  %132 = ptrtoint ptr %thermalvalue15.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %thermalvalue15.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %133)
  %cmp200.i = icmp ugt i8 %thermalvalue.0.i, %133
  %sub207.i = sub i8 %thermalvalue.0.i, %133
  %sub213.i = sub i8 %133, %thermalvalue.0.i
  %cond215.i = select i1 %cmp200.i, i8 %sub207.i, i8 %sub213.i
  br label %if.end237.i

if.else217.i:                                     ; preds = %if.else191.i
  call void @__sanitizer_cov_trace_pc() #7
  %134 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %eeprom_thermalmeter.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %135)
  %cmp221.i = icmp ugt i8 %thermalvalue.0.i, %135
  %sub227.i = sub i8 %thermalvalue.0.i, %135
  %sub232.i = sub i8 %135, %thermalvalue.0.i
  %cond234.i = select i1 %cmp221.i, i8 %sub227.i, i8 %sub232.i
  br label %if.end237.i

if.end237.i:                                      ; preds = %if.else217.i, %if.then195.i, %if.then170.i
  %delta.0.i = phi i8 [ %cond187.i, %if.then170.i ], [ %cond215.i, %if.then195.i ], [ %cond234.i, %if.else217.i ]
  %conv238.i = zext i8 %thermalvalue.0.i to i32
  %thermalvalue_lck240.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 22
  %136 = ptrtoint ptr %thermalvalue_lck240.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %thermalvalue_lck240.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %137)
  %cmp242.i = icmp ugt i8 %thermalvalue.0.i, %137
  %sub249.i = sub i8 %thermalvalue.0.i, %137
  %sub255.i = sub i8 %137, %thermalvalue.0.i
  %cond257.i = select i1 %cmp242.i, i8 %sub249.i, i8 %sub255.i
  %thermalvalue_iqk261.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 21
  %138 = ptrtoint ptr %thermalvalue_iqk261.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %thermalvalue_iqk261.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %139)
  %cmp263.i = icmp ugt i8 %thermalvalue.0.i, %139
  %sub270.i = sub i8 %thermalvalue.0.i, %139
  %sub276.i = sub i8 %139, %thermalvalue.0.i
  %cond278.i = select i1 %cmp263.i, i8 %sub270.i, i8 %sub276.i
  %thermalvalue_rxgain282.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 20
  %140 = ptrtoint ptr %thermalvalue_rxgain282.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %thermalvalue_rxgain282.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %141)
  %cmp284.i = icmp ugt i8 %thermalvalue.0.i, %141
  %sub291.i = sub i8 %thermalvalue.0.i, %141
  %sub297.i = sub i8 %141, %thermalvalue.0.i
  %cond299.i = select i1 %cmp284.i, i8 %sub291.i, i8 %sub297.i
  %142 = ptrtoint ptr %thermalvalue15.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %thermalvalue15.i, align 2
  %conv304.i = zext i8 %143 to i32
  %144 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %eeprom_thermalmeter.i, align 4
  %conv306.i = zext i8 %145 to i32
  %conv307.i = zext i8 %delta.0.i to i32
  %conv308.i = zext i8 %cond257.i to i32
  %conv309.i = zext i8 %cond278.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %conv238.i, i32 noundef %conv304.i, i32 noundef %conv306.i, i32 noundef %conv307.i, i32 noundef %conv308.i, i32 noundef %conv309.i) #5
  %delta_lck311.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 60
  %146 = ptrtoint ptr %delta_lck311.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %delta_lck311.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %cond257.i, i8 %147)
  %cmp313.i = icmp ule i8 %cond257.i, %147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %cmp318.not.i = icmp eq i8 %147, 0
  %or.cond.i = or i1 %cmp313.i, %cmp318.not.i
  br i1 %or.cond.i, label %if.end237.i.if.end323.i_crit_edge, label %if.then320.i

if.end237.i.if.end323.i_crit_edge:                ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end323.i

if.then320.i:                                     ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #7
  %148 = ptrtoint ptr %thermalvalue_lck240.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %thermalvalue.0.i, ptr %thermalvalue_lck240.i, align 1
  tail call void @rtl92d_phy_lc_calibrate(ptr noundef %hw) #5
  br label %if.end323.i

if.end323.i:                                      ; preds = %if.then320.i, %if.end237.i.if.end323.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %delta.0.i)
  %cmp325.i = icmp eq i8 %delta.0.i, 0
  br i1 %cmp325.i, label %if.end323.i.check_delta.i_crit_edge, label %lor.lhs.false.i

if.end323.i.check_delta.i_crit_edge:              ; preds = %if.end323.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_delta.i

lor.lhs.false.i:                                  ; preds = %if.end323.i
  %txpower_track_control.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 34
  %149 = ptrtoint ptr %txpower_track_control.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %txpower_track_control.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool328.not.i = icmp eq i8 %150, 0
  br i1 %tobool328.not.i, label %lor.lhs.false.i.check_delta.i_crit_edge, label %if.end330.i

lor.lhs.false.i.check_delta.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_delta.i

if.end330.i:                                      ; preds = %lor.lhs.false.i
  %done_txpower332.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 28
  %151 = ptrtoint ptr %done_txpower332.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %done_txpower332.i, align 2
  %152 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %eeprom_thermalmeter.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %153)
  %cmp336.i = icmp ugt i8 %thermalvalue.0.i, %153
  %sub342.i = sub i8 %thermalvalue.0.i, %153
  %sub347.i = sub i8 %153, %thermalvalue.0.i
  %cond349.i = select i1 %cmp336.i, i8 %sub342.i, i8 %sub347.i
  %current_bandtype351.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 53
  %154 = ptrtoint ptr %current_bandtype351.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %current_bandtype351.i, align 8
  %156 = zext i32 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values)
  switch i32 %155, label %if.end330.i.if.end417.i_crit_edge [
    i32 0, label %if.then354.i
    i32 1, label %if.then415.i
  ]

if.end330.i.if.end417.i_crit_edge:                ; preds = %if.end330.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end417.i

if.then354.i:                                     ; preds = %if.end330.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %cond349.i)
  %cmp356.i = icmp ugt i8 %cond349.i, 12
  br i1 %cmp356.i, label %if.then354.i.if.end367.i_crit_edge, label %if.else362.i

if.then354.i.if.end367.i_crit_edge:               ; preds = %if.then354.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end367.i

if.else362.i:                                     ; preds = %if.then354.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv355.i = zext i8 %cond349.i to i32
  %arrayidx366.i = getelementptr [5 x [13 x i8]], ptr @rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping, i32 0, i32 4, i32 %conv355.i
  %157 = ptrtoint ptr %arrayidx366.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx366.i, align 1
  br label %if.end367.i

if.end367.i:                                      ; preds = %if.else362.i, %if.then354.i.if.end367.i_crit_edge
  %index.0.i = phi i8 [ %158, %if.else362.i ], [ 10, %if.then354.i.if.end367.i_crit_edge ]
  %159 = ptrtoint ptr %thermalvalue15.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %thermalvalue15.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %160)
  %cmp372.i = icmp ugt i8 %thermalvalue.0.i, %160
  br i1 %cmp372.i, label %if.end367.i.for.body379.i_crit_edge, label %if.end367.i.for.body397.i_crit_edge

if.end367.i.for.body397.i_crit_edge:              ; preds = %if.end367.i
  br label %for.body397.i

if.end367.i.for.body379.i_crit_edge:              ; preds = %if.end367.i
  br label %for.body379.i

for.body379.i:                                    ; preds = %for.body379.i.for.body379.i_crit_edge, %if.end367.i.for.body379.i_crit_edge
  %i.61289.i = phi i32 [ %inc386.i, %for.body379.i.for.body379.i_crit_edge ], [ 0, %if.end367.i.for.body379.i_crit_edge ]
  %arrayidx381.i = getelementptr [2 x i8], ptr %ofdm_index.i, i32 0, i32 %i.61289.i
  %161 = ptrtoint ptr %arrayidx381.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx381.i, align 1
  %sub383.i = sub i8 %162, %cond349.i
  store i8 %sub383.i, ptr %arrayidx381.i, align 1
  %inc386.i = add nuw nsw i32 %i.61289.i, 1
  %exitcond1303.not.i = icmp eq i32 %inc386.i, %conv118.i
  br i1 %exitcond1303.not.i, label %for.end387.i, label %for.body379.i.for.body379.i_crit_edge

for.body379.i.for.body379.i_crit_edge:            ; preds = %for.body379.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body379.i

for.end387.i:                                     ; preds = %for.body379.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub390.i = sub i8 0, %cond349.i
  br label %if.end417.i

for.body397.i:                                    ; preds = %for.body397.i.for.body397.i_crit_edge, %if.end367.i.for.body397.i_crit_edge
  %i.71288.i = phi i32 [ %inc404.i, %for.body397.i.for.body397.i_crit_edge ], [ 0, %if.end367.i.for.body397.i_crit_edge ]
  %arrayidx399.i = getelementptr [2 x i8], ptr %ofdm_index.i, i32 0, i32 %i.71288.i
  %163 = ptrtoint ptr %arrayidx399.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx399.i, align 1
  %add401.i = add i8 %164, %index.0.i
  store i8 %add401.i, ptr %arrayidx399.i, align 1
  %inc404.i = add nuw nsw i32 %i.71288.i, 1
  %exitcond1301.not.i = icmp eq i32 %inc404.i, %conv118.i
  br i1 %exitcond1301.not.i, label %for.body397.i.if.end417.i_crit_edge, label %for.body397.i.for.body397.i_crit_edge

for.body397.i.for.body397.i_crit_edge:            ; preds = %for.body397.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body397.i

for.body397.i.if.end417.i_crit_edge:              ; preds = %for.body397.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end417.i

if.then415.i:                                     ; preds = %if.end330.i
  %macphymode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 52
  %interfaceindex.i.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 56
  %arrayidx.i.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 32, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %cond349.i)
  %cmp67.i.i = icmp ugt i8 %cond349.i, 12
  %conv66.i.i = zext i8 %cond349.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %thermalvalue.0.i)
  %cmp90.i.i = icmp ugt i8 %thermalvalue.0.i, 18
  %div1.i.i = lshr i8 %cond349.i, 1
  %rem.i.i = and i8 %cond349.i, 1
  %mul.neg.i.i = mul i8 %div1.i.i, -3
  %add98.neg.i.i = sub i8 %mul.neg.i.i, %rem.i.i
  %165 = ptrtoint ptr %macphymode.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %macphymode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp2.i.i = icmp ne i32 %166, 1
  %167 = ptrtoint ptr %interfaceindex.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %interfaceindex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %168)
  %cmp13.i.i = icmp eq i32 %168, 1
  %spec.select5.i.i = select i1 %cmp13.i.i, i32 2, i32 0
  %offset.0.i.i = select i1 %cmp13.i.i, i8 4, i8 0
  %169 = or i8 %offset.0.i.i, 2
  %cmp13.i.i.not = xor i1 %cmp13.i.i, true
  %brmerge = select i1 %cmp2.i.i, i1 true, i1 %cmp13.i.i.not
  %inc10.i.i = zext i1 %cmp336.i to i32
  %spec.select11.i.i = or i32 %spec.select5.i.i, %inc10.i.i
  %arrayidx77.i.i = getelementptr [13 x i8], ptr @rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping, i32 %spec.select11.i.i, i32 %conv66.i.i
  %arrayidx72.i.i = getelementptr [13 x i8], ptr @rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping, i32 %spec.select11.i.i, i32 12
  %inc.i1059.i = zext i1 %cmp336.i to i8
  br label %for.body.i1057.i

for.body.i1057.i:                                 ; preds = %for.inc.i1061.i.for.body.i1057.i_crit_edge, %if.then415.i
  %i.026.i.i = phi i32 [ 0, %if.then415.i ], [ %inc115.i.i, %for.inc.i1061.i.for.body.i1057.i_crit_edge ]
  %arrayidx7.i.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 32, i32 %i.026.i.i
  %storemerge.in.in.in.i.i = select i1 %brmerge, ptr %arrayidx7.i.i, ptr %arrayidx.i.i
  %170 = ptrtoint ptr %storemerge.in.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %storemerge.in.in.i.i = load i8, ptr %storemerge.in.in.in.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %storemerge.in.in.i.i)
  %storemerge.in.i.i = icmp ne i8 %storemerge.in.in.i.i, 0
  br i1 %storemerge.in.i.i, label %if.then52.i.i, label %if.else65.i.i

if.then52.i.i:                                    ; preds = %for.body.i1057.i
  %171 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %current_channel.i, align 1
  %173 = add i8 %172, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %173)
  %174 = icmp ult i8 %173, 66
  %spec.select6.i.i = select i1 %174, i8 %169, i8 %offset.0.i.i
  %spec.select.i.i = or i8 %spec.select6.i.i, %inc.i1059.i
  %idxprom.i.i = zext i8 %spec.select.i.i to i32
  br i1 %cmp67.i.i, label %if.then56.i.i, label %if.else59.i.i

if.then56.i.i:                                    ; preds = %if.then52.i.i
  %arrayidx58.i.i = getelementptr [13 x i8], ptr @rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping_internal_pa, i32 %idxprom.i.i, i32 12
  %175 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %index.016.i.i = load i8, ptr %arrayidx58.i.i, align 1
  br i1 %cmp336.i, label %if.then56.i.i.if.then85.i.i_crit_edge, label %if.then56.i.i.if.else108.i.i_crit_edge

if.then56.i.i.if.else108.i.i_crit_edge:           ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else108.i.i

if.then56.i.i.if.then85.i.i_crit_edge:            ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then85.i.i

if.else59.i.i:                                    ; preds = %if.then52.i.i
  %arrayidx63.i.i = getelementptr [13 x i8], ptr @rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping_internal_pa, i32 %idxprom.i.i, i32 %conv66.i.i
  %176 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %index.019.i.i = load i8, ptr %arrayidx63.i.i, align 1
  br i1 %cmp336.i, label %if.else59.i.i.if.then85.i.i_crit_edge, label %if.else59.i.i.if.else108.i.i_crit_edge

if.else59.i.i.if.else108.i.i_crit_edge:           ; preds = %if.else59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else108.i.i

if.else59.i.i.if.then85.i.i_crit_edge:            ; preds = %if.else59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then85.i.i

if.else65.i.i:                                    ; preds = %for.body.i1057.i
  br i1 %cmp67.i.i, label %if.then69.i.i, label %if.end79.i.i

if.then69.i.i:                                    ; preds = %if.else65.i.i
  %177 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %index.020.i.i = load i8, ptr %arrayidx72.i.i, align 1
  br i1 %cmp336.i, label %if.then69.i.i.if.else101.i.i_crit_edge, label %if.then69.i.i.if.else108.i.i_crit_edge

if.then69.i.i.if.else108.i.i_crit_edge:           ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else108.i.i

if.then69.i.i.if.else101.i.i_crit_edge:           ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else101.i.i

if.end79.i.i:                                     ; preds = %if.else65.i.i
  %178 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %index.0.i.i = load i8, ptr %arrayidx77.i.i, align 1
  br i1 %cmp336.i, label %if.end79.i.i.if.else101.i.i_crit_edge, label %if.end79.i.i.if.else108.i.i_crit_edge

if.end79.i.i.if.else108.i.i_crit_edge:            ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else108.i.i

if.end79.i.i.if.else101.i.i_crit_edge:            ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else101.i.i

if.then85.i.i:                                    ; preds = %if.else59.i.i.if.then85.i.i_crit_edge, %if.then56.i.i.if.then85.i.i_crit_edge
  %index.018.i.i = phi i8 [ %index.016.i.i, %if.then56.i.i.if.then85.i.i_crit_edge ], [ %index.019.i.i, %if.else59.i.i.if.then85.i.i_crit_edge ]
  br i1 %cmp90.i.i, label %if.then92.i.i, label %if.then85.i.i.if.else101.i.i_crit_edge

if.then85.i.i.if.else101.i.i_crit_edge:           ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else101.i.i

if.then92.i.i:                                    ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx94.i.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 37, i32 %i.026.i.i
  %179 = ptrtoint ptr %arrayidx94.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx94.i.i, align 1
  %sub.i.i = add i8 %add98.neg.i.i, %180
  %arrayidx100.i.i = getelementptr i8, ptr %ofdm_index.i, i32 %i.026.i.i
  %181 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %sub.i.i, ptr %arrayidx100.i.i, align 1
  br label %for.inc.i1061.i

if.else101.i.i:                                   ; preds = %if.then85.i.i.if.else101.i.i_crit_edge, %if.end79.i.i.if.else101.i.i_crit_edge, %if.then69.i.i.if.else101.i.i_crit_edge
  %index.01824.i.i = phi i8 [ %index.018.i.i, %if.then85.i.i.if.else101.i.i_crit_edge ], [ %index.020.i.i, %if.then69.i.i.if.else101.i.i_crit_edge ], [ %index.0.i.i, %if.end79.i.i.if.else101.i.i_crit_edge ]
  %arrayidx103.i.i = getelementptr i8, ptr %ofdm_index.i, i32 %i.026.i.i
  %182 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx103.i.i, align 1
  %sub105.i.i = sub i8 %183, %index.01824.i.i
  store i8 %sub105.i.i, ptr %arrayidx103.i.i, align 1
  br label %for.inc.i1061.i

if.else108.i.i:                                   ; preds = %if.end79.i.i.if.else108.i.i_crit_edge, %if.then69.i.i.if.else108.i.i_crit_edge, %if.else59.i.i.if.else108.i.i_crit_edge, %if.then56.i.i.if.else108.i.i_crit_edge
  %index.017.i.i = phi i8 [ %index.016.i.i, %if.then56.i.i.if.else108.i.i_crit_edge ], [ %index.0.i.i, %if.end79.i.i.if.else108.i.i_crit_edge ], [ %index.019.i.i, %if.else59.i.i.if.else108.i.i_crit_edge ], [ %index.020.i.i, %if.then69.i.i.if.else108.i.i_crit_edge ]
  %arrayidx110.i.i = getelementptr i8, ptr %ofdm_index.i, i32 %i.026.i.i
  %184 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx110.i.i, align 1
  %add112.i.i = add i8 %185, %index.017.i.i
  store i8 %add112.i.i, ptr %arrayidx110.i.i, align 1
  br label %for.inc.i1061.i

for.inc.i1061.i:                                  ; preds = %if.else108.i.i, %if.else101.i.i, %if.then92.i.i
  %inc115.i.i = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i1060.i = icmp eq i32 %inc115.i.i, %conv118.i
  br i1 %exitcond.not.i1060.i, label %if.end417.loopexit1276.i, label %for.inc.i1061.i.for.body.i1057.i_crit_edge

for.inc.i1061.i.for.body.i1057.i_crit_edge:       ; preds = %for.inc.i1061.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1057.i

if.end417.loopexit1276.i:                         ; preds = %for.inc.i1061.i
  call void @__sanitizer_cov_trace_pc() #7
  %storemerge.i.le.i = zext i1 %storemerge.in.i.i to i8
  br label %if.end417.i

if.end417.i:                                      ; preds = %if.end417.loopexit1276.i, %for.body397.i.if.end417.i_crit_edge, %for.end387.i, %if.end330.i.if.end417.i_crit_edge
  %internal_pa.0.i = phi i8 [ 0, %if.end330.i.if.end417.i_crit_edge ], [ 0, %for.end387.i ], [ %storemerge.i.le.i, %if.end417.loopexit1276.i ], [ 0, %for.body397.i.if.end417.i_crit_edge ]
  %cck_index.0.i = phi i8 [ 0, %if.end330.i.if.end417.i_crit_edge ], [ %sub390.i, %for.end387.i ], [ 0, %if.end417.loopexit1276.i ], [ %index.0.i, %for.body397.i.if.end417.i_crit_edge ]
  %186 = ptrtoint ptr %uglygep1297.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %uglygep1297.i, align 1
  %conv423.i = sext i8 %187 to i32
  br i1 %.not.i, label %if.then419.i, label %if.else431.i

if.then419.i:                                     ; preds = %if.end417.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx426.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 37, i32 1
  %188 = ptrtoint ptr %arrayidx426.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx426.i, align 1
  %conv427.i = sext i8 %189 to i32
  %cck_index429.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 40
  %190 = ptrtoint ptr %cck_index429.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %cck_index429.i, align 1
  %conv430.i = sext i8 %191 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %conv423.i, i32 noundef %conv427.i, i32 noundef %conv430.i) #5
  br label %if.end439.i

if.else431.i:                                     ; preds = %if.end417.i
  call void @__sanitizer_cov_trace_pc() #7
  %cck_index437.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 40
  %192 = ptrtoint ptr %cck_index437.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %cck_index437.i, align 1
  %conv438.i = sext i8 %193 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %conv423.i, i32 noundef %conv438.i) #5
  br label %if.end439.i

if.end439.i:                                      ; preds = %if.else431.i, %if.then419.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %internal_pa.0.i)
  %tobool452.not.i = icmp eq i8 %internal_pa.0.i, 0
  br label %for.body444.i

for.body444.i:                                    ; preds = %for.inc478.i.for.body444.i_crit_edge, %if.end439.i
  %i.81290.i = phi i32 [ 0, %if.end439.i ], [ %inc479.i, %for.inc478.i.for.body444.i_crit_edge ]
  %arrayidx445.i = getelementptr [2 x i8], ptr %ofdm_index.i, i32 0, i32 %i.81290.i
  %194 = ptrtoint ptr %arrayidx445.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx445.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %195)
  %cmp447.i = icmp ugt i8 %195, 42
  br i1 %cmp447.i, label %for.body444.i.for.inc478.sink.split.i_crit_edge, label %if.else451.i

for.body444.i.for.inc478.sink.split.i_crit_edge:  ; preds = %for.body444.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc478.sink.split.i

if.else451.i:                                     ; preds = %for.body444.i
  br i1 %tobool452.not.i, label %lor.lhs.false454.i, label %if.else451.i.if.then458.i_crit_edge

if.else451.i.if.then458.i_crit_edge:              ; preds = %if.else451.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then458.i

lor.lhs.false454.i:                               ; preds = %if.else451.i
  %196 = ptrtoint ptr %current_bandtype351.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %current_bandtype351.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp456.i = icmp eq i32 %197, 0
  br i1 %cmp456.i, label %lor.lhs.false454.i.if.then458.i_crit_edge, label %if.else467.i

lor.lhs.false454.i.if.then458.i_crit_edge:        ; preds = %lor.lhs.false454.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then458.i

if.then458.i:                                     ; preds = %lor.lhs.false454.i.if.then458.i_crit_edge, %if.else451.i.if.then458.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %195)
  %cmp462.i = icmp ult i8 %195, 3
  br i1 %cmp462.i, label %if.then458.i.for.inc478.sink.split.i_crit_edge, label %if.then458.i.for.inc478.i_crit_edge

if.then458.i.for.inc478.i_crit_edge:              ; preds = %if.then458.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc478.i

if.then458.i.for.inc478.sink.split.i_crit_edge:   ; preds = %if.then458.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc478.sink.split.i

if.else467.i:                                     ; preds = %lor.lhs.false454.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %195)
  %cmp471.i = icmp ult i8 %195, 6
  br i1 %cmp471.i, label %if.else467.i.for.inc478.sink.split.i_crit_edge, label %if.else467.i.for.inc478.i_crit_edge

if.else467.i.for.inc478.i_crit_edge:              ; preds = %if.else467.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc478.i

if.else467.i.for.inc478.sink.split.i_crit_edge:   ; preds = %if.else467.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc478.sink.split.i

for.inc478.sink.split.i:                          ; preds = %if.else467.i.for.inc478.sink.split.i_crit_edge, %if.then458.i.for.inc478.sink.split.i_crit_edge, %for.body444.i.for.inc478.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 42, %for.body444.i.for.inc478.sink.split.i_crit_edge ], [ 3, %if.then458.i.for.inc478.sink.split.i_crit_edge ], [ 6, %if.else467.i.for.inc478.sink.split.i_crit_edge ]
  %198 = ptrtoint ptr %arrayidx445.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %.sink.i, ptr %arrayidx445.i, align 1
  br label %for.inc478.i

for.inc478.i:                                     ; preds = %for.inc478.sink.split.i, %if.else467.i.for.inc478.i_crit_edge, %if.then458.i.for.inc478.i_crit_edge
  %inc479.i = add nuw nsw i32 %i.81290.i, 1
  %exitcond1305.not.i = icmp eq i32 %inc479.i, %conv118.i
  br i1 %exitcond1305.not.i, label %for.end480.i, label %for.inc478.i.for.body444.i_crit_edge

for.inc478.i.for.body444.i_crit_edge:             ; preds = %for.inc478.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body444.i

for.end480.i:                                     ; preds = %for.inc478.i
  %199 = ptrtoint ptr %current_bandtype351.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %current_bandtype351.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp482.i = icmp eq i32 %200, 0
  %201 = tail call i8 @llvm.smax.i8(i8 %cck_index.0.i, i8 0) #5
  %202 = tail call i8 @llvm.smin.i8(i8 %201, i8 32) #5
  %cck_index.1.i = select i1 %cmp482.i, i8 %202, i8 %cck_index.0.i
  %203 = ptrtoint ptr %ofdm_index.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %ofdm_index.i, align 1
  %conv500.i = zext i8 %204 to i32
  br i1 %.not.i, label %if.then498.i, label %if.else504.i

if.then498.i:                                     ; preds = %for.end480.i
  call void @__sanitizer_cov_trace_pc() #7
  %205 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %15, align 1
  %conv502.i = zext i8 %206 to i32
  %conv503.i = sext i8 %cck_index.1.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %conv500.i, i32 noundef %conv502.i, i32 noundef %conv503.i) #5
  br label %if.end508.i

if.else504.i:                                     ; preds = %for.end480.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv507.i = sext i8 %cck_index.1.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %conv500.i, i32 noundef %conv507.i) #5
  br label %if.end508.i

if.end508.i:                                      ; preds = %if.else504.i, %if.then498.i
  %arrayidx511.i = getelementptr [43 x i32], ptr @ofdmswing_table, i32 0, i32 %conv500.i
  %207 = ptrtoint ptr %arrayidx511.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx511.i, align 4
  %shr.i = lshr i32 %208, 22
  %idxprom513.i = zext i8 %call.i to i32
  %value.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 14, i32 35, i32 %idxprom513.i, i32 1
  %209 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %value.i, align 4
  %arrayidx522.i = getelementptr [8 x i32], ptr %value.i, i32 0, i32 1
  %211 = ptrtoint ptr %arrayidx522.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx522.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp523.not.i = icmp eq i32 %210, 0
  br i1 %cmp523.not.i, label %if.else551.i, label %if.then525.i

if.then525.i:                                     ; preds = %if.end508.i
  call void @__sanitizer_cov_trace_pc() #7
  %and526.i = and i32 %210, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and526.i)
  %cmp527.not.i = icmp eq i32 %and526.i, 0
  %or.i = or i32 %210, -1024
  %spec.select1042.i = select i1 %cmp527.not.i, i32 %210, i32 %or.i
  %mul.i = mul i32 %spec.select1042.i, %shr.i
  %213 = lshr i32 %mul.i, 8
  %and532.i = and i32 %213, 1023
  %and533.i = and i32 %212, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and533.i)
  %cmp534.not.i = icmp eq i32 %and533.i, 0
  %or537.i = or i32 %212, -1024
  %val_y.0.i = select i1 %cmp534.not.i, i32 %212, i32 %or537.i
  %mul539.i = mul i32 %val_y.0.i, %shr.i
  %214 = lshr i32 %mul539.i, 8
  %and541.i = and i32 %214, 1023
  %shl.i = and i32 %208, -4194304
  %and542.i = shl i32 %214, 16
  %shl543.i = and i32 %and542.i, 4128768
  %or544.i = or i32 %and532.i, %shl.i
  %or545.i = or i32 %or544.i, %shl543.i
  %215 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %priv, align 8
  %cfg.i1063.i = getelementptr inbounds %struct.rtl_priv, ptr %216, i32 0, i32 32
  %217 = ptrtoint ptr %cfg.i1063.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cfg.i1063.i, align 8
  %ops.i1064.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %218, i32 0, i32 4
  %219 = ptrtoint ptr %ops.i1064.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ops.i1064.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %220, i32 0, i32 46
  %221 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %222(ptr noundef %hw, i32 noundef 3200, i32 noundef -1, i32 noundef %or545.i) #5
  %and546.i = lshr i32 %mul539.i, 14
  %223 = and i32 %and546.i, 15
  %224 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %priv, align 8
  %cfg.i1066.i = getelementptr inbounds %struct.rtl_priv, ptr %225, i32 0, i32 32
  %226 = ptrtoint ptr %cfg.i1066.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cfg.i1066.i, align 8
  %ops.i1067.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %227, i32 0, i32 4
  %228 = ptrtoint ptr %ops.i1067.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ops.i1067.i, align 4
  %set_bbreg.i1068.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %229, i32 0, i32 46
  %230 = ptrtoint ptr %set_bbreg.i1068.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %set_bbreg.i1068.i, align 4
  tail call void %231(ptr noundef %hw, i32 noundef 3220, i32 noundef -268435456, i32 noundef %223) #5
  %shr5491040.i = lshr i32 %mul.i, 7
  %and550.i = and i32 %shr5491040.i, 1
  br label %if.end555.i

if.else551.i:                                     ; preds = %if.end508.i
  call void @__sanitizer_cov_trace_pc() #7
  %232 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %priv, align 8
  %cfg.i1074.i = getelementptr inbounds %struct.rtl_priv, ptr %233, i32 0, i32 32
  %234 = ptrtoint ptr %cfg.i1074.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cfg.i1074.i, align 8
  %ops.i1075.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %235, i32 0, i32 4
  %236 = ptrtoint ptr %ops.i1075.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ops.i1075.i, align 4
  %set_bbreg.i1076.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %237, i32 0, i32 46
  %238 = ptrtoint ptr %set_bbreg.i1076.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %set_bbreg.i1076.i, align 4
  tail call void %239(ptr noundef %hw, i32 noundef 3200, i32 noundef -1, i32 noundef %208) #5
  %240 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %priv, align 8
  %cfg.i1078.i = getelementptr inbounds %struct.rtl_priv, ptr %241, i32 0, i32 32
  %242 = ptrtoint ptr %cfg.i1078.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %cfg.i1078.i, align 8
  %ops.i1079.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %243, i32 0, i32 4
  %244 = ptrtoint ptr %ops.i1079.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ops.i1079.i, align 4
  %set_bbreg.i1080.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %245, i32 0, i32 46
  %246 = ptrtoint ptr %set_bbreg.i1080.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %set_bbreg.i1080.i, align 4
  tail call void %247(ptr noundef %hw, i32 noundef 3220, i32 noundef -268435456, i32 noundef 0) #5
  br label %if.end555.i

if.end555.i:                                      ; preds = %if.else551.i, %if.then525.i
  %.sink1311.i = phi i32 [ 0, %if.else551.i ], [ %and550.i, %if.then525.i ]
  %ele_a.0.i = phi i32 [ 0, %if.else551.i ], [ %and532.i, %if.then525.i ]
  %val_x.1.i = phi i32 [ 0, %if.else551.i ], [ %spec.select1042.i, %if.then525.i ]
  %val_y.1.i = phi i32 [ %212, %if.else551.i ], [ %val_y.0.i, %if.then525.i ]
  %ele_c.0.i = phi i32 [ 0, %if.else551.i ], [ %and541.i, %if.then525.i ]
  %248 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %priv, align 8
  %cfg.i1082.i = getelementptr inbounds %struct.rtl_priv, ptr %249, i32 0, i32 32
  %250 = ptrtoint ptr %cfg.i1082.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %cfg.i1082.i, align 8
  %ops.i1083.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %251, i32 0, i32 4
  %252 = ptrtoint ptr %ops.i1083.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ops.i1083.i, align 4
  %set_bbreg.i1084.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %253, i32 0, i32 46
  %254 = ptrtoint ptr %set_bbreg.i1084.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %set_bbreg.i1084.i, align 4
  tail call void %255(ptr noundef %hw, i32 noundef 3148, i32 noundef 16777216, i32 noundef %.sink1311.i) #5
  %interfaceindex.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 56
  %256 = ptrtoint ptr %interfaceindex.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %interfaceindex.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %257, i32 noundef %val_x.1.i, i32 noundef %val_y.1.i, i32 noundef %ele_a.0.i, i32 noundef %ele_c.0.i, i32 noundef %shr.i, i32 noundef %val_x.1.i, i32 noundef %val_y.1.i) #5
  %258 = ptrtoint ptr %current_bandtype351.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %current_bandtype351.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %cmp567.i = icmp eq i32 %259, 0
  br i1 %cmp567.i, label %if.then569.i, label %if.end555.i.if.end623.i_crit_edge

if.end555.i.if.end623.i_crit_edge:                ; preds = %if.end555.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623.i

if.then569.i:                                     ; preds = %if.end555.i
  %260 = tail call i8 @llvm.smin.i8(i8 %cck_index.1.i, i8 32) #5
  %261 = tail call i8 @llvm.smax.i8(i8 %260, i8 0) #5
  %cck_inch14.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 12
  %262 = ptrtoint ptr %cck_inch14.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %cck_inch14.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool571.not.i = icmp eq i8 %263, 0
  %idxprom5731273.i = zext i8 %261 to i32
  br i1 %tobool571.not.i, label %if.then572.i, label %if.else597.i

if.then572.i:                                     ; preds = %if.then569.i
  %arrayidx574.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom5731273.i
  %264 = ptrtoint ptr %arrayidx574.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx574.i, align 1
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 5
  %266 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %267(ptr noundef %13, i32 noundef 2594, i8 noundef zeroext %265) #5
  %cfg.i1085.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 32
  %268 = ptrtoint ptr %cfg.i1085.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cfg.i1085.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %write_readback.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool.not.i1086.i = icmp eq i8 %271, 0
  br i1 %tobool.not.i1086.i, label %if.then572.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then572.i.rtl_write_byte.exit.i_crit_edge:     ; preds = %if.then572.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then572.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %272 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i1087.i = tail call zeroext i8 %273(ptr noundef %13, i32 noundef 2594) #5
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then572.i.rtl_write_byte.exit.i_crit_edge
  %arrayidx578.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom5731273.i, i32 1
  %274 = ptrtoint ptr %arrayidx578.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx578.i, align 1
  %276 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %277(ptr noundef %13, i32 noundef 2595, i8 noundef zeroext %275) #5
  %278 = ptrtoint ptr %cfg.i1085.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %cfg.i1085.i, align 8
  %write_readback.i1091.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %write_readback.i1091.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %write_readback.i1091.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool.not.i1092.i = icmp eq i8 %281, 0
  br i1 %tobool.not.i1092.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit1097.i_crit_edge, label %if.then.i1095.i

rtl_write_byte.exit.i.rtl_write_byte.exit1097.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1097.i

if.then.i1095.i:                                  ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1093.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %282 = ptrtoint ptr %read8_sync.i1093.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %read8_sync.i1093.i, align 4
  %call.i1094.i = tail call zeroext i8 %283(ptr noundef %13, i32 noundef 2595) #5
  br label %rtl_write_byte.exit1097.i

rtl_write_byte.exit1097.i:                        ; preds = %if.then.i1095.i, %rtl_write_byte.exit.i.rtl_write_byte.exit1097.i_crit_edge
  %arrayidx581.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom5731273.i, i32 2
  %284 = ptrtoint ptr %arrayidx581.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx581.i, align 1
  %286 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %287(ptr noundef %13, i32 noundef 2596, i8 noundef zeroext %285) #5
  %288 = ptrtoint ptr %cfg.i1085.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %cfg.i1085.i, align 8
  %write_readback.i1100.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %write_readback.i1100.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %write_readback.i1100.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool.not.i1101.i = icmp eq i8 %291, 0
  br i1 %tobool.not.i1101.i, label %rtl_write_byte.exit1097.i.rtl_write_byte.exit1106.i_crit_edge, label %if.then.i1104.i

rtl_write_byte.exit1097.i.rtl_write_byte.exit1106.i_crit_edge: ; preds = %rtl_write_byte.exit1097.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1106.i

if.then.i1104.i:                                  ; preds = %rtl_write_byte.exit1097.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1102.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %292 = ptrtoint ptr %read8_sync.i1102.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %read8_sync.i1102.i, align 4
  %call.i1103.i = tail call zeroext i8 %293(ptr noundef %13, i32 noundef 2596) #5
  br label %rtl_write_byte.exit1106.i

rtl_write_byte.exit1106.i:                        ; preds = %if.then.i1104.i, %rtl_write_byte.exit1097.i.rtl_write_byte.exit1106.i_crit_edge
  %arrayidx584.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom5731273.i, i32 3
  %294 = ptrtoint ptr %arrayidx584.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx584.i, align 1
  %296 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %297(ptr noundef %13, i32 noundef 2597, i8 noundef zeroext %295) #5
  %298 = ptrtoint ptr %cfg.i1085.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %cfg.i1085.i, align 8
  %write_readback.i1109.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %299, i32 0, i32 1
  %300 = ptrtoint ptr %write_readback.i1109.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %write_readback.i1109.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %301)
  %tobool.not.i1110.i = icmp eq i8 %301, 0
  br i1 %tobool.not.i1110.i, label %rtl_write_byte.exit1106.i.rtl_write_byte.exit1115.i_crit_edge, label %if.then.i1113.i

rtl_write_byte.exit1106.i.rtl_write_byte.exit1115.i_crit_edge: ; preds = %rtl_write_byte.exit1106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1115.i

if.then.i1113.i:                                  ; preds = %rtl_write_byte.exit1106.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1111.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %302 = ptrtoint ptr %read8_sync.i1111.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %read8_sync.i1111.i, align 4
  %call.i1112.i = tail call zeroext i8 %303(ptr noundef %13, i32 noundef 2597) #5
  br label %rtl_write_byte.exit1115.i

rtl_write_byte.exit1115.i:                        ; preds = %if.then.i1113.i, %rtl_write_byte.exit1106.i.rtl_write_byte.exit1115.i_crit_edge
  %arrayidx587.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom5731273.i, i32 4
  %304 = ptrtoint ptr %arrayidx587.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx587.i, align 1
  %306 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %307(ptr noundef %13, i32 noundef 2598, i8 noundef zeroext %305) #5
  %308 = ptrtoint ptr %cfg.i1085.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %cfg.i1085.i, align 8
  %write_readback.i1118.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %309, i32 0, i32 1
  %310 = ptrtoint ptr %write_readback.i1118.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %write_readback.i1118.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool.not.i1119.i = icmp eq i8 %311, 0
  br i1 %tobool.not.i1119.i, label %rtl_write_byte.exit1115.i.rtl_write_byte.exit1124.i_crit_edge, label %if.then.i1122.i

rtl_write_byte.exit1115.i.rtl_write_byte.exit1124.i_crit_edge: ; preds = %rtl_write_byte.exit1115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1124.i

if.then.i1122.i:                                  ; preds = %rtl_write_byte.exit1115.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1120.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %312 = ptrtoint ptr %read8_sync.i1120.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %read8_sync.i1120.i, align 4
  %call.i1121.i = tail call zeroext i8 %313(ptr noundef %13, i32 noundef 2598) #5
  br label %rtl_write_byte.exit1124.i

rtl_write_byte.exit1124.i:                        ; preds = %if.then.i1122.i, %rtl_write_byte.exit1115.i.rtl_write_byte.exit1124.i_crit_edge
  %arrayidx590.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom5731273.i, i32 5
  %314 = ptrtoint ptr %arrayidx590.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx590.i, align 1
  %316 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %317(ptr noundef %13, i32 noundef 2599, i8 noundef zeroext %315) #5
  %318 = ptrtoint ptr %cfg.i1085.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %cfg.i1085.i, align 8
  %write_readback.i1127.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %319, i32 0, i32 1
  %320 = ptrtoint ptr %write_readback.i1127.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %write_readback.i1127.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool.not.i1128.i = icmp eq i8 %321, 0
  br i1 %tobool.not.i1128.i, label %rtl_write_byte.exit1124.i.rtl_write_byte.exit1133.i_crit_edge, label %if.then.i1131.i

rtl_write_byte.exit1124.i.rtl_write_byte.exit1133.i_crit_edge: ; preds = %rtl_write_byte.exit1124.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1133.i

if.then.i1131.i:                                  ; preds = %rtl_write_byte.exit1124.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1129.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %322 = ptrtoint ptr %read8_sync.i1129.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %read8_sync.i1129.i, align 4
  %call.i1130.i = tail call zeroext i8 %323(ptr noundef %13, i32 noundef 2599) #5
  br label %rtl_write_byte.exit1133.i

rtl_write_byte.exit1133.i:                        ; preds = %if.then.i1131.i, %rtl_write_byte.exit1124.i.rtl_write_byte.exit1133.i_crit_edge
  %arrayidx593.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom5731273.i, i32 6
  %324 = ptrtoint ptr %arrayidx593.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx593.i, align 1
  %326 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %327(ptr noundef %13, i32 noundef 2600, i8 noundef zeroext %325) #5
  %328 = ptrtoint ptr %cfg.i1085.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %cfg.i1085.i, align 8
  %write_readback.i1136.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %329, i32 0, i32 1
  %330 = ptrtoint ptr %write_readback.i1136.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %write_readback.i1136.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool.not.i1137.i = icmp eq i8 %331, 0
  br i1 %tobool.not.i1137.i, label %rtl_write_byte.exit1133.i.rtl_write_byte.exit1142.i_crit_edge, label %if.then.i1140.i

rtl_write_byte.exit1133.i.rtl_write_byte.exit1142.i_crit_edge: ; preds = %rtl_write_byte.exit1133.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1142.i

if.then.i1140.i:                                  ; preds = %rtl_write_byte.exit1133.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1138.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %332 = ptrtoint ptr %read8_sync.i1138.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %read8_sync.i1138.i, align 4
  %call.i1139.i = tail call zeroext i8 %333(ptr noundef %13, i32 noundef 2600) #5
  br label %rtl_write_byte.exit1142.i

rtl_write_byte.exit1142.i:                        ; preds = %if.then.i1140.i, %rtl_write_byte.exit1133.i.rtl_write_byte.exit1142.i_crit_edge
  %arrayidx596.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch1ch13, i32 0, i32 %idxprom5731273.i, i32 7
  %334 = ptrtoint ptr %arrayidx596.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx596.i, align 1
  %336 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %337(ptr noundef %13, i32 noundef 2601, i8 noundef zeroext %335) #5
  %338 = ptrtoint ptr %cfg.i1085.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %cfg.i1085.i, align 8
  %write_readback.i1145.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %339, i32 0, i32 1
  %340 = ptrtoint ptr %write_readback.i1145.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %write_readback.i1145.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool.not.i1146.i = icmp eq i8 %341, 0
  br i1 %tobool.not.i1146.i, label %rtl_write_byte.exit1142.i.if.end623.i_crit_edge, label %rtl_write_byte.exit1142.i.if.end623.sink.split.i_crit_edge

rtl_write_byte.exit1142.i.if.end623.sink.split.i_crit_edge: ; preds = %rtl_write_byte.exit1142.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623.sink.split.i

rtl_write_byte.exit1142.i.if.end623.i_crit_edge:  ; preds = %rtl_write_byte.exit1142.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623.i

if.else597.i:                                     ; preds = %if.then569.i
  %arrayidx599.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom5731273.i
  %342 = ptrtoint ptr %arrayidx599.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx599.i, align 1
  %write8_async.i1152.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 5
  %344 = ptrtoint ptr %write8_async.i1152.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %write8_async.i1152.i, align 4
  tail call void %345(ptr noundef %13, i32 noundef 2594, i8 noundef zeroext %343) #5
  %cfg.i1153.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 32
  %346 = ptrtoint ptr %cfg.i1153.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %cfg.i1153.i, align 8
  %write_readback.i1154.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %347, i32 0, i32 1
  %348 = ptrtoint ptr %write_readback.i1154.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %write_readback.i1154.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %349)
  %tobool.not.i1155.i = icmp eq i8 %349, 0
  br i1 %tobool.not.i1155.i, label %if.else597.i.rtl_write_byte.exit1160.i_crit_edge, label %if.then.i1158.i

if.else597.i.rtl_write_byte.exit1160.i_crit_edge: ; preds = %if.else597.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1160.i

if.then.i1158.i:                                  ; preds = %if.else597.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1156.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %350 = ptrtoint ptr %read8_sync.i1156.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %read8_sync.i1156.i, align 4
  %call.i1157.i = tail call zeroext i8 %351(ptr noundef %13, i32 noundef 2594) #5
  br label %rtl_write_byte.exit1160.i

rtl_write_byte.exit1160.i:                        ; preds = %if.then.i1158.i, %if.else597.i.rtl_write_byte.exit1160.i_crit_edge
  %arrayidx603.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom5731273.i, i32 1
  %352 = ptrtoint ptr %arrayidx603.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx603.i, align 1
  %354 = ptrtoint ptr %write8_async.i1152.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %write8_async.i1152.i, align 4
  tail call void %355(ptr noundef %13, i32 noundef 2595, i8 noundef zeroext %353) #5
  %356 = ptrtoint ptr %cfg.i1153.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %cfg.i1153.i, align 8
  %write_readback.i1163.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %357, i32 0, i32 1
  %358 = ptrtoint ptr %write_readback.i1163.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %write_readback.i1163.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool.not.i1164.i = icmp eq i8 %359, 0
  br i1 %tobool.not.i1164.i, label %rtl_write_byte.exit1160.i.rtl_write_byte.exit1169.i_crit_edge, label %if.then.i1167.i

rtl_write_byte.exit1160.i.rtl_write_byte.exit1169.i_crit_edge: ; preds = %rtl_write_byte.exit1160.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1169.i

if.then.i1167.i:                                  ; preds = %rtl_write_byte.exit1160.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1165.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %360 = ptrtoint ptr %read8_sync.i1165.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %read8_sync.i1165.i, align 4
  %call.i1166.i = tail call zeroext i8 %361(ptr noundef %13, i32 noundef 2595) #5
  br label %rtl_write_byte.exit1169.i

rtl_write_byte.exit1169.i:                        ; preds = %if.then.i1167.i, %rtl_write_byte.exit1160.i.rtl_write_byte.exit1169.i_crit_edge
  %arrayidx606.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom5731273.i, i32 2
  %362 = ptrtoint ptr %arrayidx606.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx606.i, align 1
  %364 = ptrtoint ptr %write8_async.i1152.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %write8_async.i1152.i, align 4
  tail call void %365(ptr noundef %13, i32 noundef 2596, i8 noundef zeroext %363) #5
  %366 = ptrtoint ptr %cfg.i1153.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %cfg.i1153.i, align 8
  %write_readback.i1172.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %write_readback.i1172.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %write_readback.i1172.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %369)
  %tobool.not.i1173.i = icmp eq i8 %369, 0
  br i1 %tobool.not.i1173.i, label %rtl_write_byte.exit1169.i.rtl_write_byte.exit1178.i_crit_edge, label %if.then.i1176.i

rtl_write_byte.exit1169.i.rtl_write_byte.exit1178.i_crit_edge: ; preds = %rtl_write_byte.exit1169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1178.i

if.then.i1176.i:                                  ; preds = %rtl_write_byte.exit1169.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1174.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %370 = ptrtoint ptr %read8_sync.i1174.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %read8_sync.i1174.i, align 4
  %call.i1175.i = tail call zeroext i8 %371(ptr noundef %13, i32 noundef 2596) #5
  br label %rtl_write_byte.exit1178.i

rtl_write_byte.exit1178.i:                        ; preds = %if.then.i1176.i, %rtl_write_byte.exit1169.i.rtl_write_byte.exit1178.i_crit_edge
  %arrayidx609.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom5731273.i, i32 3
  %372 = ptrtoint ptr %arrayidx609.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx609.i, align 1
  %374 = ptrtoint ptr %write8_async.i1152.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %write8_async.i1152.i, align 4
  tail call void %375(ptr noundef %13, i32 noundef 2597, i8 noundef zeroext %373) #5
  %376 = ptrtoint ptr %cfg.i1153.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %cfg.i1153.i, align 8
  %write_readback.i1181.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %377, i32 0, i32 1
  %378 = ptrtoint ptr %write_readback.i1181.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %write_readback.i1181.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool.not.i1182.i = icmp eq i8 %379, 0
  br i1 %tobool.not.i1182.i, label %rtl_write_byte.exit1178.i.rtl_write_byte.exit1187.i_crit_edge, label %if.then.i1185.i

rtl_write_byte.exit1178.i.rtl_write_byte.exit1187.i_crit_edge: ; preds = %rtl_write_byte.exit1178.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1187.i

if.then.i1185.i:                                  ; preds = %rtl_write_byte.exit1178.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1183.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %380 = ptrtoint ptr %read8_sync.i1183.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %read8_sync.i1183.i, align 4
  %call.i1184.i = tail call zeroext i8 %381(ptr noundef %13, i32 noundef 2597) #5
  br label %rtl_write_byte.exit1187.i

rtl_write_byte.exit1187.i:                        ; preds = %if.then.i1185.i, %rtl_write_byte.exit1178.i.rtl_write_byte.exit1187.i_crit_edge
  %arrayidx612.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom5731273.i, i32 4
  %382 = ptrtoint ptr %arrayidx612.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx612.i, align 1
  %384 = ptrtoint ptr %write8_async.i1152.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %write8_async.i1152.i, align 4
  tail call void %385(ptr noundef %13, i32 noundef 2598, i8 noundef zeroext %383) #5
  %386 = ptrtoint ptr %cfg.i1153.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %cfg.i1153.i, align 8
  %write_readback.i1190.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %387, i32 0, i32 1
  %388 = ptrtoint ptr %write_readback.i1190.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %write_readback.i1190.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %389)
  %tobool.not.i1191.i = icmp eq i8 %389, 0
  br i1 %tobool.not.i1191.i, label %rtl_write_byte.exit1187.i.rtl_write_byte.exit1196.i_crit_edge, label %if.then.i1194.i

rtl_write_byte.exit1187.i.rtl_write_byte.exit1196.i_crit_edge: ; preds = %rtl_write_byte.exit1187.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1196.i

if.then.i1194.i:                                  ; preds = %rtl_write_byte.exit1187.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1192.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %390 = ptrtoint ptr %read8_sync.i1192.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %read8_sync.i1192.i, align 4
  %call.i1193.i = tail call zeroext i8 %391(ptr noundef %13, i32 noundef 2598) #5
  br label %rtl_write_byte.exit1196.i

rtl_write_byte.exit1196.i:                        ; preds = %if.then.i1194.i, %rtl_write_byte.exit1187.i.rtl_write_byte.exit1196.i_crit_edge
  %arrayidx615.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom5731273.i, i32 5
  %392 = ptrtoint ptr %arrayidx615.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %arrayidx615.i, align 1
  %394 = ptrtoint ptr %write8_async.i1152.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %write8_async.i1152.i, align 4
  tail call void %395(ptr noundef %13, i32 noundef 2599, i8 noundef zeroext %393) #5
  %396 = ptrtoint ptr %cfg.i1153.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %cfg.i1153.i, align 8
  %write_readback.i1199.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %397, i32 0, i32 1
  %398 = ptrtoint ptr %write_readback.i1199.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %write_readback.i1199.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %399)
  %tobool.not.i1200.i = icmp eq i8 %399, 0
  br i1 %tobool.not.i1200.i, label %rtl_write_byte.exit1196.i.rtl_write_byte.exit1205.i_crit_edge, label %if.then.i1203.i

rtl_write_byte.exit1196.i.rtl_write_byte.exit1205.i_crit_edge: ; preds = %rtl_write_byte.exit1196.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1205.i

if.then.i1203.i:                                  ; preds = %rtl_write_byte.exit1196.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1201.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %400 = ptrtoint ptr %read8_sync.i1201.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %read8_sync.i1201.i, align 4
  %call.i1202.i = tail call zeroext i8 %401(ptr noundef %13, i32 noundef 2599) #5
  br label %rtl_write_byte.exit1205.i

rtl_write_byte.exit1205.i:                        ; preds = %if.then.i1203.i, %rtl_write_byte.exit1196.i.rtl_write_byte.exit1205.i_crit_edge
  %arrayidx618.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom5731273.i, i32 6
  %402 = ptrtoint ptr %arrayidx618.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %arrayidx618.i, align 1
  %404 = ptrtoint ptr %write8_async.i1152.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %write8_async.i1152.i, align 4
  tail call void %405(ptr noundef %13, i32 noundef 2600, i8 noundef zeroext %403) #5
  %406 = ptrtoint ptr %cfg.i1153.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %cfg.i1153.i, align 8
  %write_readback.i1208.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %407, i32 0, i32 1
  %408 = ptrtoint ptr %write_readback.i1208.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %write_readback.i1208.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %409)
  %tobool.not.i1209.i = icmp eq i8 %409, 0
  br i1 %tobool.not.i1209.i, label %rtl_write_byte.exit1205.i.rtl_write_byte.exit1214.i_crit_edge, label %if.then.i1212.i

rtl_write_byte.exit1205.i.rtl_write_byte.exit1214.i_crit_edge: ; preds = %rtl_write_byte.exit1205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit1214.i

if.then.i1212.i:                                  ; preds = %rtl_write_byte.exit1205.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i1210.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %410 = ptrtoint ptr %read8_sync.i1210.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %read8_sync.i1210.i, align 4
  %call.i1211.i = tail call zeroext i8 %411(ptr noundef %13, i32 noundef 2600) #5
  br label %rtl_write_byte.exit1214.i

rtl_write_byte.exit1214.i:                        ; preds = %if.then.i1212.i, %rtl_write_byte.exit1205.i.rtl_write_byte.exit1214.i_crit_edge
  %arrayidx621.i = getelementptr [33 x [8 x i8]], ptr @cckswing_table_ch14, i32 0, i32 %idxprom5731273.i, i32 7
  %412 = ptrtoint ptr %arrayidx621.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %arrayidx621.i, align 1
  %414 = ptrtoint ptr %write8_async.i1152.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %write8_async.i1152.i, align 4
  tail call void %415(ptr noundef %13, i32 noundef 2601, i8 noundef zeroext %413) #5
  %416 = ptrtoint ptr %cfg.i1153.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %cfg.i1153.i, align 8
  %write_readback.i1217.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %417, i32 0, i32 1
  %418 = ptrtoint ptr %write_readback.i1217.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %write_readback.i1217.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %419)
  %tobool.not.i1218.i = icmp eq i8 %419, 0
  br i1 %tobool.not.i1218.i, label %rtl_write_byte.exit1214.i.if.end623.i_crit_edge, label %rtl_write_byte.exit1214.i.if.end623.sink.split.i_crit_edge

rtl_write_byte.exit1214.i.if.end623.sink.split.i_crit_edge: ; preds = %rtl_write_byte.exit1214.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623.sink.split.i

rtl_write_byte.exit1214.i.if.end623.i_crit_edge:  ; preds = %rtl_write_byte.exit1214.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end623.i

if.end623.sink.split.i:                           ; preds = %rtl_write_byte.exit1214.i.if.end623.sink.split.i_crit_edge, %rtl_write_byte.exit1142.i.if.end623.sink.split.i_crit_edge
  %read8_sync.i1219.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %420 = ptrtoint ptr %read8_sync.i1219.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %read8_sync.i1219.i, align 4
  %call.i1220.i = tail call zeroext i8 %421(ptr noundef %13, i32 noundef 2601) #5
  br label %if.end623.i

if.end623.i:                                      ; preds = %if.end623.sink.split.i, %rtl_write_byte.exit1214.i.if.end623.i_crit_edge, %rtl_write_byte.exit1142.i.if.end623.i_crit_edge, %if.end555.i.if.end623.i_crit_edge
  br i1 %.not.i, label %if.then625.i, label %if.end623.i.if.end679.i_crit_edge

if.end623.i.if.end679.i_crit_edge:                ; preds = %if.end623.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end679.i

if.then625.i:                                     ; preds = %if.end623.i
  %422 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %15, align 1
  %idxprom627.i = zext i8 %423 to i32
  %arrayidx628.i = getelementptr [43 x i32], ptr @ofdmswing_table, i32 0, i32 %idxprom627.i
  %424 = ptrtoint ptr %arrayidx628.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx628.i, align 4
  %shr630.i = lshr i32 %425, 22
  %arrayidx636.i = getelementptr [8 x i32], ptr %value.i, i32 0, i32 4
  %426 = ptrtoint ptr %arrayidx636.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx636.i, align 4
  %arrayidx642.i = getelementptr [8 x i32], ptr %value.i, i32 0, i32 5
  %428 = ptrtoint ptr %arrayidx642.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %arrayidx642.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %427)
  %cmp643.not.i = icmp eq i32 %427, 0
  br i1 %cmp643.not.i, label %if.else674.i, label %if.then645.i

if.then645.i:                                     ; preds = %if.then625.i
  call void @__sanitizer_cov_trace_pc() #7
  %and646.i = and i32 %427, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and646.i)
  %cmp647.not.i = icmp eq i32 %and646.i, 0
  %or650.i = or i32 %427, -1024
  %spec.select1044.i = select i1 %cmp647.not.i, i32 %427, i32 %or650.i
  %mul652.i = mul i32 %spec.select1044.i, %shr630.i
  %430 = lshr i32 %mul652.i, 8
  %and654.i = and i32 %430, 1023
  %and655.i = and i32 %429, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and655.i)
  %cmp656.not.i = icmp eq i32 %and655.i, 0
  %or659.i = or i32 %429, -1024
  %val_y.2.i = select i1 %cmp656.not.i, i32 %429, i32 %or659.i
  %mul661.i = mul i32 %val_y.2.i, %shr630.i
  %431 = lshr i32 %mul661.i, 8
  %and663.i = and i32 %431, 1023
  %shl664.i = and i32 %425, -4194304
  %and665.i = shl i32 %431, 16
  %shl666.i = and i32 %and665.i, 4128768
  %or667.i = or i32 %and654.i, %shl664.i
  %or668.i = or i32 %or667.i, %shl666.i
  %432 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %priv, align 8
  %cfg.i1225.i = getelementptr inbounds %struct.rtl_priv, ptr %433, i32 0, i32 32
  %434 = ptrtoint ptr %cfg.i1225.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %cfg.i1225.i, align 8
  %ops.i1226.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %435, i32 0, i32 4
  %436 = ptrtoint ptr %ops.i1226.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %ops.i1226.i, align 4
  %set_bbreg.i1227.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %437, i32 0, i32 46
  %438 = ptrtoint ptr %set_bbreg.i1227.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %set_bbreg.i1227.i, align 4
  tail call void %439(ptr noundef %hw, i32 noundef 3208, i32 noundef -1, i32 noundef %or668.i) #5
  %and669.i = lshr i32 %mul661.i, 14
  %440 = and i32 %and669.i, 15
  %441 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %priv, align 8
  %cfg.i1229.i = getelementptr inbounds %struct.rtl_priv, ptr %442, i32 0, i32 32
  %443 = ptrtoint ptr %cfg.i1229.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %cfg.i1229.i, align 8
  %ops.i1230.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %444, i32 0, i32 4
  %445 = ptrtoint ptr %ops.i1230.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %ops.i1230.i, align 4
  %set_bbreg.i1231.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %446, i32 0, i32 46
  %447 = ptrtoint ptr %set_bbreg.i1231.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %set_bbreg.i1231.i, align 4
  tail call void %448(ptr noundef %hw, i32 noundef 3228, i32 noundef -268435456, i32 noundef %440) #5
  %shr6721039.i = lshr i32 %mul652.i, 7
  %and673.i = and i32 %shr6721039.i, 1
  br label %if.end678.i

if.else674.i:                                     ; preds = %if.then625.i
  call void @__sanitizer_cov_trace_pc() #7
  %449 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %priv, align 8
  %cfg.i1237.i = getelementptr inbounds %struct.rtl_priv, ptr %450, i32 0, i32 32
  %451 = ptrtoint ptr %cfg.i1237.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %cfg.i1237.i, align 8
  %ops.i1238.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %452, i32 0, i32 4
  %453 = ptrtoint ptr %ops.i1238.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %ops.i1238.i, align 4
  %set_bbreg.i1239.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %454, i32 0, i32 46
  %455 = ptrtoint ptr %set_bbreg.i1239.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %set_bbreg.i1239.i, align 4
  tail call void %456(ptr noundef %hw, i32 noundef 3208, i32 noundef -1, i32 noundef %425) #5
  %457 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %priv, align 8
  %cfg.i1241.i = getelementptr inbounds %struct.rtl_priv, ptr %458, i32 0, i32 32
  %459 = ptrtoint ptr %cfg.i1241.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %cfg.i1241.i, align 8
  %ops.i1242.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %460, i32 0, i32 4
  %461 = ptrtoint ptr %ops.i1242.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %ops.i1242.i, align 4
  %set_bbreg.i1243.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %462, i32 0, i32 46
  %463 = ptrtoint ptr %set_bbreg.i1243.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %set_bbreg.i1243.i, align 4
  tail call void %464(ptr noundef %hw, i32 noundef 3228, i32 noundef -268435456, i32 noundef 0) #5
  br label %if.end678.i

if.end678.i:                                      ; preds = %if.else674.i, %if.then645.i
  %.sink1317.i = phi i32 [ 0, %if.else674.i ], [ %and673.i, %if.then645.i ]
  %ele_a.1.i = phi i32 [ %ele_a.0.i, %if.else674.i ], [ %and654.i, %if.then645.i ]
  %val_x.3.i = phi i32 [ 0, %if.else674.i ], [ %spec.select1044.i, %if.then645.i ]
  %val_y.3.i = phi i32 [ %429, %if.else674.i ], [ %val_y.2.i, %if.then645.i ]
  %ele_c.1.i = phi i32 [ %ele_c.0.i, %if.else674.i ], [ %and663.i, %if.then645.i ]
  %465 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %priv, align 8
  %cfg.i1245.i = getelementptr inbounds %struct.rtl_priv, ptr %466, i32 0, i32 32
  %467 = ptrtoint ptr %cfg.i1245.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %cfg.i1245.i, align 8
  %ops.i1246.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %468, i32 0, i32 4
  %469 = ptrtoint ptr %ops.i1246.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %ops.i1246.i, align 4
  %set_bbreg.i1247.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %470, i32 0, i32 46
  %471 = ptrtoint ptr %set_bbreg.i1247.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %set_bbreg.i1247.i, align 4
  tail call void %472(ptr noundef %hw, i32 noundef 3148, i32 noundef 268435456, i32 noundef %.sink1317.i) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %val_x.3.i, i32 noundef %val_y.3.i, i32 noundef %ele_a.1.i, i32 noundef %ele_c.1.i, i32 noundef %shr630.i, i32 noundef %val_x.3.i, i32 noundef %val_y.3.i) #5
  br label %if.end679.i

if.end679.i:                                      ; preds = %if.end678.i, %if.end623.i.if.end679.i_crit_edge
  %473 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %priv, align 8
  %cfg.i1249.i = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 0, i32 32
  %475 = ptrtoint ptr %cfg.i1249.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %cfg.i1249.i, align 8
  %ops.i1250.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %476, i32 0, i32 4
  %477 = ptrtoint ptr %ops.i1250.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %ops.i1250.i, align 4
  %get_bbreg.i1251.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %478, i32 0, i32 45
  %479 = ptrtoint ptr %get_bbreg.i1251.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %get_bbreg.i1251.i, align 4
  %call.i1252.i = tail call i32 %480(ptr noundef %hw, i32 noundef 3200, i32 noundef -1) #5
  %481 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %priv, align 8
  %cfg.i1254.i = getelementptr inbounds %struct.rtl_priv, ptr %482, i32 0, i32 32
  %483 = ptrtoint ptr %cfg.i1254.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %cfg.i1254.i, align 8
  %ops.i1255.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %484, i32 0, i32 4
  %485 = ptrtoint ptr %ops.i1255.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %ops.i1255.i, align 4
  %get_bbreg.i1256.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %486, i32 0, i32 45
  %487 = ptrtoint ptr %get_bbreg.i1256.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %get_bbreg.i1256.i, align 4
  %call.i1257.i = tail call i32 %488(ptr noundef %hw, i32 noundef 3220, i32 noundef -1) #5
  %489 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %priv, align 8
  %cfg.i1259.i = getelementptr inbounds %struct.rtl_priv, ptr %490, i32 0, i32 32
  %491 = ptrtoint ptr %cfg.i1259.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %cfg.i1259.i, align 8
  %ops.i1260.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %492, i32 0, i32 4
  %493 = ptrtoint ptr %ops.i1260.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %ops.i1260.i, align 4
  %get_rfreg.i1261.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %494, i32 0, i32 47
  %495 = ptrtoint ptr %get_rfreg.i1261.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %get_rfreg.i1261.i, align 4
  %call.i1262.i = tail call i32 %496(ptr noundef %hw, i32 noundef 0, i32 noundef 36, i32 noundef 1048575) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %call.i1252.i, i32 noundef %call.i1257.i, i32 noundef %call.i1262.i) #5
  br label %check_delta.i

check_delta.i:                                    ; preds = %if.end679.i, %lor.lhs.false.i.check_delta.i_crit_edge, %if.end323.i.check_delta.i_crit_edge
  %delta_iqk684.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 59
  %497 = ptrtoint ptr %delta_iqk684.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %delta_iqk684.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond278.i, i8 %498)
  %cmp686.i = icmp ule i8 %cond278.i, %498
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %498)
  %cmp691.not.i = icmp eq i8 %498, 0
  %or.cond1045.i = or i1 %cmp686.i, %cmp691.not.i
  br i1 %or.cond1045.i, label %check_delta.i.if.end696.i_crit_edge, label %if.then693.i

check_delta.i.if.end696.i_crit_edge:              ; preds = %check_delta.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end696.i

if.then693.i:                                     ; preds = %check_delta.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl92d_phy_reset_iqk_result(ptr noundef %hw) #5
  %499 = ptrtoint ptr %thermalvalue_iqk261.i to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %thermalvalue.0.i, ptr %thermalvalue_iqk261.i, align 4
  tail call void @rtl92d_phy_iq_calibrate(ptr noundef %hw) #5
  br label %if.end696.i

if.end696.i:                                      ; preds = %if.then693.i, %check_delta.i.if.end696.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond299.i)
  %cmp698.not.i = icmp eq i8 %cond299.i, 0
  br i1 %cmp698.not.i, label %if.end696.i.if.end713.i_crit_edge, label %land.lhs.true700.i

if.end696.i.if.end713.i_crit_edge:                ; preds = %if.end696.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end713.i

land.lhs.true700.i:                               ; preds = %if.end696.i
  %current_bandtype701.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 53
  %500 = ptrtoint ptr %current_bandtype701.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %current_bandtype701.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %501)
  %cmp702.i = icmp eq i32 %501, 1
  br i1 %cmp702.i, label %land.lhs.true704.i, label %land.lhs.true700.i.if.end713.i_crit_edge

land.lhs.true700.i.if.end713.i_crit_edge:         ; preds = %land.lhs.true700.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end713.i

land.lhs.true704.i:                               ; preds = %land.lhs.true700.i
  %502 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %eeprom_thermalmeter.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermalvalue.0.i, i8 %503)
  %cmp708.not.i = icmp ugt i8 %thermalvalue.0.i, %503
  br i1 %cmp708.not.i, label %land.lhs.true704.i.if.end713.i_crit_edge, label %if.then710.i

land.lhs.true704.i.if.end713.i_crit_edge:         ; preds = %land.lhs.true704.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end713.i

if.then710.i:                                     ; preds = %land.lhs.true704.i
  %504 = ptrtoint ptr %thermalvalue_rxgain282.i to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 %thermalvalue.0.i, ptr %thermalvalue_rxgain282.i, align 1
  %505 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %priv, align 8
  %eeprom_thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %506, i32 0, i32 17, i32 55
  %507 = ptrtoint ptr %eeprom_thermalmeter.i.i to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %eeprom_thermalmeter.i.i, align 4
  %conv.i1264.i = zext i8 %508 to i32
  %thermalvalue_rxgain.i.i = getelementptr inbounds %struct.rtl_priv, ptr %506, i32 0, i32 15, i32 20
  %509 = ptrtoint ptr %thermalvalue_rxgain.i.i to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %thermalvalue_rxgain.i.i, align 1
  %conv1.i.i = zext i8 %510 to i32
  %sub.i1265.i = sub nsw i32 %conv.i1264.i, %conv1.i.i
  %arrayidx.i1266.i = getelementptr [15 x i8], ptr @__const.rtl92d_dm_rxgain_tracking_thermalmeter.index_mapping, i32 0, i32 %sub.i1265.i
  %511 = ptrtoint ptr %arrayidx.i1266.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %arrayidx.i1266.i, align 1
  %conv2.i.i = zext i8 %512 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 12
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %506, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %shl.i.i) #5
  %num_total_rfpath.i.i = getelementptr inbounds %struct.rtl_priv, ptr %506, i32 0, i32 14, i32 58
  %513 = ptrtoint ptr %num_total_rfpath.i.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %num_total_rfpath.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %514)
  %cmp17.not.i.i = icmp eq i8 %514, 0
  br i1 %cmp17.not.i.i, label %if.then710.i.if.end713.i_crit_edge, label %if.then710.i.for.body.i1271.i_crit_edge

if.then710.i.for.body.i1271.i_crit_edge:          ; preds = %if.then710.i
  br label %for.body.i1271.i

if.then710.i.if.end713.i_crit_edge:               ; preds = %if.then710.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end713.i

for.body.i1271.i:                                 ; preds = %for.body.i1271.i.for.body.i1271.i_crit_edge, %if.then710.i.for.body.i1271.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i1270.i, %for.body.i1271.i.for.body.i1271.i_crit_edge ], [ 0, %if.then710.i.for.body.i1271.i_crit_edge ]
  %arrayidx6.i.i = getelementptr %struct.rtl_priv, ptr %506, i32 0, i32 14, i32 54, i32 %i.018.i.i
  %515 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %arrayidx6.i.i, align 4
  %and.i1267.i = and i32 %516, -61441
  %or.i.i = or i32 %and.i1267.i, %shl.i.i
  %517 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %priv, align 8
  %cfg.i.i1268.i = getelementptr inbounds %struct.rtl_priv, ptr %518, i32 0, i32 32
  %519 = ptrtoint ptr %cfg.i.i1268.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %cfg.i.i1268.i, align 8
  %ops.i.i1269.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %520, i32 0, i32 4
  %521 = ptrtoint ptr %ops.i.i1269.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %ops.i.i1269.i, align 4
  %set_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %522, i32 0, i32 48
  %523 = ptrtoint ptr %set_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %set_rfreg.i.i.i, align 4
  tail call void %524(ptr noundef %hw, i32 noundef %i.018.i.i, i32 noundef 60, i32 noundef 1048575, i32 noundef %or.i.i) #5
  %inc.i1270.i = add nuw nsw i32 %i.018.i.i, 1
  %525 = ptrtoint ptr %num_total_rfpath.i.i to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %num_total_rfpath.i.i, align 4
  %conv3.i.i = zext i8 %526 to i32
  %cmp.i.i = icmp ult i32 %inc.i1270.i, %conv3.i.i
  br i1 %cmp.i.i, label %for.body.i1271.i.for.body.i1271.i_crit_edge, label %for.body.i1271.i.if.end713.i_crit_edge

for.body.i1271.i.if.end713.i_crit_edge:           ; preds = %for.body.i1271.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end713.i

for.body.i1271.i.for.body.i1271.i_crit_edge:      ; preds = %for.body.i1271.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1271.i

if.end713.i:                                      ; preds = %for.body.i1271.i.if.end713.i_crit_edge, %if.then710.i.if.end713.i_crit_edge, %land.lhs.true704.i.if.end713.i_crit_edge, %land.lhs.true700.i.if.end713.i_crit_edge, %if.end696.i.if.end713.i_crit_edge
  %txpower_track_control715.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 15, i32 34
  %527 = ptrtoint ptr %txpower_track_control715.i to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %txpower_track_control715.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %528)
  %tobool716.not.i = icmp eq i8 %528, 0
  br i1 %tobool716.not.i, label %if.end713.i.rtl92d_dm_txpower_tracking_callback_thermalmeter.exit_crit_edge, label %if.then717.i

if.end713.i.rtl92d_dm_txpower_tracking_callback_thermalmeter.exit_crit_edge: ; preds = %if.end713.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_dm_txpower_tracking_callback_thermalmeter.exit

if.then717.i:                                     ; preds = %if.end713.i
  call void @__sanitizer_cov_trace_pc() #7
  %529 = ptrtoint ptr %thermalvalue15.i to i32
  call void @__asan_store1_noabort(i32 %529)
  store i8 %thermalvalue.0.i, ptr %thermalvalue15.i, align 2
  br label %rtl92d_dm_txpower_tracking_callback_thermalmeter.exit

rtl92d_dm_txpower_tracking_callback_thermalmeter.exit: ; preds = %if.then717.i, %if.end713.i.rtl92d_dm_txpower_tracking_callback_thermalmeter.exit_crit_edge, %if.else.rtl92d_dm_txpower_tracking_callback_thermalmeter.exit_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.17) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ofdm_index_old.sroa.0.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ofdm_index.i) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rtl92d_dm_txpower_tracking_callback_thermalmeter.exit, %if.then3
  %.sink = phi i8 [ 0, %rtl92d_dm_txpower_tracking_callback_thermalmeter.exit ], [ 1, %if.then3 ]
  %530 = ptrtoint ptr %tm_trigger to i32
  call void @__asan_store1_noabort(i32 %530)
  store i8 %.sink, ptr %tm_trigger, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92d_dm_init_rate_adaptive_mask(ptr nocapture noundef readonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
define dso_local void @rtl92d_dm_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dm_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 32
  %2 = ptrtoint ptr %dm_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dm_type, align 2
  tail call void @rtl_dm_diginit(ptr noundef %hw, i32 noundef 32) #5
  %rx_gain_max = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 24
  %3 = ptrtoint ptr %rx_gain_max to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 50, ptr %rx_gain_max, align 1
  %rx_gain_min = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 25
  %4 = ptrtoint ptr %rx_gain_min to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %rx_gain_min, align 2
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %dynamic_txpower_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 15, i32 6
  %7 = ptrtoint ptr %dynamic_txpower_enable.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %dynamic_txpower_enable.i, align 1
  %last_dtp_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 15, i32 24
  %8 = ptrtoint ptr %last_dtp_lvl.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %last_dtp_lvl.i, align 1
  %dynamic_txhighpower_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 15, i32 29
  %9 = ptrtoint ptr %dynamic_txhighpower_lvl.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %dynamic_txhighpower_lvl.i, align 1
  %10 = load ptr, ptr %priv, align 8
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 15, i32 7
  %11 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %current_turbo_edca.i, align 2
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 15, i32 8
  %12 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %is_any_nonbepkts.i, align 1
  %is_cur_rdlstate.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 15, i32 9
  %13 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %is_cur_rdlstate.i, align 8
  %14 = load ptr, ptr %priv, align 8
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 22, i32 1
  %15 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ratr_state.i, align 1
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 22, i32 21
  %16 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %pre_ratr_state.i, align 4
  %dm_type.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 15, i32 32
  %17 = ptrtoint ptr %dm_type.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dm_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i = icmp eq i8 %18, 1
  %spec.select.i = zext i1 %cmp.i to i8
  %19 = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 15, i32 14
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.select.i, ptr %19, align 1
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %txpower_tracking.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 15, i32 13
  %23 = ptrtoint ptr %txpower_tracking.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %txpower_tracking.i, align 4
  %txpower_trackinginit.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 15, i32 10
  %24 = ptrtoint ptr %txpower_trackinginit.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %txpower_trackinginit.i, align 1
  %txpower_track_control.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 15, i32 34
  %25 = ptrtoint ptr %txpower_track_control.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %txpower_track_control.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %22, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_dm_diginit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92d_dm_watchdog(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %2 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %4 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rfchange_inprogress, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %6 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.rtl92d_dm_pwdb_monitor.exit_crit_edge

if.then.rtl92d_dm_pwdb_monitor.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_dm_pwdb_monitor.exit

if.end.i:                                         ; preds = %if.then
  %useramask.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %8 = ptrtoint ptr %useramask.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %useramask.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #5
  %undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 2
  %10 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %undec_sm_pwdb.i, align 8
  %shl.i = shl i32 %11, 16
  %or.i = or i32 %shl.i, 256
  %12 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %temp.i, align 4
  call void @rtl92d_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 5, i32 noundef 3, ptr noundef nonnull %temp.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #5
  br label %rtl92d_dm_pwdb_monitor.exit

if.else.i:                                        ; preds = %if.end.i
  %undec_sm_pwdb4.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 2
  %13 = ptrtoint ptr %undec_sm_pwdb4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %undec_sm_pwdb4.i, align 8
  %conv.i = trunc i32 %14 to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %15 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 1278, i8 noundef zeroext %conv.i) #5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.else.i.rtl92d_dm_pwdb_monitor.exit_crit_edge, label %if.then.i.i

if.else.i.rtl92d_dm_pwdb_monitor.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_dm_pwdb_monitor.exit

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %21 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 1278) #5
  br label %rtl92d_dm_pwdb_monitor.exit

rtl92d_dm_pwdb_monitor.exit:                      ; preds = %if.then.i.i, %if.else.i.rtl92d_dm_pwdb_monitor.exit_crit_edge, %if.then1.i, %if.then.rtl92d_dm_pwdb_monitor.exit_crit_edge
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %falsealm_cnt1.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 26
  %cfg.i.i13 = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 32
  %25 = ptrtoint ptr %cfg.i.i13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i.i13, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_bbreg.i.i, align 4
  call void %30(ptr noundef %hw, i32 noundef 3072, i32 noundef -2147483648, i32 noundef 1) #5
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %cfg.i118.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 32
  %33 = ptrtoint ptr %cfg.i118.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i118.i, align 8
  %ops.i119.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %ops.i119.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i119.i, align 4
  %set_bbreg.i120.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %36, i32 0, i32 46
  %37 = ptrtoint ptr %set_bbreg.i120.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_bbreg.i120.i, align 4
  call void %38(ptr noundef %hw, i32 noundef 3328, i32 noundef -2147483648, i32 noundef 1) #5
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %cfg.i122.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 32
  %41 = ptrtoint ptr %cfg.i122.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i122.i, align 8
  %ops.i123.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %ops.i123.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i123.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %44, i32 0, i32 45
  %45 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i14 = call i32 %46(ptr noundef %hw, i32 noundef 3312, i32 noundef -1) #5
  %and.i = and i32 %call.i.i14, 65535
  %cnt_fast_fsync_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 26, i32 4
  %47 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and.i, ptr %cnt_fast_fsync_fail.i, align 4
  %shr.i = lshr i32 %call.i.i14, 16
  %cnt_sb_search_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 26, i32 5
  %48 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shr.i, ptr %cnt_sb_search_fail.i, align 4
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  %cfg.i125.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 32
  %51 = ptrtoint ptr %cfg.i125.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg.i125.i, align 8
  %ops.i126.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %ops.i126.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i126.i, align 4
  %get_bbreg.i127.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %54, i32 0, i32 45
  %55 = ptrtoint ptr %get_bbreg.i127.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %get_bbreg.i127.i, align 4
  %call.i128.i = call i32 %56(ptr noundef %hw, i32 noundef 3488, i32 noundef -1) #5
  %shr5.i = lshr i32 %call.i128.i, 16
  %57 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shr5.i, ptr %falsealm_cnt1.i, align 4
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 8
  %cfg.i130.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 32
  %60 = ptrtoint ptr %cfg.i130.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg.i130.i, align 8
  %ops.i131.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %ops.i131.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i131.i, align 4
  %get_bbreg.i132.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %63, i32 0, i32 45
  %64 = ptrtoint ptr %get_bbreg.i132.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_bbreg.i132.i, align 4
  %call.i133.i = call i32 %65(ptr noundef %hw, i32 noundef 3492, i32 noundef -1) #5
  %and7.i = and i32 %call.i133.i, 65535
  %cnt_rate_illegal.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 26, i32 1
  %66 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and7.i, ptr %cnt_rate_illegal.i, align 4
  %shr9.i = lshr i32 %call.i133.i, 16
  %cnt_crc8_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 26, i32 2
  %67 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shr9.i, ptr %cnt_crc8_fail.i, align 4
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 8
  %cfg.i135.i = getelementptr inbounds %struct.rtl_priv, ptr %69, i32 0, i32 32
  %70 = ptrtoint ptr %cfg.i135.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i135.i, align 8
  %ops.i136.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %ops.i136.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i136.i, align 4
  %get_bbreg.i137.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %73, i32 0, i32 45
  %74 = ptrtoint ptr %get_bbreg.i137.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %get_bbreg.i137.i, align 4
  %call.i138.i = call i32 %75(ptr noundef %hw, i32 noundef 3496, i32 noundef -1) #5
  %and11.i = and i32 %call.i138.i, 65535
  %cnt_mcs_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 26, i32 3
  %76 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and11.i, ptr %cnt_mcs_fail.i, align 4
  %77 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %falsealm_cnt1.i, align 4
  %79 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cnt_rate_illegal.i, align 4
  %81 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cnt_crc8_fail.i, align 4
  %83 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cnt_fast_fsync_fail.i, align 4
  %85 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cnt_sb_search_fail.i, align 4
  %add.i = add i32 %78, %and11.i
  %add15.i = add i32 %add.i, %80
  %add17.i = add i32 %add15.i, %82
  %add19.i = add i32 %add17.i, %84
  %add21.i = add i32 %add19.i, %86
  %cnt_ofdm_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 26, i32 6
  %87 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add21.i, ptr %cnt_ofdm_fail.i, align 4
  %current_bandtype.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 10, i32 53
  %88 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %current_bandtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp.not.i15 = icmp eq i32 %89, 1
  br i1 %cmp.not.i15, label %if.else.i18, label %if.then.i

if.then.i:                                        ; preds = %rtl92d_dm_pwdb_monitor.exit
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 8
  %interfaceindex.i.i = getelementptr inbounds %struct.rtl_priv, ptr %91, i32 0, i32 10, i32 56
  %92 = ptrtoint ptr %interfaceindex.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %interfaceindex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp.i.i = icmp eq i32 %93, 1
  br i1 %cmp.i.i, label %do.body1.i.i, label %if.then.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i_crit_edge

if.then.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_acquire_cckandrw_pagea_ctl.exit.i

do.body1.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %cck_and_rw_pagea_lock.i.i = getelementptr inbounds %struct.rtl_priv, ptr %91, i32 0, i32 7, i32 12
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cck_and_rw_pagea_lock.i.i) #5
  br label %rtl92d_acquire_cckandrw_pagea_ctl.exit.i

rtl92d_acquire_cckandrw_pagea_ctl.exit.i:         ; preds = %do.body1.i.i, %if.then.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i_crit_edge
  %flag.0.i = phi i32 [ %call3.i.i, %do.body1.i.i ], [ 0, %if.then.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i_crit_edge ]
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv, align 8
  %cfg.i141.i = getelementptr inbounds %struct.rtl_priv, ptr %95, i32 0, i32 32
  %96 = ptrtoint ptr %cfg.i141.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i141.i, align 8
  %ops.i142.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %ops.i142.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i142.i, align 4
  %get_bbreg.i143.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %99, i32 0, i32 45
  %100 = ptrtoint ptr %get_bbreg.i143.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %get_bbreg.i143.i, align 4
  %call.i144.i = call i32 %101(ptr noundef %hw, i32 noundef 2652, i32 noundef 255) #5
  %cnt_cck_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 26, i32 7
  %102 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call.i144.i, ptr %cnt_cck_fail.i, align 4
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
  %get_bbreg.i148.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %108, i32 0, i32 45
  %109 = ptrtoint ptr %get_bbreg.i148.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %get_bbreg.i148.i, align 4
  %call.i149.i = call i32 %110(ptr noundef %hw, i32 noundef 2648, i32 noundef -16777216) #5
  %and24.i = shl i32 %call.i149.i, 8
  %shl.i16 = and i32 %and24.i, 65280
  %111 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cnt_cck_fail.i, align 4
  %add26.i = add i32 %shl.i16, %112
  store i32 %add26.i, ptr %cnt_cck_fail.i, align 4
  %113 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %priv, align 8
  %interfaceindex.i151.i = getelementptr inbounds %struct.rtl_priv, ptr %114, i32 0, i32 10, i32 56
  %115 = ptrtoint ptr %interfaceindex.i151.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %interfaceindex.i151.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp.i152.i = icmp eq i32 %116, 1
  br i1 %cmp.i152.i, label %if.then.i.i17, label %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.if.end.i19_crit_edge

rtl92d_acquire_cckandrw_pagea_ctl.exit.i.if.end.i19_crit_edge: ; preds = %rtl92d_acquire_cckandrw_pagea_ctl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i19

if.then.i.i17:                                    ; preds = %rtl92d_acquire_cckandrw_pagea_ctl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %cck_and_rw_pagea_lock.i153.i = getelementptr inbounds %struct.rtl_priv, ptr %114, i32 0, i32 7, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cck_and_rw_pagea_lock.i153.i, i32 noundef %flag.0.i) #5
  br label %if.end.i19

if.else.i18:                                      ; preds = %rtl92d_dm_pwdb_monitor.exit
  call void @__sanitizer_cov_trace_pc() #7
  %cnt_cck_fail27.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 26, i32 7
  %117 = ptrtoint ptr %cnt_cck_fail27.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %cnt_cck_fail27.i, align 4
  br label %if.end.i19

if.end.i19:                                       ; preds = %if.else.i18, %if.then.i.i17, %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.if.end.i19_crit_edge
  %flag.1.i = phi i32 [ 0, %if.else.i18 ], [ %flag.0.i, %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.if.end.i19_crit_edge ], [ %flag.0.i, %if.then.i.i17 ]
  %118 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cnt_fast_fsync_fail.i, align 4
  %120 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cnt_sb_search_fail.i, align 4
  %add30.i = add i32 %121, %119
  %122 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %falsealm_cnt1.i, align 4
  %add32.i = add i32 %add30.i, %123
  %124 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cnt_rate_illegal.i, align 4
  %add34.i = add i32 %add32.i, %125
  %126 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cnt_crc8_fail.i, align 4
  %add36.i = add i32 %add34.i, %127
  %128 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cnt_mcs_fail.i, align 4
  %add38.i = add i32 %add36.i, %129
  %cnt_cck_fail39.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 26, i32 7
  %130 = ptrtoint ptr %cnt_cck_fail39.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cnt_cck_fail39.i, align 4
  %add40.i = add i32 %add38.i, %131
  %cnt_all.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 26, i32 8
  %132 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %add40.i, ptr %cnt_all.i, align 4
  %133 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %priv, align 8
  %cfg.i155.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 32
  %135 = ptrtoint ptr %cfg.i155.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cfg.i155.i, align 8
  %ops.i156.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %ops.i156.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i156.i, align 4
  %set_bbreg.i157.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %138, i32 0, i32 46
  %139 = ptrtoint ptr %set_bbreg.i157.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %set_bbreg.i157.i, align 4
  call void %140(ptr noundef %hw, i32 noundef 3328, i32 noundef 134217728, i32 noundef 1) #5
  %141 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %priv, align 8
  %cfg.i159.i = getelementptr inbounds %struct.rtl_priv, ptr %142, i32 0, i32 32
  %143 = ptrtoint ptr %cfg.i159.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cfg.i159.i, align 8
  %ops.i160.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %ops.i160.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops.i160.i, align 4
  %set_bbreg.i161.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %146, i32 0, i32 46
  %147 = ptrtoint ptr %set_bbreg.i161.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %set_bbreg.i161.i, align 4
  call void %148(ptr noundef %hw, i32 noundef 3328, i32 noundef 134217728, i32 noundef 0) #5
  %149 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %priv, align 8
  %cfg.i163.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 32
  %151 = ptrtoint ptr %cfg.i163.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg.i163.i, align 8
  %ops.i164.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %ops.i164.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ops.i164.i, align 4
  %set_bbreg.i165.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %154, i32 0, i32 46
  %155 = ptrtoint ptr %set_bbreg.i165.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %set_bbreg.i165.i, align 4
  call void %156(ptr noundef %hw, i32 noundef 3072, i32 noundef -2147483648, i32 noundef 0) #5
  %157 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %priv, align 8
  %cfg.i167.i = getelementptr inbounds %struct.rtl_priv, ptr %158, i32 0, i32 32
  %159 = ptrtoint ptr %cfg.i167.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cfg.i167.i, align 8
  %ops.i168.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %ops.i168.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ops.i168.i, align 4
  %set_bbreg.i169.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %162, i32 0, i32 46
  %163 = ptrtoint ptr %set_bbreg.i169.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %set_bbreg.i169.i, align 4
  call void %164(ptr noundef %hw, i32 noundef 3328, i32 noundef -2147483648, i32 noundef 0) #5
  %165 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %current_bandtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp43.not.i = icmp eq i32 %166, 1
  br i1 %cmp43.not.i, label %if.end.i19.rtl92d_dm_false_alarm_counter_statistics.exit_crit_edge, label %if.then44.i

if.end.i19.rtl92d_dm_false_alarm_counter_statistics.exit_crit_edge: ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_dm_false_alarm_counter_statistics.exit

if.then44.i:                                      ; preds = %if.end.i19
  %167 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %priv, align 8
  %interfaceindex.i171.i = getelementptr inbounds %struct.rtl_priv, ptr %168, i32 0, i32 10, i32 56
  %169 = ptrtoint ptr %interfaceindex.i171.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %interfaceindex.i171.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %170)
  %cmp.i172.i = icmp eq i32 %170, 1
  br i1 %cmp.i172.i, label %do.body1.i175.i, label %if.then44.i.rtl92d_acquire_cckandrw_pagea_ctl.exit176.i_crit_edge

if.then44.i.rtl92d_acquire_cckandrw_pagea_ctl.exit176.i_crit_edge: ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_acquire_cckandrw_pagea_ctl.exit176.i

do.body1.i175.i:                                  ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #7
  %cck_and_rw_pagea_lock.i173.i = getelementptr inbounds %struct.rtl_priv, ptr %168, i32 0, i32 7, i32 12
  %call3.i174.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cck_and_rw_pagea_lock.i173.i) #5
  br label %rtl92d_acquire_cckandrw_pagea_ctl.exit176.i

rtl92d_acquire_cckandrw_pagea_ctl.exit176.i:      ; preds = %do.body1.i175.i, %if.then44.i.rtl92d_acquire_cckandrw_pagea_ctl.exit176.i_crit_edge
  %flag.2.i = phi i32 [ %call3.i174.i, %do.body1.i175.i ], [ %flag.1.i, %if.then44.i.rtl92d_acquire_cckandrw_pagea_ctl.exit176.i_crit_edge ]
  %171 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %priv, align 8
  %cfg.i178.i = getelementptr inbounds %struct.rtl_priv, ptr %172, i32 0, i32 32
  %173 = ptrtoint ptr %cfg.i178.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %cfg.i178.i, align 8
  %ops.i179.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %174, i32 0, i32 4
  %175 = ptrtoint ptr %ops.i179.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ops.i179.i, align 4
  %set_bbreg.i180.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %176, i32 0, i32 46
  %177 = ptrtoint ptr %set_bbreg.i180.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %set_bbreg.i180.i, align 4
  call void %178(ptr noundef %hw, i32 noundef 2604, i32 noundef 49152, i32 noundef 0) #5
  %179 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %priv, align 8
  %cfg.i182.i = getelementptr inbounds %struct.rtl_priv, ptr %180, i32 0, i32 32
  %181 = ptrtoint ptr %cfg.i182.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cfg.i182.i, align 8
  %ops.i183.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %ops.i183.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ops.i183.i, align 4
  %set_bbreg.i184.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %184, i32 0, i32 46
  %185 = ptrtoint ptr %set_bbreg.i184.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %set_bbreg.i184.i, align 4
  call void %186(ptr noundef %hw, i32 noundef 2604, i32 noundef 49152, i32 noundef 2) #5
  %187 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %priv, align 8
  %interfaceindex.i186.i = getelementptr inbounds %struct.rtl_priv, ptr %188, i32 0, i32 10, i32 56
  %189 = ptrtoint ptr %interfaceindex.i186.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %interfaceindex.i186.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %190)
  %cmp.i187.i = icmp eq i32 %190, 1
  br i1 %cmp.i187.i, label %if.then.i189.i, label %rtl92d_acquire_cckandrw_pagea_ctl.exit176.i.rtl92d_dm_false_alarm_counter_statistics.exit_crit_edge

rtl92d_acquire_cckandrw_pagea_ctl.exit176.i.rtl92d_dm_false_alarm_counter_statistics.exit_crit_edge: ; preds = %rtl92d_acquire_cckandrw_pagea_ctl.exit176.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_dm_false_alarm_counter_statistics.exit

if.then.i189.i:                                   ; preds = %rtl92d_acquire_cckandrw_pagea_ctl.exit176.i
  call void @__sanitizer_cov_trace_pc() #7
  %cck_and_rw_pagea_lock.i188.i = getelementptr inbounds %struct.rtl_priv, ptr %188, i32 0, i32 7, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cck_and_rw_pagea_lock.i188.i, i32 noundef %flag.2.i) #5
  br label %rtl92d_dm_false_alarm_counter_statistics.exit

rtl92d_dm_false_alarm_counter_statistics.exit:    ; preds = %if.then.i189.i, %rtl92d_acquire_cckandrw_pagea_ctl.exit176.i.rtl92d_dm_false_alarm_counter_statistics.exit_crit_edge, %if.end.i19.rtl92d_dm_false_alarm_counter_statistics.exit_crit_edge
  %191 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cnt_fast_fsync_fail.i, align 4
  %193 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %cnt_sb_search_fail.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %192, i32 noundef %194) #5
  %195 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %falsealm_cnt1.i, align 4
  %197 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %cnt_rate_illegal.i, align 4
  %199 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %cnt_crc8_fail.i, align 4
  %201 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %cnt_mcs_fail.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %196, i32 noundef %198, i32 noundef %200, i32 noundef %202) #5
  %203 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %cnt_ofdm_fail.i, align 4
  %205 = ptrtoint ptr %cnt_cck_fail39.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %cnt_cck_fail39.i, align 4
  %207 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cnt_all.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %204, i32 noundef %206, i32 noundef %208) #5
  %209 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %priv, align 8
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %210, i32 0, i32 9, i32 10
  %211 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %212)
  %cmp.i = icmp ult i32 %212, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %rtl92d_dm_false_alarm_counter_statistics.exit.if.then4.i_crit_edge

rtl92d_dm_false_alarm_counter_statistics.exit.if.then4.i_crit_edge: ; preds = %rtl92d_dm_false_alarm_counter_statistics.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

land.lhs.true.i:                                  ; preds = %rtl92d_dm_false_alarm_counter_statistics.exit
  %dm.i = getelementptr inbounds %struct.rtl_priv, ptr %210, i32 0, i32 15
  %213 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %dm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp1.i = icmp eq i32 %214, 0
  br i1 %cmp1.i, label %if.then.i21, label %land.lhs.true.i.if.end.i22_crit_edge

land.lhs.true.i.if.end.i22_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i22

if.then.i21:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %min_undec_pwdb_for_dm.i = getelementptr inbounds %struct.rtl_priv, ptr %210, i32 0, i32 35, i32 26
  %215 = ptrtoint ptr %min_undec_pwdb_for_dm.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %min_undec_pwdb_for_dm.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %210, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.24) #5
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i21, %land.lhs.true.i.if.end.i22_crit_edge
  %216 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %.pr.i = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp3.i = icmp ugt i32 %.pr.i, 1
  br i1 %cmp3.i, label %if.end.i22.if.then4.i_crit_edge, label %if.else20.i

if.end.i22.if.then4.i_crit_edge:                  ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i22.if.then4.i_crit_edge, %rtl92d_dm_false_alarm_counter_statistics.exit.if.then4.i_crit_edge
  %opmode.i23 = getelementptr inbounds %struct.rtl_priv, ptr %210, i32 0, i32 9, i32 8
  %217 = ptrtoint ptr %opmode.i23 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %opmode.i23, align 8
  %219 = zext i32 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %218, label %if.else.i26 [
    i32 3, label %if.then4.i.if.then8.i_crit_edge
    i32 1, label %if.then4.i.if.then8.i_crit_edge62
  ]

if.then4.i.if.then8.i_crit_edge62:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

if.then4.i.if.then8.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.then4.i.if.then8.i_crit_edge, %if.then4.i.if.then8.i_crit_edge62
  %dm9.i = getelementptr inbounds %struct.rtl_priv, ptr %210, i32 0, i32 15
  %220 = ptrtoint ptr %dm9.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %dm9.i, align 8
  %conv.i24 = trunc i32 %221 to i8
  %min_undec_pwdb_for_dm11.i = getelementptr inbounds %struct.rtl_priv, ptr %210, i32 0, i32 35, i32 26
  %222 = ptrtoint ptr %min_undec_pwdb_for_dm11.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv.i24, ptr %min_undec_pwdb_for_dm11.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %210, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %221) #5
  br label %rtl92d_dm_find_minimum_rssi.exit

if.else.i26:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  %undec_sm_pwdb.i25 = getelementptr inbounds %struct.rtl_priv, ptr %210, i32 0, i32 15, i32 2
  %223 = ptrtoint ptr %undec_sm_pwdb.i25 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %undec_sm_pwdb.i25, align 8
  %conv15.i = trunc i32 %224 to i8
  %min_undec_pwdb_for_dm16.i = getelementptr inbounds %struct.rtl_priv, ptr %210, i32 0, i32 35, i32 26
  %225 = ptrtoint ptr %min_undec_pwdb_for_dm16.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv15.i, ptr %min_undec_pwdb_for_dm16.i, align 1
  %conv18.i = and i32 %224, 255
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %210, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %conv18.i) #5
  br label %rtl92d_dm_find_minimum_rssi.exit

if.else20.i:                                      ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  %226 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %dm.i, align 8
  %conv23.i = trunc i32 %227 to i8
  %min_undec_pwdb_for_dm24.i = getelementptr inbounds %struct.rtl_priv, ptr %210, i32 0, i32 35, i32 26
  %228 = ptrtoint ptr %min_undec_pwdb_for_dm24.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv23.i, ptr %min_undec_pwdb_for_dm24.i, align 1
  %conv26.i = and i32 %227, 255
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %210, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %conv26.i) #5
  br label %rtl92d_dm_find_minimum_rssi.exit

rtl92d_dm_find_minimum_rssi.exit:                 ; preds = %if.else20.i, %if.else.i26, %if.then8.i
  %min_undec_pwdb_for_dm28.i = getelementptr inbounds %struct.rtl_priv, ptr %210, i32 0, i32 35, i32 26
  %229 = ptrtoint ptr %min_undec_pwdb_for_dm28.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %min_undec_pwdb_for_dm28.i, align 1
  %conv29.i = zext i8 %230 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %210, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.28, i32 noundef %conv29.i) #5
  %231 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %priv, align 8
  %cur_igvalue.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 35, i32 9
  %233 = ptrtoint ptr %cur_igvalue.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %cur_igvalue.i, align 4
  %conv.i28 = trunc i32 %234 to i8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %232, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.29) #5
  %earlymode_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 10, i32 58
  %235 = ptrtoint ptr %earlymode_enable.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %earlymode_enable.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool.not.i29 = icmp eq i8 %236, 0
  br i1 %tobool.not.i29, label %rtl92d_dm_find_minimum_rssi.exit.if.end.i35_crit_edge, label %if.then.i31

rtl92d_dm_find_minimum_rssi.exit.if.end.i35_crit_edge: ; preds = %rtl92d_dm_find_minimum_rssi.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i35

if.then.i31:                                      ; preds = %rtl92d_dm_find_minimum_rssi.exit
  %link_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 9, i32 10
  %237 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %link_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %238)
  %cmp.i.i30 = icmp ugt i32 %238, 1
  br i1 %cmp.i.i30, label %land.lhs.true.i.i, label %if.then.i31.if.else18.i.i_crit_edge

if.then.i31.if.else18.i.i_crit_edge:              ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else18.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i31
  %vendor.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 9, i32 35
  %239 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %vendor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %240)
  %cmp2.i.i = icmp eq i32 %240, 6
  br i1 %cmp2.i.i, label %if.then.i.i32, label %land.lhs.true.i.i.if.else18.i.i_crit_edge

land.lhs.true.i.i.if.else18.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else18.i.i

if.then.i.i32:                                    ; preds = %land.lhs.true.i.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %232, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.37) #5
  %last_min_undec_pwdb_for_dm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 35, i32 4
  %241 = ptrtoint ptr %last_min_undec_pwdb_for_dm.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %last_min_undec_pwdb_for_dm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %242)
  %cmp3.i.i = icmp sgt i32 %242, 49
  br i1 %cmp3.i.i, label %land.lhs.true4.i.i, label %if.then.i.i32.land.lhs.true11.i.i_crit_edge

if.then.i.i32.land.lhs.true11.i.i_crit_edge:      ; preds = %if.then.i.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true11.i.i

land.lhs.true4.i.i:                               ; preds = %if.then.i.i32
  %min_undec_pwdb_for_dm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 35, i32 26
  %243 = ptrtoint ptr %min_undec_pwdb_for_dm.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %min_undec_pwdb_for_dm.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %244)
  %cmp5.i.i = icmp ult i8 %244, 50
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.else.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true4.i.i
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 13, i32 5
  %245 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %246(ptr noundef %232, i32 noundef 1232, i8 noundef zeroext 0) #5
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 32
  %247 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %write_readback.i.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool.not.i.i.i = icmp eq i8 %250, 0
  br i1 %tobool.not.i.i.i, label %if.then7.i.i.if.end22.sink.split.i.i_crit_edge, label %if.then.i.i.i

if.then7.i.i.if.end22.sink.split.i.i_crit_edge:   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.sink.split.i.i

if.then.i.i.i:                                    ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 13, i32 9
  br label %if.end22.sink.split.sink.split.i.i

if.else.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %242)
  %cmp9.i.i = icmp ult i32 %242, 56
  br i1 %cmp9.i.i, label %if.else.i.i.land.lhs.true11.i.i_crit_edge, label %if.else.i.i.rtl92d_early_mode_enabled.exit.i_crit_edge

if.else.i.i.rtl92d_early_mode_enabled.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_early_mode_enabled.exit.i

if.else.i.i.land.lhs.true11.i.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true11.i.i

land.lhs.true11.i.i:                              ; preds = %if.else.i.i.land.lhs.true11.i.i_crit_edge, %if.then.i.i32.land.lhs.true11.i.i_crit_edge
  %min_undec_pwdb_for_dm12.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 35, i32 26
  %251 = ptrtoint ptr %min_undec_pwdb_for_dm12.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %min_undec_pwdb_for_dm12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %252)
  %cmp14.i.i = icmp ugt i8 %252, 55
  br i1 %cmp14.i.i, label %if.then16.i.i, label %land.lhs.true11.i.i.rtl92d_early_mode_enabled.exit.i_crit_edge

land.lhs.true11.i.i.rtl92d_early_mode_enabled.exit.i_crit_edge: ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_early_mode_enabled.exit.i

if.then16.i.i:                                    ; preds = %land.lhs.true11.i.i
  %write8_async.i36.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 13, i32 5
  %253 = ptrtoint ptr %write8_async.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %write8_async.i36.i.i, align 4
  call void %254(ptr noundef %232, i32 noundef 1232, i8 noundef zeroext 15) #5
  %cfg.i37.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 32
  %255 = ptrtoint ptr %cfg.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %cfg.i37.i.i, align 8
  %write_readback.i38.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %256, i32 0, i32 1
  %257 = ptrtoint ptr %write_readback.i38.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %write_readback.i38.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool.not.i39.i.i = icmp eq i8 %258, 0
  br i1 %tobool.not.i39.i.i, label %if.then16.i.i.if.end22.sink.split.i.i_crit_edge, label %if.then.i42.i.i

if.then16.i.i.if.end22.sink.split.i.i_crit_edge:  ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.sink.split.i.i

if.then.i42.i.i:                                  ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i40.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 13, i32 9
  br label %if.end22.sink.split.sink.split.i.i

if.else18.i.i:                                    ; preds = %land.lhs.true.i.i.if.else18.i.i_crit_edge, %if.then.i31.if.else18.i.i_crit_edge
  %read8_sync.i44.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 13, i32 9
  %259 = ptrtoint ptr %read8_sync.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %read8_sync.i44.i.i, align 4
  %call.i45.i.i = call zeroext i8 %260(ptr noundef %232, i32 noundef 1232) #5
  %261 = and i8 %call.i45.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool.not.i.i33 = icmp eq i8 %261, 0
  br i1 %tobool.not.i.i33, label %if.then20.i.i, label %if.else18.i.i.rtl92d_early_mode_enabled.exit.i_crit_edge

if.else18.i.i.rtl92d_early_mode_enabled.exit.i_crit_edge: ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_early_mode_enabled.exit.i

if.then20.i.i:                                    ; preds = %if.else18.i.i
  %write8_async.i46.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 13, i32 5
  %262 = ptrtoint ptr %write8_async.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %write8_async.i46.i.i, align 4
  call void %263(ptr noundef %232, i32 noundef 1232, i8 noundef zeroext 15) #5
  %cfg.i47.i.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 32
  %264 = ptrtoint ptr %cfg.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %cfg.i47.i.i, align 8
  %write_readback.i48.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %write_readback.i48.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %write_readback.i48.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool.not.i49.i.i = icmp eq i8 %267, 0
  br i1 %tobool.not.i49.i.i, label %if.then20.i.i.if.end22.sink.split.i.i_crit_edge, label %if.then20.i.i.if.end22.sink.split.sink.split.i.i_crit_edge

if.then20.i.i.if.end22.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.sink.split.sink.split.i.i

if.then20.i.i.if.end22.sink.split.i.i_crit_edge:  ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.sink.split.i.i

if.end22.sink.split.sink.split.i.i:               ; preds = %if.then20.i.i.if.end22.sink.split.sink.split.i.i_crit_edge, %if.then.i42.i.i, %if.then.i.i.i
  %read8_sync.i44.sink.i.i = phi ptr [ %read8_sync.i40.i.i, %if.then.i42.i.i ], [ %read8_sync.i.i.i, %if.then.i.i.i ], [ %read8_sync.i44.i.i, %if.then20.i.i.if.end22.sink.split.sink.split.i.i_crit_edge ]
  %.str.39.sink.ph.i.i = phi ptr [ @.str.39, %if.then.i42.i.i ], [ @.str.38, %if.then.i.i.i ], [ @.str.39, %if.then20.i.i.if.end22.sink.split.sink.split.i.i_crit_edge ]
  %268 = ptrtoint ptr %read8_sync.i44.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %read8_sync.i44.sink.i.i, align 4
  %call.i51.i.i = call zeroext i8 %269(ptr noundef %232, i32 noundef 1232) #5
  br label %if.end22.sink.split.i.i

if.end22.sink.split.i.i:                          ; preds = %if.end22.sink.split.sink.split.i.i, %if.then20.i.i.if.end22.sink.split.i.i_crit_edge, %if.then16.i.i.if.end22.sink.split.i.i_crit_edge, %if.then7.i.i.if.end22.sink.split.i.i_crit_edge
  %.str.39.sink.i.i = phi ptr [ @.str.38, %if.then7.i.i.if.end22.sink.split.i.i_crit_edge ], [ @.str.39, %if.then16.i.i.if.end22.sink.split.i.i_crit_edge ], [ @.str.39, %if.then20.i.i.if.end22.sink.split.i.i_crit_edge ], [ %.str.39.sink.ph.i.i, %if.end22.sink.split.sink.split.i.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %232, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull %.str.39.sink.i.i) #5
  br label %rtl92d_early_mode_enabled.exit.i

rtl92d_early_mode_enabled.exit.i:                 ; preds = %if.end22.sink.split.i.i, %if.else18.i.i.rtl92d_early_mode_enabled.exit.i_crit_edge, %land.lhs.true11.i.i.rtl92d_early_mode_enabled.exit.i_crit_edge, %if.else.i.i.rtl92d_early_mode_enabled.exit.i_crit_edge
  %min_undec_pwdb_for_dm.i34 = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 35, i32 26
  %270 = ptrtoint ptr %min_undec_pwdb_for_dm.i34 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %min_undec_pwdb_for_dm.i34, align 1
  %conv2.i = zext i8 %271 to i32
  %last_min_undec_pwdb_for_dm.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 35, i32 4
  %272 = ptrtoint ptr %last_min_undec_pwdb_for_dm.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %conv2.i, ptr %last_min_undec_pwdb_for_dm.i, align 4
  br label %if.end.i35

if.end.i35:                                       ; preds = %rtl92d_early_mode_enabled.exit.i, %rtl92d_dm_find_minimum_rssi.exit.if.end.i35_crit_edge
  %dm_initialgain_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 15, i32 5
  %273 = ptrtoint ptr %dm_initialgain_enable.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %dm_initialgain_enable.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool3.not.i = icmp eq i8 %274, 0
  br i1 %tobool3.not.i, label %if.end.i35.rtl92d_dm_dig.exit_crit_edge, label %if.end5.i

if.end.i35.rtl92d_dm_dig.exit_crit_edge:          ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_dm_dig.exit

if.end5.i:                                        ; preds = %if.end.i35
  %opmode.i36 = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 9, i32 8
  %275 = ptrtoint ptr %opmode.i36 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %opmode.i36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %276)
  %cmp.not.i37 = icmp eq i32 %276, 2
  br i1 %cmp.not.i37, label %if.end8.i, label %if.end5.i.rtl92d_dm_dig.exit_crit_edge

if.end5.i.rtl92d_dm_dig.exit_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_dm_dig.exit

if.end8.i:                                        ; preds = %if.end5.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %232, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.30) #5
  %link_state.i38 = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 9, i32 10
  %277 = ptrtoint ptr %link_state.i38 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %link_state.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %278)
  %cmp10.i = icmp ugt i32 %278, 1
  %spec.select.i = zext i1 %cmp10.i to i8
  %279 = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 35, i32 17
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %spec.select.i, ptr %279, align 2
  %cnt_all.i39 = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 26, i32 8
  %281 = ptrtoint ptr %cnt_all.i39 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %cnt_all.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %282)
  %cmp15.i = icmp ult i32 %282, 256
  br i1 %cmp15.i, label %if.then17.i, label %if.else18.i

if.then17.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i = add i8 %conv.i28, -1
  br label %if.end41.i

if.else18.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %282)
  %cmp20.i = icmp ult i32 %282, 1024
  br i1 %cmp20.i, label %if.else18.i.if.end41.i_crit_edge, label %if.else25.i

if.else18.i.if.end41.i_crit_edge:                 ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

if.else25.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %282)
  %cmp27.i = icmp ult i32 %282, 1536
  br i1 %cmp27.i, label %if.then29.i, label %if.then34.i

if.then29.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add i8 %conv.i28, 1
  br label %if.end41.i

if.then34.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv37.i = add i8 %conv.i28, 2
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then34.i, %if.then29.i, %if.else18.i.if.end41.i_crit_edge, %if.then17.i
  %value_igi.0.i = phi i8 [ %dec.i, %if.then17.i ], [ %inc.i, %if.then29.i ], [ %conv37.i, %if.then34.i ], [ %conv.i28, %if.else18.i.if.end41.i_crit_edge ]
  %large_fa_hit.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 35, i32 36
  %283 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %large_fa_hit.i, align 1
  %conv42.i = zext i8 %284 to i32
  %forbidden_igi.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 35, i32 37
  %285 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %forbidden_igi.i, align 2
  %conv43.i = zext i8 %286 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %232, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %conv42.i, i32 noundef %conv43.i) #5
  %recover_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 35, i32 7
  %287 = ptrtoint ptr %recover_cnt.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %recover_cnt.i, align 4
  %rx_gain_min.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 35, i32 25
  %289 = ptrtoint ptr %rx_gain_min.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %rx_gain_min.i, align 2
  %conv44.i = zext i8 %290 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %232, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %288, i32 noundef %conv44.i) #5
  %291 = ptrtoint ptr %cnt_all.i39 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %cnt_all.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %292)
  %cmp46.i = icmp ugt i32 %292, 10000
  br i1 %cmp46.i, label %if.then48.i, label %if.else83.i

if.then48.i:                                      ; preds = %if.end41.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %232, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.33) #5
  %293 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %large_fa_hit.i, align 1
  %inc50.i = add i8 %294, 1
  store i8 %inc50.i, ptr %large_fa_hit.i, align 1
  %295 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %forbidden_igi.i, align 2
  %conv52.i = zext i8 %296 to i32
  %297 = ptrtoint ptr %cur_igvalue.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %cur_igvalue.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %298, i32 %conv52.i)
  %cmp54.i = icmp ugt i32 %298, %conv52.i
  br i1 %cmp54.i, label %if.end61.thread.i, label %if.end61.i

if.end61.thread.i:                                ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv58.i = trunc i32 %298 to i8
  %299 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %conv58.i, ptr %forbidden_igi.i, align 2
  %300 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 1, ptr %large_fa_hit.i, align 1
  br label %if.end122.i

if.end61.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc50.i)
  %cmp64.i = icmp ugt i8 %inc50.i, 2
  br i1 %cmp64.i, label %if.then66.i, label %if.end61.i.if.end122.i_crit_edge

if.end61.i.if.end122.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122.i

if.then66.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  %add69.i = add i8 %296, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %296)
  %cmp70.inv.i = icmp ult i8 %296, 62
  %storemerge.i = select i1 %cmp70.inv.i, i8 %add69.i, i8 62
  %301 = ptrtoint ptr %rx_gain_min.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %storemerge.i, ptr %rx_gain_min.i, align 2
  %302 = ptrtoint ptr %recover_cnt.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 3600, ptr %recover_cnt.i, align 4
  br label %if.end122.i

if.else83.i:                                      ; preds = %if.end41.i
  %303 = ptrtoint ptr %recover_cnt.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %recover_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %cmp85.not.i = icmp eq i32 %304, 0
  br i1 %cmp85.not.i, label %if.else90.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #7
  %dec89.i = add i32 %304, -1
  %305 = ptrtoint ptr %recover_cnt.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %dec89.i, ptr %recover_cnt.i, align 4
  br label %if.end122.i

if.else90.i:                                      ; preds = %if.else83.i
  %306 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %large_fa_hit.i, align 1
  %308 = zext i8 %307 to i64
  call void @__sanitizer_cov_trace_switch(i64 %308, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %307, label %if.else90.i.if.end122.i_crit_edge [
    i8 0, label %if.then95.i
    i8 3, label %if.then117.i
  ]

if.else90.i.if.end122.i_crit_edge:                ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122.i

if.then95.i:                                      ; preds = %if.else90.i
  %309 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %forbidden_igi.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %310)
  %cmp98.i = icmp ult i8 %310, 33
  br i1 %cmp98.i, label %if.then100.i, label %if.else103.i

if.then100.i:                                     ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #7
  %311 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 32, ptr %forbidden_igi.i, align 2
  %312 = ptrtoint ptr %rx_gain_min.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 32, ptr %rx_gain_min.i, align 2
  br label %if.end122.i

if.else103.i:                                     ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #7
  %dec105.i = add i8 %310, -1
  %313 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %dec105.i, ptr %forbidden_igi.i, align 2
  %314 = ptrtoint ptr %rx_gain_min.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %310, ptr %rx_gain_min.i, align 2
  br label %if.end122.i

if.then117.i:                                     ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #7
  %315 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 0, ptr %large_fa_hit.i, align 1
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then117.i, %if.else103.i, %if.then100.i, %if.else90.i.if.end122.i_crit_edge, %if.then87.i, %if.then66.i, %if.end61.i.if.end122.i_crit_edge, %if.end61.thread.i
  %316 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %large_fa_hit.i, align 1
  %conv124.i = zext i8 %317 to i32
  %318 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %forbidden_igi.i, align 2
  %conv126.i = zext i8 %319 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %232, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %conv124.i, i32 noundef %conv126.i) #5
  %320 = ptrtoint ptr %recover_cnt.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %recover_cnt.i, align 4
  %322 = ptrtoint ptr %rx_gain_min.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %rx_gain_min.i, align 2
  %conv129.i = zext i8 %323 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %232, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %321, i32 noundef %conv129.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %value_igi.0.i)
  %cmp131.i = icmp ugt i8 %value_igi.0.i, 62
  br i1 %cmp131.i, label %if.end122.i.if.end143.i_crit_edge, label %if.else134.i

if.end122.i.if.end143.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143.i

if.else134.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #7
  %324 = ptrtoint ptr %rx_gain_min.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %rx_gain_min.i, align 2
  %326 = call i8 @llvm.umax.i8(i8 %value_igi.0.i, i8 %325) #5
  %phi.cast.i = zext i8 %326 to i32
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.else134.i, %if.end122.i.if.end143.i_crit_edge
  %value_igi.1.i = phi i32 [ 62, %if.end122.i.if.end143.i_crit_edge ], [ %phi.cast.i, %if.else134.i ]
  %327 = ptrtoint ptr %cur_igvalue.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %value_igi.1.i, ptr %cur_igvalue.i, align 4
  call void @rtl92d_dm_write_dig(ptr noundef %hw) #5
  %current_bandtype.i40 = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 10, i32 53
  %328 = ptrtoint ptr %current_bandtype.i40 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %current_bandtype.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %329)
  %cmp147.not.i = icmp eq i32 %329, 1
  br i1 %cmp147.not.i, label %if.end143.i.if.end150.i_crit_edge, label %if.then149.i

if.end143.i.if.end150.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150.i

if.then149.i:                                     ; preds = %if.end143.i
  %330 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %priv, align 8
  %cursta_cstate.i.i = getelementptr inbounds %struct.rtl_priv, ptr %331, i32 0, i32 35, i32 17
  %332 = ptrtoint ptr %cursta_cstate.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %cursta_cstate.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %333)
  %cmp.i221.i = icmp eq i8 %333, 1
  br i1 %cmp.i221.i, label %if.then.i224.i, label %if.else22.i.i

if.then.i224.i:                                   ; preds = %if.then149.i
  %pre_cck_pd_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %331, i32 0, i32 35, i32 30
  %334 = ptrtoint ptr %pre_cck_pd_state.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %pre_cck_pd_state.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %cmp3.i222.i = icmp eq i8 %335, 0
  %min_undec_pwdb_for_dm.i223.i = getelementptr inbounds %struct.rtl_priv, ptr %331, i32 0, i32 35, i32 26
  %336 = ptrtoint ptr %min_undec_pwdb_for_dm.i223.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %min_undec_pwdb_for_dm.i223.i, align 1
  br i1 %cmp3.i222.i, label %if.then5.i.i, label %if.else11.i.i

if.then5.i.i:                                     ; preds = %if.then.i224.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %337)
  %cmp7.i.i = icmp ult i8 %337, 26
  %cur_cck_pd_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %331, i32 0, i32 35, i32 31
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i225.i

if.then9.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %338 = ptrtoint ptr %cur_cck_pd_state.i.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 0, ptr %cur_cck_pd_state.i.i, align 4
  br label %if.end24.i.i

if.else.i225.i:                                   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %339 = ptrtoint ptr %cur_cck_pd_state.i.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 1, ptr %cur_cck_pd_state.i.i, align 4
  br label %if.end24.i.i

if.else11.i.i:                                    ; preds = %if.then.i224.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %337)
  %cmp14.i226.i = icmp ult i8 %337, 21
  %cur_cck_pd_state17.i.i = getelementptr inbounds %struct.rtl_priv, ptr %331, i32 0, i32 35, i32 31
  br i1 %cmp14.i226.i, label %if.then16.i227.i, label %if.else18.i228.i

if.then16.i227.i:                                 ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %340 = ptrtoint ptr %cur_cck_pd_state17.i.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 0, ptr %cur_cck_pd_state17.i.i, align 4
  br label %if.end24.i.i

if.else18.i228.i:                                 ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %341 = ptrtoint ptr %cur_cck_pd_state17.i.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 1, ptr %cur_cck_pd_state17.i.i, align 4
  br label %if.end24.i.i

if.else22.i.i:                                    ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #7
  %cur_cck_pd_state23.i.i = getelementptr inbounds %struct.rtl_priv, ptr %331, i32 0, i32 35, i32 31
  %342 = ptrtoint ptr %cur_cck_pd_state23.i.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 0, ptr %cur_cck_pd_state23.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.else22.i.i, %if.else18.i228.i, %if.then16.i227.i, %if.else.i225.i, %if.then9.i.i
  %pre_cck_pd_state25.i.i = getelementptr inbounds %struct.rtl_priv, ptr %331, i32 0, i32 35, i32 30
  %343 = ptrtoint ptr %pre_cck_pd_state25.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %pre_cck_pd_state25.i.i, align 1
  %cur_cck_pd_state27.i.i = getelementptr inbounds %struct.rtl_priv, ptr %331, i32 0, i32 35, i32 31
  %345 = ptrtoint ptr %cur_cck_pd_state27.i.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %cur_cck_pd_state27.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %344, i8 %346)
  %cmp29.not.i.i = icmp eq i8 %344, %346
  br i1 %cmp29.not.i.i, label %if.end24.i.i.rtl92d_dm_cck_packet_detection_thresh.exit.i_crit_edge, label %if.then31.i.i

if.end24.i.i.rtl92d_dm_cck_packet_detection_thresh.exit.i_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_dm_cck_packet_detection_thresh.exit.i

if.then31.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %346)
  %cmp34.i.i = icmp eq i8 %346, 0
  %347 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %priv, align 8
  %interfaceindex.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %348, i32 0, i32 10, i32 56
  %349 = ptrtoint ptr %interfaceindex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %interfaceindex.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %350)
  %cmp.i.i.i = icmp eq i32 %350, 1
  br i1 %cmp34.i.i, label %if.then36.i.i, label %if.else37.i.i

if.then36.i.i:                                    ; preds = %if.then31.i.i
  br i1 %cmp.i.i.i, label %do.body1.i.i.i, label %if.then36.i.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i_crit_edge

if.then36.i.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i_crit_edge: ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i

do.body1.i.i.i:                                   ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %cck_and_rw_pagea_lock.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %348, i32 0, i32 7, i32 12
  %call3.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cck_and_rw_pagea_lock.i.i.i) #5
  br label %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i

rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i:       ; preds = %do.body1.i.i.i, %if.then36.i.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i_crit_edge
  %flag.0.i.i = phi i32 [ %call3.i.i.i, %do.body1.i.i.i ], [ 0, %if.then36.i.i.rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i_crit_edge ]
  %351 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %priv, align 8
  %cfg.i.i229.i = getelementptr inbounds %struct.rtl_priv, ptr %352, i32 0, i32 32
  %353 = ptrtoint ptr %cfg.i.i229.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %cfg.i.i229.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %354, i32 0, i32 4
  %355 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %ops.i.i.i, align 4
  %set_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %356, i32 0, i32 46
  %357 = ptrtoint ptr %set_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %set_bbreg.i.i.i, align 4
  call void %358(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef 131) #5
  %359 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %priv, align 8
  %interfaceindex.i91.i.i = getelementptr inbounds %struct.rtl_priv, ptr %360, i32 0, i32 10, i32 56
  %361 = ptrtoint ptr %interfaceindex.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %interfaceindex.i91.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %362)
  %cmp.i92.i.i = icmp eq i32 %362, 1
  br i1 %cmp.i92.i.i, label %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i.if.end38.sink.split.i.i_crit_edge, label %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i.if.end38.i.i_crit_edge

rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i.if.end38.i.i_crit_edge: ; preds = %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i.i

rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i.if.end38.sink.split.i.i_crit_edge: ; preds = %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.sink.split.i.i

if.else37.i.i:                                    ; preds = %if.then31.i.i
  br i1 %cmp.i.i.i, label %do.body1.i99.i.i, label %if.else37.i.i.rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i_crit_edge

if.else37.i.i.rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i_crit_edge: ; preds = %if.else37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i

do.body1.i99.i.i:                                 ; preds = %if.else37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %cck_and_rw_pagea_lock.i97.i.i = getelementptr inbounds %struct.rtl_priv, ptr %348, i32 0, i32 7, i32 12
  %call3.i98.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cck_and_rw_pagea_lock.i97.i.i) #5
  br label %rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i

rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i:    ; preds = %do.body1.i99.i.i, %if.else37.i.i.rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i_crit_edge
  %flag.1.i.i = phi i32 [ %call3.i98.i.i, %do.body1.i99.i.i ], [ 0, %if.else37.i.i.rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i_crit_edge ]
  %363 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %priv, align 8
  %cfg.i102.i.i = getelementptr inbounds %struct.rtl_priv, ptr %364, i32 0, i32 32
  %365 = ptrtoint ptr %cfg.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %cfg.i102.i.i, align 8
  %ops.i103.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %366, i32 0, i32 4
  %367 = ptrtoint ptr %ops.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %ops.i103.i.i, align 4
  %set_bbreg.i104.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %368, i32 0, i32 46
  %369 = ptrtoint ptr %set_bbreg.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %set_bbreg.i104.i.i, align 4
  call void %370(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef 205) #5
  %371 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %priv, align 8
  %interfaceindex.i106.i.i = getelementptr inbounds %struct.rtl_priv, ptr %372, i32 0, i32 10, i32 56
  %373 = ptrtoint ptr %interfaceindex.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %interfaceindex.i106.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %374)
  %cmp.i107.i.i = icmp eq i32 %374, 1
  br i1 %cmp.i107.i.i, label %rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i.if.end38.sink.split.i.i_crit_edge, label %rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i.if.end38.i.i_crit_edge

rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i.if.end38.i.i_crit_edge: ; preds = %rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i.i

rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i.if.end38.sink.split.i.i_crit_edge: ; preds = %rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.sink.split.i.i

if.end38.sink.split.i.i:                          ; preds = %rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i.if.end38.sink.split.i.i_crit_edge, %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i.if.end38.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %360, %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i.if.end38.sink.split.i.i_crit_edge ], [ %372, %rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i.if.end38.sink.split.i.i_crit_edge ]
  %flag.1.sink.i.i = phi i32 [ %flag.0.i.i, %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i.if.end38.sink.split.i.i_crit_edge ], [ %flag.1.i.i, %rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i.if.end38.sink.split.i.i_crit_edge ]
  %cck_and_rw_pagea_lock.i108.i.i = getelementptr inbounds %struct.rtl_priv, ptr %.sink.i.i, i32 0, i32 7, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cck_and_rw_pagea_lock.i108.i.i, i32 noundef %flag.1.sink.i.i) #5
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.end38.sink.split.i.i, %rtl92d_acquire_cckandrw_pagea_ctl.exit100.i.i.if.end38.i.i_crit_edge, %rtl92d_acquire_cckandrw_pagea_ctl.exit.i.i.if.end38.i.i_crit_edge
  %375 = ptrtoint ptr %cur_cck_pd_state27.i.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %cur_cck_pd_state27.i.i, align 4
  %377 = ptrtoint ptr %pre_cck_pd_state25.i.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 %376, ptr %pre_cck_pd_state25.i.i, align 1
  br label %rtl92d_dm_cck_packet_detection_thresh.exit.i

rtl92d_dm_cck_packet_detection_thresh.exit.i:     ; preds = %if.end38.i.i, %if.end24.i.i.rtl92d_dm_cck_packet_detection_thresh.exit.i_crit_edge
  %378 = ptrtoint ptr %cursta_cstate.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %cursta_cstate.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %379)
  %cmp44.i.i = icmp eq i8 %379, 1
  %cond.i.i = select i1 %cmp44.i.i, ptr @.str.41, ptr @.str.42
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %331, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond.i.i) #5
  %380 = ptrtoint ptr %cur_cck_pd_state27.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %cur_cck_pd_state27.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %cmp48.i.i = icmp eq i8 %381, 0
  %cond50.i.i = select i1 %cmp48.i.i, ptr @.str.44, ptr @.str.45
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %331, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond50.i.i) #5
  %version.i.i = getelementptr inbounds %struct.rtl_priv, ptr %331, i32 0, i32 10, i32 13
  %382 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %version.i.i, align 4
  %384 = and i32 %383, 119
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %384)
  %385 = icmp eq i32 %384, 34
  %cond62.i.i = zext i1 %385 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %331, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.46, i32 noundef %cond62.i.i) #5
  br label %if.end150.i

if.end150.i:                                      ; preds = %rtl92d_dm_cck_packet_detection_thresh.exit.i, %if.end143.i.if.end150.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %232, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.36) #5
  br label %rtl92d_dm_dig.exit

rtl92d_dm_dig.exit:                               ; preds = %if.end150.i, %if.end5.i.rtl92d_dm_dig.exit_crit_edge, %if.end.i35.rtl92d_dm_dig.exit_crit_edge
  %386 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %priv, align 8
  %dm.i42 = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15
  %dynamic_txpower_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 6
  %388 = ptrtoint ptr %dynamic_txpower_enable.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %dynamic_txpower_enable.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %389)
  %tobool.not.i43 = icmp eq i8 %389, 0
  br i1 %tobool.not.i43, label %rtl92d_dm_dig.exit.if.then.i44_crit_edge, label %lor.lhs.false.i

rtl92d_dm_dig.exit.if.then.i44_crit_edge:         ; preds = %rtl92d_dm_dig.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i44

lor.lhs.false.i:                                  ; preds = %rtl92d_dm_dig.exit
  %dm_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 30
  %390 = ptrtoint ptr %dm_flag.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %dm_flag.i, align 4
  %392 = and i8 %391, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %392)
  %tobool4.not.i = icmp eq i8 %392, 0
  br i1 %tobool4.not.i, label %if.end.i47, label %lor.lhs.false.i.if.then.i44_crit_edge

lor.lhs.false.i.if.then.i44_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i44

if.then.i44:                                      ; preds = %lor.lhs.false.i.if.then.i44_crit_edge, %rtl92d_dm_dig.exit.if.then.i44_crit_edge
  %dynamic_txhighpower_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 29
  %393 = ptrtoint ptr %dynamic_txhighpower_lvl.i to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 0, ptr %dynamic_txhighpower_lvl.i, align 1
  br label %rtl92d_dm_dynamic_txpower.exit

if.end.i47:                                       ; preds = %lor.lhs.false.i
  %link_state.i45 = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 9, i32 10
  %394 = ptrtoint ptr %link_state.i45 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %link_state.i45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %395)
  %cmp.i46 = icmp ult i32 %395, 2
  br i1 %cmp.i46, label %land.lhs.true.i48, label %if.then18.i

land.lhs.true.i48:                                ; preds = %if.end.i47
  %396 = ptrtoint ptr %dm.i42 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %dm.i42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %397)
  %cmp8.i = icmp eq i32 %397, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.else27.i

if.then10.i:                                      ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %387, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.24) #5
  %dynamic_txhighpower_lvl12.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 29
  %398 = ptrtoint ptr %dynamic_txhighpower_lvl12.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 0, ptr %dynamic_txhighpower_lvl12.i, align 1
  %last_dtp_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 24
  %399 = ptrtoint ptr %last_dtp_lvl.i to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 0, ptr %last_dtp_lvl.i, align 1
  br label %rtl92d_dm_dynamic_txpower.exit

if.then18.i:                                      ; preds = %if.end.i47
  %opmode.i49 = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 9, i32 8
  %400 = ptrtoint ptr %opmode.i49 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %opmode.i49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %401)
  %cmp19.i = icmp eq i32 %401, 1
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i50

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  %402 = ptrtoint ptr %dm.i42 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %dm.i42, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %387, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.47, i32 noundef %403) #5
  br label %if.end30.i

if.else.i50:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  %undec_sm_pwdb25.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 2
  %404 = ptrtoint ptr %undec_sm_pwdb25.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %undec_sm_pwdb25.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %387, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.48, i32 noundef %405) #5
  br label %if.end30.i

if.else27.i:                                      ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %387, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.49, i32 noundef %397) #5
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else27.i, %if.else.i50, %if.then21.i
  %undec_sm_pwdb.0.i = phi i32 [ %403, %if.then21.i ], [ %405, %if.else.i50 ], [ %397, %if.else27.i ]
  %current_bandtype.i51 = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 10, i32 53
  %406 = ptrtoint ptr %current_bandtype.i51 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %current_bandtype.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %407)
  %cmp31.i = icmp eq i32 %407, 1
  br i1 %cmp31.i, label %if.then33.i, label %if.else57.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %undec_sm_pwdb.0.i)
  %cmp34.i = icmp sgt i32 %undec_sm_pwdb.0.i, 50
  br i1 %cmp34.i, label %if.then36.i, label %land.lhs.true42.i

if.then36.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  %dynamic_txhighpower_lvl38.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 29
  %408 = ptrtoint ptr %dynamic_txhighpower_lvl38.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 2, ptr %dynamic_txhighpower_lvl38.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %387, i64 noundef 32768, i32 noundef 4, ptr noundef nonnull @.str.50) #5
  br label %if.end81.i

land.lhs.true42.i:                                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %undec_sm_pwdb.0.i)
  %cmp43.i = icmp sgt i32 %undec_sm_pwdb.0.i, 42
  %dynamic_txhighpower_lvl47.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 29
  br i1 %cmp43.i, label %if.then45.i, label %if.then51.i

if.then45.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #7
  %409 = ptrtoint ptr %dynamic_txhighpower_lvl47.i to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 1, ptr %dynamic_txhighpower_lvl47.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %387, i64 noundef 32768, i32 noundef 4, ptr noundef nonnull @.str.51) #5
  br label %if.end81.i

if.then51.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #7
  %410 = ptrtoint ptr %dynamic_txhighpower_lvl47.i to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 0, ptr %dynamic_txhighpower_lvl47.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %387, i64 noundef 32768, i32 noundef 4, ptr noundef nonnull @.str.52) #5
  br label %if.end81.i

if.else57.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %undec_sm_pwdb.0.i)
  %cmp58.i = icmp sgt i32 %undec_sm_pwdb.0.i, 73
  br i1 %cmp58.i, label %if.then60.i, label %if.else63.i

if.then60.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #7
  %dynamic_txhighpower_lvl62.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 29
  %411 = ptrtoint ptr %dynamic_txhighpower_lvl62.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 2, ptr %dynamic_txhighpower_lvl62.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %387, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.53) #5
  br label %if.end81.i

if.else63.i:                                      ; preds = %if.else57.i
  %412 = add i32 %undec_sm_pwdb.0.i, -67
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %412)
  %413 = icmp ult i32 %412, 4
  br i1 %413, label %if.then69.i, label %if.else72.i

if.then69.i:                                      ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #7
  %dynamic_txhighpower_lvl71.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 29
  %414 = ptrtoint ptr %dynamic_txhighpower_lvl71.i to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 1, ptr %dynamic_txhighpower_lvl71.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %387, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.54) #5
  br label %if.end81.i

if.else72.i:                                      ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %undec_sm_pwdb.0.i)
  %cmp73.i = icmp slt i32 %undec_sm_pwdb.0.i, 62
  br i1 %cmp73.i, label %if.then75.i, label %if.else72.i.if.end81.i_crit_edge

if.else72.i.if.end81.i_crit_edge:                 ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81.i

if.then75.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #7
  %dynamic_txhighpower_lvl77.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 29
  %415 = ptrtoint ptr %dynamic_txhighpower_lvl77.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 0, ptr %dynamic_txhighpower_lvl77.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %387, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.55) #5
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then75.i, %if.else72.i.if.end81.i_crit_edge, %if.then69.i, %if.then60.i, %if.then51.i, %if.then45.i, %if.then36.i
  %dynamic_txhighpower_lvl83.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 29
  %416 = ptrtoint ptr %dynamic_txhighpower_lvl83.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %dynamic_txhighpower_lvl83.i, align 1
  %last_dtp_lvl86.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 15, i32 24
  %418 = ptrtoint ptr %last_dtp_lvl86.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %last_dtp_lvl86.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %417, i8 %419)
  %cmp88.not.i = icmp eq i8 %417, %419
  br i1 %cmp88.not.i, label %if.end81.i.if.end93.i_crit_edge, label %if.then90.i

if.end81.i.if.end93.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93.i

if.then90.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  %current_channel.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 14, i32 10
  %420 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %current_channel.i, align 1
  %conv91.i = zext i8 %421 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %387, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.56, i32 noundef %conv91.i) #5
  %422 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %current_channel.i, align 1
  call void @rtl92d_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %423) #5
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then90.i, %if.end81.i.if.end93.i_crit_edge
  %424 = ptrtoint ptr %dynamic_txhighpower_lvl83.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %dynamic_txhighpower_lvl83.i, align 1
  %426 = ptrtoint ptr %last_dtp_lvl86.i to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 %425, ptr %last_dtp_lvl86.i, align 1
  br label %rtl92d_dm_dynamic_txpower.exit

rtl92d_dm_dynamic_txpower.exit:                   ; preds = %if.end93.i, %if.then10.i, %if.then.i44
  %427 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %priv, align 8
  %link_state.i53 = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 9, i32 10
  %429 = ptrtoint ptr %link_state.i53 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %link_state.i53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %430)
  %cmp.not.i54 = icmp eq i32 %430, 2
  br i1 %cmp.not.i54, label %if.end.i56, label %if.then.i55

if.then.i55:                                      ; preds = %rtl92d_dm_dynamic_txpower.exit
  call void @__sanitizer_cov_trace_pc() #7
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 15, i32 7
  %431 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 0, ptr %current_turbo_edca.i, align 2
  br label %rtl92d_dm_check_edca_turbo.exit

if.end.i56:                                       ; preds = %rtl92d_dm_dynamic_txpower.exit
  %disable_framebursting.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 15, i32 11
  %432 = ptrtoint ptr %disable_framebursting.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %disable_framebursting.i, align 2, !range !133
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 15, i32 8
  %434 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %is_any_nonbepkts.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool22.not.i = icmp eq i8 %435, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %433)
  %tobool26.not.i = icmp eq i8 %433, 0
  %or.cond.i = select i1 %tobool22.not.i, i1 %tobool26.not.i, i1 false
  br i1 %or.cond.i, label %if.then27.i, label %if.else56.i

if.then27.i:                                      ; preds = %if.end.i56
  %stats.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 24
  %436 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %436)
  %437 = load i64, ptr %stats.i, align 8
  %438 = load i64, ptr @rtl92d_dm_check_edca_turbo.last_txok_cnt, align 8
  %sub.i = sub i64 %437, %438
  %rxbytesunicast.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 24, i32 3
  %439 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load8_noabort(i32 %439)
  %440 = load i64, ptr %rxbytesunicast.i, align 8
  %441 = load i64, ptr @rtl92d_dm_check_edca_turbo.last_rxok_cnt, align 8
  %sub29.i = sub i64 %440, %441
  %mul.i = shl i64 %sub.i, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub29.i, i64 %mul.i)
  %cmp30.i = icmp ugt i64 %sub29.i, %mul.i
  %is_cur_rdlstate.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 15, i32 9
  %442 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %is_cur_rdlstate.i, align 8, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %443)
  %tobool33.not.i = icmp eq i8 %443, 0
  br i1 %cmp30.i, label %if.then31.i, label %if.else.i60

if.then31.i:                                      ; preds = %if.then27.i
  br i1 %tobool33.not.i, label %if.then31.i.if.then38.i_crit_edge, label %lor.lhs.false34.i

if.then31.i.if.then38.i_crit_edge:                ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

lor.lhs.false34.i:                                ; preds = %if.then31.i
  %current_turbo_edca36.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 15, i32 7
  %444 = ptrtoint ptr %current_turbo_edca36.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %current_turbo_edca36.i, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %445)
  %tobool37.not.i = icmp eq i8 %445, 0
  br i1 %tobool37.not.i, label %lor.lhs.false34.i.if.then38.i_crit_edge, label %lor.lhs.false34.i.if.end53.i_crit_edge

lor.lhs.false34.i.if.end53.i_crit_edge:           ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.i

lor.lhs.false34.i.if.then38.i_crit_edge:          ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then38.i:                                      ; preds = %lor.lhs.false34.i.if.then38.i_crit_edge, %if.then31.i.if.then38.i_crit_edge
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 13, i32 7
  %446 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %write32_async.i.i, align 4
  call void %447(ptr noundef %428, i32 noundef 1288, i32 noundef 6202411) #5
  %cfg.i.i57 = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 32
  %448 = ptrtoint ptr %cfg.i.i57 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %cfg.i.i57, align 8
  %write_readback.i.i58 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %449, i32 0, i32 1
  %450 = ptrtoint ptr %write_readback.i.i58 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %write_readback.i.i58, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %451)
  %tobool.not.i.i59 = icmp eq i8 %451, 0
  br i1 %tobool.not.i.i59, label %if.then38.i.if.end53.sink.split.i_crit_edge, label %if.then38.i.if.end53.sink.split.sink.split.i_crit_edge

if.then38.i.if.end53.sink.split.sink.split.i_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.sink.split.sink.split.i

if.then38.i.if.end53.sink.split.i_crit_edge:      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.sink.split.i

if.else.i60:                                      ; preds = %if.then27.i
  br i1 %tobool33.not.i, label %lor.lhs.false45.i, label %if.else.i60.if.then49.i_crit_edge

if.else.i60.if.then49.i_crit_edge:                ; preds = %if.else.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49.i

lor.lhs.false45.i:                                ; preds = %if.else.i60
  %current_turbo_edca47.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 15, i32 7
  %452 = ptrtoint ptr %current_turbo_edca47.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %current_turbo_edca47.i, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %453)
  %tobool48.not.i = icmp eq i8 %453, 0
  br i1 %tobool48.not.i, label %lor.lhs.false45.i.if.then49.i_crit_edge, label %lor.lhs.false45.i.if.end53.i_crit_edge

lor.lhs.false45.i.if.end53.i_crit_edge:           ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.i

lor.lhs.false45.i.if.then49.i_crit_edge:          ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49.i

if.then49.i:                                      ; preds = %lor.lhs.false45.i.if.then49.i_crit_edge, %if.else.i60.if.then49.i_crit_edge
  %write32_async.i100.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 13, i32 7
  %454 = ptrtoint ptr %write32_async.i100.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %write32_async.i100.i, align 4
  call void %455(ptr noundef %428, i32 noundef 1288, i32 noundef 6202411) #5
  %cfg.i101.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 32
  %456 = ptrtoint ptr %cfg.i101.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %cfg.i101.i, align 8
  %write_readback.i102.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %457, i32 0, i32 1
  %458 = ptrtoint ptr %write_readback.i102.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %write_readback.i102.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %459)
  %tobool.not.i103.i = icmp eq i8 %459, 0
  br i1 %tobool.not.i103.i, label %if.then49.i.if.end53.sink.split.i_crit_edge, label %if.then49.i.if.end53.sink.split.sink.split.i_crit_edge

if.then49.i.if.end53.sink.split.sink.split.i_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.sink.split.sink.split.i

if.then49.i.if.end53.sink.split.i_crit_edge:      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.sink.split.i

if.end53.sink.split.sink.split.i:                 ; preds = %if.then49.i.if.end53.sink.split.sink.split.i_crit_edge, %if.then38.i.if.end53.sink.split.sink.split.i_crit_edge
  %.sink.ph.i = phi i8 [ 1, %if.then38.i.if.end53.sink.split.sink.split.i_crit_edge ], [ 0, %if.then49.i.if.end53.sink.split.sink.split.i_crit_edge ]
  %read32_sync.i104.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 13, i32 11
  %460 = ptrtoint ptr %read32_sync.i104.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %read32_sync.i104.i, align 4
  %call.i105.i = call i32 %461(ptr noundef %428, i32 noundef 1288) #5
  br label %if.end53.sink.split.i

if.end53.sink.split.i:                            ; preds = %if.end53.sink.split.sink.split.i, %if.then49.i.if.end53.sink.split.i_crit_edge, %if.then38.i.if.end53.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.then38.i.if.end53.sink.split.i_crit_edge ], [ 0, %if.then49.i.if.end53.sink.split.i_crit_edge ], [ %.sink.ph.i, %if.end53.sink.split.sink.split.i ]
  %462 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 %.sink.i, ptr %is_cur_rdlstate.i, align 8
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end53.sink.split.i, %lor.lhs.false45.i.if.end53.i_crit_edge, %lor.lhs.false34.i.if.end53.i_crit_edge
  %current_turbo_edca55.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 15, i32 7
  %463 = ptrtoint ptr %current_turbo_edca55.i to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 1, ptr %current_turbo_edca55.i, align 2
  br label %rtl92d_dm_check_edca_turbo.exit

if.else56.i:                                      ; preds = %if.end.i56
  %current_turbo_edca58.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 15, i32 7
  %464 = ptrtoint ptr %current_turbo_edca58.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %current_turbo_edca58.i, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %465)
  %tobool59.not.i = icmp eq i8 %465, 0
  br i1 %tobool59.not.i, label %if.else56.i.rtl92d_dm_check_edca_turbo.exit_crit_edge, label %if.then60.i61

if.else56.i.rtl92d_dm_check_edca_turbo.exit_crit_edge: ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92d_dm_check_edca_turbo.exit

if.then60.i61:                                    ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #5
  %466 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 0, ptr %tmp.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 32
  %467 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %468, i32 0, i32 4
  %469 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %ops.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %470, i32 0, i32 20
  %471 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %set_hw_reg.i, align 4
  call void %472(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %tmp.i) #5
  %473 = ptrtoint ptr %current_turbo_edca58.i to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 0, ptr %current_turbo_edca58.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #5
  br label %rtl92d_dm_check_edca_turbo.exit

rtl92d_dm_check_edca_turbo.exit:                  ; preds = %if.then60.i61, %if.else56.i.rtl92d_dm_check_edca_turbo.exit_crit_edge, %if.end53.i, %if.then.i55
  %is_any_nonbepkts66.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 15, i32 8
  %474 = ptrtoint ptr %is_any_nonbepkts66.i to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 0, ptr %is_any_nonbepkts66.i, align 1
  %stats67.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 24
  %475 = ptrtoint ptr %stats67.i to i32
  call void @__asan_load8_noabort(i32 %475)
  %476 = load i64, ptr %stats67.i, align 8
  store i64 %476, ptr @rtl92d_dm_check_edca_turbo.last_txok_cnt, align 8
  %rxbytesunicast70.i = getelementptr inbounds %struct.rtl_priv, ptr %428, i32 0, i32 24, i32 3
  %477 = ptrtoint ptr %rxbytesunicast70.i to i32
  call void @__asan_load8_noabort(i32 %477)
  %478 = load i64, ptr %rxbytesunicast70.i, align 8
  store i64 %478, ptr @rtl92d_dm_check_edca_turbo.last_rxok_cnt, align 8
  br label %if.end

if.end:                                           ; preds = %rtl92d_dm_check_edca_turbo.exit, %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92d_get_rightchnlplace_for_iqk(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_ap_calibrate(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_lc_calibrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_reset_iqk_result(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_iq_calibrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_set_txpower_level(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 306, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 311, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 1190, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 1195, i32 3}
!8 = !{ptr @rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping, !9, !"index_mapping", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 792, i32 18}
!10 = !{ptr @rtl92d_dm_txpower_tracking_callback_thermalmeter.index_mapping_internal_pa, !11, !"index_mapping_internal_pa", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 804, i32 18}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 824, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 826, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 849, i32 4}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 863, i32 5}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 892, i32 3}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 937, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 977, i32 3}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 983, i32 3}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 1007, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 1012, i32 3}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 1054, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 1138, i32 3}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 1143, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 1165, i32 2}
!40 = !{ptr @ofdmswing_table, !41, !"ofdmswing_table", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 15, i32 18}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 698, i32 4}
!44 = !{ptr @cckswing_table_ch1ch13, !45, !"cckswing_table_ch1ch13", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 61, i32 17}
!46 = !{ptr @cckswing_table_ch14, !47, !"cckswing_table_ch14", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 97, i32 17}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 669, i32 2}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 1175, i32 2}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 197, i32 2}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 201, i32 2}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 207, i32 2}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 224, i32 3}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 232, i32 4}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 238, i32 4}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 244, i32 3}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 249, i32 2}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 355, i32 2}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 374, i32 2}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 390, i32 2}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 393, i32 2}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 399, i32 3}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 438, i32 2}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 441, i32 2}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 453, i32 2}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 330, i32 3}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 334, i32 4}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 339, i32 4}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 290, i32 2}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 293, i32 2}
!96 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 296, i32 2}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 490, i32 4}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 496, i32 4}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 504, i32 3}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 512, i32 4}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 518, i32 4}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 523, i32 4}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 531, i32 4}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 541, i32 4}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 547, i32 4}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 552, i32 3}
!120 = !{ptr @rtl92d_dm_check_edca_turbo.last_txok_cnt, !121, !"last_txok_cnt", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 595, i32 13}
!122 = !{ptr @rtl92d_dm_check_edca_turbo.last_rxok_cnt, !123, !"last_rxok_cnt", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/dm.c", i32 596, i32 13}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i8 0, i8 2}
!134 = !{!"auto-init"}
