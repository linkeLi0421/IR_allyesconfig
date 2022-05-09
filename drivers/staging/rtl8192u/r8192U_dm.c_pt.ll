; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/r8192U_dm.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/r8192U_dm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.dig = type { i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.dynamic_rx_path_sel = type { i32, i8, i8, [4 x i8], [4 x i8], [4 x i32] }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_device = type { ptr, %struct.ieee80211_security, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, ptr, %struct.spinlock, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, i8, %struct.net_device_stats, %struct.ieee80211_stats, %struct.ieee80211_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, [6 x i8], i16, i16, %struct.list_head, [4 x ptr], i32, %struct.timer_list, i32, i32, [17 x [4 x %struct.ieee80211_frag_entry]], [17 x i32], i16, i16, [6 x i8], [6 x i8], %struct.ieee80211_network, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, ptr, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i16, i16, i32, i32, %struct.tasklet_struct, i32, i32, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i8, i32, i8, i8, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, [5 x ptr], i32, i32, i8, i32, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [4 x i32], i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, %struct.rt_power_save_control, %struct.tx_pending, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, ptr, [128 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.ieee80211_security = type { i16, i8, [4 x i8], [4 x [32 x i8]], i8, i16 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %struct.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%struct.tspec_body = type { %struct.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.qos_tsinfo = type { i24 }
%union.qos_tclas = type { %struct.type1_ipv6 }
%struct.type1_ipv6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.ieee80211_network = type <{ [6 x i8], i8, i8, [6 x i8], i8, [33 x i8], i8, [3 x i8], %struct.ieee80211_qos_data, i8, i8, i8, i8, [2 x i16], i8, i8, [6 x i8], %struct.ieee80211_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, [3 x i8], i32, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i8, i32, [64 x i8], i32, %struct.ieee80211_tim_parameters, i8, i8, [2 x i32], i8, [4 x %struct.ieee80211_wmm_ac_param], i8, i8, i8, i16, [255 x i8], %struct._BSS_HT, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head, [4 x i8] }>
%struct.ieee80211_qos_data = type { %struct.ieee80211_qos_parameters, i32, i32, i8, i8 }
%struct.ieee80211_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.ieee80211_rx_stats = type { [2 x i32], i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, ptr, i16, i16, i16, i16, i8, i8, i8, [4 x i8], i16 }
%struct.ieee80211_tim_parameters = type { i8, i8 }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }
%struct._BSS_HT = type <{ i8, [32 x i8], i16, [32 x i8], i16, i32, i8, i8 }>
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i8 }
%struct.rt_power_save_control = type { i8, i8, i8, i32, %struct.work_struct, %struct.timer_list, i32, i8, i32, %struct.ieee80211_network, i8, i8, i8, i8, [33 x i8], %struct.octet_string, i8, i8, i8, i16, i8, i16, %struct.octet_string, [264 x i8], i8, %struct.ibss_parms, i8, i8, [6 x i8] }
%struct.octet_string = type { ptr, i16 }
%struct.ibss_parms = type { i16 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct._RT_HIGH_THROUGHPUT = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capability_ele, %struct._HT_INFORMATION_ELE, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32 }>
%struct.ht_capability_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct._HT_INFORMATION_ELE = type { i8, [5 x i8], [16 x i8] }
%struct.tx_config_cmd = type { i32, i32, i32 }
%struct.r8192_priv = type { ptr, i16, i16, i16, i8, i8, i32, i32, [9 x i8], i32, ptr, i16, i32, i16, i32, i16, i16, %struct.spinlock, %struct.spinlock, %struct.mutex, i16, i16, i16, i16, i16, i16, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, i16, %struct.Stats, %struct.iw_statistics, ptr, ptr, ptr, %struct.atomic_t, ptr, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, i16, [16 x %struct.atomic_t], %struct.tasklet_struct, ptr, i16, i16, i32, i8, i32, i32, i16, i32, i8, i8, i8, i8, i16, %struct.ChnlAccessSetting, %struct.work_struct, i16, i8, i8, i8, i8, i32, ptr, i32, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], [24 x i8], [4 x %struct._BB_REGISTER_DEFINITION], [6 x i32], i32, [14 x i8], [14 x i8], [14 x i8], i32, i8, [2 x i8], i8, [2 x i8], i8, i8, i32, i8, i8, i8, i8, i32, i8, i8, [4 x i32], i8, [4 x i8], i8, %struct.timer_list, i8, i8, i8, i8, i8, i8, i8, %struct._rate_adaptive, [37 x %struct._txbbgain_struct], i8, i8, i8, i8, [23 x %struct._ccktxbbgain_struct], [23 x %struct._ccktxbbgain_struct], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct._init_gain, [4 x i8], i8, i8, i8, %struct.timer_list, i8, i32, i32, i32, i8, i8, i32, i8, i16, i8, i8, i32, i8, i32, i32, [40 x i8], i8, i32, i32, i8, i8, i32, i8, i8, i16, i16, i32, i8, i8, i8, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr }
%struct.Stats = type { i32, i32, i32, i32, i32, [4 x [32 x i32]], [2 x [32 x i32]], [5 x i32], [5 x i32], i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [100 x i32], [100 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [2 x i8], [4 x i32], %struct._rt_9x_tx_rate_history, [100 x i32], i32, %struct._RT_SMOOTH_DATA_4RF, i32 }
%struct._rt_9x_tx_rate_history = type { [4 x i32], [8 x i32], [4 x [16 x i32]] }
%struct._RT_SMOOTH_DATA_4RF = type { [4 x [100 x i8]], i32, i32, [4 x i32] }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.ChnlAccessSetting = type { i16, i16, i16, i16, i16, i16 }
%struct._BB_REGISTER_DEFINITION = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._rate_adaptive = type { i8, i32, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct._txbbgain_struct = type { i32, i32 }
%struct._ccktxbbgain_struct = type { [8 x i8] }
%struct._init_gain = type { i8, i8, i8, i8, i8 }

@dm_shadow = dso_local global { [16 x [256 x i8]], [1024 x i8] } zeroinitializer, align 32
@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@dm_fsync_timer_callback.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192u_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dm_fsync_timer_callback\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/staging/rtl8192u/r8192U_dm.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"RTL8192U: rateRecord %d rateCount %d, rateCountdiff %d bSwitchFsync %d\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dm_fsync_timer_callback.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 2, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RTL8192U: ContinueDiffCount %d\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@dm_fsync_timer_callback.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dm_check_fsync.reg_c38_State = internal global { i8, [31 x i8] } zeroinitializer, align 32
@dm_check_fsync.reset_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_check_fsync.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 2, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_check_fsync\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"RTL8192U: RSSI %d TimeInterval %d MultipleTimeInterval %d\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@dm_check_fsync.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 2, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"RTL8192U: RateBitmap 0x%x FirstDiffRateThreshold %d SecondDiffRateThreshold %d\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@dm_digtable = dso_local global { %struct.dig, [52 x i8] } zeroinitializer, align 32
@dm_check_rate_adaptive.ping_rssi_state = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dm_check_rate_adaptive.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dm_check_rate_adaptive\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"RTL8192U: <---- dm_check_rate_adaptive(): driver is going to unload\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@dm_check_rate_adaptive.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RTL8192U: currentRATR = %x, targetRATR = %x\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dm_TXPowerTrackingCallback_TSSI\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTL8192U: powerlevelOFDM24G = %x\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"RTL8192U: Set configuration with tx cmd queue fail!\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTL8192U: TSSI_report_value = %d\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RTL8192U: we filtered the data\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.16, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RTL8192U: Avg_TSSI_Meas_from_driver = %d\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.17, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RTL8192U: TSSI_13dBm = %d\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.18, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTL8192U: tx power track is done\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.19, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RTL8192U: priv->rfa_txpowertrackingindex = %d\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.20, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"RTL8192U: priv->rfa_txpowertrackingindex_real = %d\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.21, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"RTL8192U: priv->cck_present_attenuation_difference = %d\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.22, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RTL8192U: priv->cck_present_attenuation = %d\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.19, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.20, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.21, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.22, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.23, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RTL8192U: tx power track--->limited\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@OFDMSwingTable = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 2139095550, i32 1908408775, i32 1698693525, i32 1514144105, i32 1350566210, i32 1203765535, i32 1073742080, i32 956301540, i32 851443915, i32 759169205, i32 679477410, i32 603979920, i32 536871040, i32 478150770, i32 427819110, i32 650117211, i32 608174161, i32 301989960, i32 268435520], [52 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dm_TXPowerTrackingCallback_ThermalMeter\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RTL8192U: Initial reg0x%x = 0x%x, OFDM_index=0x%x\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@CCKSwingTable_Ch1_Ch13 = internal constant { [12 x [8 x i8]], [32 x i8] } { [12 x [8 x i8]] [[8 x i8] c"65.%\1C\12\09\04", [8 x i8] c"0/)!\19\10\08\03", [8 x i8] c"+*%\1E\16\0E\07\03", [8 x i8] c"&%!\1B\14\0D\06\03", [8 x i8] c"\22!\1D\18\11\0B\06\02", [8 x i8] c"\1F\1E\1A\15\10\0A\05\02", [8 x i8] c"\1B\1A\17\13\0E\09\04\02", [8 x i8] c"\18\17\15\11\0C\08\04\02", [8 x i8] c"\16\15\12\0F\0B\07\04\01", [8 x i8] c"\13\13\10\0D\0A\06\03\01", [8 x i8] c"\11\11\0F\0C\09\06\03\01", [8 x i8] c"\0F\0F\0D\0B\08\05\03\01"], [32 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RTL8192U: Initial reg0x%x = 0x%x, CCK_index=0x%x\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RTL8192U: Readback ThermalMeterA = %d\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.28, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RTL8192U: Valid ThermalMeterA = %d\0A\0A\00", [59 x i8] zeroinitializer }, align 32
@dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.29, i8 0, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RTL8192U: Update OFDMSwing[%d] = 0x%x\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@dm_CheckTXPowerTracking_TSSI.tx_power_track_counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_CheckTXPowerTracking_ThermalMeter.TM_Trigger = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 1, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dm_CCKTxPowerAdjust_ThermalMeter\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RTL8192U: CCK not chnl 14, reg 0x%x = 0x%x\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 1, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 1, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@CCKSwingTable_Ch14 = internal constant { [12 x [8 x i8]], [32 x i8] } { [12 x [8 x i8]] [[8 x i8] c"65.\1B\00\00\00\00", [8 x i8] c"0/)\18\00\00\00\00", [8 x i8] c"+*%\15\00\00\00\00", [8 x i8] c"&%!\13\00\00\00\00", [8 x i8] c"\22!\1D\11\00\00\00\00", [8 x i8] c"\1F\1E\1A\0F\00\00\00\00", [8 x i8] c"\1B\1A\17\0E\00\00\00\00", [8 x i8] c"\18\17\15\0C\00\00\00\00", [8 x i8] c"\16\15\12\0B\00\00\00\00", [8 x i8] c"\13\13\10\0A\00\00\00\00", [8 x i8] c"\11\11\0F\09\00\00\00\00", [8 x i8] c"\0F\0F\0D\08\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 1, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RTL8192U: CCK chnl 14, reg 0x%x = 0x%x\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 1, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 1, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig = internal global { i8, [31 x i8] } zeroinitializer, align 32
@dm_initial_gain.initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dm_initial_gain.force_write = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dm_initial_gain.reset_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_pd_th.initialized = internal global { i8, [31 x i8] } zeroinitializer, align 32
@dm_pd_th.force_write = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dm_pd_th.reset_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_cs_ratio.initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dm_cs_ratio.force_write = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dm_cs_ratio.reset_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_check_edca_turbo.lastTxOkCnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_check_edca_turbo.lastRxOkCnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@edca_setting_DL = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 6177570, i32 6177570, i32 6177570, i32 6308642, i32 42063, i32 6202447], [40 x i8] zeroinitializer }, align 32
@edca_setting_UL = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 6177570, i32 42063, i32 6177570, i32 6308642, i32 6202447, i32 6202447], [40 x i8] zeroinitializer }, align 32
@dm_check_edca_turbo.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 2, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dm_check_edca_turbo\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"RTL8192U: SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@dm_ctstoself.lastTxOkCnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_ctstoself.lastRxOkCnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_check_pbc_gpio.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 2, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm_check_pbc_gpio\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RTL8192U: CheckPbcGPIO - PBC is pressed\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@DM_RxPathSelTable = internal global { %struct.dynamic_rx_path_sel, [32 x i8] } zeroinitializer, align 32
@dm_rxpath_sel_byrssi.disabled_rf_cnt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@dm_rxpath_sel_byrssi.cck_Rx_Path_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dm_init_fsync.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&priv->fsync_timer)\00", [43 x i8] zeroinitializer }, align 32
@dm_StartHWFsync.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 2, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm_StartHWFsync\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RTL8192U: %s\0A\0A\00", [17 x i8] zeroinitializer }, align 32
@dm_EndSWFsync.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.39, i8 2, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dm_EndSWFsync\00", [18 x i8] zeroinitializer }, align 32
@dm_StartSWFsync.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.39, i8 2, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm_StartSWFsync\00", [16 x i8] zeroinitializer }, align 32
@dm_EndHWFsync.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.39, i8 2, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dm_EndHWFsync\00", [18 x i8] zeroinitializer }, align 32
@dm_dynamic_txpower.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 2, i8 -30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm_dynamic_txpower\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RTL8192U: priv->undecorated_smoothed_pwdb = %ld\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@dm_dynamic_txpower.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 2, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RTL8192U: SetTxPowerLevel8190()  channel = %d\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 16]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [14 x i64] [i64 12, i64 32, i64 15, i64 17, i64 19, i64 22, i64 24, i64 27, i64 31, i64 34, i64 38, i64 43, i64 48, i64 54]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"dm_shadow\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 43, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2640, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2682, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"reg_c38_State\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2762, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2763, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2765, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2766, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"dm_digtable\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 41, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant [39 x i8] c"dm_check_rate_adaptive.ping_rssi_state\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 294, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 400, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 517, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 525, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 546, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 559, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 569, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 571, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 583, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 584, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 585, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 586, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 587, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 633, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"OFDMSwingTable\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 442, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 662, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant [23 x i8] c"CCKSwingTable_Ch1_Ch13\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 464, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 672, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 689, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 694, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 750, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"tx_power_track_counter\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1302, i32 13 }
@___asan_gen_.171 = private unnamed_addr constant [48 x i8] c"dm_CheckTXPowerTracking_ThermalMeter.TM_Trigger\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1410, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c"CCKSwingTable_Ch14\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 479, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1434, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1701, i32 13 }
@___asan_gen_.187 = private unnamed_addr constant [18 x i8] c"reset_cnt_highpwr\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1863, i32 13 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"fw_dig\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1661, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant [28 x i8] c"dm_initial_gain.initialized\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [28 x i8] c"dm_initial_gain.force_write\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1921, i32 15 }
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"initialized\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1980, i32 15 }
@___asan_gen_.201 = private unnamed_addr constant [21 x i8] c"dm_pd_th.force_write\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1981, i32 15 }
@___asan_gen_.205 = private unnamed_addr constant [24 x i8] c"dm_cs_ratio.initialized\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [24 x i8] c"dm_cs_ratio.force_write\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [10 x i8] c"reset_cnt\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2063, i32 15 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2125, i32 25 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2126, i32 25 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"edca_setting_DL\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 26, i32 12 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"edca_setting_UL\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 30, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2207, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant [12 x i8] c"lastTxOkCnt\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2233, i32 26 }
@___asan_gen_.231 = private unnamed_addr constant [12 x i8] c"lastRxOkCnt\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2234, i32 26 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2291, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"DM_RxPathSelTable\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 45, i32 35 }
@___asan_gen_.243 = private unnamed_addr constant [16 x i8] c"disabled_rf_cnt\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2364, i32 14 }
@___asan_gen_.246 = private unnamed_addr constant [45 x i8] c"dm_rxpath_sel_byrssi.cck_Rx_Path_initialized\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2581, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2688, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2697, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2719, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2750, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2954, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [40 x i8] c"../drivers/staging/rtl8192u/r8192U_dm.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2979, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @dm_shadow, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dm_check_fsync.reg_c38_State, ptr @dm_check_fsync.reset_cnt, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dm_digtable, ptr @dm_check_rate_adaptive.ping_rssi_state, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @OFDMSwingTable, ptr @.str.24, ptr @.str.25, ptr @CCKSwingTable_Ch1_Ch13, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @dm_CheckTXPowerTracking_TSSI.tx_power_track_counter, ptr @dm_CheckTXPowerTracking_ThermalMeter.TM_Trigger, ptr @.str.30, ptr @.str.31, ptr @CCKSwingTable_Ch14, ptr @.str.32, ptr @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, ptr @dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, ptr @dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig, ptr @dm_initial_gain.initialized, ptr @dm_initial_gain.force_write, ptr @dm_initial_gain.reset_cnt, ptr @dm_pd_th.initialized, ptr @dm_pd_th.force_write, ptr @dm_pd_th.reset_cnt, ptr @dm_cs_ratio.initialized, ptr @dm_cs_ratio.force_write, ptr @dm_cs_ratio.reset_cnt, ptr @dm_check_edca_turbo.lastTxOkCnt, ptr @dm_check_edca_turbo.lastRxOkCnt, ptr @edca_setting_DL, ptr @edca_setting_UL, ptr @.str.33, ptr @.str.34, ptr @dm_ctstoself.lastTxOkCnt, ptr @dm_ctstoself.lastRxOkCnt, ptr @.str.35, ptr @.str.36, ptr @DM_RxPathSelTable, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, ptr @dm_rxpath_sel_byrssi.cck_Rx_Path_initialized, ptr @dm_init_fsync.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_shadow to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_check_fsync.reg_c38_State to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_check_fsync.reset_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_digtable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_check_rate_adaptive.ping_rssi_state to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OFDMSwingTable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CCKSwingTable_Ch1_Ch13 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_CheckTXPowerTracking_TSSI.tx_power_track_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_CheckTXPowerTracking_ThermalMeter.TM_Trigger to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CCKSwingTable_Ch14 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_initial_gain.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_initial_gain.force_write to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_initial_gain.reset_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pd_th.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pd_th.force_write to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pd_th.reset_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_cs_ratio.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_cs_ratio.force_write to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_cs_ratio.reset_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_check_edca_turbo.lastTxOkCnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_check_edca_turbo.lastRxOkCnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edca_setting_DL to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edca_setting_UL to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_ctstoself.lastTxOkCnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_ctstoself.lastRxOkCnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DM_RxPathSelTable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_rxpath_sel_byrssi.cck_Rx_Path_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_init_fsync.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_hal_dm(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %undecorated_smoothed_pwdb = getelementptr i8, ptr %dev, i32 34360
  %0 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %undecorated_smoothed_pwdb, align 4
  %ieee80211.i = getelementptr i8, ptr %dev, i32 30156
  %1 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ieee80211.i, align 4
  %bdynamic_txpower_enable.i = getelementptr inbounds %struct.ieee80211_device, ptr %2, i32 0, i32 142
  %3 = ptrtoint ptr %bdynamic_txpower_enable.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bdynamic_txpower_enable.i, align 1
  %bDynamicTxHighPower.i = getelementptr i8, ptr %dev, i32 34449
  %4 = ptrtoint ptr %bDynamicTxHighPower.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %bDynamicTxHighPower.i, align 1
  %ratr_state.i = getelementptr i8, ptr %dev, i32 34460
  %5 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %ratr_state.i, align 4
  %high2low_rssi_thresh_for_ra.i = getelementptr i8, ptr %dev, i32 34472
  %6 = ptrtoint ptr %high2low_rssi_thresh_for_ra.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50, ptr %high2low_rssi_thresh_for_ra.i, align 4
  %low2high_rssi_thresh_for_ra20M.i = getelementptr i8, ptr %dev, i32 34484
  %7 = ptrtoint ptr %low2high_rssi_thresh_for_ra20M.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 35, ptr %low2high_rssi_thresh_for_ra20M.i, align 4
  %low2high_rssi_thresh_for_ra40M.i = getelementptr i8, ptr %dev, i32 34476
  %8 = ptrtoint ptr %low2high_rssi_thresh_for_ra40M.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 15, ptr %low2high_rssi_thresh_for_ra40M.i, align 4
  %high_rssi_thresh_for_ra.i = getelementptr i8, ptr %dev, i32 34468
  %9 = ptrtoint ptr %high_rssi_thresh_for_ra.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 55, ptr %high_rssi_thresh_for_ra.i, align 4
  %low_rssi_thresh_for_ra20M.i = getelementptr i8, ptr %dev, i32 34488
  %10 = ptrtoint ptr %low_rssi_thresh_for_ra20M.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 30, ptr %low_rssi_thresh_for_ra20M.i, align 4
  %low_rssi_thresh_for_ra40M.i = getelementptr i8, ptr %dev, i32 34480
  %11 = ptrtoint ptr %low_rssi_thresh_for_ra40M.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %low_rssi_thresh_for_ra40M.i, align 4
  %CustomerID.i = getelementptr i8, ptr %dev, i32 30132
  %12 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %CustomerID.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %13)
  %cmp.i = icmp eq i32 %13, 10
  %spec.select.i = zext i1 %cmp.i to i8
  %14 = getelementptr i8, ptr %dev, i32 34512
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select.i, ptr %14, align 4
  %ping_rssi_thresh_for_ra.i = getelementptr i8, ptr %dev, i32 34520
  %16 = ptrtoint ptr %ping_rssi_thresh_for_ra.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 15, ptr %ping_rssi_thresh_for_ra.i, align 4
  %rf_type.i = getelementptr i8, ptr %dev, i32 30464
  %17 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rf_type.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %entry.init_rate_adaptive.exit_crit_edge [
    i32 1, label %entry.if.end15.sink.split.i_crit_edge
    i32 0, label %if.then7.i
  ]

entry.if.end15.sink.split.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i

entry.init_rate_adaptive.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_rate_adaptive.exit

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i

if.end15.sink.split.i:                            ; preds = %if.then7.i, %entry.if.end15.sink.split.i_crit_edge
  %.sink43.i = phi i32 [ 983040, %if.then7.i ], [ -1894842368, %entry.if.end15.sink.split.i_crit_edge ]
  %.sink42.i = phi i32 [ 1044480, %if.then7.i ], [ -1894780928, %entry.if.end15.sink.split.i_crit_edge ]
  %.sink41.i = phi i32 [ 1044481, %if.then7.i ], [ -1894780927, %entry.if.end15.sink.split.i_crit_edge ]
  %.sink40.i = phi i32 [ 1044485, %if.then7.i ], [ -1894780923, %entry.if.end15.sink.split.i_crit_edge ]
  %upper_rssi_threshold_ratr8.i = getelementptr i8, ptr %dev, i32 34492
  %20 = ptrtoint ptr %upper_rssi_threshold_ratr8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink43.i, ptr %upper_rssi_threshold_ratr8.i, align 4
  %middle_rssi_threshold_ratr9.i = getelementptr i8, ptr %dev, i32 34496
  %21 = ptrtoint ptr %middle_rssi_threshold_ratr9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink42.i, ptr %middle_rssi_threshold_ratr9.i, align 4
  %low_rssi_threshold_ratr10.i = getelementptr i8, ptr %dev, i32 34500
  %22 = ptrtoint ptr %low_rssi_threshold_ratr10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink41.i, ptr %low_rssi_threshold_ratr10.i, align 4
  %low_rssi_threshold_ratr_40M11.i = getelementptr i8, ptr %dev, i32 34504
  %23 = ptrtoint ptr %low_rssi_threshold_ratr_40M11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink40.i, ptr %low_rssi_threshold_ratr_40M11.i, align 4
  %low_rssi_threshold_ratr_20M12.i = getelementptr i8, ptr %dev, i32 34508
  %24 = ptrtoint ptr %low_rssi_threshold_ratr_20M12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink41.i, ptr %low_rssi_threshold_ratr_20M12.i, align 4
  %ping_rssi_ratr13.i = getelementptr i8, ptr %dev, i32 34516
  %25 = ptrtoint ptr %ping_rssi_ratr13.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 13, ptr %ping_rssi_ratr13.i, align 4
  br label %init_rate_adaptive.exit

init_rate_adaptive.exit:                          ; preds = %if.end15.sink.split.i, %entry.init_rate_adaptive.exit_crit_edge
  store i8 1, ptr @dm_digtable, align 4
  store i32 1, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 1), align 4
  store i8 0, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 2), align 4
  store i32 2, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 7), align 4
  store i32 2, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 8), align 4
  store i32 35, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 3), align 4
  store i32 40, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 4), align 4
  store i32 70, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 5), align 4
  store i32 75, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 6), align 4
  store i32 50, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 19), align 4
  store i8 12, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 17), align 4
  %26 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %CustomerID.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %27)
  %cmp.i10 = icmp eq i32 %27, 10
  %..i = select i1 %cmp.i10, i8 18, i8 28
  store i8 %..i, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 18), align 1
  %bcurrent_turbo_EDCA.i = getelementptr i8, ptr %dev, i32 35220
  %28 = ptrtoint ptr %bcurrent_turbo_EDCA.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %bcurrent_turbo_EDCA.i, align 4
  %29 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ieee80211.i, align 4
  %bis_any_nonbepkts.i = getelementptr inbounds %struct.ieee80211_device, ptr %30, i32 0, i32 153
  %31 = ptrtoint ptr %bis_any_nonbepkts.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %bis_any_nonbepkts.i, align 4
  %bis_cur_rdlstate.i = getelementptr i8, ptr %dev, i32 35221
  %32 = ptrtoint ptr %bis_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %bis_cur_rdlstate.i, align 1
  %33 = load ptr, ptr %ieee80211.i, align 4
  %bandwidth_auto_switch.i = getelementptr inbounds %struct.ieee80211_device, ptr %33, i32 0, i32 154
  %34 = ptrtoint ptr %bandwidth_auto_switch.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 30, ptr %bandwidth_auto_switch.i, align 8
  %35 = load ptr, ptr %ieee80211.i, align 4
  %threshold_40Mhzto20Mhz.i = getelementptr inbounds %struct.ieee80211_device, ptr %35, i32 0, i32 154, i32 1
  %36 = ptrtoint ptr %threshold_40Mhzto20Mhz.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 25, ptr %threshold_40Mhzto20Mhz.i, align 4
  %37 = load ptr, ptr %ieee80211.i, align 4
  %bforced_tx20Mhz.i = getelementptr inbounds %struct.ieee80211_device, ptr %37, i32 0, i32 154, i32 2
  %38 = ptrtoint ptr %bforced_tx20Mhz.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %bforced_tx20Mhz.i, align 8
  %39 = load ptr, ptr %ieee80211.i, align 4
  %bautoswitch_enable.i = getelementptr inbounds %struct.ieee80211_device, ptr %39, i32 0, i32 154, i32 3
  %40 = ptrtoint ptr %bautoswitch_enable.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %bautoswitch_enable.i, align 1
  %41 = load ptr, ptr %ieee80211.i, align 4
  %fsync_time_interval.i = getelementptr inbounds %struct.ieee80211_device, ptr %41, i32 0, i32 145
  %42 = ptrtoint ptr %fsync_time_interval.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 500, ptr %fsync_time_interval.i, align 4
  %43 = load ptr, ptr %ieee80211.i, align 4
  %fsync_rate_bitmap.i = getelementptr inbounds %struct.ieee80211_device, ptr %43, i32 0, i32 146
  %44 = ptrtoint ptr %fsync_rate_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 251660288, ptr %fsync_rate_bitmap.i, align 8
  %45 = load ptr, ptr %ieee80211.i, align 4
  %fsync_rssi_threshold.i = getelementptr inbounds %struct.ieee80211_device, ptr %45, i32 0, i32 147
  %46 = ptrtoint ptr %fsync_rssi_threshold.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 30, ptr %fsync_rssi_threshold.i, align 4
  %47 = load ptr, ptr %ieee80211.i, align 4
  %bfsync_enable.i = getelementptr inbounds %struct.ieee80211_device, ptr %47, i32 0, i32 148
  %48 = ptrtoint ptr %bfsync_enable.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %bfsync_enable.i, align 1
  %49 = load ptr, ptr %ieee80211.i, align 4
  %fsync_multiple_timeinterval.i = getelementptr inbounds %struct.ieee80211_device, ptr %49, i32 0, i32 149
  %50 = ptrtoint ptr %fsync_multiple_timeinterval.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %fsync_multiple_timeinterval.i, align 2
  %51 = load ptr, ptr %ieee80211.i, align 4
  %fsync_firstdiff_ratethreshold.i = getelementptr inbounds %struct.ieee80211_device, ptr %51, i32 0, i32 150
  %52 = ptrtoint ptr %fsync_firstdiff_ratethreshold.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 100, ptr %fsync_firstdiff_ratethreshold.i, align 8
  %53 = load ptr, ptr %ieee80211.i, align 4
  %fsync_seconddiff_ratethreshold.i = getelementptr inbounds %struct.ieee80211_device, ptr %53, i32 0, i32 151
  %54 = ptrtoint ptr %fsync_seconddiff_ratethreshold.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 200, ptr %fsync_seconddiff_ratethreshold.i, align 4
  %55 = load ptr, ptr %ieee80211.i, align 4
  %fsync_state.i = getelementptr inbounds %struct.ieee80211_device, ptr %55, i32 0, i32 152
  %56 = ptrtoint ptr %fsync_state.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %fsync_state.i, align 8
  %framesyncMonitor.i = getelementptr i8, ptr %dev, i32 35296
  %57 = ptrtoint ptr %framesyncMonitor.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %framesyncMonitor.i, align 4
  %fsync_timer.i = getelementptr i8, ptr %dev, i32 35224
  tail call void @init_timer_key(ptr noundef %fsync_timer.i, ptr noundef nonnull @dm_fsync_timer_callback, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @dm_init_fsync.__key) #6
  %58 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %CustomerID.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %59)
  %cmp.i15 = icmp eq i32 %59, 10
  %..i16 = zext i1 %cmp.i15 to i32
  store i32 %..i16, ptr @DM_RxPathSelTable, align 4
  store i8 0, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 2), align 1
  store i32 842150450, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 3, i32 0), align 2
  store i32 1684300900, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4, i32 0), align 2
  store i32 -64, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 0), align 4
  store i32 -64, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 1), align 4
  store i32 -64, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 2), align 4
  store i32 -64, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 3), align 4
  %60 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ieee80211.i, align 4
  %bCTSToSelfEnable.i = getelementptr inbounds %struct.ieee80211_device, ptr %61, i32 0, i32 143
  %62 = ptrtoint ptr %bCTSToSelfEnable.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %bCTSToSelfEnable.i, align 8
  %63 = load ptr, ptr %ieee80211.i, align 4
  %CTSToSelfTH.i = getelementptr inbounds %struct.ieee80211_device, ptr %63, i32 0, i32 144
  %64 = ptrtoint ptr %CTSToSelfTH.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 30, ptr %CTSToSelfTH.i, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_rate_adaptive(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ratr_state = getelementptr i8, ptr %dev, i32 34460
  %0 = ptrtoint ptr %ratr_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %ratr_state, align 4
  %high2low_rssi_thresh_for_ra = getelementptr i8, ptr %dev, i32 34472
  %1 = ptrtoint ptr %high2low_rssi_thresh_for_ra to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 50, ptr %high2low_rssi_thresh_for_ra, align 4
  %low2high_rssi_thresh_for_ra20M = getelementptr i8, ptr %dev, i32 34484
  %2 = ptrtoint ptr %low2high_rssi_thresh_for_ra20M to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 35, ptr %low2high_rssi_thresh_for_ra20M, align 4
  %low2high_rssi_thresh_for_ra40M = getelementptr i8, ptr %dev, i32 34476
  %3 = ptrtoint ptr %low2high_rssi_thresh_for_ra40M to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 15, ptr %low2high_rssi_thresh_for_ra40M, align 4
  %high_rssi_thresh_for_ra = getelementptr i8, ptr %dev, i32 34468
  %4 = ptrtoint ptr %high_rssi_thresh_for_ra to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 55, ptr %high_rssi_thresh_for_ra, align 4
  %low_rssi_thresh_for_ra20M = getelementptr i8, ptr %dev, i32 34488
  %5 = ptrtoint ptr %low_rssi_thresh_for_ra20M to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 30, ptr %low_rssi_thresh_for_ra20M, align 4
  %low_rssi_thresh_for_ra40M = getelementptr i8, ptr %dev, i32 34480
  %6 = ptrtoint ptr %low_rssi_thresh_for_ra40M to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %low_rssi_thresh_for_ra40M, align 4
  %CustomerID = getelementptr i8, ptr %dev, i32 30132
  %7 = ptrtoint ptr %CustomerID to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %CustomerID, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %cmp = icmp eq i32 %8, 10
  %spec.select = zext i1 %cmp to i8
  %9 = getelementptr i8, ptr %dev, i32 34512
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %9, align 4
  %ping_rssi_thresh_for_ra = getelementptr i8, ptr %dev, i32 34520
  %11 = ptrtoint ptr %ping_rssi_thresh_for_ra to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 15, ptr %ping_rssi_thresh_for_ra, align 4
  %rf_type = getelementptr i8, ptr %dev, i32 30464
  %12 = ptrtoint ptr %rf_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rf_type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %13, label %entry.if.end15_crit_edge [
    i32 1, label %entry.if.end15.sink.split_crit_edge
    i32 0, label %if.then7
  ]

entry.if.end15.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then7, %entry.if.end15.sink.split_crit_edge
  %.sink43 = phi i32 [ 983040, %if.then7 ], [ -1894842368, %entry.if.end15.sink.split_crit_edge ]
  %.sink42 = phi i32 [ 1044480, %if.then7 ], [ -1894780928, %entry.if.end15.sink.split_crit_edge ]
  %.sink41 = phi i32 [ 1044481, %if.then7 ], [ -1894780927, %entry.if.end15.sink.split_crit_edge ]
  %.sink40 = phi i32 [ 1044485, %if.then7 ], [ -1894780923, %entry.if.end15.sink.split_crit_edge ]
  %upper_rssi_threshold_ratr8 = getelementptr i8, ptr %dev, i32 34492
  %15 = ptrtoint ptr %upper_rssi_threshold_ratr8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink43, ptr %upper_rssi_threshold_ratr8, align 4
  %middle_rssi_threshold_ratr9 = getelementptr i8, ptr %dev, i32 34496
  %16 = ptrtoint ptr %middle_rssi_threshold_ratr9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink42, ptr %middle_rssi_threshold_ratr9, align 4
  %low_rssi_threshold_ratr10 = getelementptr i8, ptr %dev, i32 34500
  %17 = ptrtoint ptr %low_rssi_threshold_ratr10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink41, ptr %low_rssi_threshold_ratr10, align 4
  %low_rssi_threshold_ratr_40M11 = getelementptr i8, ptr %dev, i32 34504
  %18 = ptrtoint ptr %low_rssi_threshold_ratr_40M11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink40, ptr %low_rssi_threshold_ratr_40M11, align 4
  %low_rssi_threshold_ratr_20M12 = getelementptr i8, ptr %dev, i32 34508
  %19 = ptrtoint ptr %low_rssi_threshold_ratr_20M12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink41, ptr %low_rssi_threshold_ratr_20M12, align 4
  %ping_rssi_ratr13 = getelementptr i8, ptr %dev, i32 34516
  %20 = ptrtoint ptr %ping_rssi_ratr13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 13, ptr %ping_rssi_ratr13, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dm_init_edca_turbo(ptr nocapture noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bcurrent_turbo_EDCA = getelementptr i8, ptr %dev, i32 35220
  %0 = ptrtoint ptr %bcurrent_turbo_EDCA to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bcurrent_turbo_EDCA, align 4
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %1 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ieee80211, align 4
  %bis_any_nonbepkts = getelementptr inbounds %struct.ieee80211_device, ptr %2, i32 0, i32 153
  %3 = ptrtoint ptr %bis_any_nonbepkts to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bis_any_nonbepkts, align 4
  %bis_cur_rdlstate = getelementptr i8, ptr %dev, i32 35221
  %4 = ptrtoint ptr %bis_cur_rdlstate to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bis_cur_rdlstate, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @deinit_hal_dm(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fsync_timer.i = getelementptr i8, ptr %dev, i32 35224
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %fsync_timer.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_dm_watchdog(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tmp1byte.i = alloca i8, align 1
  %tmp.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dm_check_rate_adaptive(ptr noundef %dev)
  tail call fastcc void @dm_dynamic_txpower(ptr noundef %dev)
  %ieee80211.i = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211.i, align 4
  %CurrentShowTxate.i = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 37, i32 17
  %call1.i = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 440, ptr noundef %CurrentShowTxate.i) #6
  %last_packet_rate.i = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 37, i32 18
  %call3.i = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 441, ptr noundef %last_packet_rate.i) #6
  %txretrycount.i = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 37, i32 19
  %call5.i = tail call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 428, ptr noundef %txretrycount.i) #6
  %bDcut.i = getelementptr i8, ptr %dev, i32 33948
  %2 = ptrtoint ptr %bDcut.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bDcut.i, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %btxpower_tracking.i3.i = getelementptr i8, ptr %dev, i32 35205
  %4 = ptrtoint ptr %btxpower_tracking.i3.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %btxpower_tracking.i3.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i4.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool.not.i4.i, label %if.then.i.dm_check_txpower_tracking.exit_crit_edge, label %if.end.i.i

if.then.i.dm_check_txpower_tracking.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_check_txpower_tracking.exit

if.end.i.i:                                       ; preds = %if.then.i
  %6 = load i32, ptr @dm_CheckTXPowerTracking_TSSI.tx_power_track_counter, align 4
  %rem.i.i = urem i32 %6, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp.i.i = icmp ne i32 %rem.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i.i = icmp eq i32 %6, 0
  %or.cond.i.i = or i1 %cmp1.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %priv_wq.i.i = getelementptr i8, ptr %dev, i32 36000
  %7 = ptrtoint ptr %priv_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv_wq.i.i, align 4
  %txpower_tracking_wq.i.i = getelementptr i8, ptr %dev, i32 35600
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %txpower_tracking_wq.i.i, i32 noundef 0) #6
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %9 = load i32, ptr @dm_CheckTXPowerTracking_TSSI.tx_power_track_counter, align 4
  %inc.i.i = add i32 %9, 1
  store i32 %inc.i.i, ptr @dm_CheckTXPowerTracking_TSSI.tx_power_track_counter, align 4
  br label %dm_check_txpower_tracking.exit

if.else.i:                                        ; preds = %entry
  br i1 %tobool.not.i4.i, label %if.else.i.dm_check_txpower_tracking.exit_crit_edge, label %if.end.i6.i

if.else.i.dm_check_txpower_tracking.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_check_txpower_tracking.exit

if.end.i6.i:                                      ; preds = %if.else.i
  %txpower_count.i.i = getelementptr i8, ptr %dev, i32 34824
  %10 = ptrtoint ptr %txpower_count.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %txpower_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.i5.i = icmp ult i8 %11, 3
  br i1 %cmp.i5.i, label %if.then2.i8.i, label %if.end4.i9.i

if.then2.i8.i:                                    ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i7.i = add nuw nsw i8 %11, 1
  %12 = ptrtoint ptr %txpower_count.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %inc.i7.i, ptr %txpower_count.i.i, align 4
  br label %dm_check_txpower_tracking.exit

if.end4.i9.i:                                     ; preds = %if.end.i6.i
  %.b.i.i = load i1, ptr @dm_CheckTXPowerTracking_ThermalMeter.TM_Trigger, align 1
  br i1 %.b.i.i, label %if.end7.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end4.i9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 0, i32 noundef 2, i32 noundef 4095, i32 noundef 77) #6
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 0, i32 noundef 2, i32 noundef 4095, i32 noundef 79) #6
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 0, i32 noundef 2, i32 noundef 4095, i32 noundef 77) #6
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 0, i32 noundef 2, i32 noundef 4095, i32 noundef 79) #6
  store i1 true, ptr @dm_CheckTXPowerTracking_ThermalMeter.TM_Trigger, align 1
  br label %dm_check_txpower_tracking.exit

if.end7.i.i:                                      ; preds = %if.end4.i9.i
  call void @__sanitizer_cov_trace_pc() #8
  %priv_wq.i10.i = getelementptr i8, ptr %dev, i32 36000
  %13 = ptrtoint ptr %priv_wq.i10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv_wq.i10.i, align 4
  %txpower_tracking_wq.i11.i = getelementptr i8, ptr %dev, i32 35600
  %call.i.i12.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %txpower_tracking_wq.i11.i, i32 noundef 0) #6
  store i1 false, ptr @dm_CheckTXPowerTracking_ThermalMeter.TM_Trigger, align 1
  br label %dm_check_txpower_tracking.exit

dm_check_txpower_tracking.exit:                   ; preds = %if.end7.i.i, %if.then6.i.i, %if.then2.i8.i, %if.else.i.dm_check_txpower_tracking.exit_crit_edge, %if.end4.i.i, %if.then.i.dm_check_txpower_tracking.exit_crit_edge
  %15 = load i8, ptr @dm_digtable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i12 = icmp eq i8 %15, 0
  br i1 %tobool.not.i12, label %dm_check_txpower_tracking.exit.dm_ctrl_initgain_byrssi.exit_crit_edge, label %if.end.i

dm_check_txpower_tracking.exit.dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %dm_check_txpower_tracking.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_ctrl_initgain_byrssi.exit

if.end.i:                                         ; preds = %dm_check_txpower_tracking.exit
  %16 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 1), align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %16, label %if.end.i.dm_ctrl_initgain_byrssi.exit_crit_edge [
    i32 0, label %if.end.i.i13
    i32 1, label %if.end.i10.i
  ]

if.end.i.dm_ctrl_initgain_byrssi.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_ctrl_initgain_byrssi.exit

if.end.i.i13:                                     ; preds = %if.end.i
  %18 = load i8, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i13.if.end4.i.i15_crit_edge, label %if.then2.i.i14

if.end.i.i13.if.end4.i.i15_crit_edge:             ; preds = %if.end.i.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i15

if.then2.i.i14:                                   ; preds = %if.end.i.i13
  call void @__sanitizer_cov_trace_pc() #8
  store i32 2, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 7), align 4
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 1) #6
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 1) #6
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 1) #6
  store i8 0, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 2), align 4
  br label %if.end4.i.i15

if.end4.i.i15:                                    ; preds = %if.then2.i.i14, %if.end.i.i13.if.end4.i.i15_crit_edge
  %19 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ieee80211.i, align 4
  %state.i.i = getelementptr inbounds %struct.ieee80211_device, ptr %20, i32 0, i32 83
  %21 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp5.not.i.i = icmp eq i32 %22, 5
  br i1 %cmp5.not.i.i, label %if.end8.i.i, label %if.end4.i.i15.dm_ctrl_initgain_byrssi.exit_crit_edge

if.end4.i.i15.dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %if.end4.i.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_ctrl_initgain_byrssi.exit

if.end8.i.i:                                      ; preds = %if.end4.i.i15
  %undecorated_smoothed_pwdb.i.i = getelementptr i8, ptr %dev, i32 34360
  %23 = ptrtoint ptr %undecorated_smoothed_pwdb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %undecorated_smoothed_pwdb.i.i, align 4
  %25 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %25)
  %cmp9.i.i = icmp sgt i32 %24, %25
  br i1 %cmp9.i.i, label %land.lhs.true.i.i, label %if.then19.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %26 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp12.i.i = icmp slt i32 %24, %26
  br i1 %cmp12.i.i, label %land.lhs.true.i.i.dm_ctrl_initgain_byrssi.exit_crit_edge, label %if.then43.i.i

land.lhs.true.i.i.dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_ctrl_initgain_byrssi.exit

if.then19.i.i:                                    ; preds = %if.end8.i.i
  %27 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp20.i.i = icmp eq i32 %27, 0
  br i1 %cmp20.i.i, label %land.lhs.true22.i.i, label %if.then19.i.i.if.end26.i.i_crit_edge

if.then19.i.i.if.end26.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i

land.lhs.true22.i.i:                              ; preds = %if.then19.i.i
  %reset_count.i.i = getelementptr i8, ptr %dev, i32 35304
  %28 = ptrtoint ptr %reset_count.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reset_count.i.i, align 4
  %30 = load i32, ptr @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %30)
  %cmp23.i.i = icmp eq i32 %29, %30
  br i1 %cmp23.i.i, label %land.lhs.true22.i.i.dm_ctrl_initgain_byrssi.exit_crit_edge, label %land.lhs.true22.i.i.if.end26.i.i_crit_edge

land.lhs.true22.i.i.if.end26.i.i_crit_edge:       ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i

land.lhs.true22.i.i.dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_ctrl_initgain_byrssi.exit

if.end26.i.i:                                     ; preds = %land.lhs.true22.i.i.if.end26.i.i_crit_edge, %if.then19.i.i.if.end26.i.i_crit_edge
  %reset_count27.i.i = getelementptr i8, ptr %dev, i32 35304
  %31 = ptrtoint ptr %reset_count27.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reset_count27.i.i, align 4
  store i32 %32, ptr @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 4
  store i32 2, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 8), align 4
  store i32 0, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 7), align 4
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 8) #6
  %call28.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3152, i8 noundef zeroext 23) #6
  %call29.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3160, i8 noundef zeroext 23) #6
  %call30.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3168, i8 noundef zeroext 23) #6
  %call31.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3176, i8 noundef zeroext 23) #6
  %CurrentChannelBW.i.i = getelementptr i8, ptr %dev, i32 34368
  %33 = ptrtoint ptr %CurrentChannelBW.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %CurrentChannelBW.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp32.not.i.i = icmp eq i32 %34, 0
  br i1 %cmp32.not.i.i, label %if.else.i.i, label %if.then34.i.i

if.then34.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call35.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 0) #6
  br label %if.end37.i.i

if.else.i.i:                                      ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call36.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 66) #6
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.else.i.i, %if.then34.i.i
  %call38.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 2570, i8 noundef zeroext 8) #6
  br label %dm_ctrl_initgain_byrssi.exit

if.then43.i.i:                                    ; preds = %land.lhs.true.i.i
  %35 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp44.i.i = icmp eq i32 %35, 1
  br i1 %cmp44.i.i, label %land.lhs.true46.i.i, label %if.then43.i.i.if.end51.i.i_crit_edge

if.then43.i.i.if.end51.i.i_crit_edge:             ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i.i

land.lhs.true46.i.i:                              ; preds = %if.then43.i.i
  %reset_count47.i.i = getelementptr i8, ptr %dev, i32 35304
  %36 = ptrtoint ptr %reset_count47.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reset_count47.i.i, align 4
  %38 = load i32, ptr @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %38)
  %cmp48.i.i = icmp eq i32 %37, %38
  br i1 %cmp48.i.i, label %if.then50.i.i, label %land.lhs.true46.i.i.if.end51.i.i_crit_edge

land.lhs.true46.i.i.if.end51.i.i_crit_edge:       ; preds = %land.lhs.true46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i.i

if.then50.i.i:                                    ; preds = %land.lhs.true46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dm_ctrl_initgain_byrssi_highpwr(ptr noundef %dev) #6
  br label %dm_ctrl_initgain_byrssi.exit

if.end51.i.i:                                     ; preds = %land.lhs.true46.i.i.if.end51.i.i_crit_edge, %if.then43.i.i.if.end51.i.i_crit_edge
  %reset_count52.i.i = getelementptr i8, ptr %dev, i32 35304
  %39 = ptrtoint ptr %reset_count52.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reset_count52.i.i, align 4
  %41 = load i32, ptr @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %41)
  %cmp53.not.i.i = icmp eq i32 %40, %41
  store i32 %40, ptr @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 4
  store i32 1, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 7), align 4
  %..i.i = select i1 %cmp53.not.i.i, i8 32, i8 44
  %call67.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3152, i8 noundef zeroext %..i.i) #6
  %call68.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3160, i8 noundef zeroext %..i.i) #6
  %call69.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3168, i8 noundef zeroext %..i.i) #6
  %call70.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3176, i8 noundef zeroext %..i.i) #6
  %CurrentChannelBW72.i.i = getelementptr i8, ptr %dev, i32 34368
  %42 = ptrtoint ptr %CurrentChannelBW72.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %CurrentChannelBW72.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp73.not.i.i = icmp eq i32 %43, 0
  br i1 %cmp73.not.i.i, label %if.else77.i.i, label %if.then75.i.i

if.then75.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call76.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 32) #6
  br label %if.end81.i.i

if.else77.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call78.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 68) #6
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %if.else77.i.i, %if.then75.i.i
  %call80.i.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 2570, i8 noundef zeroext -51) #6
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 1) #6
  tail call fastcc void @dm_ctrl_initgain_byrssi_highpwr(ptr noundef %dev) #6
  br label %dm_ctrl_initgain_byrssi.exit

if.end.i10.i:                                     ; preds = %if.end.i
  %44 = load i8, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool1.not.i9.i = icmp eq i8 %44, 0
  br i1 %tobool1.not.i9.i, label %if.end3.i.i, label %if.end3.thread.i.i

if.end3.thread.i.i:                               ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  store i8 0, ptr @dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig, align 1
  br label %for.body.preheader.i.i

if.end3.i.i:                                      ; preds = %if.end.i10.i
  %.pr.i.i = load i8, ptr @dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr.i.i)
  %cmp.i.i16 = icmp ult i8 %.pr.i.i, 4
  br i1 %cmp.i.i16, label %if.end3.i.i.for.body.preheader.i.i_crit_edge, label %if.end3.i.i.if.end10.i.i_crit_edge

if.end3.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i.i

if.end3.i.i.for.body.preheader.i.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.end3.i.i.for.body.preheader.i.i_crit_edge, %if.end3.thread.i.i
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 8) #6
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 8) #6
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 792, i32 noundef 65280, i32 noundef 8) #6
  %45 = load i8, ptr @dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig, align 1
  %inc9.i.i = add i8 %45, 1
  store i8 %inc9.i.i, ptr @dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig, align 1
  store i32 0, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 7), align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %for.body.preheader.i.i, %if.end3.i.i.if.end10.i.i_crit_edge
  %46 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ieee80211.i, align 4
  %state.i12.i = getelementptr inbounds %struct.ieee80211_device, ptr %47, i32 0, i32 83
  %48 = ptrtoint ptr %state.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state.i12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %49)
  %cmp11.i.i = icmp eq i32 %49, 5
  %..i13.i = zext i1 %cmp11.i.i to i32
  store i32 %..i13.i, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 9), align 4
  %undecorated_smoothed_pwdb.i14.i = getelementptr i8, ptr %dev, i32 34360
  %50 = ptrtoint ptr %undecorated_smoothed_pwdb.i14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %undecorated_smoothed_pwdb.i14.i, align 4
  store i32 %51, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 19), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i) #6
  %52 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %tmp.i.i.i, align 1, !annotation !204
  %53 = load i8, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i.i.i, label %if.end10.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end10.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 false, ptr @dm_initial_gain.initialized, align 1
  store i32 0, ptr @dm_initial_gain.reset_cnt, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end10.i.i.if.end.i.i.i_crit_edge
  %54 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %..i13.i)
  %cmp.i.i.i = icmp eq i32 %54, %..i13.i
  br i1 %cmp.i.i.i, label %if.then1.i.i.i, label %if.else29.i.i.i

if.then1.i.i.i:                                   ; preds = %if.end.i.i.i
  br i1 %cmp11.i.i, label %if.then3.i.i.i, label %if.else21.i.i.i

if.then3.i.i.i:                                   ; preds = %if.then1.i.i.i
  %add.i.i.i = add i32 %51, 10
  %55 = load i8, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 17), align 4
  %conv.i.i.i = zext i8 %55 to i32
  %sub.i.i.i = sub i32 %add.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %sub.i.i.i)
  %cmp4.i.i.i = icmp sgt i32 %sub.i.i.i, 54
  br i1 %cmp4.i.i.i, label %if.then6.i.i.i, label %if.else.i.i.i

if.then6.i.i.i:                                   ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i32 54, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 16), align 4
  br label %if.end33.i.i.i

if.else.i.i.i:                                    ; preds = %if.then3.i.i.i
  %56 = load i8, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 18), align 1
  %conv10.i.i.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv10.i.i.i)
  %cmp11.i.i.i = icmp slt i32 %sub.i.i.i, %conv10.i.i.i
  br i1 %cmp11.i.i.i, label %if.then13.i.i.i, label %if.else15.i.i.i

if.then13.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %conv10.i.i.i, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 16), align 4
  br label %if.end33.i.i.i

if.else15.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %sub.i.i.i, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 16), align 4
  br label %if.end33.i.i.i

if.else21.i.i.i:                                  ; preds = %if.then1.i.i.i
  %57 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp22.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp22.i.i.i, label %if.then24.i.i.i, label %if.else26.i.i.i

if.then24.i.i.i:                                  ; preds = %if.else21.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %DefaultInitialGain.i.i.i = getelementptr i8, ptr %dev, i32 35215
  %58 = ptrtoint ptr %DefaultInitialGain.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %DefaultInitialGain.i.i.i, align 1
  %conv25.i.i.i = zext i8 %59 to i32
  store i32 %conv25.i.i.i, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 16), align 4
  br label %if.end33.i.i.i

if.else26.i.i.i:                                  ; preds = %if.else21.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 15), align 4
  store i32 %60, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 16), align 4
  br label %if.end33.i.i.i

if.else29.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %DefaultInitialGain30.i.i.i = getelementptr i8, ptr %dev, i32 35215
  %61 = ptrtoint ptr %DefaultInitialGain30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %DefaultInitialGain30.i.i.i, align 1
  %conv32.i.i.i = zext i8 %62 to i32
  store i32 %conv32.i.i.i, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 16), align 4
  store i32 0, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 15), align 4
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %if.else29.i.i.i, %if.else26.i.i.i, %if.then24.i.i.i, %if.else15.i.i.i, %if.then13.i.i.i, %if.then6.i.i.i
  %reset_count.i.i.i = getelementptr i8, ptr %dev, i32 35304
  %63 = ptrtoint ptr %reset_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reset_count.i.i.i, align 4
  %65 = load i32, ptr @dm_initial_gain.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %65)
  %cmp34.not.i.i.i = icmp eq i32 %64, %65
  br i1 %cmp34.not.i.i.i, label %if.end33.i.i.i.if.end38.i.i.i_crit_edge, label %if.then36.i.i.i

if.end33.i.i.i.if.end38.i.i.i_crit_edge:          ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i.i.i

if.then36.i.i.i:                                  ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dm_initial_gain.force_write, align 1
  store i32 %64, ptr @dm_initial_gain.reset_cnt, align 4
  br label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.then36.i.i.i, %if.end33.i.i.i.if.end38.i.i.i_crit_edge
  %call39.i.i.i = call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 3152, ptr noundef nonnull %tmp.i.i.i) #6
  %66 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 15), align 4
  %67 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tmp.i.i.i, align 1
  %conv40.i.i.i = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv40.i.i.i)
  %cmp41.not.i.i.i = icmp eq i32 %66, %conv40.i.i.i
  br i1 %cmp41.not.i.i.i, label %if.end38.i.i.i.if.end44.i.i.i_crit_edge, label %if.then43.i.i.i

if.end38.i.i.i.if.end44.i.i.i_crit_edge:          ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i.i.i

if.then43.i.i.i:                                  ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dm_initial_gain.force_write, align 1
  br label %if.end44.i.i.i

if.end44.i.i.i:                                   ; preds = %if.then43.i.i.i, %if.end38.i.i.i.if.end44.i.i.i_crit_edge
  %69 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %69)
  %cmp45.not.i.i.i = icmp eq i32 %66, %69
  br i1 %cmp45.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end44.i.i.i.if.then51.i.i.i_crit_edge

if.end44.i.i.i.if.then51.i.i.i_crit_edge:         ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end44.i.i.i
  %.b.i.i.i = load i1, ptr @dm_initial_gain.initialized, align 1
  br i1 %.b.i.i.i, label %lor.lhs.false48.i.i.i, label %lor.lhs.false.i.i.i.if.then51.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then51.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51.i.i.i

lor.lhs.false48.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %.b69.i.i.i = load i1, ptr @dm_initial_gain.force_write, align 1
  br i1 %.b69.i.i.i, label %lor.lhs.false48.i.i.i.if.then51.i.i.i_crit_edge, label %lor.lhs.false48.i.i.i.dm_initial_gain.exit.i.i_crit_edge

lor.lhs.false48.i.i.i.dm_initial_gain.exit.i.i_crit_edge: ; preds = %lor.lhs.false48.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_initial_gain.exit.i.i

lor.lhs.false48.i.i.i.if.then51.i.i.i_crit_edge:  ; preds = %lor.lhs.false48.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51.i.i.i

if.then51.i.i.i:                                  ; preds = %lor.lhs.false48.i.i.i.if.then51.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then51.i.i.i_crit_edge, %if.end44.i.i.i.if.then51.i.i.i_crit_edge
  %conv52.i.i.i = trunc i32 %69 to i8
  %call53.i.i.i = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3152, i8 noundef zeroext %conv52.i.i.i) #6
  %call54.i.i.i = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3160, i8 noundef zeroext %conv52.i.i.i) #6
  %call55.i.i.i = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3168, i8 noundef zeroext %conv52.i.i.i) #6
  %call56.i.i.i = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3176, i8 noundef zeroext %conv52.i.i.i) #6
  %70 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 16), align 4
  store i32 %70, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 15), align 4
  store i1 true, ptr @dm_initial_gain.initialized, align 1
  store i1 false, ptr @dm_initial_gain.force_write, align 1
  br label %dm_initial_gain.exit.i.i

dm_initial_gain.exit.i.i:                         ; preds = %if.then51.i.i.i, %lor.lhs.false48.i.i.i.dm_initial_gain.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #6
  %71 = load i8, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i25.i.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i25.i.i, label %dm_initial_gain.exit.i.i.if.end.i28.i.i_crit_edge, label %if.then.i26.i.i

dm_initial_gain.exit.i.i.if.end.i28.i.i_crit_edge: ; preds = %dm_initial_gain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i28.i.i

if.then.i26.i.i:                                  ; preds = %dm_initial_gain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i8 0, ptr @dm_pd_th.initialized, align 1
  store i32 0, ptr @dm_pd_th.reset_cnt, align 4
  br label %if.end.i28.i.i

if.end.i28.i.i:                                   ; preds = %if.then.i26.i.i, %dm_initial_gain.exit.i.i.if.end.i28.i.i_crit_edge
  %72 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 10), align 4
  %73 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp2.i27.i.i = icmp eq i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %74 = icmp eq i32 %73, 1
  %75 = and i1 %cmp2.i27.i.i, %74
  br i1 %75, label %if.then3.i29.i.i, label %if.end.i28.i.i.if.end19.i.i.i_crit_edge

if.end.i28.i.i.if.end19.i.i.i_crit_edge:          ; preds = %if.end.i28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i.i.i

if.then3.i29.i.i:                                 ; preds = %if.end.i28.i.i
  %76 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 19), align 4
  %77 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %77)
  %cmp4.not.i.i.i = icmp slt i32 %76, %77
  br i1 %cmp4.not.i.i.i, label %if.else.i30.i.i, label %if.then3.i29.i.i.if.end19.i.i.i_crit_edge

if.then3.i29.i.i.if.end19.i.i.i_crit_edge:        ; preds = %if.then3.i29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i.i.i

if.else.i30.i.i:                                  ; preds = %if.then3.i29.i.i
  %78 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp6.not.i.i.i = icmp sgt i32 %76, %78
  br i1 %cmp6.not.i.i.i, label %if.else8.i.i.i, label %if.else.i30.i.i.if.end19.i.i.i_crit_edge

if.else.i30.i.i.if.end19.i.i.i_crit_edge:         ; preds = %if.else.i30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i.i.i

if.else8.i.i.i:                                   ; preds = %if.else.i30.i.i
  %79 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %79)
  %cmp9.not.i.i.i = icmp slt i32 %76, %79
  br i1 %cmp9.not.i.i.i, label %if.else8.i.i.i.if.else12.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else8.i.i.i.if.else12.i.i.i_crit_edge:         ; preds = %if.else8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else8.i.i.i
  %80 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %80)
  %cmp10.i.i.i = icmp slt i32 %76, %80
  br i1 %cmp10.i.i.i, label %land.lhs.true.i.i.i.if.end19.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.else12.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else12.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else12.i.i.i

land.lhs.true.i.i.i.if.end19.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i.i.i

if.else12.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.if.else12.i.i.i_crit_edge, %if.else8.i.i.i.if.else12.i.i.i_crit_edge
  %81 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 12), align 4
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.else12.i.i.i, %land.lhs.true.i.i.i.if.end19.i.i.i_crit_edge, %if.else.i30.i.i.if.end19.i.i.i_crit_edge, %if.then3.i29.i.i.if.end19.i.i.i_crit_edge, %if.end.i28.i.i.if.end19.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ %81, %if.else12.i.i.i ], [ 2, %if.then3.i29.i.i.if.end19.i.i.i_crit_edge ], [ 0, %if.else.i30.i.i.if.end19.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.if.end19.i.i.i_crit_edge ], [ 0, %if.end.i28.i.i.if.end19.i.i.i_crit_edge ]
  store i32 %.sink.i.i.i, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 11), align 4
  %82 = ptrtoint ptr %reset_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %reset_count.i.i.i, align 4
  %84 = load i32, ptr @dm_pd_th.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %84)
  %cmp20.not.i.i.i = icmp eq i32 %83, %84
  br i1 %cmp20.not.i.i.i, label %if.end19.i.i.i.if.end23.i.i.i_crit_edge, label %if.then21.i.i.i

if.end19.i.i.i.if.end23.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i.i

if.then21.i.i.i:                                  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dm_pd_th.force_write, align 1
  store i32 %83, ptr @dm_pd_th.reset_cnt, align 4
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.then21.i.i.i, %if.end19.i.i.i.if.end23.i.i.i_crit_edge
  %85 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %.sink.i.i.i)
  %cmp24.not.i.i.i = icmp eq i32 %85, %.sink.i.i.i
  br i1 %cmp24.not.i.i.i, label %lor.lhs.false.i32.i.i, label %if.end23.i.i.i.if.then30.i.i.i_crit_edge

if.end23.i.i.i.if.then30.i.i.i_crit_edge:         ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30.i.i.i

lor.lhs.false.i32.i.i:                            ; preds = %if.end23.i.i.i
  %86 = load i8, ptr @dm_pd_th.initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %86)
  %cmp25.i.i.i = icmp ult i8 %86, 4
  br i1 %cmp25.i.i.i, label %lor.lhs.false.i32.i.i.if.then30.i.i.i_crit_edge, label %lor.lhs.false27.i.i.i

lor.lhs.false.i32.i.i.if.then30.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30.i.i.i

lor.lhs.false27.i.i.i:                            ; preds = %lor.lhs.false.i32.i.i
  %.b.i33.i.i = load i1, ptr @dm_pd_th.force_write, align 1
  br i1 %.b.i33.i.i, label %lor.lhs.false27.i.i.i.if.then30.i.i.i_crit_edge, label %lor.lhs.false27.i.i.i.dm_pd_th.exit.i.i_crit_edge

lor.lhs.false27.i.i.i.dm_pd_th.exit.i.i_crit_edge: ; preds = %lor.lhs.false27.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_pd_th.exit.i.i

lor.lhs.false27.i.i.i.if.then30.i.i.i_crit_edge:  ; preds = %lor.lhs.false27.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30.i.i.i

if.then30.i.i.i:                                  ; preds = %lor.lhs.false27.i.i.i.if.then30.i.i.i_crit_edge, %lor.lhs.false.i32.i.i.if.then30.i.i.i_crit_edge, %if.end23.i.i.i.if.then30.i.i.i_crit_edge
  %87 = zext i32 %.sink.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %.sink.i.i.i, label %if.then30.i.i.i.if.end67.i.i.i_crit_edge [
    i32 0, label %if.then33.i.i.i
    i32 1, label %if.then44.i.i.i
    i32 2, label %if.then56.i.i.i
  ]

if.then30.i.i.i.if.end67.i.i.i_crit_edge:         ; preds = %if.then30.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i.i.i

if.then33.i.i.i:                                  ; preds = %if.then30.i.i.i
  %CurrentChannelBW.i.i.i = getelementptr i8, ptr %dev, i32 34368
  %88 = ptrtoint ptr %CurrentChannelBW.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %CurrentChannelBW.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp34.not.i34.i.i = icmp eq i32 %89, 0
  br i1 %cmp34.not.i34.i.i, label %if.else38.i.i.i, label %if.then36.i35.i.i

if.then36.i35.i.i:                                ; preds = %if.then33.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call37.i.i.i = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 0) #6
  br label %if.end67.i.i.i

if.else38.i.i.i:                                  ; preds = %if.then33.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call39.i36.i.i = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 66) #6
  br label %if.end67.i.i.i

if.then44.i.i.i:                                  ; preds = %if.then30.i.i.i
  %CurrentChannelBW45.i.i.i = getelementptr i8, ptr %dev, i32 34368
  %90 = ptrtoint ptr %CurrentChannelBW45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %CurrentChannelBW45.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp46.not.i.i.i = icmp eq i32 %91, 0
  br i1 %cmp46.not.i.i.i, label %if.else50.i.i.i, label %if.then48.i.i.i

if.then48.i.i.i:                                  ; preds = %if.then44.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call49.i.i.i = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 32) #6
  br label %if.end67.i.i.i

if.else50.i.i.i:                                  ; preds = %if.then44.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call51.i.i.i = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 68) #6
  br label %if.end67.i.i.i

if.then56.i.i.i:                                  ; preds = %if.then30.i.i.i
  %CurrentChannelBW57.i.i.i = getelementptr i8, ptr %dev, i32 34368
  %92 = ptrtoint ptr %CurrentChannelBW57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %CurrentChannelBW57.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp58.not.i.i.i = icmp eq i32 %93, 0
  br i1 %cmp58.not.i.i.i, label %if.else62.i.i.i, label %if.then60.i.i.i

if.then60.i.i.i:                                  ; preds = %if.then56.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call61.i.i.i = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 16) #6
  br label %if.end67.i.i.i

if.else62.i.i.i:                                  ; preds = %if.then56.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call63.i.i.i = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 67) #6
  br label %if.end67.i.i.i

if.end67.i.i.i:                                   ; preds = %if.else62.i.i.i, %if.then60.i.i.i, %if.else50.i.i.i, %if.then48.i.i.i, %if.else38.i.i.i, %if.then36.i35.i.i, %if.then30.i.i.i.if.end67.i.i.i_crit_edge
  %94 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 11), align 4
  store i32 %94, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 12), align 4
  %95 = load i8, ptr @dm_pd_th.initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %95)
  %cmp69.i.i.i = icmp ult i8 %95, 4
  br i1 %cmp69.i.i.i, label %if.then71.i.i.i, label %if.end67.i.i.i.if.end72.i.i.i_crit_edge

if.end67.i.i.i.if.end72.i.i.i_crit_edge:          ; preds = %if.end67.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i.i.i

if.then71.i.i.i:                                  ; preds = %if.end67.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i = add nuw nsw i8 %95, 1
  store i8 %inc.i.i.i, ptr @dm_pd_th.initialized, align 1
  br label %if.end72.i.i.i

if.end72.i.i.i:                                   ; preds = %if.then71.i.i.i, %if.end67.i.i.i.if.end72.i.i.i_crit_edge
  store i1 false, ptr @dm_pd_th.force_write, align 1
  br label %dm_pd_th.exit.i.i

dm_pd_th.exit.i.i:                                ; preds = %if.end72.i.i.i, %lor.lhs.false27.i.i.i.dm_pd_th.exit.i.i_crit_edge
  %96 = load i8, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i37.i.i = icmp eq i8 %96, 0
  br i1 %tobool.not.i37.i.i, label %dm_pd_th.exit.i.i.if.end.i40.i.i_crit_edge, label %if.then.i38.i.i

dm_pd_th.exit.i.i.if.end.i40.i.i_crit_edge:       ; preds = %dm_pd_th.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i40.i.i

if.then.i38.i.i:                                  ; preds = %dm_pd_th.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 false, ptr @dm_cs_ratio.initialized, align 1
  store i32 0, ptr @dm_cs_ratio.reset_cnt, align 4
  br label %if.end.i40.i.i

if.end.i40.i.i:                                   ; preds = %if.then.i38.i.i, %dm_pd_th.exit.i.i.if.end.i40.i.i_crit_edge
  %97 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 10), align 4
  %98 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp2.i39.i.i = icmp eq i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %99 = icmp eq i32 %98, 1
  %100 = and i1 %cmp2.i39.i.i, %99
  br i1 %100, label %if.then3.i42.i.i, label %if.end.i40.i.i.if.end14.i.i.i_crit_edge

if.end.i40.i.i.if.end14.i.i.i_crit_edge:          ; preds = %if.end.i40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i.i

if.then3.i42.i.i:                                 ; preds = %if.end.i40.i.i
  %101 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 19), align 4
  %102 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %102)
  %cmp4.not.i41.i.i = icmp sgt i32 %101, %102
  br i1 %cmp4.not.i41.i.i, label %if.else.i44.i.i, label %if.then3.i42.i.i.if.end14.i.i.i_crit_edge

if.then3.i42.i.i.if.end14.i.i.i_crit_edge:        ; preds = %if.then3.i42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i.i

if.else.i44.i.i:                                  ; preds = %if.then3.i42.i.i
  %103 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp6.not.i43.i.i = icmp slt i32 %101, %103
  br i1 %cmp6.not.i43.i.i, label %if.else8.i45.i.i, label %if.else.i44.i.i.if.end14.i.i.i_crit_edge

if.else.i44.i.i.if.end14.i.i.i_crit_edge:         ; preds = %if.else.i44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i.i

if.else8.i45.i.i:                                 ; preds = %if.else.i44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 14), align 4
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.else8.i45.i.i, %if.else.i44.i.i.if.end14.i.i.i_crit_edge, %if.then3.i42.i.i.if.end14.i.i.i_crit_edge, %if.end.i40.i.i.if.end14.i.i.i_crit_edge
  %.sink.i46.i.i = phi i32 [ %104, %if.else8.i45.i.i ], [ 0, %if.then3.i42.i.i.if.end14.i.i.i_crit_edge ], [ 1, %if.else.i44.i.i.if.end14.i.i.i_crit_edge ], [ 0, %if.end.i40.i.i.if.end14.i.i.i_crit_edge ]
  store i32 %.sink.i46.i.i, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 13), align 4
  %105 = ptrtoint ptr %reset_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %reset_count.i.i.i, align 4
  %107 = load i32, ptr @dm_cs_ratio.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %107)
  %cmp15.not.i.i.i = icmp eq i32 %106, %107
  br i1 %cmp15.not.i.i.i, label %if.end14.i.i.i.if.end18.i.i.i_crit_edge, label %if.then16.i.i.i

if.end14.i.i.i.if.end18.i.i.i_crit_edge:          ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i.i.i

if.then16.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dm_cs_ratio.force_write, align 1
  store i32 %106, ptr @dm_cs_ratio.reset_cnt, align 4
  br label %if.end18.i.i.i

if.end18.i.i.i:                                   ; preds = %if.then16.i.i.i, %if.end14.i.i.i.if.end18.i.i.i_crit_edge
  %108 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %.sink.i46.i.i)
  %cmp19.not.i.i.i = icmp eq i32 %108, %.sink.i46.i.i
  br i1 %cmp19.not.i.i.i, label %lor.lhs.false.i49.i.i, label %if.end18.i.i.i.if.then23.i.i.i_crit_edge

if.end18.i.i.i.if.then23.i.i.i_crit_edge:         ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i.i.i

lor.lhs.false.i49.i.i:                            ; preds = %if.end18.i.i.i
  %.b.i48.i.i = load i1, ptr @dm_cs_ratio.initialized, align 1
  br i1 %.b.i48.i.i, label %lor.lhs.false21.i.i.i, label %lor.lhs.false.i49.i.i.if.then23.i.i.i_crit_edge

lor.lhs.false.i49.i.i.if.then23.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i.i.i

lor.lhs.false21.i.i.i:                            ; preds = %lor.lhs.false.i49.i.i
  %.b41.i.i.i = load i1, ptr @dm_cs_ratio.force_write, align 1
  br i1 %.b41.i.i.i, label %lor.lhs.false21.i.i.i.if.then23.i.i.i_crit_edge, label %lor.lhs.false21.i.i.i.dm_cs_ratio.exit.i.i_crit_edge

lor.lhs.false21.i.i.i.dm_cs_ratio.exit.i.i_crit_edge: ; preds = %lor.lhs.false21.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_cs_ratio.exit.i.i

lor.lhs.false21.i.i.i.if.then23.i.i.i_crit_edge:  ; preds = %lor.lhs.false21.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i.i.i

if.then23.i.i.i:                                  ; preds = %lor.lhs.false21.i.i.i.if.then23.i.i.i_crit_edge, %lor.lhs.false.i49.i.i.if.then23.i.i.i_crit_edge, %if.end18.i.i.i.if.then23.i.i.i_crit_edge
  %109 = zext i32 %.sink.i46.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %.sink.i46.i.i, label %if.then23.i.i.i.if.end34.i.i.i_crit_edge [
    i32 0, label %if.then23.i.i.i.if.end34.sink.split.i.i.i_crit_edge
    i32 1, label %if.then31.i.i.i
  ]

if.then23.i.i.i.if.end34.sink.split.i.i.i_crit_edge: ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.sink.split.i.i.i

if.then23.i.i.i.if.end34.i.i.i_crit_edge:         ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i.i.i

if.then31.i.i.i:                                  ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.sink.split.i.i.i

if.end34.sink.split.i.i.i:                        ; preds = %if.then31.i.i.i, %if.then23.i.i.i.if.end34.sink.split.i.i.i_crit_edge
  %.sink42.i.i.i = phi i8 [ -51, %if.then31.i.i.i ], [ 8, %if.then23.i.i.i.if.end34.sink.split.i.i.i_crit_edge ]
  %call32.i.i.i = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 2570, i8 noundef zeroext %.sink42.i.i.i) #6
  br label %if.end34.i.i.i

if.end34.i.i.i:                                   ; preds = %if.end34.sink.split.i.i.i, %if.then23.i.i.i.if.end34.i.i.i_crit_edge
  %110 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 13), align 4
  store i32 %110, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 14), align 4
  store i1 true, ptr @dm_cs_ratio.initialized, align 1
  store i1 false, ptr @dm_cs_ratio.force_write, align 1
  br label %dm_cs_ratio.exit.i.i

dm_cs_ratio.exit.i.i:                             ; preds = %if.end34.i.i.i, %lor.lhs.false21.i.i.i.dm_cs_ratio.exit.i.i_crit_edge
  %111 = load i8, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool15.not.i.i = icmp eq i8 %111, 0
  br i1 %tobool15.not.i.i, label %dm_cs_ratio.exit.i.i.dm_ctrl_initgain_byrssi_by_driverrssi.exit.i_crit_edge, label %if.then16.i.i

dm_cs_ratio.exit.i.i.dm_ctrl_initgain_byrssi_by_driverrssi.exit.i_crit_edge: ; preds = %dm_cs_ratio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_ctrl_initgain_byrssi_by_driverrssi.exit.i

if.then16.i.i:                                    ; preds = %dm_cs_ratio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i8 0, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 2), align 4
  br label %dm_ctrl_initgain_byrssi_by_driverrssi.exit.i

dm_ctrl_initgain_byrssi_by_driverrssi.exit.i:     ; preds = %if.then16.i.i, %dm_cs_ratio.exit.i.i.dm_ctrl_initgain_byrssi_by_driverrssi.exit.i_crit_edge
  %112 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 9), align 4
  store i32 %112, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 10), align 4
  br label %dm_ctrl_initgain_byrssi.exit

dm_ctrl_initgain_byrssi.exit:                     ; preds = %dm_ctrl_initgain_byrssi_by_driverrssi.exit.i, %if.end81.i.i, %if.then50.i.i, %if.end37.i.i, %land.lhs.true22.i.i.dm_ctrl_initgain_byrssi.exit_crit_edge, %land.lhs.true.i.i.dm_ctrl_initgain_byrssi.exit_crit_edge, %if.end4.i.i15.dm_ctrl_initgain_byrssi.exit_crit_edge, %if.end.i.dm_ctrl_initgain_byrssi.exit_crit_edge, %dm_check_txpower_tracking.exit.dm_ctrl_initgain_byrssi.exit_crit_edge
  call fastcc void @dm_check_edca_turbo(ptr noundef %dev)
  %CurrentChannelBW.i = getelementptr i8, ptr %dev, i32 34368
  %113 = ptrtoint ptr %CurrentChannelBW.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %CurrentChannelBW.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i = icmp eq i32 %114, 0
  br i1 %cmp.i, label %dm_ctrl_initgain_byrssi.exit.dm_bandwidth_autoswitch.exit_crit_edge, label %lor.lhs.false.i

dm_ctrl_initgain_byrssi.exit.dm_bandwidth_autoswitch.exit_crit_edge: ; preds = %dm_ctrl_initgain_byrssi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_bandwidth_autoswitch.exit

lor.lhs.false.i:                                  ; preds = %dm_ctrl_initgain_byrssi.exit
  %115 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ieee80211.i, align 4
  %bandwidth_auto_switch.i = getelementptr inbounds %struct.ieee80211_device, ptr %116, i32 0, i32 154
  %bautoswitch_enable.i = getelementptr inbounds %struct.ieee80211_device, ptr %116, i32 0, i32 154, i32 3
  %117 = ptrtoint ptr %bautoswitch_enable.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %bautoswitch_enable.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i18 = icmp eq i8 %118, 0
  br i1 %tobool.not.i18, label %lor.lhs.false.i.dm_bandwidth_autoswitch.exit_crit_edge, label %if.end.i19

lor.lhs.false.i.dm_bandwidth_autoswitch.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_bandwidth_autoswitch.exit

if.end.i19:                                       ; preds = %lor.lhs.false.i
  %bforced_tx20Mhz.i = getelementptr inbounds %struct.ieee80211_device, ptr %116, i32 0, i32 154, i32 2
  %119 = ptrtoint ptr %bforced_tx20Mhz.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %bforced_tx20Mhz.i, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool3.not.i = icmp eq i8 %120, 0
  %undecorated_smoothed_pwdb.i = getelementptr i8, ptr %dev, i32 34360
  %121 = ptrtoint ptr %undecorated_smoothed_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %undecorated_smoothed_pwdb.i, align 4
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else.i20

if.then4.i:                                       ; preds = %if.end.i19
  %threshold_40Mhzto20Mhz.i = getelementptr inbounds %struct.ieee80211_device, ptr %116, i32 0, i32 154, i32 1
  %123 = ptrtoint ptr %threshold_40Mhzto20Mhz.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %threshold_40Mhzto20Mhz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %124)
  %cmp7.not.i = icmp sgt i32 %122, %124
  br i1 %cmp7.not.i, label %if.then4.i.dm_bandwidth_autoswitch.exit_crit_edge, label %if.then4.i.cleanup.sink.split.i_crit_edge

if.then4.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then4.i.dm_bandwidth_autoswitch.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_bandwidth_autoswitch.exit

if.else.i20:                                      ; preds = %if.end.i19
  %125 = ptrtoint ptr %bandwidth_auto_switch.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bandwidth_auto_switch.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %126)
  %cmp16.not.i = icmp slt i32 %122, %126
  br i1 %cmp16.not.i, label %if.else.i20.dm_bandwidth_autoswitch.exit_crit_edge, label %if.else.i20.cleanup.sink.split.i_crit_edge

if.else.i20.cleanup.sink.split.i_crit_edge:       ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.else.i20.dm_bandwidth_autoswitch.exit_crit_edge: ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_bandwidth_autoswitch.exit

cleanup.sink.split.i:                             ; preds = %if.else.i20.cleanup.sink.split.i_crit_edge, %if.then4.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.then4.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.else.i20.cleanup.sink.split.i_crit_edge ]
  %127 = ptrtoint ptr %bforced_tx20Mhz.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %.sink.i, ptr %bforced_tx20Mhz.i, align 8
  br label %dm_bandwidth_autoswitch.exit

dm_bandwidth_autoswitch.exit:                     ; preds = %cleanup.sink.split.i, %if.else.i20.dm_bandwidth_autoswitch.exit_crit_edge, %if.then4.i.dm_bandwidth_autoswitch.exit_crit_edge, %lor.lhs.false.i.dm_bandwidth_autoswitch.exit_crit_edge, %dm_ctrl_initgain_byrssi.exit.dm_bandwidth_autoswitch.exit_crit_edge
  %priv_wq.i = getelementptr i8, ptr %dev, i32 36000
  %128 = ptrtoint ptr %priv_wq.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %priv_wq.i, align 4
  %rfpath_check_wq.i = getelementptr i8, ptr %dev, i32 35700
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %129, ptr noundef %rfpath_check_wq.i, i32 noundef 0) #6
  call void @dm_check_fsync(ptr noundef %dev)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp1byte.i) #6
  %130 = ptrtoint ptr %tmp1byte.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -1, ptr %tmp1byte.i, align 1, !annotation !204
  %call1.i21 = call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 264, ptr noundef nonnull %tmp1byte.i) #6
  %131 = ptrtoint ptr %tmp1byte.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %tmp1byte.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %132)
  %cmp.i22 = icmp eq i8 %132, -1
  %133 = and i8 %132, 65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %134 = icmp eq i8 %133, 0
  %or.cond.i = or i1 %cmp.i22, %134
  br i1 %or.cond.i, label %dm_bandwidth_autoswitch.exit.dm_check_pbc_gpio.exit_crit_edge, label %do.body.i

dm_bandwidth_autoswitch.exit.dm_check_pbc_gpio.exit_crit_edge: ; preds = %dm_bandwidth_autoswitch.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_check_pbc_gpio.exit

do.body.i:                                        ; preds = %dm_bandwidth_autoswitch.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %135 = load i32, ptr @rt_global_debug_component, align 4
  %and8.i = and i32 %135, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.body.i.do.end20.i_crit_edge, label %do.body11.i

do.body.i.do.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20.i

do.body11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_check_pbc_gpio.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hal_dm_watchdog, %if.then16.i)) #6
          to label %do.end20.i [label %if.then16.i], !srcloc !205

if.then16.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_check_pbc_gpio.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.36) #6
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then16.i, %do.body11.i, %do.body.i.do.end20.i_crit_edge
  %bpbc_pressed.i = getelementptr i8, ptr %dev, i32 35308
  %136 = ptrtoint ptr %bpbc_pressed.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %bpbc_pressed.i, align 4
  br label %dm_check_pbc_gpio.exit

dm_check_pbc_gpio.exit:                           ; preds = %do.end20.i, %dm_bandwidth_autoswitch.exit.dm_check_pbc_gpio.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp1byte.i) #6
  %undecorated_smoothed_pwdb.i23 = getelementptr i8, ptr %dev, i32 34360
  %137 = ptrtoint ptr %undecorated_smoothed_pwdb.i23 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %undecorated_smoothed_pwdb.i23, align 4
  %conv.i = trunc i32 %138 to i8
  %call1.i24 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 812, i8 noundef zeroext %conv.i) #6
  %139 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ieee80211.i, align 4
  %pHTInfo1.i = getelementptr inbounds %struct.ieee80211_device, ptr %140, i32 0, i32 12
  %141 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pHTInfo1.i, align 8
  %bCTSToSelfEnable.i = getelementptr inbounds %struct.ieee80211_device, ptr %140, i32 0, i32 143
  %143 = ptrtoint ptr %bCTSToSelfEnable.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %bCTSToSelfEnable.i, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i26 = icmp eq i8 %144, 0
  br i1 %tobool.not.i26, label %if.then.i27, label %if.end.i29

if.then.i27:                                      ; preds = %dm_check_pbc_gpio.exit
  call void @__sanitizer_cov_trace_pc() #8
  %IOTAction.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %142, i32 0, i32 50
  %145 = ptrtoint ptr %IOTAction.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %IOTAction.i, align 1
  %and.i = and i32 %146, -513
  store i32 %and.i, ptr %IOTAction.i, align 1
  br label %dm_ctstoself.exit

if.end.i29:                                       ; preds = %dm_check_pbc_gpio.exit
  %IOTPeer.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %142, i32 0, i32 49
  %147 = ptrtoint ptr %IOTPeer.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %IOTPeer.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %148)
  %cmp.i28 = icmp eq i8 %148, 2
  br i1 %cmp.i28, label %if.then4.i30, label %if.end.i29.dm_ctstoself.exit_crit_edge

if.end.i29.dm_ctstoself.exit_crit_edge:           ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_ctstoself.exit

if.then4.i30:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  %txbytesunicast.i = getelementptr i8, ptr %dev, i32 31512
  %149 = ptrtoint ptr %txbytesunicast.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %txbytesunicast.i, align 4
  %151 = load i32, ptr @dm_ctstoself.lastTxOkCnt, align 4
  %sub.i = sub i32 %150, %151
  %rxbytesunicast.i = getelementptr i8, ptr %dev, i32 31520
  %152 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rxbytesunicast.i, align 4
  %154 = load i32, ptr @dm_ctstoself.lastRxOkCnt, align 4
  %sub6.i = sub i32 %153, %154
  %mul.i = shl i32 %sub.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %mul.i)
  %cmp7.i = icmp ugt i32 %sub6.i, %mul.i
  %IOTAction10.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %142, i32 0, i32 50
  %155 = ptrtoint ptr %IOTAction10.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %IOTAction10.i, align 1
  %and11.i = and i32 %156, -513
  %masksel.i = select i1 %cmp7.i, i32 0, i32 512
  %or.sink.i = or i32 %masksel.i, %and11.i
  store i32 %or.sink.i, ptr %IOTAction10.i, align 1
  %157 = ptrtoint ptr %txbytesunicast.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %txbytesunicast.i, align 4
  store i32 %158, ptr @dm_ctstoself.lastTxOkCnt, align 4
  %159 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rxbytesunicast.i, align 4
  store i32 %160, ptr @dm_ctstoself.lastRxOkCnt, align 4
  br label %dm_ctstoself.exit

dm_ctstoself.exit:                                ; preds = %if.then4.i30, %if.end.i29.dm_ctstoself.exit_crit_edge, %if.then.i27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_check_rate_adaptive(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %currentRATR = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %pHTInfo1 = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pHTInfo1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %currentRATR) #6
  %4 = ptrtoint ptr %currentRATR to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %currentRATR, align 4, !annotation !204
  %up = getelementptr i8, ptr %dev, i32 30368
  %5 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %7 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.body4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_check_rate_adaptive.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_check_rate_adaptive, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !205

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_check_rate_adaptive.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end13:                                         ; preds = %entry
  %rate_adaptive = getelementptr i8, ptr %dev, i32 34456
  %8 = ptrtoint ptr %rate_adaptive to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rate_adaptive, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %mode = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 86
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %11, label %if.end16.cleanup_crit_edge [
    i32 16, label %if.end16.if.end22_crit_edge
    i32 32, label %if.end16.if.end22_crit_edge272
  ]

if.end16.if.end22_crit_edge272:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end16.if.end22_crit_edge, %if.end16.if.end22_crit_edge272
  %state = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 83
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp24 = icmp eq i32 %14, 5
  br i1 %cmp24, label %if.then25, label %if.else176

if.then25:                                        ; preds = %if.end22
  %bCurTxBW40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %3, i32 0, i32 35
  %15 = ptrtoint ptr %bCurTxBW40MHz to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bCurTxBW40MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool26.not = icmp eq i8 %16, 0
  br i1 %tobool26.not, label %lor.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then25
  %bCurShortGI40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %bCurShortGI40MHz to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bCurShortGI40MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool28.not = icmp eq i8 %18, 0
  %upper_rssi_threshold_ratr266 = getelementptr i8, ptr %dev, i32 34492
  %19 = ptrtoint ptr %upper_rssi_threshold_ratr266 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %upper_rssi_threshold_ratr266, align 4
  %and34267 = and i32 %20, 2147483647
  br i1 %tobool28.not, label %land.lhs.true.lor.end.thread265_crit_edge, label %land.lhs.true.lor.end.thread_crit_edge

land.lhs.true.lor.end.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

land.lhs.true.lor.end.thread265_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread265

lor.end:                                          ; preds = %if.then25
  %bCurShortGI20MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %bCurShortGI20MHz to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bCurShortGI20MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool32.not = icmp eq i8 %22, 0
  %upper_rssi_threshold_ratr = getelementptr i8, ptr %dev, i32 34492
  %23 = ptrtoint ptr %upper_rssi_threshold_ratr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %upper_rssi_threshold_ratr, align 4
  %and34 = and i32 %24, 2147483647
  br i1 %tobool32.not, label %lor.end.lor.end.thread265_crit_edge, label %lor.end.lor.end.thread_crit_edge

lor.end.lor.end.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

lor.end.lor.end.thread265_crit_edge:              ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread265

lor.end.thread:                                   ; preds = %lor.end.lor.end.thread_crit_edge, %land.lhs.true.lor.end.thread_crit_edge
  %and34264 = phi i32 [ %and34, %lor.end.lor.end.thread_crit_edge ], [ %and34267, %land.lhs.true.lor.end.thread_crit_edge ]
  %upper_rssi_threshold_ratr262 = phi ptr [ %upper_rssi_threshold_ratr, %lor.end.lor.end.thread_crit_edge ], [ %upper_rssi_threshold_ratr266, %land.lhs.true.lor.end.thread_crit_edge ]
  br label %lor.end.thread265

lor.end.thread265:                                ; preds = %lor.end.thread, %lor.end.lor.end.thread265_crit_edge, %land.lhs.true.lor.end.thread265_crit_edge
  %and34263 = phi i32 [ %and34264, %lor.end.thread ], [ %and34, %lor.end.lor.end.thread265_crit_edge ], [ %and34267, %land.lhs.true.lor.end.thread265_crit_edge ]
  %upper_rssi_threshold_ratr261 = phi ptr [ %upper_rssi_threshold_ratr262, %lor.end.thread ], [ %upper_rssi_threshold_ratr, %lor.end.lor.end.thread265_crit_edge ], [ %upper_rssi_threshold_ratr266, %land.lhs.true.lor.end.thread265_crit_edge ]
  %25 = phi i32 [ -2147483648, %lor.end.thread ], [ 0, %lor.end.lor.end.thread265_crit_edge ], [ 0, %land.lhs.true.lor.end.thread265_crit_edge ]
  %or = or i32 %25, %and34263
  %26 = ptrtoint ptr %upper_rssi_threshold_ratr261 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or, ptr %upper_rssi_threshold_ratr261, align 4
  %middle_rssi_threshold_ratr = getelementptr i8, ptr %dev, i32 34496
  %27 = ptrtoint ptr %middle_rssi_threshold_ratr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %middle_rssi_threshold_ratr, align 4
  %and38 = and i32 %28, 2147483647
  %or42 = or i32 %and38, %25
  store i32 %or42, ptr %middle_rssi_threshold_ratr, align 4
  %CurrentChannelBW = getelementptr i8, ptr %dev, i32 34368
  %29 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp44.not = icmp eq i32 %30, 0
  %. = select i1 %cmp44.not, i32 34508, i32 34504
  %low_rssi_threshold_ratr_20M = getelementptr i8, ptr %dev, i32 %.
  %31 = ptrtoint ptr %low_rssi_threshold_ratr_20M to i32
  call void @__asan_load4_noabort(i32 %31)
  %and52.pn.in = load i32, ptr %low_rssi_threshold_ratr_20M, align 4
  %and52.pn = and i32 %and52.pn.in, 2147483647
  %or51.sink = or i32 %and52.pn, %25
  %32 = getelementptr i8, ptr %dev, i32 34500
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or51.sink, ptr %32, align 4
  %ping_rssi_ratr = getelementptr i8, ptr %dev, i32 34516
  %34 = ptrtoint ptr %ping_rssi_ratr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ping_rssi_ratr, align 4
  %and59 = and i32 %35, 2147483647
  %or63 = or i32 %and59, %25
  store i32 %or63, ptr %ping_rssi_ratr, align 4
  %ratr_state = getelementptr i8, ptr %dev, i32 34460
  %36 = ptrtoint ptr %ratr_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ratr_state, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %37, label %if.else86 [
    i32 0, label %if.then67
    i32 2, label %if.then76
  ]

if.then67:                                        ; preds = %lor.end.thread265
  call void @__sanitizer_cov_trace_pc() #8
  %high2low_rssi_thresh_for_ra = getelementptr i8, ptr %dev, i32 34472
  %39 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp69.not = icmp eq i32 %40, 0
  %cond71.in.v = select i1 %cmp69.not, i32 34488, i32 34480
  %cond71.in = getelementptr i8, ptr %dev, i32 %cond71.in.v
  %41 = ptrtoint ptr %cond71.in to i32
  call void @__asan_load4_noabort(i32 %41)
  %cond71 = load i32, ptr %cond71.in, align 4
  br label %if.end98

if.then76:                                        ; preds = %lor.end.thread265
  call void @__sanitizer_cov_trace_pc() #8
  %high_rssi_thresh_for_ra = getelementptr i8, ptr %dev, i32 34468
  %42 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp78.not = icmp eq i32 %43, 0
  %cond85.in.in.v = select i1 %cmp78.not, i32 34484, i32 34476
  %cond85.in.in = getelementptr i8, ptr %dev, i32 %cond85.in.in.v
  %44 = ptrtoint ptr %cond85.in.in to i32
  call void @__asan_load1_noabort(i32 %44)
  %cond85.in = load i8, ptr %cond85.in.in, align 4
  %cond85 = zext i8 %cond85.in to i32
  br label %if.end98

if.else86:                                        ; preds = %lor.end.thread265
  call void @__sanitizer_cov_trace_pc() #8
  %high_rssi_thresh_for_ra87 = getelementptr i8, ptr %dev, i32 34468
  %45 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp89.not = icmp eq i32 %46, 0
  %cond96.in.v = select i1 %cmp89.not, i32 34488, i32 34480
  %cond96.in = getelementptr i8, ptr %dev, i32 %cond96.in.v
  %47 = ptrtoint ptr %cond96.in to i32
  call void @__asan_load4_noabort(i32 %47)
  %cond96 = load i32, ptr %cond96.in, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.else86, %if.then76, %if.then67
  %LowRSSIThreshForRA.0 = phi i32 [ %cond71, %if.then67 ], [ %cond85, %if.then76 ], [ %cond96, %if.else86 ]
  %HighRSSIThreshForRA.0.in = phi ptr [ %high2low_rssi_thresh_for_ra, %if.then67 ], [ %high_rssi_thresh_for_ra, %if.then76 ], [ %high_rssi_thresh_for_ra87, %if.else86 ]
  %48 = ptrtoint ptr %HighRSSIThreshForRA.0.in to i32
  call void @__asan_load4_noabort(i32 %48)
  %HighRSSIThreshForRA.0 = load i32, ptr %HighRSSIThreshForRA.0.in, align 4
  %undecorated_smoothed_pwdb = getelementptr i8, ptr %dev, i32 34360
  %49 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %undecorated_smoothed_pwdb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %HighRSSIThreshForRA.0)
  %cmp99.not = icmp slt i32 %50, %HighRSSIThreshForRA.0
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %LowRSSIThreshForRA.0)
  %cmp106.not = icmp slt i32 %50, %LowRSSIThreshForRA.0
  %.271 = select i1 %cmp106.not, i32 2, i32 1
  %.middle_rssi_threshold_ratr = select i1 %cmp106.not, ptr %32, ptr %middle_rssi_threshold_ratr
  %.sink269 = select i1 %cmp99.not, i32 %.271, i32 0
  %targetRATR.0.in = select i1 %cmp99.not, ptr %.middle_rssi_threshold_ratr, ptr %upper_rssi_threshold_ratr261
  %51 = ptrtoint ptr %ratr_state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink269, ptr %ratr_state, align 4
  %52 = ptrtoint ptr %targetRATR.0.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %targetRATR.0 = load i32, ptr %targetRATR.0.in, align 4
  %ping_rssi_enable = getelementptr i8, ptr %dev, i32 34512
  %53 = ptrtoint ptr %ping_rssi_enable to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ping_rssi_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool116.not = icmp eq i8 %54, 0
  br i1 %tobool116.not, label %if.end98.if.end135_crit_edge, label %if.then117

if.end98.if.end135_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then117:                                       ; preds = %if.end98
  %55 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %undecorated_smoothed_pwdb, align 4
  %ping_rssi_thresh_for_ra = getelementptr i8, ptr %dev, i32 34520
  %57 = ptrtoint ptr %ping_rssi_thresh_for_ra to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ping_rssi_thresh_for_ra, align 4
  %add = add i32 %58, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add)
  %cmp119 = icmp slt i32 %56, %add
  br i1 %cmp119, label %if.then121, label %if.then117.if.end135.sink.split_crit_edge

if.then117.if.end135.sink.split_crit_edge:        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135.sink.split

if.then121:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp124 = icmp slt i32 %56, %58
  br i1 %cmp124, label %if.then121.if.then129_crit_edge, label %lor.lhs.false126

if.then121.if.then129_crit_edge:                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then129

lor.lhs.false126:                                 ; preds = %if.then121
  %.b = load i1, ptr @dm_check_rate_adaptive.ping_rssi_state, align 1
  br i1 %.b, label %lor.lhs.false126.if.then129_crit_edge, label %lor.lhs.false126.if.end135_crit_edge

lor.lhs.false126.if.end135_crit_edge:             ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

lor.lhs.false126.if.then129_crit_edge:            ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then129

if.then129:                                       ; preds = %lor.lhs.false126.if.then129_crit_edge, %if.then121.if.then129_crit_edge
  %59 = ptrtoint ptr %ratr_state to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %ratr_state, align 4
  %60 = ptrtoint ptr %ping_rssi_ratr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ping_rssi_ratr, align 4
  br label %if.end135.sink.split

if.end135.sink.split:                             ; preds = %if.then129, %if.then117.if.end135.sink.split_crit_edge
  %targetRATR.1.ph = phi i32 [ %61, %if.then129 ], [ %targetRATR.0, %if.then117.if.end135.sink.split_crit_edge ]
  store i1 %cmp119, ptr @dm_check_rate_adaptive.ping_rssi_state, align 1
  br label %if.end135

if.end135:                                        ; preds = %if.end135.sink.split, %lor.lhs.false126.if.end135_crit_edge, %if.end98.if.end135_crit_edge
  %targetRATR.1 = phi i32 [ %targetRATR.0, %lor.lhs.false126.if.end135_crit_edge ], [ %targetRATR.0, %if.end98.if.end135_crit_edge ], [ %targetRATR.1.ph, %if.end135.sink.split ]
  %GetHalfNmodeSupportByAPsHandler = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 196
  %62 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler, align 8
  %call137 = tail call zeroext i1 %63(ptr noundef %dev) #6
  %and139 = and i32 %targetRATR.1, -267386881
  %spec.select = select i1 %call137, i32 %and139, i32 %targetRATR.1
  %call141 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 800, ptr noundef nonnull %currentRATR) #6
  %64 = ptrtoint ptr %currentRATR to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %currentRATR, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %65)
  %cmp142.not = icmp eq i32 %spec.select, %65
  br i1 %cmp142.not, label %if.end135.cleanup_crit_edge, label %if.then144

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then144:                                       ; preds = %if.end135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %66 = load i32, ptr @rt_global_debug_component, align 4
  %and146 = and i32 %66, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.then144.do.end167_crit_edge, label %do.body149

if.then144.do.end167_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end167

do.body149:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_check_rate_adaptive.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_check_rate_adaptive, %if.then161)) #6
          to label %do.end167 [label %if.then161], !srcloc !205

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %currentRATR to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %currentRATR, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_check_rate_adaptive.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.10, i32 noundef %68, i32 noundef %spec.select) #6
  br label %do.end167

do.end167:                                        ; preds = %if.then161, %do.body149, %if.then144.do.end167_crit_edge
  %rf_type = getelementptr i8, ptr %dev, i32 30464
  %69 = ptrtoint ptr %rf_type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp168 = icmp eq i32 %70, 0
  %spec.select254 = select i1 %cmp168, i32 %and139, i32 %spec.select
  %call173 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 800, i32 noundef %spec.select254) #6
  %call174 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 792, i8 noundef zeroext 1) #6
  %last_ratr = getelementptr i8, ptr %dev, i32 34524
  %71 = ptrtoint ptr %last_ratr to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %spec.select, ptr %last_ratr, align 4
  br label %cleanup

if.else176:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %ratr_state177 = getelementptr i8, ptr %dev, i32 34460
  %72 = ptrtoint ptr %ratr_state177 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3, ptr %ratr_state177, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else176, %do.end167, %if.end135.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then9, %do.body4, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %currentRATR) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_dynamic_txpower(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %bdynamic_txpower_enable = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 142
  %2 = ptrtoint ptr %bdynamic_txpower_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bdynamic_txpower_enable, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bDynamicTxHighPower = getelementptr i8, ptr %dev, i32 34449
  %4 = ptrtoint ptr %bDynamicTxHighPower to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bDynamicTxHighPower, align 1
  %bDynamicTxLowPower = getelementptr i8, ptr %dev, i32 34450
  %5 = ptrtoint ptr %bDynamicTxLowPower to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bDynamicTxLowPower, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %atheros_cap_exist = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 82, i32 52
  %6 = ptrtoint ptr %atheros_cap_exist to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %atheros_cap_exist, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %mode = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 86
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp eq i32 %9, 4
  br i1 %cmp, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.else, %land.lhs.true.do.body_crit_edge
  %txlowpower_threshold.0 = phi i32 [ 62, %if.else ], [ 72, %land.lhs.true.do.body_crit_edge ]
  %txhipower_threshold.0 = phi i32 [ 68, %if.else ], [ 78, %land.lhs.true.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.do.end17_crit_edge, label %do.body8

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_dynamic_txpower.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_dynamic_txpower, %if.then13)) #6
          to label %do.end17 [label %if.then13], !srcloc !205

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %undecorated_smoothed_pwdb = getelementptr i8, ptr %dev, i32 34360
  %11 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %undecorated_smoothed_pwdb, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_dynamic_txpower.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.44, i32 noundef %12) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body8, %do.body.do.end17_crit_edge
  %13 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ieee80211, align 4
  %state = getelementptr inbounds %struct.ieee80211_device, ptr %14, i32 0, i32 83
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp19 = icmp eq i32 %16, 5
  br i1 %cmp19, label %if.then20, label %do.end17.if.end50.sink.split.sink.split_crit_edge

do.end17.if.end50.sink.split.sink.split_crit_edge: ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.sink.split.sink.split

if.then20:                                        ; preds = %do.end17
  %undecorated_smoothed_pwdb21 = getelementptr i8, ptr %dev, i32 34360
  %17 = ptrtoint ptr %undecorated_smoothed_pwdb21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %undecorated_smoothed_pwdb21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %txhipower_threshold.0)
  %cmp22.not = icmp ult i32 %18, %txhipower_threshold.0
  br i1 %cmp22.not, label %if.else26, label %if.then20.if.end50.sink.split.sink.split_crit_edge

if.then20.if.end50.sink.split.sink.split_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.sink.split.sink.split

if.else26:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %txlowpower_threshold.0)
  %cmp28 = icmp ult i32 %18, %txlowpower_threshold.0
  br i1 %cmp28, label %land.lhs.true29, label %if.else26.if.end34_crit_edge

if.else26.if.end34_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true29:                                  ; preds = %if.else26
  %bDynamicTxHighPower30 = getelementptr i8, ptr %dev, i32 34449
  %19 = ptrtoint ptr %bDynamicTxHighPower30 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bDynamicTxHighPower30, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool31.not = icmp eq i8 %20, 0
  br i1 %tobool31.not, label %land.lhs.true29.if.end34thread-pre-split_crit_edge, label %if.then32

land.lhs.true29.if.end34thread-pre-split_crit_edge: ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34thread-pre-split

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %bDynamicTxHighPower30 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bDynamicTxHighPower30, align 1
  br label %if.end34thread-pre-split

if.end34thread-pre-split:                         ; preds = %if.then32, %land.lhs.true29.if.end34thread-pre-split_crit_edge
  %22 = ptrtoint ptr %undecorated_smoothed_pwdb21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %undecorated_smoothed_pwdb21, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34thread-pre-split, %if.else26.if.end34_crit_edge
  %23 = phi i32 [ %.pr, %if.end34thread-pre-split ], [ %18, %if.else26.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %23)
  %cmp36 = icmp slt i32 %23, 35
  br i1 %cmp36, label %if.end34.if.end50.sink.split_crit_edge, label %if.else39

if.end34.if.end50.sink.split_crit_edge:           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.sink.split

if.else39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %23)
  %cmp41 = icmp ugt i32 %23, 39
  br i1 %cmp41, label %if.else39.if.end50.sink.split_crit_edge, label %if.else39.if.end50_crit_edge

if.else39.if.end50_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.else39.if.end50.sink.split_crit_edge:          ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.sink.split

if.end50.sink.split.sink.split:                   ; preds = %if.then20.if.end50.sink.split.sink.split_crit_edge, %do.end17.if.end50.sink.split.sink.split_crit_edge
  %.sink140 = phi i8 [ 1, %if.then20.if.end50.sink.split.sink.split_crit_edge ], [ 0, %do.end17.if.end50.sink.split.sink.split_crit_edge ]
  %bDynamicTxHighPower48 = getelementptr i8, ptr %dev, i32 34449
  %24 = ptrtoint ptr %bDynamicTxHighPower48 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink140, ptr %bDynamicTxHighPower48, align 1
  br label %if.end50.sink.split

if.end50.sink.split:                              ; preds = %if.end50.sink.split.sink.split, %if.else39.if.end50.sink.split_crit_edge, %if.end34.if.end50.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.end34.if.end50.sink.split_crit_edge ], [ 0, %if.else39.if.end50.sink.split_crit_edge ], [ 0, %if.end50.sink.split.sink.split ]
  %bDynamicTxLowPower25 = getelementptr i8, ptr %dev, i32 34450
  %25 = ptrtoint ptr %bDynamicTxLowPower25 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink, ptr %bDynamicTxLowPower25, align 2
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %if.else39.if.end50_crit_edge
  %bDynamicTxHighPower51 = getelementptr i8, ptr %dev, i32 34449
  %26 = ptrtoint ptr %bDynamicTxHighPower51 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bDynamicTxHighPower51, align 1, !range !203
  %bLastDTPFlag_High = getelementptr i8, ptr %dev, i32 34451
  %28 = ptrtoint ptr %bLastDTPFlag_High to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bLastDTPFlag_High, align 1, !range !203
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp55.not = icmp eq i8 %27, %29
  br i1 %cmp55.not, label %lor.lhs.false, label %if.end50.do.body65_crit_edge

if.end50.do.body65_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

lor.lhs.false:                                    ; preds = %if.end50
  %bDynamicTxLowPower57 = getelementptr i8, ptr %dev, i32 34450
  %30 = ptrtoint ptr %bDynamicTxLowPower57 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bDynamicTxLowPower57, align 2, !range !203
  %bLastDTPFlag_Low = getelementptr i8, ptr %dev, i32 34452
  %32 = ptrtoint ptr %bLastDTPFlag_Low to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bLastDTPFlag_Low, align 4, !range !203
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp62.not = icmp eq i8 %31, %33
  br i1 %cmp62.not, label %lor.lhs.false.if.end94_crit_edge, label %lor.lhs.false.do.body65_crit_edge

lor.lhs.false.do.body65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

lor.lhs.false.if.end94_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

do.body65:                                        ; preds = %lor.lhs.false.do.body65_crit_edge, %if.end50.do.body65_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %34 = load i32, ptr @rt_global_debug_component, align 4
  %and66 = and i32 %34, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body65.do.end90_crit_edge, label %do.body69

do.body65.do.end90_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90

do.body69:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_dynamic_txpower.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_dynamic_txpower, %if.then81)) #6
          to label %do.end90 [label %if.then81], !srcloc !205

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ieee80211, align 4
  %channel = getelementptr inbounds %struct.ieee80211_device, ptr %36, i32 0, i32 82, i32 1
  %37 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %channel, align 2
  %conv84 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_dynamic_txpower.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.45, i32 noundef %conv84) #6
  br label %do.end90

do.end90:                                         ; preds = %if.then81, %do.body69, %do.body65.do.end90_crit_edge
  %39 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ieee80211, align 4
  %channel93 = getelementptr inbounds %struct.ieee80211_device, ptr %40, i32 0, i32 82, i32 1
  %41 = ptrtoint ptr %channel93 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %channel93, align 2
  tail call void @rtl8192_phy_setTxPower(ptr noundef %dev, i8 noundef zeroext %42) #6
  br label %if.end94

if.end94:                                         ; preds = %do.end90, %lor.lhs.false.if.end94_crit_edge
  %43 = ptrtoint ptr %bDynamicTxHighPower51 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bDynamicTxHighPower51, align 1, !range !203
  %45 = ptrtoint ptr %bLastDTPFlag_High to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %bLastDTPFlag_High, align 1
  %bDynamicTxLowPower99 = getelementptr i8, ptr %dev, i32 34450
  %46 = ptrtoint ptr %bDynamicTxLowPower99 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bDynamicTxLowPower99, align 2, !range !203
  %bLastDTPFlag_Low101 = getelementptr i8, ptr %dev, i32 34452
  %48 = ptrtoint ptr %bLastDTPFlag_Low101 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %bLastDTPFlag_Low101, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_check_edca_turbo(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %AcmCtrl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %pHTInfo1 = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pHTInfo1, align 8
  %state = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.not = icmp eq i32 %5, 5
  br i1 %cmp.not, label %if.end, label %entry.dm_CheckEdcaTurbo_EXIT_crit_edge

entry.dm_CheckEdcaTurbo_EXIT_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_CheckEdcaTurbo_EXIT

if.end:                                           ; preds = %entry
  %IOTAction = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %3, i32 0, i32 50
  %6 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %IOTAction, align 1
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.end.dm_CheckEdcaTurbo_EXIT_crit_edge

if.end.dm_CheckEdcaTurbo_EXIT_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_CheckEdcaTurbo_EXIT

if.end6:                                          ; preds = %if.end
  %bis_any_nonbepkts = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 153
  %8 = ptrtoint ptr %bis_any_nonbepkts to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bis_any_nonbepkts, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.then9, label %if.else34

if.then9:                                         ; preds = %if.end6
  %txbytesunicast = getelementptr i8, ptr %dev, i32 31512
  %10 = ptrtoint ptr %txbytesunicast to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txbytesunicast, align 4
  %12 = load i32, ptr @dm_check_edca_turbo.lastTxOkCnt, align 4
  %sub = sub i32 %11, %12
  %rxbytesunicast = getelementptr i8, ptr %dev, i32 31520
  %13 = ptrtoint ptr %rxbytesunicast to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rxbytesunicast, align 4
  %15 = load i32, ptr @dm_check_edca_turbo.lastRxOkCnt, align 4
  %sub11 = sub i32 %14, %15
  %mul = shl i32 %sub, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11, i32 %mul)
  %cmp12 = icmp ugt i32 %sub11, %mul
  %bis_cur_rdlstate = getelementptr i8, ptr %dev, i32 35221
  %16 = ptrtoint ptr %bis_cur_rdlstate to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bis_cur_rdlstate, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then9
  br i1 %tobool14.not, label %if.then13.if.end32.sink.split_crit_edge, label %lor.lhs.false

if.then13.if.end32.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.sink.split

lor.lhs.false:                                    ; preds = %if.then13
  %bcurrent_turbo_EDCA = getelementptr i8, ptr %dev, i32 35220
  %18 = ptrtoint ptr %bcurrent_turbo_EDCA to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bcurrent_turbo_EDCA, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.end32.sink.split_crit_edge, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

lor.lhs.false.if.end32.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.sink.split

if.else:                                          ; preds = %if.then9
  br i1 %tobool14.not, label %lor.lhs.false22, label %if.else.if.end32.sink.split_crit_edge

if.else.if.end32.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.sink.split

lor.lhs.false22:                                  ; preds = %if.else
  %bcurrent_turbo_EDCA23 = getelementptr i8, ptr %dev, i32 35220
  %20 = ptrtoint ptr %bcurrent_turbo_EDCA23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bcurrent_turbo_EDCA23, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool24.not = icmp eq i8 %21, 0
  br i1 %tobool24.not, label %lor.lhs.false22.if.end32.sink.split_crit_edge, label %lor.lhs.false22.if.end32_crit_edge

lor.lhs.false22.if.end32_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

lor.lhs.false22.if.end32.sink.split_crit_edge:    ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %lor.lhs.false22.if.end32.sink.split_crit_edge, %if.else.if.end32.sink.split_crit_edge, %lor.lhs.false.if.end32.sink.split_crit_edge, %if.then13.if.end32.sink.split_crit_edge
  %edca_setting_UL.sink = phi ptr [ @edca_setting_DL, %lor.lhs.false.if.end32.sink.split_crit_edge ], [ @edca_setting_DL, %if.then13.if.end32.sink.split_crit_edge ], [ @edca_setting_UL, %lor.lhs.false22.if.end32.sink.split_crit_edge ], [ @edca_setting_UL, %if.else.if.end32.sink.split_crit_edge ]
  %.sink = phi i8 [ 1, %lor.lhs.false.if.end32.sink.split_crit_edge ], [ 1, %if.then13.if.end32.sink.split_crit_edge ], [ 0, %lor.lhs.false22.if.end32.sink.split_crit_edge ], [ 0, %if.else.if.end32.sink.split_crit_edge ]
  %IOTPeer26 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %3, i32 0, i32 49
  %22 = ptrtoint ptr %IOTPeer26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %IOTPeer26, align 1
  %idxprom27 = zext i8 %23 to i32
  %arrayidx28 = getelementptr [6 x i32], ptr %edca_setting_UL.sink, i32 0, i32 %idxprom27
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx28, align 4
  %call29 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 80, i32 noundef %25) #6
  %26 = ptrtoint ptr %bis_cur_rdlstate to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink, ptr %bis_cur_rdlstate, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %lor.lhs.false22.if.end32_crit_edge, %lor.lhs.false.if.end32_crit_edge
  %bcurrent_turbo_EDCA33 = getelementptr i8, ptr %dev, i32 35220
  %27 = ptrtoint ptr %bcurrent_turbo_EDCA33 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %bcurrent_turbo_EDCA33, align 4
  br label %dm_CheckEdcaTurbo_EXIT

if.else34:                                        ; preds = %if.end6
  %bcurrent_turbo_EDCA35 = getelementptr i8, ptr %dev, i32 35220
  %28 = ptrtoint ptr %bcurrent_turbo_EDCA35 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bcurrent_turbo_EDCA35, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool36.not = icmp eq i8 %29, 0
  br i1 %tobool36.not, label %if.else34.dm_CheckEdcaTurbo_EXIT_crit_edge, label %if.then37

if.else34.dm_CheckEdcaTurbo_EXIT_crit_edge:       ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_CheckEdcaTurbo_EXIT

if.then37:                                        ; preds = %if.else34
  %qos_data = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 82, i32 8
  %mode40 = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 86
  %30 = ptrtoint ptr %mode40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode40, align 4
  %32 = ptrtoint ptr %bcurrent_turbo_EDCA35 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %bcurrent_turbo_EDCA35, align 4
  %33 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ieee80211, align 4
  %bis_any_nonbepkts.i = getelementptr inbounds %struct.ieee80211_device, ptr %34, i32 0, i32 153
  %35 = ptrtoint ptr %bis_any_nonbepkts.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %bis_any_nonbepkts.i, align 4
  %bis_cur_rdlstate.i = getelementptr i8, ptr %dev, i32 35221
  %36 = ptrtoint ptr %bis_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %bis_cur_rdlstate.i, align 1
  %aifs = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 82, i32 8, i32 0, i32 2
  %37 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %aifs, align 1
  %and44 = and i32 %31, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %cond = select i1 %tobool45.not, i8 20, i8 9
  %mul46 = mul i8 %38, %cond
  %39 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ieee80211, align 4
  %mode49 = getelementptr inbounds %struct.ieee80211_device, ptr %40, i32 0, i32 82, i32 24
  %41 = ptrtoint ptr %mode49 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mode49, align 4
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %42, label %lor.rhs [
    i8 1, label %if.then37.lor.end_crit_edge
    i8 16, label %if.then37.lor.end_crit_edge163
  ]

if.then37.lor.end_crit_edge163:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

if.then37.lor.end_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %42)
  %cmp64 = icmp eq i8 %42, 32
  %phi.sel = select i1 %cmp64, i8 16, i8 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then37.lor.end_crit_edge, %if.then37.lor.end_crit_edge163
  %44 = phi i8 [ 16, %if.then37.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ 16, %if.then37.lor.end_crit_edge163 ]
  %add = add i8 %44, %mul46
  %tx_op_limit = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 82, i32 8, i32 0, i32 4
  %45 = ptrtoint ptr %tx_op_limit to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %tx_op_limit, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %conv69 = zext i16 %47 to i32
  %cw_max70 = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 82, i32 8, i32 0, i32 1
  %48 = ptrtoint ptr %cw_max70 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %cw_max70, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %conv72 = zext i16 %50 to i32
  %51 = ptrtoint ptr %qos_data to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %qos_data, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %conv75 = zext i16 %53 to i32
  %shl = shl nuw i32 %conv69, 16
  %shl76 = shl nuw nsw i32 %conv72, 12
  %shl77 = shl nuw nsw i32 %conv75, 8
  %conv78 = zext i8 %add to i32
  %or = or i32 %shl, %conv78
  %or81 = or i32 %or, %shl76
  %or83 = or i32 %or81, %shl77
  %54 = tail call i32 @llvm.bswap.i32(i32 %or83) #6
  %call84 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 80, i32 noundef %54) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %AcmCtrl) #6
  %55 = ptrtoint ptr %AcmCtrl to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %AcmCtrl, align 1, !annotation !204
  %call87 = call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 369, ptr noundef nonnull %AcmCtrl) #6
  %56 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load = load i8, ptr %aifs, align 1
  %57 = ptrtoint ptr %AcmCtrl to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %AcmCtrl, align 1
  %59 = and i8 %58, -3
  %60 = lshr i8 %bf.load, 2
  %61 = and i8 %60, 2
  %storemerge = or i8 %59, %61
  store i8 %storemerge, ptr %AcmCtrl, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %62 = load i32, ptr @rt_global_debug_component, align 4
  %and98 = and i32 %62, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %lor.end.do.end111_crit_edge, label %do.body101

lor.end.do.end111_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end111

do.body101:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_check_edca_turbo.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_check_edca_turbo, %if.then106)) #6
          to label %do.end111 [label %if.then106], !srcloc !205

if.then106:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %AcmCtrl to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %AcmCtrl, align 1
  %conv107 = zext i8 %64 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_check_edca_turbo.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.34, i32 noundef %conv107) #6
  br label %do.end111

do.end111:                                        ; preds = %if.then106, %do.body101, %lor.end.do.end111_crit_edge
  %65 = ptrtoint ptr %AcmCtrl to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %AcmCtrl, align 1
  %call112 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 369, i8 noundef zeroext %66) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %AcmCtrl) #6
  %67 = ptrtoint ptr %bcurrent_turbo_EDCA35 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %bcurrent_turbo_EDCA35, align 4
  br label %dm_CheckEdcaTurbo_EXIT

dm_CheckEdcaTurbo_EXIT:                           ; preds = %do.end111, %if.else34.dm_CheckEdcaTurbo_EXIT_crit_edge, %if.end32, %if.end.dm_CheckEdcaTurbo_EXIT_crit_edge, %entry.dm_CheckEdcaTurbo_EXIT_crit_edge
  %68 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ieee80211, align 4
  %bis_any_nonbepkts117 = getelementptr inbounds %struct.ieee80211_device, ptr %69, i32 0, i32 153
  %70 = ptrtoint ptr %bis_any_nonbepkts117 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %bis_any_nonbepkts117, align 4
  %txbytesunicast119 = getelementptr i8, ptr %dev, i32 31512
  %71 = ptrtoint ptr %txbytesunicast119 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %txbytesunicast119, align 4
  store i32 %72, ptr @dm_check_edca_turbo.lastTxOkCnt, align 4
  %rxbytesunicast121 = getelementptr i8, ptr %dev, i32 31520
  %73 = ptrtoint ptr %rxbytesunicast121 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rxbytesunicast121, align 4
  store i32 %74, ptr @dm_check_edca_turbo.lastRxOkCnt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_check_fsync(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %do.body1

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_check_fsync.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_check_fsync, %if.then6)) #6
          to label %do.body13 [label %if.then6], !srcloc !205

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %1 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ieee80211, align 4
  %fsync_rssi_threshold = getelementptr inbounds %struct.ieee80211_device, ptr %2, i32 0, i32 147
  %3 = ptrtoint ptr %fsync_rssi_threshold to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fsync_rssi_threshold, align 4
  %conv = zext i8 %4 to i32
  %fsync_time_interval = getelementptr inbounds %struct.ieee80211_device, ptr %2, i32 0, i32 145
  %5 = ptrtoint ptr %fsync_time_interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fsync_time_interval, align 4
  %fsync_multiple_timeinterval = getelementptr inbounds %struct.ieee80211_device, ptr %2, i32 0, i32 149
  %7 = ptrtoint ptr %fsync_multiple_timeinterval to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fsync_multiple_timeinterval, align 2
  %conv9 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_check_fsync.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %6, i32 noundef %conv9) #6
  br label %do.body13

do.body13:                                        ; preds = %if.then6, %do.body1, %entry.do.body13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %9 = load i32, ptr @rt_global_debug_component, align 4
  %and14 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.do.end38_crit_edge, label %do.body17

do.body13.do.end38_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

do.body17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_check_fsync.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_check_fsync, %if.then29)) #6
          to label %do.end38 [label %if.then29], !srcloc !205

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %ieee8021130 = getelementptr i8, ptr %dev, i32 30156
  %10 = ptrtoint ptr %ieee8021130 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ieee8021130, align 4
  %fsync_rate_bitmap = getelementptr inbounds %struct.ieee80211_device, ptr %11, i32 0, i32 146
  %12 = ptrtoint ptr %fsync_rate_bitmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fsync_rate_bitmap, align 8
  %fsync_firstdiff_ratethreshold = getelementptr inbounds %struct.ieee80211_device, ptr %11, i32 0, i32 150
  %14 = ptrtoint ptr %fsync_firstdiff_ratethreshold to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsync_firstdiff_ratethreshold, align 8
  %fsync_seconddiff_ratethreshold = getelementptr inbounds %struct.ieee80211_device, ptr %11, i32 0, i32 151
  %16 = ptrtoint ptr %fsync_seconddiff_ratethreshold to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fsync_seconddiff_ratethreshold, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_check_fsync.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.7, i32 noundef %13, i32 noundef %15, i32 noundef %17) #6
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %do.body17, %do.body13.do.end38_crit_edge
  %ieee8021139 = getelementptr i8, ptr %dev, i32 30156
  %18 = ptrtoint ptr %ieee8021139 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ieee8021139, align 4
  %state = getelementptr inbounds %struct.ieee80211_device, ptr %19, i32 0, i32 83
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp = icmp eq i32 %21, 5
  br i1 %cmp, label %land.lhs.true, label %do.end38.if.else79_crit_edge

do.end38.if.else79_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else79

land.lhs.true:                                    ; preds = %do.end38
  %pHTInfo = getelementptr inbounds %struct.ieee80211_device, ptr %19, i32 0, i32 12
  %22 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pHTInfo, align 8
  %IOTAction = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %23, i32 0, i32 50
  %24 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %IOTAction, align 1
  %and42 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %land.lhs.true.if.else79_crit_edge, label %if.then44

land.lhs.true.if.else79_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else79

if.then44:                                        ; preds = %land.lhs.true
  %bfsync_enable = getelementptr inbounds %struct.ieee80211_device, ptr %19, i32 0, i32 148
  %26 = ptrtoint ptr %bfsync_enable to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bfsync_enable, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp48 = icmp eq i8 %27, 0
  %fsync_state = getelementptr inbounds %struct.ieee80211_device, ptr %19, i32 0, i32 152
  %28 = ptrtoint ptr %fsync_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fsync_state, align 8
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.then44
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %29, label %if.then50.if.end69_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb54
  ]

if.then50.if.end69_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

sw.bb:                                            ; preds = %if.then50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %31 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %31, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.dm_StartHWFsync.exit_crit_edge, label %do.body1.i

sw.bb.dm_StartHWFsync.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_StartHWFsync.exit

do.body1.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_StartHWFsync.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_check_fsync, %if.then5.i)) #6
          to label %dm_StartHWFsync.exit [label %if.then5.i], !srcloc !205

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_StartHWFsync.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #6
  br label %dm_StartHWFsync.exit

dm_StartHWFsync.exit:                             ; preds = %if.then5.i, %do.body1.i, %sw.bb.dm_StartHWFsync.exit_crit_edge
  %call8.i = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180439247) #6
  %call9.i = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3131, i8 noundef zeroext 65) #6
  br label %if.end69.sink.split

sw.bb54:                                          ; preds = %if.then50
  tail call fastcc void @dm_EndSWFsync(ptr noundef %dev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %32 = load i32, ptr @rt_global_debug_component, align 4
  %and.i191 = and i32 %32, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i191)
  %tobool.not.i192 = icmp eq i32 %and.i191, 0
  br i1 %tobool.not.i192, label %sw.bb54.dm_StartHWFsync.exit197_crit_edge, label %do.body1.i193

sw.bb54.dm_StartHWFsync.exit197_crit_edge:        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_StartHWFsync.exit197

do.body1.i193:                                    ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_StartHWFsync.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_check_fsync, %if.then5.i194)) #6
          to label %dm_StartHWFsync.exit197 [label %if.then5.i194], !srcloc !205

if.then5.i194:                                    ; preds = %do.body1.i193
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_StartHWFsync.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #6
  br label %dm_StartHWFsync.exit197

dm_StartHWFsync.exit197:                          ; preds = %if.then5.i194, %do.body1.i193, %sw.bb54.dm_StartHWFsync.exit197_crit_edge
  %call8.i195 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180439247) #6
  %call9.i196 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3131, i8 noundef zeroext 65) #6
  br label %if.end69.sink.split

if.else:                                          ; preds = %if.then44
  %33 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %29, label %if.else.if.end69_crit_edge [
    i32 0, label %sw.bb60
    i32 1, label %sw.bb63
  ]

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

sw.bb60:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dm_StartSWFsync(ptr noundef %dev)
  br label %if.end69.sink.split

sw.bb63:                                          ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %34 = load i32, ptr @rt_global_debug_component, align 4
  %and.i198 = and i32 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool.not.i199 = icmp eq i32 %and.i198, 0
  br i1 %tobool.not.i199, label %sw.bb63.dm_EndHWFsync.exit_crit_edge, label %do.body1.i200

sw.bb63.dm_EndHWFsync.exit_crit_edge:             ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_EndHWFsync.exit

do.body1.i200:                                    ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_EndHWFsync.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_check_fsync, %if.then5.i201)) #6
          to label %dm_EndHWFsync.exit [label %if.then5.i201], !srcloc !205

if.then5.i201:                                    ; preds = %do.body1.i200
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_EndHWFsync.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.42) #6
  br label %dm_EndHWFsync.exit

dm_EndHWFsync.exit:                               ; preds = %if.then5.i201, %do.body1.i200, %sw.bb63.dm_EndHWFsync.exit_crit_edge
  %call8.i202 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180455629) #6
  %call9.i203 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3131, i8 noundef zeroext 73) #6
  tail call fastcc void @dm_StartSWFsync(ptr noundef %dev)
  br label %if.end69.sink.split

if.end69.sink.split:                              ; preds = %dm_EndHWFsync.exit, %sw.bb60, %dm_StartHWFsync.exit197, %dm_StartHWFsync.exit
  %.sink = phi i32 [ 2, %sw.bb60 ], [ 2, %dm_EndHWFsync.exit ], [ 1, %dm_StartHWFsync.exit ], [ 1, %dm_StartHWFsync.exit197 ]
  %35 = ptrtoint ptr %ieee8021139 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ieee8021139, align 4
  %fsync_state62 = getelementptr inbounds %struct.ieee80211_device, ptr %36, i32 0, i32 152
  %37 = ptrtoint ptr %fsync_state62 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %fsync_state62, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %if.else.if.end69_crit_edge, %if.then50.if.end69_crit_edge
  %framesyncMonitor = getelementptr i8, ptr %dev, i32 35296
  %38 = ptrtoint ptr %framesyncMonitor to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %framesyncMonitor, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool70.not = icmp eq i8 %39, 0
  br i1 %tobool70.not, label %if.end69.if.end127_crit_edge, label %if.then71

if.end69.if.end127_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then71:                                        ; preds = %if.end69
  %40 = load i8, ptr @dm_check_fsync.reg_c38_State, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp73.not = icmp eq i8 %40, 2
  br i1 %cmp73.not, label %if.then71.if.end127_crit_edge, label %if.then71.if.end127.sink.split_crit_edge

if.then71.if.end127.sink.split_crit_edge:         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.sink.split

if.then71.if.end127_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.else79:                                        ; preds = %land.lhs.true.if.else79_crit_edge, %do.end38.if.else79_crit_edge
  %fsync_state81 = getelementptr inbounds %struct.ieee80211_device, ptr %19, i32 0, i32 152
  %41 = ptrtoint ptr %fsync_state81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fsync_state81, align 8
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %42, label %if.else79.sw.epilog90_crit_edge [
    i32 1, label %sw.bb82
    i32 2, label %sw.bb85
  ]

if.else79.sw.epilog90_crit_edge:                  ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog90

sw.bb82:                                          ; preds = %if.else79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %44 = load i32, ptr @rt_global_debug_component, align 4
  %and.i204 = and i32 %44, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i204)
  %tobool.not.i205 = icmp eq i32 %and.i204, 0
  br i1 %tobool.not.i205, label %sw.bb82.dm_EndHWFsync.exit210_crit_edge, label %do.body1.i206

sw.bb82.dm_EndHWFsync.exit210_crit_edge:          ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_EndHWFsync.exit210

do.body1.i206:                                    ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_EndHWFsync.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_check_fsync, %if.then5.i207)) #6
          to label %dm_EndHWFsync.exit210 [label %if.then5.i207], !srcloc !205

if.then5.i207:                                    ; preds = %do.body1.i206
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_EndHWFsync.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.42) #6
  br label %dm_EndHWFsync.exit210

dm_EndHWFsync.exit210:                            ; preds = %if.then5.i207, %do.body1.i206, %sw.bb82.dm_EndHWFsync.exit210_crit_edge
  %call8.i208 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180455629) #6
  %call9.i209 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3131, i8 noundef zeroext 73) #6
  br label %sw.epilog90.sink.split

sw.bb85:                                          ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dm_EndSWFsync(ptr noundef %dev)
  br label %sw.epilog90.sink.split

sw.epilog90.sink.split:                           ; preds = %sw.bb85, %dm_EndHWFsync.exit210
  %45 = ptrtoint ptr %ieee8021139 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ieee8021139, align 4
  %fsync_state87 = getelementptr inbounds %struct.ieee80211_device, ptr %46, i32 0, i32 152
  %47 = ptrtoint ptr %fsync_state87 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %fsync_state87, align 8
  br label %sw.epilog90

sw.epilog90:                                      ; preds = %sw.epilog90.sink.split, %if.else79.sw.epilog90_crit_edge
  %framesyncMonitor91 = getelementptr i8, ptr %dev, i32 35296
  %48 = ptrtoint ptr %framesyncMonitor91 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %framesyncMonitor91, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool92.not = icmp eq i8 %49, 0
  br i1 %tobool92.not, label %sw.epilog90.if.end127_crit_edge, label %if.then93

sw.epilog90.if.end127_crit_edge:                  ; preds = %sw.epilog90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then93:                                        ; preds = %sw.epilog90
  %50 = ptrtoint ptr %ieee8021139 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ieee8021139, align 4
  %state95 = getelementptr inbounds %struct.ieee80211_device, ptr %51, i32 0, i32 83
  %52 = ptrtoint ptr %state95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state95, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %53)
  %cmp96 = icmp eq i32 %53, 5
  br i1 %cmp96, label %if.then98, label %if.else119

if.then98:                                        ; preds = %if.then93
  %undecorated_smoothed_pwdb = getelementptr i8, ptr %dev, i32 34360
  %54 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %undecorated_smoothed_pwdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %55)
  %cmp99 = icmp slt i32 %55, 21
  br i1 %cmp99, label %if.then101, label %if.else108

if.then101:                                       ; preds = %if.then98
  %56 = load i8, ptr @dm_check_fsync.reg_c38_State, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp103.not = icmp eq i8 %56, 1
  br i1 %cmp103.not, label %if.then101.if.end127_crit_edge, label %if.then101.if.end127.sink.split_crit_edge

if.then101.if.end127.sink.split_crit_edge:        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.sink.split

if.then101.if.end127_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.else108:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %55)
  %cmp110 = icmp ugt i32 %55, 24
  br i1 %cmp110, label %if.then112, label %if.else108.if.end127_crit_edge

if.else108.if.end127_crit_edge:                   ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then112:                                       ; preds = %if.else108
  %57 = load i8, ptr @dm_check_fsync.reg_c38_State, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool113.not = icmp eq i8 %57, 0
  br i1 %tobool113.not, label %if.then112.if.end127_crit_edge, label %if.then112.if.end127.sink.split.sink.split_crit_edge

if.then112.if.end127.sink.split.sink.split_crit_edge: ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.sink.split.sink.split

if.then112.if.end127_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.else119:                                       ; preds = %if.then93
  %58 = load i8, ptr @dm_check_fsync.reg_c38_State, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool120.not = icmp eq i8 %58, 0
  br i1 %tobool120.not, label %if.else119.if.end127_crit_edge, label %if.else119.if.end127.sink.split.sink.split_crit_edge

if.else119.if.end127.sink.split.sink.split_crit_edge: ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.sink.split.sink.split

if.else119.if.end127_crit_edge:                   ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.end127.sink.split.sink.split:                  ; preds = %if.else119.if.end127.sink.split.sink.split_crit_edge, %if.then112.if.end127.sink.split.sink.split_crit_edge
  %framesync = getelementptr i8, ptr %dev, i32 35289
  %59 = ptrtoint ptr %framesync to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %framesync, align 1
  br label %if.end127.sink.split

if.end127.sink.split:                             ; preds = %if.end127.sink.split.sink.split, %if.then101.if.end127.sink.split_crit_edge, %if.then71.if.end127.sink.split_crit_edge
  %.sink216 = phi i8 [ -107, %if.then71.if.end127.sink.split_crit_edge ], [ -112, %if.then101.if.end127.sink.split_crit_edge ], [ %60, %if.end127.sink.split.sink.split ]
  %.sink215 = phi i8 [ 2, %if.then71.if.end127.sink.split_crit_edge ], [ 1, %if.then101.if.end127.sink.split_crit_edge ], [ 0, %if.end127.sink.split.sink.split ]
  %call123 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3128, i8 noundef zeroext %.sink216) #6
  store i8 %.sink215, ptr @dm_check_fsync.reg_c38_State, align 1
  br label %if.end127

if.end127:                                        ; preds = %if.end127.sink.split, %if.else119.if.end127_crit_edge, %if.then112.if.end127_crit_edge, %if.else108.if.end127_crit_edge, %if.then101.if.end127_crit_edge, %sw.epilog90.if.end127_crit_edge, %if.then71.if.end127_crit_edge, %if.end69.if.end127_crit_edge
  %framesyncMonitor128 = getelementptr i8, ptr %dev, i32 35296
  %61 = ptrtoint ptr %framesyncMonitor128 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %framesyncMonitor128, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool129.not = icmp eq i8 %62, 0
  br i1 %tobool129.not, label %if.else138, label %if.then130

if.then130:                                       ; preds = %if.end127
  %reset_count = getelementptr i8, ptr %dev, i32 35304
  %63 = ptrtoint ptr %reset_count to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reset_count, align 4
  %65 = load i32, ptr @dm_check_fsync.reset_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %65)
  %cmp131.not = icmp eq i32 %64, %65
  br i1 %cmp131.not, label %if.then130.if.end144_crit_edge, label %if.then133

if.then130.if.end144_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then133:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  %framesync134 = getelementptr i8, ptr %dev, i32 35289
  %66 = ptrtoint ptr %framesync134 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %framesync134, align 1
  %call135 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3128, i8 noundef zeroext %67) #6
  store i8 0, ptr @dm_check_fsync.reg_c38_State, align 1
  %68 = ptrtoint ptr %reset_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %reset_count, align 4
  store i32 %69, ptr @dm_check_fsync.reset_cnt, align 4
  br label %if.end144

if.else138:                                       ; preds = %if.end127
  %70 = load i8, ptr @dm_check_fsync.reg_c38_State, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool139.not = icmp eq i8 %70, 0
  br i1 %tobool139.not, label %if.else138.if.end144_crit_edge, label %if.then140

if.else138.if.end144_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then140:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #8
  %framesync141 = getelementptr i8, ptr %dev, i32 35289
  %71 = ptrtoint ptr %framesync141 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %framesync141, align 1
  %call142 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3128, i8 noundef zeroext %72) #6
  store i8 0, ptr @dm_check_fsync.reg_c38_State, align 1
  br label %if.end144

if.end144:                                        ; preds = %if.then140, %if.else138.if.end144_crit_edge, %if.then133, %if.then130.if.end144_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_txpower_trackingcallback(ptr nocapture noundef readonly %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %work, i32 -5444
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %bDcut = getelementptr i8, ptr %work, i32 -1652
  %4 = ptrtoint ptr %bDcut to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bDcut, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dm_TXPowerTrackingCallback_TSSI(ptr noundef %3)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dm_TXPowerTrackingCallback_ThermalMeter(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_TXPowerTrackingCallback_TSSI(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %tx_cmd = alloca %struct.tx_config_cmd, align 4
  %tmp_report = alloca [5 x i8], align 1
  %Pwr_Flag = alloca i8, align 1
  %Avg_TSSI_Meas = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30120
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tx_cmd) #6
  %0 = getelementptr inbounds %struct.tx_config_cmd, ptr %tx_cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tx_config_cmd, ptr %tx_cmd, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %tmp_report) #6
  %2 = call ptr @memset(ptr %tmp_report, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %Pwr_Flag) #6
  %3 = ptrtoint ptr %Pwr_Flag to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %Pwr_Flag, align 1, !annotation !204
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %Avg_TSSI_Meas) #6
  %4 = ptrtoint ptr %Avg_TSSI_Meas to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %Avg_TSSI_Meas, align 2, !annotation !204
  %call1 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 442, i8 noundef zeroext 0) #6
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %5 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ieee80211, align 4
  %bdynamic_txpower_enable = getelementptr inbounds %struct.ieee80211_device, ptr %6, i32 0, i32 142
  %7 = ptrtoint ptr %bdynamic_txpower_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bdynamic_txpower_enable, align 1
  %Pwr_Track = getelementptr i8, ptr %dev, i32 34348
  %8 = ptrtoint ptr %Pwr_Track to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %Pwr_Track, align 4
  %shr = lshr i32 %9, 24
  %rf_type = getelementptr i8, ptr %dev, i32 30464
  %10 = ptrtoint ptr %rf_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rf_type, align 4
  %conv3 = shl i32 %11, 8
  %shl = and i32 %conv3, 65280
  %or = or i32 %shl, %shr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %12 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body5

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then10)) #6
          to label %do.end14 [label %if.then10], !srcloc !205

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.12, i32 noundef %shr) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body5, %entry.do.end14_crit_edge
  %arrayidx73 = getelementptr inbounds [5 x i8], ptr %tmp_report, i32 0, i32 4
  %TSSI_13dBm187 = getelementptr i8, ptr %dev, i32 35208
  %rfa_txpowertrackingindex374 = getelementptr i8, ptr %dev, i32 35196
  %rfa_txpowertrackingindex_real381 = getelementptr i8, ptr %dev, i32 35197
  %rfa_txpowertracking_default = getelementptr i8, ptr %dev, i32 35198
  %cck_present_attenuation_difference395 = getelementptr i8, ptr %dev, i32 35204
  %CurrentChannelBW = getelementptr i8, ptr %dev, i32 34368
  %cck_present_attenuation411 = getelementptr i8, ptr %dev, i32 35201
  %bcck_in_ch14440 = getelementptr i8, ptr %dev, i32 35206
  %arrayidx105.1 = getelementptr inbounds [5 x i8], ptr %tmp_report, i32 0, i32 1
  %arrayidx105.2 = getelementptr inbounds [5 x i8], ptr %tmp_report, i32 0, i32 2
  %arrayidx105.3 = getelementptr inbounds [5 x i8], ptr %tmp_report, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc601.for.body_crit_edge, %do.end14
  %j.0796 = phi i32 [ 0, %do.end14 ], [ %inc602, %for.inc601.for.body_crit_edge ]
  %13 = ptrtoint ptr %tx_cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -7340027, ptr %tx_cmd, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %0, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %1, align 4
  %call16 = call i32 @SendTxCommandPacket(ptr noundef %dev, ptr noundef nonnull %tx_cmd, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.body.if.end47_crit_edge, label %do.body24

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.body24:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %16 = load i32, ptr @rt_global_debug_component, align 4
  %and25 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.if.end47_crit_edge, label %do.body28

do.body24.if.end47_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.body28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then40)) #6
          to label %if.end47 [label %if.then40], !srcloc !205

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.13) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %do.body28, %do.body24.if.end47_crit_edge, %for.body.if.end47_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %for.body51

for.body51:                                       ; preds = %if.then56.for.body51_crit_edge, %if.end47
  %i.0787 = phi i32 [ 0, %if.end47 ], [ %inc599, %if.then56.for.body51_crit_edge ]
  %call52 = call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 442, ptr noundef nonnull %Pwr_Flag) #6
  %17 = ptrtoint ptr %Pwr_Flag to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %Pwr_Flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp54 = icmp eq i8 %18, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %for.body51
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %inc599 = add nuw nsw i32 %i.0787, 1
  %exitcond.not = icmp eq i32 %inc599, 31
  br i1 %exitcond.not, label %if.then56.for.inc601_crit_edge, label %if.then56.for.body51_crit_edge

if.then56.for.body51_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body51

if.then56.for.inc601_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc601

if.end57:                                         ; preds = %for.body51
  %call58 = call i32 @read_nic_word(ptr noundef %dev, i32 noundef 316, ptr noundef nonnull %Avg_TSSI_Meas) #6
  %19 = ptrtoint ptr %Avg_TSSI_Meas to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %Avg_TSSI_Meas, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp60 = icmp eq i16 %20, 0
  br i1 %cmp60, label %if.then62, label %if.end57.for.body68_crit_edge

if.end57.for.body68_crit_edge:                    ; preds = %if.end57
  br label %for.body68

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 442, i8 noundef zeroext 0) #6
  br label %for.inc601

for.body68:                                       ; preds = %for.inc.for.body68_crit_edge, %if.end57.for.body68_crit_edge
  %k.0788 = phi i32 [ %inc, %for.inc.for.body68_crit_edge ], [ 0, %if.end57.for.body68_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %k.0788)
  %cmp69.not = icmp eq i32 %k.0788, 4
  br i1 %cmp69.not, label %if.else, label %if.then71

if.then71:                                        ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %k.0788, 308
  %arrayidx = getelementptr [5 x i8], ptr %tmp_report, i32 0, i32 %k.0788
  %call72 = call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %add, ptr noundef %arrayidx) #6
  br label %do.body76

if.else:                                          ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #8
  %call74 = call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 318, ptr noundef %arrayidx73) #6
  br label %do.body76

do.body76:                                        ; preds = %if.else, %if.then71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %21 = load i32, ptr @rt_global_debug_component, align 4
  %and77 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body76.for.inc_crit_edge, label %do.body80

do.body76.for.inc_crit_edge:                      ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body80:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then92)) #6
          to label %for.inc [label %if.then92], !srcloc !205

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx93 = getelementptr [5 x i8], ptr %tmp_report, i32 0, i32 %k.0788
  %22 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %23 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.14, i32 noundef %conv94) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then92, %do.body80, %do.body76.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.0788, 1
  %exitcond799.not = icmp eq i32 %inc, 5
  br i1 %exitcond799.not, label %for.body104.preheader, label %for.inc.for.body68_crit_edge

for.inc.for.body68_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body68

for.body104.preheader:                            ; preds = %for.inc
  %24 = ptrtoint ptr %tmp_report to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tmp_report, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %25)
  %cmp107 = icmp ult i8 %25, 21
  br i1 %cmp107, label %for.body104.preheader.if.then115_crit_edge, label %for.cond101

for.body104.preheader.if.then115_crit_edge:       ; preds = %for.body104.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115

for.cond101:                                      ; preds = %for.body104.preheader
  %26 = ptrtoint ptr %arrayidx105.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx105.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %27)
  %cmp107.1 = icmp ult i8 %27, 21
  br i1 %cmp107.1, label %for.cond101.if.then115_crit_edge, label %for.cond101.1

for.cond101.if.then115_crit_edge:                 ; preds = %for.cond101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115

for.cond101.1:                                    ; preds = %for.cond101
  %28 = ptrtoint ptr %arrayidx105.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx105.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %29)
  %cmp107.2 = icmp ult i8 %29, 21
  br i1 %cmp107.2, label %for.cond101.1.if.then115_crit_edge, label %for.cond101.2

for.cond101.1.if.then115_crit_edge:               ; preds = %for.cond101.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115

for.cond101.2:                                    ; preds = %for.cond101.1
  %30 = ptrtoint ptr %arrayidx105.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx105.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %31)
  %cmp107.3 = icmp ult i8 %31, 21
  br i1 %cmp107.3, label %for.cond101.2.if.then115_crit_edge, label %for.cond101.3

for.cond101.2.if.then115_crit_edge:               ; preds = %for.cond101.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115

for.cond101.3:                                    ; preds = %for.cond101.2
  %32 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %33)
  %cmp107.4 = icmp ult i8 %33, 21
  br i1 %cmp107.4, label %for.cond101.3.if.then115_crit_edge, label %for.cond101.4

for.cond101.3.if.then115_crit_edge:               ; preds = %for.cond101.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115

for.cond101.4:                                    ; preds = %for.cond101.3
  %34 = ptrtoint ptr %tmp_report to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tmp_report, align 1
  %conv154 = zext i8 %35 to i16
  %36 = ptrtoint ptr %arrayidx105.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx105.1, align 1
  %conv154.1 = zext i8 %37 to i16
  %add156.1 = add nuw nsw i16 %conv154, %conv154.1
  %38 = ptrtoint ptr %arrayidx105.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx105.2, align 1
  %conv154.2 = zext i8 %39 to i16
  %add156.2 = add nuw nsw i16 %add156.1, %conv154.2
  %40 = ptrtoint ptr %arrayidx105.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx105.3, align 1
  %conv154.3 = zext i8 %41 to i16
  %add156.3 = add nuw nsw i16 %add156.2, %conv154.3
  %42 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx73, align 1
  %conv154.4 = zext i8 %43 to i16
  %add156.4 = add nuw nsw i16 %add156.3, %conv154.4
  %div = mul nuw nsw i16 %add156.4, 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %44 = load i32, ptr @rt_global_debug_component, align 4
  %and164 = and i32 %44, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %for.cond101.4.do.end186_crit_edge, label %do.body167

for.cond101.4.do.end186_crit_edge:                ; preds = %for.cond101.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end186

if.then115:                                       ; preds = %for.cond101.3.if.then115_crit_edge, %for.cond101.2.if.then115_crit_edge, %for.cond101.1.if.then115_crit_edge, %for.cond101.if.then115_crit_edge, %for.body104.preheader.if.then115_crit_edge
  %call116 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 442, i8 noundef zeroext 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %45 = load i32, ptr @rt_global_debug_component, align 4
  %and118 = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.then115.do.end139_crit_edge, label %do.body121

if.then115.do.end139_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end139

do.body121:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then133)) #6
          to label %do.end139 [label %if.then133], !srcloc !205

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.15) #6
  br label %do.end139

do.end139:                                        ; preds = %if.then133, %do.body121, %if.then115.do.end139_crit_edge
  %46 = call ptr @memset(ptr %tmp_report, i32 0, i32 5)
  br label %for.inc601

do.body167:                                       ; preds = %for.cond101.4
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then179)) #6
          to label %do.end186 [label %if.then179], !srcloc !205

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #8
  %conv180 = zext i16 %div to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.16, i32 noundef %conv180) #6
  br label %do.end186

do.end186:                                        ; preds = %if.then179, %do.body167, %for.cond101.4.do.end186_crit_edge
  %47 = ptrtoint ptr %TSSI_13dBm187 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %TSSI_13dBm187, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %49 = load i32, ptr @rt_global_debug_component, align 4
  %and189 = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %do.end186.do.end211_crit_edge, label %do.body192

do.end186.do.end211_crit_edge:                    ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end211

do.body192:                                       ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then204)) #6
          to label %do.end211 [label %if.then204], !srcloc !205

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #8
  %conv205 = zext i16 %48 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.17, i32 noundef %conv205) #6
  br label %do.end211

do.end211:                                        ; preds = %if.then204, %do.body192, %do.end186.do.end211_crit_edge
  %conv212 = zext i16 %div to i32
  %conv213 = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %div, i16 %48)
  %cmp214 = icmp ugt i16 %div, %48
  %sub = sub nsw i32 %conv212, %conv213
  %sub222 = sub nsw i32 %conv213, %conv212
  %delta.0 = select i1 %cmp214, i32 %sub, i32 %sub222
  call void @__sanitizer_cov_trace_const_cmp4(i32 301, i32 %delta.0)
  %cmp224 = icmp ult i32 %delta.0, 301
  br i1 %cmp224, label %if.then226, label %if.end349

if.then226:                                       ; preds = %do.end211
  %50 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ieee80211, align 4
  %bdynamic_txpower_enable228 = getelementptr inbounds %struct.ieee80211_device, ptr %51, i32 0, i32 142
  %52 = ptrtoint ptr %bdynamic_txpower_enable228 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %bdynamic_txpower_enable228, align 1
  %call229 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 442, i8 noundef zeroext 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %53 = load i32, ptr @rt_global_debug_component, align 4
  %and231 = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %if.then226.do.body253_crit_edge, label %do.body234

if.then226.do.body253_crit_edge:                  ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body253

do.body234:                                       ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then246)) #6
          to label %do.body253 [label %if.then246], !srcloc !205

if.then246:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.18) #6
  br label %do.body253

do.body253:                                       ; preds = %if.then246, %do.body234, %if.then226.do.body253_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %54 = load i32, ptr @rt_global_debug_component, align 4
  %and254 = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %do.body253.do.body277_crit_edge, label %do.body257

do.body253.do.body277_crit_edge:                  ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body277

do.body257:                                       ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then269)) #6
          to label %do.body277 [label %if.then269], !srcloc !205

if.then269:                                       ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %rfa_txpowertrackingindex374 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rfa_txpowertrackingindex374, align 4
  %conv270 = zext i8 %56 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.19, i32 noundef %conv270) #6
  br label %do.body277

do.body277:                                       ; preds = %if.then269, %do.body257, %do.body253.do.body277_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %57 = load i32, ptr @rt_global_debug_component, align 4
  %and278 = and i32 %57, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %tobool279.not = icmp eq i32 %and278, 0
  br i1 %tobool279.not, label %do.body277.do.body301_crit_edge, label %do.body281

do.body277.do.body301_crit_edge:                  ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body301

do.body281:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then293)) #6
          to label %do.body301 [label %if.then293], !srcloc !205

if.then293:                                       ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %rfa_txpowertrackingindex_real381 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rfa_txpowertrackingindex_real381, align 1
  %conv294 = zext i8 %59 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.20, i32 noundef %conv294) #6
  br label %do.body301

do.body301:                                       ; preds = %if.then293, %do.body281, %do.body277.do.body301_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %60 = load i32, ptr @rt_global_debug_component, align 4
  %and302 = and i32 %60, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and302)
  %tobool303.not = icmp eq i32 %and302, 0
  br i1 %tobool303.not, label %do.body301.do.body325_crit_edge, label %do.body305

do.body301.do.body325_crit_edge:                  ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body325

do.body305:                                       ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then317)) #6
          to label %do.body325 [label %if.then317], !srcloc !205

if.then317:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %cck_present_attenuation_difference395 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cck_present_attenuation_difference395, align 4
  %conv318 = sext i8 %62 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.21, i32 noundef %conv318) #6
  br label %do.body325

do.body325:                                       ; preds = %if.then317, %do.body305, %do.body301.do.body325_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %63 = load i32, ptr @rt_global_debug_component, align 4
  %and326 = and i32 %63, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and326)
  %tobool327.not = icmp eq i32 %and326, 0
  br i1 %tobool327.not, label %do.body325.cleanup_crit_edge, label %do.body329

do.body325.cleanup_crit_edge:                     ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body329:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then341)) #6
          to label %cleanup [label %if.then341], !srcloc !205

if.then341:                                       ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %cck_present_attenuation411 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cck_present_attenuation411, align 1
  %conv342 = sext i8 %65 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.22, i32 noundef %conv342) #6
  br label %cleanup

if.end349:                                        ; preds = %do.end211
  %sub352 = add nsw i32 %conv213, -300
  call void @__sanitizer_cov_trace_cmp4(i32 %sub352, i32 %conv212)
  %cmp353 = icmp sgt i32 %sub352, %conv212
  %66 = ptrtoint ptr %rfa_txpowertrackingindex374 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rfa_txpowertrackingindex374, align 4
  br i1 %cmp353, label %if.then355, label %if.else373

if.then355:                                       ; preds = %if.end349
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp358.not = icmp eq i8 %67, 0
  br i1 %cmp358.not, label %if.then355.if.end389_crit_edge, label %if.then360

if.then355.if.end389_crit_edge:                   ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end389

if.then360:                                       ; preds = %if.then355
  %dec = add i8 %67, -1
  %68 = ptrtoint ptr %rfa_txpowertrackingindex374 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %dec, ptr %rfa_txpowertrackingindex374, align 4
  %69 = ptrtoint ptr %rfa_txpowertrackingindex_real381 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rfa_txpowertrackingindex_real381, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %cmp364 = icmp ugt i8 %70, 4
  br i1 %cmp364, label %if.then366, label %if.then360.if.end389_crit_edge

if.then360.if.end389_crit_edge:                   ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end389

if.then366:                                       ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #8
  %dec368 = add i8 %70, -1
  br label %if.end389.sink.split

if.else373:                                       ; preds = %if.end349
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %67)
  %cmp376 = icmp ult i8 %67, 36
  br i1 %cmp376, label %if.then378, label %if.else373.if.end389_crit_edge

if.else373.if.end389_crit_edge:                   ; preds = %if.else373
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end389

if.then378:                                       ; preds = %if.else373
  call void @__sanitizer_cov_trace_pc() #8
  %inc380 = add nuw nsw i8 %67, 1
  %71 = ptrtoint ptr %rfa_txpowertrackingindex374 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %inc380, ptr %rfa_txpowertrackingindex374, align 4
  %72 = ptrtoint ptr %rfa_txpowertrackingindex_real381 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rfa_txpowertrackingindex_real381, align 1
  %inc382 = add i8 %73, 1
  br label %if.end389.sink.split

if.end389.sink.split:                             ; preds = %if.then378, %if.then366
  %inc382.sink803 = phi i8 [ %inc382, %if.then378 ], [ %dec368, %if.then366 ]
  %74 = ptrtoint ptr %rfa_txpowertrackingindex_real381 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %inc382.sink803, ptr %rfa_txpowertrackingindex_real381, align 1
  %idxprom385 = zext i8 %inc382.sink803 to i32
  %txbbgain_value387 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 115, i32 %idxprom385, i32 1
  %75 = ptrtoint ptr %txbbgain_value387 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %txbbgain_value387, align 4
  call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 3200, i32 noundef -1, i32 noundef %76) #6
  br label %if.end389

if.end389:                                        ; preds = %if.end389.sink.split, %if.else373.if.end389_crit_edge, %if.then360.if.end389_crit_edge, %if.then355.if.end389_crit_edge
  %77 = ptrtoint ptr %rfa_txpowertrackingindex374 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rfa_txpowertrackingindex374, align 4
  %79 = ptrtoint ptr %rfa_txpowertracking_default to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %rfa_txpowertracking_default, align 2
  %sub393 = sub i8 %78, %80
  %81 = ptrtoint ptr %cck_present_attenuation_difference395 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %sub393, ptr %cck_present_attenuation_difference395, align 4
  %82 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp396 = icmp eq i32 %83, 0
  %.pn.in.v = select i1 %cmp396, i32 35202, i32 35203
  %.pn.in = getelementptr i8, ptr %dev, i32 %.pn.in.v
  %84 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load1_noabort(i32 %84)
  %.pn = load i8, ptr %.pn.in, align 1
  %storemerge = add i8 %.pn, %sub393
  %85 = ptrtoint ptr %cck_present_attenuation411 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %storemerge, ptr %cck_present_attenuation411, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %storemerge)
  %86 = icmp ult i8 %storemerge, 23
  br i1 %86, label %if.then421, label %if.end389.do.body453_crit_edge

if.end389.do.body453_crit_edge:                   ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body453

if.then421:                                       ; preds = %if.end389
  %87 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ieee80211, align 4
  %channel = getelementptr inbounds %struct.ieee80211_device, ptr %88, i32 0, i32 82, i32 1
  %89 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %90)
  %cmp424 = icmp eq i8 %90, 14
  %91 = ptrtoint ptr %bcck_in_ch14440 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bcck_in_ch14440, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool427.not = icmp eq i8 %92, 0
  br i1 %cmp424, label %land.lhs.true426, label %land.lhs.true439

land.lhs.true426:                                 ; preds = %if.then421
  br i1 %tobool427.not, label %if.then428, label %land.lhs.true426.if.else447_crit_edge

land.lhs.true426.if.else447_crit_edge:            ; preds = %land.lhs.true426
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else447

if.then428:                                       ; preds = %land.lhs.true426
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %bcck_in_ch14440 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %bcck_in_ch14440, align 2
  br label %do.body453.sink.split

land.lhs.true439:                                 ; preds = %if.then421
  br i1 %tobool427.not, label %land.lhs.true439.if.else447_crit_edge, label %if.then443

land.lhs.true439.if.else447_crit_edge:            ; preds = %land.lhs.true439
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else447

if.then443:                                       ; preds = %land.lhs.true439
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %bcck_in_ch14440 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %bcck_in_ch14440, align 2
  br label %do.body453.sink.split

if.else447:                                       ; preds = %land.lhs.true439.if.else447_crit_edge, %land.lhs.true426.if.else447_crit_edge
  %95 = ptrtoint ptr %bcck_in_ch14440 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bcck_in_ch14440, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool449 = icmp ne i8 %96, 0
  br label %do.body453.sink.split

do.body453.sink.split:                            ; preds = %if.else447, %if.then443, %if.then428
  %.sink = phi i1 [ false, %if.then443 ], [ %tobool449, %if.else447 ], [ true, %if.then428 ]
  call void @dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext %.sink)
  br label %do.body453

do.body453:                                       ; preds = %do.body453.sink.split, %if.end389.do.body453_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %97 = load i32, ptr @rt_global_debug_component, align 4
  %and454 = and i32 %97, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and454)
  %tobool455.not = icmp eq i32 %and454, 0
  br i1 %tobool455.not, label %do.body453.do.body478_crit_edge, label %do.body457

do.body453.do.body478_crit_edge:                  ; preds = %do.body453
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body478

do.body457:                                       ; preds = %do.body453
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then469)) #6
          to label %do.body478 [label %if.then469], !srcloc !205

if.then469:                                       ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %rfa_txpowertrackingindex374 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rfa_txpowertrackingindex374, align 4
  %conv471 = zext i8 %99 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.19, i32 noundef %conv471) #6
  br label %do.body478

do.body478:                                       ; preds = %if.then469, %do.body457, %do.body453.do.body478_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %100 = load i32, ptr @rt_global_debug_component, align 4
  %and479 = and i32 %100, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and479)
  %tobool480.not = icmp eq i32 %and479, 0
  br i1 %tobool480.not, label %do.body478.do.body503_crit_edge, label %do.body482

do.body478.do.body503_crit_edge:                  ; preds = %do.body478
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body503

do.body482:                                       ; preds = %do.body478
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then494)) #6
          to label %do.body503 [label %if.then494], !srcloc !205

if.then494:                                       ; preds = %do.body482
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %rfa_txpowertrackingindex_real381 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %rfa_txpowertrackingindex_real381, align 1
  %conv496 = zext i8 %102 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.20, i32 noundef %conv496) #6
  br label %do.body503

do.body503:                                       ; preds = %if.then494, %do.body482, %do.body478.do.body503_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %103 = load i32, ptr @rt_global_debug_component, align 4
  %and504 = and i32 %103, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and504)
  %tobool505.not = icmp eq i32 %and504, 0
  br i1 %tobool505.not, label %do.body503.do.body528_crit_edge, label %do.body507

do.body503.do.body528_crit_edge:                  ; preds = %do.body503
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body528

do.body507:                                       ; preds = %do.body503
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then519)) #6
          to label %do.body528 [label %if.then519], !srcloc !205

if.then519:                                       ; preds = %do.body507
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %cck_present_attenuation_difference395 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %cck_present_attenuation_difference395, align 4
  %conv521 = sext i8 %105 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.21, i32 noundef %conv521) #6
  br label %do.body528

do.body528:                                       ; preds = %if.then519, %do.body507, %do.body503.do.body528_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %106 = load i32, ptr @rt_global_debug_component, align 4
  %and529 = and i32 %106, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and529)
  %tobool530.not = icmp eq i32 %and529, 0
  br i1 %tobool530.not, label %do.body528.do.end552_crit_edge, label %do.body532

do.body528.do.end552_crit_edge:                   ; preds = %do.body528
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end552

do.body532:                                       ; preds = %do.body528
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then544)) #6
          to label %do.end552 [label %if.then544], !srcloc !205

if.then544:                                       ; preds = %do.body532
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %cck_present_attenuation411 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %cck_present_attenuation411, align 1
  %conv546 = sext i8 %108 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.22, i32 noundef %conv546) #6
  br label %do.end552

do.end552:                                        ; preds = %if.then544, %do.body532, %do.body528.do.end552_crit_edge
  %109 = ptrtoint ptr %cck_present_attenuation_difference395 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %cck_present_attenuation_difference395, align 4
  %111 = add i8 %110, -24
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %111)
  %112 = icmp ult i8 %111, -35
  br i1 %112, label %if.then561, label %if.end588

if.then561:                                       ; preds = %do.end552
  %113 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ieee80211, align 4
  %bdynamic_txpower_enable563 = getelementptr inbounds %struct.ieee80211_device, ptr %114, i32 0, i32 142
  %115 = ptrtoint ptr %bdynamic_txpower_enable563 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %bdynamic_txpower_enable563, align 1
  %call564 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 442, i8 noundef zeroext 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %116 = load i32, ptr @rt_global_debug_component, align 4
  %and566 = and i32 %116, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and566)
  %tobool567.not = icmp eq i32 %and566, 0
  br i1 %tobool567.not, label %if.then561.cleanup_crit_edge, label %do.body569

if.then561.cleanup_crit_edge:                     ; preds = %if.then561
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body569:                                       ; preds = %if.then561
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_TSSI, %if.then581)) #6
          to label %cleanup [label %if.then581], !srcloc !205

if.then581:                                       ; preds = %do.body569
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.23) #6
  br label %cleanup

if.end588:                                        ; preds = %do.end552
  call void @__sanitizer_cov_trace_pc() #8
  %call589 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 442, i8 noundef zeroext 0) #6
  %117 = call ptr @memset(ptr %tmp_report, i32 0, i32 5)
  br label %for.inc601

for.inc601:                                       ; preds = %if.end588, %do.end139, %if.then62, %if.then56.for.inc601_crit_edge
  %inc602 = add nuw nsw i32 %j.0796, 1
  %exitcond802.not = icmp eq i32 %inc602, 31
  br i1 %exitcond802.not, label %for.end603, label %for.inc601.for.body_crit_edge

for.inc601.for.body_crit_edge:                    ; preds = %for.inc601
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end603:                                       ; preds = %for.inc601
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ieee80211, align 4
  %bdynamic_txpower_enable605 = getelementptr inbounds %struct.ieee80211_device, ptr %119, i32 0, i32 142
  %120 = ptrtoint ptr %bdynamic_txpower_enable605 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %bdynamic_txpower_enable605, align 1
  %call606 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 442, i8 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end603, %if.then581, %do.body569, %if.then561.cleanup_crit_edge, %if.then341, %do.body329, %do.body325.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %Avg_TSSI_Meas) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %Pwr_Flag) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %tmp_report) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tx_cmd) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_TXPowerTrackingCallback_ThermalMeter(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %btxpower_trackingInit = getelementptr i8, ptr %dev, i32 34825
  %0 = ptrtoint ptr %btxpower_trackingInit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btxpower_trackingInit, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end60

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @rtl8192_QueryBBReg(ptr noundef %dev, i32 noundef 3200, i32 noundef -1) #6
  %OFDM_index = getelementptr i8, ptr %dev, i32 34826
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then
  %i.0338 = phi i32 [ 0, %if.then ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [19 x i32], ptr @OFDMSwingTable, i32 0, i32 %i.0338
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %3)
  %cmp2 = icmp eq i32 %call1, %3
  br i1 %cmp2, label %if.then3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %conv = trunc i32 %i.0338 to i8
  %4 = ptrtoint ptr %OFDM_index to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %OFDM_index, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %5 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then3.for.inc_crit_edge, label %do.body6

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_ThermalMeter, %if.then11)) #6
          to label %for.inc [label %if.then11], !srcloc !205

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %OFDM_index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %OFDM_index, align 2
  %conv13 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.25, i32 noundef 3200, i32 noundef %call1, i32 noundef %conv13) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %do.body6, %if.then3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0338, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call18 = tail call i32 @rtl8192_QueryBBReg(ptr noundef %dev, i32 noundef 2592, i32 noundef 16711680) #6
  %8 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call18, label %for.end.for.end58_crit_edge [
    i32 54, label %for.end.if.then28_crit_edge
    i32 48, label %if.then28.fold.split
    i32 43, label %if.then28.fold.split343
    i32 38, label %if.then28.fold.split344
    i32 34, label %if.then28.fold.split345
    i32 31, label %if.then28.fold.split346
    i32 27, label %if.then28.fold.split347
    i32 24, label %if.then28.fold.split348
    i32 22, label %if.then28.fold.split349
    i32 19, label %if.then28.fold.split350
    i32 17, label %if.then28.fold.split351
    i32 15, label %if.then28.fold.split352
  ]

for.end.if.then28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

for.end.for.end58_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end58

if.then28.fold.split:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28.fold.split343:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28.fold.split344:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28.fold.split345:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28.fold.split346:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28.fold.split347:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28.fold.split348:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28.fold.split349:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28.fold.split350:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28.fold.split351:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28.fold.split352:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28:                                        ; preds = %if.then28.fold.split352, %if.then28.fold.split351, %if.then28.fold.split350, %if.then28.fold.split349, %if.then28.fold.split348, %if.then28.fold.split347, %if.then28.fold.split346, %if.then28.fold.split345, %if.then28.fold.split344, %if.then28.fold.split343, %if.then28.fold.split, %for.end.if.then28_crit_edge
  %i.1340.lcssa = phi i8 [ 0, %for.end.if.then28_crit_edge ], [ 1, %if.then28.fold.split ], [ 2, %if.then28.fold.split343 ], [ 3, %if.then28.fold.split344 ], [ 4, %if.then28.fold.split345 ], [ 5, %if.then28.fold.split346 ], [ 6, %if.then28.fold.split347 ], [ 7, %if.then28.fold.split348 ], [ 8, %if.then28.fold.split349 ], [ 9, %if.then28.fold.split350 ], [ 10, %if.then28.fold.split351 ], [ 11, %if.then28.fold.split352 ]
  %CCK_index = getelementptr i8, ptr %dev, i32 34827
  %9 = ptrtoint ptr %CCK_index to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %i.1340.lcssa, ptr %CCK_index, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and31 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then28.for.end58_crit_edge, label %do.body34

if.then28.for.end58_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end58

do.body34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_ThermalMeter, %if.then46)) #6
          to label %for.end58 [label %if.then46], !srcloc !205

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %CCK_index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %CCK_index, align 1
  %conv48 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.26, i32 noundef 2592, i32 noundef %call18, i32 noundef %conv48) #6
  br label %for.end58

for.end58:                                        ; preds = %if.then46, %do.body34, %if.then28.for.end58_crit_edge, %for.end.for.end58_crit_edge
  %13 = ptrtoint ptr %btxpower_trackingInit to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %btxpower_trackingInit, align 1
  br label %cleanup

if.end60:                                         ; preds = %entry
  %call61 = tail call i32 @rtl8192_phy_QueryRFReg(ptr noundef %dev, i32 noundef 0, i32 noundef 18, i32 noundef 120) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %14 = load i32, ptr @rt_global_debug_component, align 4
  %and63 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end60.do.end84_crit_edge, label %do.body66

if.end60.do.end84_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end84

do.body66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_ThermalMeter, %if.then78)) #6
          to label %do.end84 [label %if.then78], !srcloc !205

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.27, i32 noundef %call61) #6
  br label %do.end84

do.end84:                                         ; preds = %if.then78, %do.body66, %if.end60.do.end84_crit_edge
  %15 = add i32 %call61, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %15)
  %16 = icmp ult i32 %15, -11
  br i1 %16, label %do.end84.cleanup_crit_edge, label %if.end90

do.end84.cleanup_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end90:                                         ; preds = %do.end84
  %17 = tail call i32 @llvm.umin.i32(i32 %call61, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %18 = load i32, ptr @rt_global_debug_component, align 4
  %and96 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end90.do.end117_crit_edge, label %do.body99

if.end90.do.end117_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end117

do.body99:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_ThermalMeter, %if.then111)) #6
          to label %do.end117 [label %if.then111], !srcloc !205

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.28, i32 noundef %17) #6
  br label %do.end117

do.end117:                                        ; preds = %if.then111, %do.body99, %if.end90.do.end117_crit_edge
  %ThermalMeter = getelementptr i8, ptr %dev, i32 34356
  %19 = ptrtoint ptr %ThermalMeter to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 9, ptr %ThermalMeter, align 4
  %arrayidx120 = getelementptr i8, ptr %dev, i32 34357
  %20 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 9, ptr %arrayidx120, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %cmp126 = icmp ult i32 %17, 10
  br i1 %cmp126, label %if.then128, label %if.else

if.then128:                                       ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #8
  %21 = trunc i32 %17 to i8
  %conv134 = xor i8 %21, 15
  %sub136 = sub nuw nsw i8 9, %21
  %22 = tail call i8 @llvm.umin.i8(i8 %conv134, i8 11)
  br label %if.end172

if.else:                                          ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #8
  %conv159 = add nuw nsw i32 %17, 247
  %conv160 = and i32 %conv159, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv160)
  %cmp161 = icmp ugt i32 %conv160, 5
  %23 = trunc i32 %17 to i8
  %conv167 = xor i8 %23, 15
  %tmpOFDMindex.0 = select i1 %cmp161, i8 0, i8 %conv167
  br label %if.end172

if.end172:                                        ; preds = %if.else, %if.then128
  %tmpCCK40Mindex.0 = phi i8 [ %sub136, %if.then128 ], [ 0, %if.else ]
  %tmpCCK20Mindex.1 = phi i8 [ %22, %if.then128 ], [ %tmpOFDMindex.0, %if.else ]
  %tmpOFDMindex.1 = phi i8 [ %conv134, %if.then128 ], [ %tmpOFDMindex.0, %if.else ]
  %CurrentChannelBW = getelementptr i8, ptr %dev, i32 34368
  %24 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp173.not = icmp eq i32 %25, 0
  %tmpCCK20Mindex.1.tmpCCK40Mindex.0 = select i1 %cmp173.not, i8 %tmpCCK20Mindex.1, i8 %tmpCCK40Mindex.0
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %26 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ieee80211, align 4
  %channel = getelementptr inbounds %struct.ieee80211_device, ptr %27, i32 0, i32 82, i32 1
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %29)
  %cmp179 = icmp eq i8 %29, 14
  %bcck_in_ch14 = getelementptr i8, ptr %dev, i32 35206
  %30 = ptrtoint ptr %bcck_in_ch14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bcck_in_ch14, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool181.not = icmp eq i8 %31, 0
  br i1 %cmp179, label %land.lhs.true, label %land.lhs.true191

land.lhs.true:                                    ; preds = %if.end172
  br i1 %tobool181.not, label %land.lhs.true.if.end198.sink.split_crit_edge, label %land.lhs.true.if.end198_crit_edge

land.lhs.true.if.end198_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198

land.lhs.true.if.end198.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198.sink.split

land.lhs.true191:                                 ; preds = %if.end172
  br i1 %tobool181.not, label %land.lhs.true191.if.end198_crit_edge, label %land.lhs.true191.if.end198.sink.split_crit_edge

land.lhs.true191.if.end198.sink.split_crit_edge:  ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198.sink.split

land.lhs.true191.if.end198_crit_edge:             ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198

if.end198.sink.split:                             ; preds = %land.lhs.true191.if.end198.sink.split_crit_edge, %land.lhs.true.if.end198.sink.split_crit_edge
  %.sink = phi i8 [ 1, %land.lhs.true.if.end198.sink.split_crit_edge ], [ 0, %land.lhs.true191.if.end198.sink.split_crit_edge ]
  %32 = ptrtoint ptr %bcck_in_ch14 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink, ptr %bcck_in_ch14, align 2
  br label %if.end198

if.end198:                                        ; preds = %if.end198.sink.split, %land.lhs.true191.if.end198_crit_edge, %land.lhs.true.if.end198_crit_edge
  %tobool207.not = phi i1 [ true, %land.lhs.true.if.end198_crit_edge ], [ true, %land.lhs.true191.if.end198_crit_edge ], [ false, %if.end198.sink.split ]
  %CCK_index199 = getelementptr i8, ptr %dev, i32 34827
  %33 = ptrtoint ptr %CCK_index199 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %CCK_index199, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %tmpCCK20Mindex.1.tmpCCK40Mindex.0)
  %cmp202.not = icmp eq i8 %34, %tmpCCK20Mindex.1.tmpCCK40Mindex.0
  br i1 %cmp202.not, label %if.end206, label %if.end206.thread

if.end206.thread:                                 ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %CCK_index199 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %tmpCCK20Mindex.1.tmpCCK40Mindex.0, ptr %CCK_index199, align 1
  br label %if.then208

if.end206:                                        ; preds = %if.end198
  br i1 %tobool207.not, label %if.end206.if.end211_crit_edge, label %if.end206.if.then208_crit_edge

if.end206.if.then208_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then208

if.end206.if.end211_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

if.then208:                                       ; preds = %if.end206.if.then208_crit_edge, %if.end206.thread
  %bcck_in_ch14209 = getelementptr i8, ptr %dev, i32 35206
  %36 = ptrtoint ptr %bcck_in_ch14209 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bcck_in_ch14209, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool210 = icmp ne i8 %37, 0
  tail call void @dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext %tobool210)
  br label %if.end211

if.end211:                                        ; preds = %if.then208, %if.end206.if.end211_crit_edge
  %OFDM_index212 = getelementptr i8, ptr %dev, i32 34826
  %38 = ptrtoint ptr %OFDM_index212 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %OFDM_index212, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %tmpOFDMindex.1)
  %cmp215.not = icmp eq i8 %39, %tmpOFDMindex.1
  br i1 %cmp215.not, label %if.end211.if.end249_crit_edge, label %if.then217

if.end211.if.end249_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end249

if.then217:                                       ; preds = %if.end211
  %conv214 = zext i8 %tmpOFDMindex.1 to i32
  %40 = ptrtoint ptr %OFDM_index212 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %tmpOFDMindex.1, ptr %OFDM_index212, align 2
  %arrayidx220 = getelementptr [19 x i32], ptr @OFDMSwingTable, i32 0, i32 %conv214
  %41 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx220, align 4
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 3200, i32 noundef -1, i32 noundef %42) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %43 = load i32, ptr @rt_global_debug_component, align 4
  %and222 = and i32 %43, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %if.then217.if.end249_crit_edge, label %do.body225

if.then217.if.end249_crit_edge:                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end249

do.body225:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_TXPowerTrackingCallback_ThermalMeter, %if.then237)) #6
          to label %if.end249 [label %if.then237], !srcloc !205

if.then237:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %OFDM_index212 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %OFDM_index212, align 2
  %conv239 = zext i8 %45 to i32
  %arrayidx242 = getelementptr [19 x i32], ptr @OFDMSwingTable, i32 0, i32 %conv239
  %46 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx242, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.29, i32 noundef %conv239, i32 noundef %47) #6
  br label %if.end249

if.end249:                                        ; preds = %if.then237, %do.body225, %if.then217.if.end249_crit_edge, %if.end211.if.end249_crit_edge
  %txpower_count = getelementptr i8, ptr %dev, i32 34824
  %48 = ptrtoint ptr %txpower_count to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %txpower_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end249, %do.end84.cleanup_crit_edge, %for.end58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dm_initialize_txpower_tracking(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bDcut = getelementptr i8, ptr %dev, i32 33948
  %0 = ptrtoint ptr %bDcut to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDcut, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %txbbgain_table.i = getelementptr i8, ptr %dev, i32 34528
  %2 = ptrtoint ptr %txbbgain_table.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %txbbgain_table.i, align 4
  %txbbgain_value.i = getelementptr i8, ptr %dev, i32 34532
  %3 = ptrtoint ptr %txbbgain_value.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2139095550, ptr %txbbgain_value.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %dev, i32 34536
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11, ptr %arrayidx4.i, align 4
  %txbbgain_value8.i = getelementptr i8, ptr %dev, i32 34540
  %5 = ptrtoint ptr %txbbgain_value8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2021655010, ptr %txbbgain_value8.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %dev, i32 34544
  %6 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %arrayidx10.i, align 4
  %txbbgain_value14.i = getelementptr i8, ptr %dev, i32 34548
  %7 = ptrtoint ptr %txbbgain_value14.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1908408775, ptr %txbbgain_value14.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %dev, i32 34552
  %8 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9, ptr %arrayidx16.i, align 4
  %txbbgain_value20.i = getelementptr i8, ptr %dev, i32 34556
  %9 = ptrtoint ptr %txbbgain_value20.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1803551150, ptr %txbbgain_value20.i, align 4
  %arrayidx22.i = getelementptr i8, ptr %dev, i32 34560
  %10 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %arrayidx22.i, align 4
  %txbbgain_value26.i = getelementptr i8, ptr %dev, i32 34564
  %11 = ptrtoint ptr %txbbgain_value26.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1698693525, ptr %txbbgain_value26.i, align 4
  %arrayidx28.i = getelementptr i8, ptr %dev, i32 34568
  %12 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %arrayidx28.i, align 4
  %txbbgain_value32.i = getelementptr i8, ptr %dev, i32 34572
  %13 = ptrtoint ptr %txbbgain_value32.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1606418815, ptr %txbbgain_value32.i, align 4
  %arrayidx34.i = getelementptr i8, ptr %dev, i32 34576
  %14 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %arrayidx34.i, align 4
  %txbbgain_value38.i = getelementptr i8, ptr %dev, i32 34580
  %15 = ptrtoint ptr %txbbgain_value38.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1514144105, ptr %txbbgain_value38.i, align 4
  %arrayidx40.i = getelementptr i8, ptr %dev, i32 34584
  %16 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %arrayidx40.i, align 4
  %txbbgain_value44.i = getelementptr i8, ptr %dev, i32 34588
  %17 = ptrtoint ptr %txbbgain_value44.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1430258005, ptr %txbbgain_value44.i, align 4
  %arrayidx46.i = getelementptr i8, ptr %dev, i32 34592
  %18 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %arrayidx46.i, align 4
  %txbbgain_value50.i = getelementptr i8, ptr %dev, i32 34596
  %19 = ptrtoint ptr %txbbgain_value50.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1350566210, ptr %txbbgain_value50.i, align 4
  %arrayidx52.i = getelementptr i8, ptr %dev, i32 34600
  %20 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %arrayidx52.i, align 4
  %txbbgain_value56.i = getelementptr i8, ptr %dev, i32 34604
  %21 = ptrtoint ptr %txbbgain_value56.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1275068720, ptr %txbbgain_value56.i, align 4
  %arrayidx58.i = getelementptr i8, ptr %dev, i32 34608
  %22 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %arrayidx58.i, align 4
  %txbbgain_value62.i = getelementptr i8, ptr %dev, i32 34612
  %23 = ptrtoint ptr %txbbgain_value62.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1203765535, ptr %txbbgain_value62.i, align 4
  %arrayidx64.i = getelementptr i8, ptr %dev, i32 34616
  %24 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %arrayidx64.i, align 4
  %txbbgain_value68.i = getelementptr i8, ptr %dev, i32 34620
  %25 = ptrtoint ptr %txbbgain_value68.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1136656655, ptr %txbbgain_value68.i, align 4
  %arrayidx70.i = getelementptr i8, ptr %dev, i32 34624
  %26 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx70.i, align 4
  %txbbgain_value74.i = getelementptr i8, ptr %dev, i32 34628
  %27 = ptrtoint ptr %txbbgain_value74.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1073742080, ptr %txbbgain_value74.i, align 4
  %arrayidx76.i = getelementptr i8, ptr %dev, i32 34632
  %28 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %arrayidx76.i, align 4
  %txbbgain_value80.i = getelementptr i8, ptr %dev, i32 34636
  %29 = ptrtoint ptr %txbbgain_value80.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1015021810, ptr %txbbgain_value80.i, align 4
  %arrayidx82.i = getelementptr i8, ptr %dev, i32 34640
  %30 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -2, ptr %arrayidx82.i, align 4
  %txbbgain_value86.i = getelementptr i8, ptr %dev, i32 34644
  %31 = ptrtoint ptr %txbbgain_value86.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 956301540, ptr %txbbgain_value86.i, align 4
  %arrayidx88.i = getelementptr i8, ptr %dev, i32 34648
  %32 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -3, ptr %arrayidx88.i, align 4
  %txbbgain_value92.i = getelementptr i8, ptr %dev, i32 34652
  %33 = ptrtoint ptr %txbbgain_value92.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 901775575, ptr %txbbgain_value92.i, align 4
  %arrayidx94.i = getelementptr i8, ptr %dev, i32 34656
  %34 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -4, ptr %arrayidx94.i, align 4
  %txbbgain_value98.i = getelementptr i8, ptr %dev, i32 34660
  %35 = ptrtoint ptr %txbbgain_value98.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 851443915, ptr %txbbgain_value98.i, align 4
  %arrayidx100.i = getelementptr i8, ptr %dev, i32 34664
  %36 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -5, ptr %arrayidx100.i, align 4
  %txbbgain_value104.i = getelementptr i8, ptr %dev, i32 34668
  %37 = ptrtoint ptr %txbbgain_value104.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 805306560, ptr %txbbgain_value104.i, align 4
  %arrayidx106.i = getelementptr i8, ptr %dev, i32 34672
  %38 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -6, ptr %arrayidx106.i, align 4
  %txbbgain_value110.i = getelementptr i8, ptr %dev, i32 34676
  %39 = ptrtoint ptr %txbbgain_value110.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 759169205, ptr %txbbgain_value110.i, align 4
  %arrayidx112.i = getelementptr i8, ptr %dev, i32 34680
  %40 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -7, ptr %arrayidx112.i, align 4
  %txbbgain_value116.i = getelementptr i8, ptr %dev, i32 34684
  %41 = ptrtoint ptr %txbbgain_value116.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 717226155, ptr %txbbgain_value116.i, align 4
  %arrayidx118.i = getelementptr i8, ptr %dev, i32 34688
  %42 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -8, ptr %arrayidx118.i, align 4
  %txbbgain_value122.i = getelementptr i8, ptr %dev, i32 34692
  %43 = ptrtoint ptr %txbbgain_value122.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 679477410, ptr %txbbgain_value122.i, align 4
  %arrayidx124.i = getelementptr i8, ptr %dev, i32 34696
  %44 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -9, ptr %arrayidx124.i, align 4
  %txbbgain_value128.i = getelementptr i8, ptr %dev, i32 34700
  %45 = ptrtoint ptr %txbbgain_value128.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 637534360, ptr %txbbgain_value128.i, align 4
  %arrayidx130.i = getelementptr i8, ptr %dev, i32 34704
  %46 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -10, ptr %arrayidx130.i, align 4
  %txbbgain_value134.i = getelementptr i8, ptr %dev, i32 34708
  %47 = ptrtoint ptr %txbbgain_value134.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 603979920, ptr %txbbgain_value134.i, align 4
  %arrayidx136.i = getelementptr i8, ptr %dev, i32 34712
  %48 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -11, ptr %arrayidx136.i, align 4
  %txbbgain_value140.i = getelementptr i8, ptr %dev, i32 34716
  %49 = ptrtoint ptr %txbbgain_value140.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 570425480, ptr %txbbgain_value140.i, align 4
  %arrayidx142.i = getelementptr i8, ptr %dev, i32 34720
  %50 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -12, ptr %arrayidx142.i, align 4
  %txbbgain_value146.i = getelementptr i8, ptr %dev, i32 34724
  %51 = ptrtoint ptr %txbbgain_value146.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 536871040, ptr %txbbgain_value146.i, align 4
  %arrayidx148.i = getelementptr i8, ptr %dev, i32 34728
  %52 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -13, ptr %arrayidx148.i, align 4
  %txbbgain_value152.i = getelementptr i8, ptr %dev, i32 34732
  %53 = ptrtoint ptr %txbbgain_value152.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 436207724, ptr %txbbgain_value152.i, align 4
  %arrayidx154.i = getelementptr i8, ptr %dev, i32 34736
  %54 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -14, ptr %arrayidx154.i, align 4
  %txbbgain_value158.i = getelementptr i8, ptr %dev, i32 34740
  %55 = ptrtoint ptr %txbbgain_value158.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 478150770, ptr %txbbgain_value158.i, align 4
  %arrayidx160.i = getelementptr i8, ptr %dev, i32 34744
  %56 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -15, ptr %arrayidx160.i, align 4
  %txbbgain_value164.i = getelementptr i8, ptr %dev, i32 34748
  %57 = ptrtoint ptr %txbbgain_value164.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 402653280, ptr %txbbgain_value164.i, align 4
  %arrayidx166.i = getelementptr i8, ptr %dev, i32 34752
  %58 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -16, ptr %arrayidx166.i, align 4
  %txbbgain_value170.i = getelementptr i8, ptr %dev, i32 34756
  %59 = ptrtoint ptr %txbbgain_value170.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 427819110, ptr %txbbgain_value170.i, align 4
  %arrayidx172.i = getelementptr i8, ptr %dev, i32 34760
  %60 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -17, ptr %arrayidx172.i, align 4
  %txbbgain_value176.i = getelementptr i8, ptr %dev, i32 34764
  %61 = ptrtoint ptr %txbbgain_value176.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 360710230, ptr %txbbgain_value176.i, align 4
  %arrayidx178.i = getelementptr i8, ptr %dev, i32 34768
  %62 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -18, ptr %arrayidx178.i, align 4
  %txbbgain_value182.i = getelementptr i8, ptr %dev, i32 34772
  %63 = ptrtoint ptr %txbbgain_value182.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 650117211, ptr %txbbgain_value182.i, align 4
  %arrayidx184.i = getelementptr i8, ptr %dev, i32 34776
  %64 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -19, ptr %arrayidx184.i, align 4
  %txbbgain_value188.i = getelementptr i8, ptr %dev, i32 34780
  %65 = ptrtoint ptr %txbbgain_value188.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 339738705, ptr %txbbgain_value188.i, align 4
  %arrayidx190.i = getelementptr i8, ptr %dev, i32 34784
  %66 = ptrtoint ptr %arrayidx190.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -20, ptr %arrayidx190.i, align 4
  %txbbgain_value194.i = getelementptr i8, ptr %dev, i32 34788
  %67 = ptrtoint ptr %txbbgain_value194.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 608174161, ptr %txbbgain_value194.i, align 4
  %arrayidx196.i = getelementptr i8, ptr %dev, i32 34792
  %68 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -21, ptr %arrayidx196.i, align 4
  %txbbgain_value200.i = getelementptr i8, ptr %dev, i32 34796
  %69 = ptrtoint ptr %txbbgain_value200.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 318767180, ptr %txbbgain_value200.i, align 4
  %arrayidx202.i = getelementptr i8, ptr %dev, i32 34800
  %70 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -22, ptr %arrayidx202.i, align 4
  %txbbgain_value206.i = getelementptr i8, ptr %dev, i32 34804
  %71 = ptrtoint ptr %txbbgain_value206.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 301989960, ptr %txbbgain_value206.i, align 4
  %arrayidx208.i = getelementptr i8, ptr %dev, i32 34808
  %72 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -23, ptr %arrayidx208.i, align 4
  %txbbgain_value212.i = getelementptr i8, ptr %dev, i32 34812
  %73 = ptrtoint ptr %txbbgain_value212.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 285212740, ptr %txbbgain_value212.i, align 4
  %arrayidx214.i = getelementptr i8, ptr %dev, i32 34816
  %74 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -24, ptr %arrayidx214.i, align 4
  %txbbgain_value218.i = getelementptr i8, ptr %dev, i32 34820
  %75 = ptrtoint ptr %txbbgain_value218.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 268435520, ptr %txbbgain_value218.i, align 4
  %cck_txbbgain_table.i = getelementptr i8, ptr %dev, i32 34828
  %76 = ptrtoint ptr %cck_txbbgain_table.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 54, ptr %cck_txbbgain_table.i, align 4
  %arrayidx224.i = getelementptr i8, ptr %dev, i32 34829
  %77 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 53, ptr %arrayidx224.i, align 1
  %arrayidx228.i = getelementptr i8, ptr %dev, i32 34830
  %78 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 46, ptr %arrayidx228.i, align 2
  %arrayidx232.i = getelementptr i8, ptr %dev, i32 34831
  %79 = ptrtoint ptr %arrayidx232.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 37, ptr %arrayidx232.i, align 1
  %arrayidx236.i = getelementptr i8, ptr %dev, i32 34832
  %80 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 28, ptr %arrayidx236.i, align 4
  %arrayidx240.i = getelementptr i8, ptr %dev, i32 34833
  %81 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 18, ptr %arrayidx240.i, align 1
  %arrayidx244.i = getelementptr i8, ptr %dev, i32 34834
  %82 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 9, ptr %arrayidx244.i, align 2
  %arrayidx248.i = getelementptr i8, ptr %dev, i32 34835
  %83 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 4, ptr %arrayidx248.i, align 1
  %arrayidx250.i = getelementptr i8, ptr %dev, i32 34836
  %84 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 51, ptr %arrayidx250.i, align 4
  %arrayidx256.i = getelementptr i8, ptr %dev, i32 34837
  %85 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 50, ptr %arrayidx256.i, align 1
  %arrayidx260.i = getelementptr i8, ptr %dev, i32 34838
  %86 = ptrtoint ptr %arrayidx260.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 43, ptr %arrayidx260.i, align 2
  %arrayidx264.i = getelementptr i8, ptr %dev, i32 34839
  %87 = ptrtoint ptr %arrayidx264.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 35, ptr %arrayidx264.i, align 1
  %arrayidx268.i = getelementptr i8, ptr %dev, i32 34840
  %88 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 26, ptr %arrayidx268.i, align 4
  %arrayidx272.i = getelementptr i8, ptr %dev, i32 34841
  %89 = ptrtoint ptr %arrayidx272.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 17, ptr %arrayidx272.i, align 1
  %arrayidx276.i = getelementptr i8, ptr %dev, i32 34842
  %90 = ptrtoint ptr %arrayidx276.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 8, ptr %arrayidx276.i, align 2
  %arrayidx280.i = getelementptr i8, ptr %dev, i32 34843
  %91 = ptrtoint ptr %arrayidx280.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 4, ptr %arrayidx280.i, align 1
  %arrayidx282.i = getelementptr i8, ptr %dev, i32 34844
  %92 = ptrtoint ptr %arrayidx282.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 48, ptr %arrayidx282.i, align 4
  %arrayidx288.i = getelementptr i8, ptr %dev, i32 34845
  %93 = ptrtoint ptr %arrayidx288.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 47, ptr %arrayidx288.i, align 1
  %arrayidx292.i = getelementptr i8, ptr %dev, i32 34846
  %94 = ptrtoint ptr %arrayidx292.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 41, ptr %arrayidx292.i, align 2
  %arrayidx296.i = getelementptr i8, ptr %dev, i32 34847
  %95 = ptrtoint ptr %arrayidx296.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 33, ptr %arrayidx296.i, align 1
  %arrayidx300.i = getelementptr i8, ptr %dev, i32 34848
  %96 = ptrtoint ptr %arrayidx300.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 25, ptr %arrayidx300.i, align 4
  %arrayidx304.i = getelementptr i8, ptr %dev, i32 34849
  %97 = ptrtoint ptr %arrayidx304.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 16, ptr %arrayidx304.i, align 1
  %arrayidx308.i = getelementptr i8, ptr %dev, i32 34850
  %98 = ptrtoint ptr %arrayidx308.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 8, ptr %arrayidx308.i, align 2
  %arrayidx312.i = getelementptr i8, ptr %dev, i32 34851
  %99 = ptrtoint ptr %arrayidx312.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 3, ptr %arrayidx312.i, align 1
  %arrayidx314.i = getelementptr i8, ptr %dev, i32 34852
  %100 = ptrtoint ptr %arrayidx314.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 45, ptr %arrayidx314.i, align 4
  %arrayidx320.i = getelementptr i8, ptr %dev, i32 34853
  %101 = ptrtoint ptr %arrayidx320.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 45, ptr %arrayidx320.i, align 1
  %arrayidx324.i = getelementptr i8, ptr %dev, i32 34854
  %102 = ptrtoint ptr %arrayidx324.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 39, ptr %arrayidx324.i, align 2
  %arrayidx328.i = getelementptr i8, ptr %dev, i32 34855
  %103 = ptrtoint ptr %arrayidx328.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 31, ptr %arrayidx328.i, align 1
  %arrayidx332.i = getelementptr i8, ptr %dev, i32 34856
  %104 = ptrtoint ptr %arrayidx332.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 24, ptr %arrayidx332.i, align 4
  %arrayidx336.i = getelementptr i8, ptr %dev, i32 34857
  %105 = ptrtoint ptr %arrayidx336.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 15, ptr %arrayidx336.i, align 1
  %arrayidx340.i = getelementptr i8, ptr %dev, i32 34858
  %106 = ptrtoint ptr %arrayidx340.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 8, ptr %arrayidx340.i, align 2
  %arrayidx344.i = getelementptr i8, ptr %dev, i32 34859
  %107 = ptrtoint ptr %arrayidx344.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 3, ptr %arrayidx344.i, align 1
  %arrayidx346.i = getelementptr i8, ptr %dev, i32 34860
  %108 = ptrtoint ptr %arrayidx346.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 43, ptr %arrayidx346.i, align 4
  %arrayidx352.i = getelementptr i8, ptr %dev, i32 34861
  %109 = ptrtoint ptr %arrayidx352.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 42, ptr %arrayidx352.i, align 1
  %arrayidx356.i = getelementptr i8, ptr %dev, i32 34862
  %110 = ptrtoint ptr %arrayidx356.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 37, ptr %arrayidx356.i, align 2
  %arrayidx360.i = getelementptr i8, ptr %dev, i32 34863
  %111 = ptrtoint ptr %arrayidx360.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 30, ptr %arrayidx360.i, align 1
  %arrayidx364.i = getelementptr i8, ptr %dev, i32 34864
  %112 = ptrtoint ptr %arrayidx364.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 22, ptr %arrayidx364.i, align 4
  %arrayidx368.i = getelementptr i8, ptr %dev, i32 34865
  %113 = ptrtoint ptr %arrayidx368.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 14, ptr %arrayidx368.i, align 1
  %arrayidx372.i = getelementptr i8, ptr %dev, i32 34866
  %114 = ptrtoint ptr %arrayidx372.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 7, ptr %arrayidx372.i, align 2
  %arrayidx376.i = getelementptr i8, ptr %dev, i32 34867
  %115 = ptrtoint ptr %arrayidx376.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 3, ptr %arrayidx376.i, align 1
  %arrayidx378.i = getelementptr i8, ptr %dev, i32 34868
  %116 = ptrtoint ptr %arrayidx378.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 40, ptr %arrayidx378.i, align 4
  %arrayidx384.i = getelementptr i8, ptr %dev, i32 34869
  %117 = ptrtoint ptr %arrayidx384.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 40, ptr %arrayidx384.i, align 1
  %arrayidx388.i = getelementptr i8, ptr %dev, i32 34870
  %118 = ptrtoint ptr %arrayidx388.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 34, ptr %arrayidx388.i, align 2
  %arrayidx392.i = getelementptr i8, ptr %dev, i32 34871
  %119 = ptrtoint ptr %arrayidx392.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 28, ptr %arrayidx392.i, align 1
  %arrayidx396.i = getelementptr i8, ptr %dev, i32 34872
  %120 = ptrtoint ptr %arrayidx396.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 21, ptr %arrayidx396.i, align 4
  %arrayidx400.i = getelementptr i8, ptr %dev, i32 34873
  %121 = ptrtoint ptr %arrayidx400.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 13, ptr %arrayidx400.i, align 1
  %arrayidx404.i = getelementptr i8, ptr %dev, i32 34874
  %122 = ptrtoint ptr %arrayidx404.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 7, ptr %arrayidx404.i, align 2
  %arrayidx408.i = getelementptr i8, ptr %dev, i32 34875
  %123 = ptrtoint ptr %arrayidx408.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 3, ptr %arrayidx408.i, align 1
  %arrayidx410.i = getelementptr i8, ptr %dev, i32 34876
  %124 = ptrtoint ptr %arrayidx410.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 38, ptr %arrayidx410.i, align 4
  %arrayidx416.i = getelementptr i8, ptr %dev, i32 34877
  %125 = ptrtoint ptr %arrayidx416.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 37, ptr %arrayidx416.i, align 1
  %arrayidx420.i = getelementptr i8, ptr %dev, i32 34878
  %126 = ptrtoint ptr %arrayidx420.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 33, ptr %arrayidx420.i, align 2
  %arrayidx424.i = getelementptr i8, ptr %dev, i32 34879
  %127 = ptrtoint ptr %arrayidx424.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 27, ptr %arrayidx424.i, align 1
  %arrayidx428.i = getelementptr i8, ptr %dev, i32 34880
  %128 = ptrtoint ptr %arrayidx428.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 20, ptr %arrayidx428.i, align 4
  %arrayidx432.i = getelementptr i8, ptr %dev, i32 34881
  %129 = ptrtoint ptr %arrayidx432.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 13, ptr %arrayidx432.i, align 1
  %arrayidx436.i = getelementptr i8, ptr %dev, i32 34882
  %130 = ptrtoint ptr %arrayidx436.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 6, ptr %arrayidx436.i, align 2
  %arrayidx440.i = getelementptr i8, ptr %dev, i32 34883
  %131 = ptrtoint ptr %arrayidx440.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 3, ptr %arrayidx440.i, align 1
  %arrayidx442.i = getelementptr i8, ptr %dev, i32 34884
  %132 = ptrtoint ptr %arrayidx442.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 36, ptr %arrayidx442.i, align 4
  %arrayidx448.i = getelementptr i8, ptr %dev, i32 34885
  %133 = ptrtoint ptr %arrayidx448.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 35, ptr %arrayidx448.i, align 1
  %arrayidx452.i = getelementptr i8, ptr %dev, i32 34886
  %134 = ptrtoint ptr %arrayidx452.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 31, ptr %arrayidx452.i, align 2
  %arrayidx456.i = getelementptr i8, ptr %dev, i32 34887
  %135 = ptrtoint ptr %arrayidx456.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 25, ptr %arrayidx456.i, align 1
  %arrayidx460.i = getelementptr i8, ptr %dev, i32 34888
  %136 = ptrtoint ptr %arrayidx460.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 19, ptr %arrayidx460.i, align 4
  %arrayidx464.i = getelementptr i8, ptr %dev, i32 34889
  %137 = ptrtoint ptr %arrayidx464.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 12, ptr %arrayidx464.i, align 1
  %arrayidx468.i = getelementptr i8, ptr %dev, i32 34890
  %138 = ptrtoint ptr %arrayidx468.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 6, ptr %arrayidx468.i, align 2
  %arrayidx472.i = getelementptr i8, ptr %dev, i32 34891
  %139 = ptrtoint ptr %arrayidx472.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 3, ptr %arrayidx472.i, align 1
  %arrayidx474.i = getelementptr i8, ptr %dev, i32 34892
  %140 = ptrtoint ptr %arrayidx474.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 34, ptr %arrayidx474.i, align 4
  %arrayidx480.i = getelementptr i8, ptr %dev, i32 34893
  %141 = ptrtoint ptr %arrayidx480.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 33, ptr %arrayidx480.i, align 1
  %arrayidx484.i = getelementptr i8, ptr %dev, i32 34894
  %142 = ptrtoint ptr %arrayidx484.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 29, ptr %arrayidx484.i, align 2
  %arrayidx488.i = getelementptr i8, ptr %dev, i32 34895
  %143 = ptrtoint ptr %arrayidx488.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 24, ptr %arrayidx488.i, align 1
  %arrayidx492.i = getelementptr i8, ptr %dev, i32 34896
  %144 = ptrtoint ptr %arrayidx492.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 17, ptr %arrayidx492.i, align 4
  %arrayidx496.i = getelementptr i8, ptr %dev, i32 34897
  %145 = ptrtoint ptr %arrayidx496.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 11, ptr %arrayidx496.i, align 1
  %arrayidx500.i = getelementptr i8, ptr %dev, i32 34898
  %146 = ptrtoint ptr %arrayidx500.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 6, ptr %arrayidx500.i, align 2
  %arrayidx504.i = getelementptr i8, ptr %dev, i32 34899
  %147 = ptrtoint ptr %arrayidx504.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 2, ptr %arrayidx504.i, align 1
  %arrayidx506.i = getelementptr i8, ptr %dev, i32 34900
  %148 = ptrtoint ptr %arrayidx506.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 32, ptr %arrayidx506.i, align 4
  %arrayidx512.i = getelementptr i8, ptr %dev, i32 34901
  %149 = ptrtoint ptr %arrayidx512.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 32, ptr %arrayidx512.i, align 1
  %arrayidx516.i = getelementptr i8, ptr %dev, i32 34902
  %150 = ptrtoint ptr %arrayidx516.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 27, ptr %arrayidx516.i, align 2
  %arrayidx520.i = getelementptr i8, ptr %dev, i32 34903
  %151 = ptrtoint ptr %arrayidx520.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 22, ptr %arrayidx520.i, align 1
  %arrayidx524.i = getelementptr i8, ptr %dev, i32 34904
  %152 = ptrtoint ptr %arrayidx524.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 17, ptr %arrayidx524.i, align 4
  %arrayidx528.i = getelementptr i8, ptr %dev, i32 34905
  %153 = ptrtoint ptr %arrayidx528.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 8, ptr %arrayidx528.i, align 1
  %arrayidx532.i = getelementptr i8, ptr %dev, i32 34906
  %154 = ptrtoint ptr %arrayidx532.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 5, ptr %arrayidx532.i, align 2
  %arrayidx536.i = getelementptr i8, ptr %dev, i32 34907
  %155 = ptrtoint ptr %arrayidx536.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 2, ptr %arrayidx536.i, align 1
  %arrayidx538.i = getelementptr i8, ptr %dev, i32 34908
  %156 = ptrtoint ptr %arrayidx538.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 31, ptr %arrayidx538.i, align 4
  %arrayidx544.i = getelementptr i8, ptr %dev, i32 34909
  %157 = ptrtoint ptr %arrayidx544.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 30, ptr %arrayidx544.i, align 1
  %arrayidx548.i = getelementptr i8, ptr %dev, i32 34910
  %158 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 26, ptr %arrayidx548.i, align 2
  %arrayidx552.i = getelementptr i8, ptr %dev, i32 34911
  %159 = ptrtoint ptr %arrayidx552.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 21, ptr %arrayidx552.i, align 1
  %arrayidx556.i = getelementptr i8, ptr %dev, i32 34912
  %160 = ptrtoint ptr %arrayidx556.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 16, ptr %arrayidx556.i, align 4
  %arrayidx560.i = getelementptr i8, ptr %dev, i32 34913
  %161 = ptrtoint ptr %arrayidx560.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 10, ptr %arrayidx560.i, align 1
  %arrayidx564.i = getelementptr i8, ptr %dev, i32 34914
  %162 = ptrtoint ptr %arrayidx564.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 5, ptr %arrayidx564.i, align 2
  %arrayidx568.i = getelementptr i8, ptr %dev, i32 34915
  %163 = ptrtoint ptr %arrayidx568.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 2, ptr %arrayidx568.i, align 1
  %arrayidx570.i = getelementptr i8, ptr %dev, i32 34916
  %164 = ptrtoint ptr %arrayidx570.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 29, ptr %arrayidx570.i, align 4
  %arrayidx576.i = getelementptr i8, ptr %dev, i32 34917
  %165 = ptrtoint ptr %arrayidx576.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 28, ptr %arrayidx576.i, align 1
  %arrayidx580.i = getelementptr i8, ptr %dev, i32 34918
  %166 = ptrtoint ptr %arrayidx580.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 24, ptr %arrayidx580.i, align 2
  %arrayidx584.i = getelementptr i8, ptr %dev, i32 34919
  %167 = ptrtoint ptr %arrayidx584.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 20, ptr %arrayidx584.i, align 1
  %arrayidx588.i = getelementptr i8, ptr %dev, i32 34920
  %168 = ptrtoint ptr %arrayidx588.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 15, ptr %arrayidx588.i, align 4
  %arrayidx592.i = getelementptr i8, ptr %dev, i32 34921
  %169 = ptrtoint ptr %arrayidx592.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 10, ptr %arrayidx592.i, align 1
  %arrayidx596.i = getelementptr i8, ptr %dev, i32 34922
  %170 = ptrtoint ptr %arrayidx596.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 5, ptr %arrayidx596.i, align 2
  %arrayidx600.i = getelementptr i8, ptr %dev, i32 34923
  %171 = ptrtoint ptr %arrayidx600.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 2, ptr %arrayidx600.i, align 1
  %arrayidx602.i = getelementptr i8, ptr %dev, i32 34924
  %172 = ptrtoint ptr %arrayidx602.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 27, ptr %arrayidx602.i, align 4
  %arrayidx608.i = getelementptr i8, ptr %dev, i32 34925
  %173 = ptrtoint ptr %arrayidx608.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 26, ptr %arrayidx608.i, align 1
  %arrayidx612.i = getelementptr i8, ptr %dev, i32 34926
  %174 = ptrtoint ptr %arrayidx612.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 23, ptr %arrayidx612.i, align 2
  %arrayidx616.i = getelementptr i8, ptr %dev, i32 34927
  %175 = ptrtoint ptr %arrayidx616.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 19, ptr %arrayidx616.i, align 1
  %arrayidx620.i = getelementptr i8, ptr %dev, i32 34928
  %176 = ptrtoint ptr %arrayidx620.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 14, ptr %arrayidx620.i, align 4
  %arrayidx624.i = getelementptr i8, ptr %dev, i32 34929
  %177 = ptrtoint ptr %arrayidx624.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 9, ptr %arrayidx624.i, align 1
  %arrayidx628.i = getelementptr i8, ptr %dev, i32 34930
  %178 = ptrtoint ptr %arrayidx628.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 4, ptr %arrayidx628.i, align 2
  %arrayidx632.i = getelementptr i8, ptr %dev, i32 34931
  %179 = ptrtoint ptr %arrayidx632.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 2, ptr %arrayidx632.i, align 1
  %arrayidx634.i = getelementptr i8, ptr %dev, i32 34932
  %180 = ptrtoint ptr %arrayidx634.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 26, ptr %arrayidx634.i, align 4
  %arrayidx640.i = getelementptr i8, ptr %dev, i32 34933
  %181 = ptrtoint ptr %arrayidx640.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 25, ptr %arrayidx640.i, align 1
  %arrayidx644.i = getelementptr i8, ptr %dev, i32 34934
  %182 = ptrtoint ptr %arrayidx644.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 22, ptr %arrayidx644.i, align 2
  %arrayidx648.i = getelementptr i8, ptr %dev, i32 34935
  %183 = ptrtoint ptr %arrayidx648.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 18, ptr %arrayidx648.i, align 1
  %arrayidx652.i = getelementptr i8, ptr %dev, i32 34936
  %184 = ptrtoint ptr %arrayidx652.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 13, ptr %arrayidx652.i, align 4
  %arrayidx656.i = getelementptr i8, ptr %dev, i32 34937
  %185 = ptrtoint ptr %arrayidx656.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 9, ptr %arrayidx656.i, align 1
  %arrayidx660.i = getelementptr i8, ptr %dev, i32 34938
  %186 = ptrtoint ptr %arrayidx660.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 4, ptr %arrayidx660.i, align 2
  %arrayidx664.i = getelementptr i8, ptr %dev, i32 34939
  %187 = ptrtoint ptr %arrayidx664.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 2, ptr %arrayidx664.i, align 1
  %arrayidx666.i = getelementptr i8, ptr %dev, i32 34940
  %188 = ptrtoint ptr %arrayidx666.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 24, ptr %arrayidx666.i, align 4
  %arrayidx672.i = getelementptr i8, ptr %dev, i32 34941
  %189 = ptrtoint ptr %arrayidx672.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 23, ptr %arrayidx672.i, align 1
  %arrayidx676.i = getelementptr i8, ptr %dev, i32 34942
  %190 = ptrtoint ptr %arrayidx676.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 21, ptr %arrayidx676.i, align 2
  %arrayidx680.i = getelementptr i8, ptr %dev, i32 34943
  %191 = ptrtoint ptr %arrayidx680.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 17, ptr %arrayidx680.i, align 1
  %arrayidx684.i = getelementptr i8, ptr %dev, i32 34944
  %192 = ptrtoint ptr %arrayidx684.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 12, ptr %arrayidx684.i, align 4
  %arrayidx688.i = getelementptr i8, ptr %dev, i32 34945
  %193 = ptrtoint ptr %arrayidx688.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 8, ptr %arrayidx688.i, align 1
  %arrayidx692.i = getelementptr i8, ptr %dev, i32 34946
  %194 = ptrtoint ptr %arrayidx692.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 4, ptr %arrayidx692.i, align 2
  %arrayidx696.i = getelementptr i8, ptr %dev, i32 34947
  %195 = ptrtoint ptr %arrayidx696.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 2, ptr %arrayidx696.i, align 1
  %arrayidx698.i = getelementptr i8, ptr %dev, i32 34948
  %196 = ptrtoint ptr %arrayidx698.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 23, ptr %arrayidx698.i, align 4
  %arrayidx704.i = getelementptr i8, ptr %dev, i32 34949
  %197 = ptrtoint ptr %arrayidx704.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 22, ptr %arrayidx704.i, align 1
  %arrayidx708.i = getelementptr i8, ptr %dev, i32 34950
  %198 = ptrtoint ptr %arrayidx708.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 19, ptr %arrayidx708.i, align 2
  %arrayidx712.i = getelementptr i8, ptr %dev, i32 34951
  %199 = ptrtoint ptr %arrayidx712.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 16, ptr %arrayidx712.i, align 1
  %arrayidx716.i = getelementptr i8, ptr %dev, i32 34952
  %200 = ptrtoint ptr %arrayidx716.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 12, ptr %arrayidx716.i, align 4
  %arrayidx720.i = getelementptr i8, ptr %dev, i32 34953
  %201 = ptrtoint ptr %arrayidx720.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 8, ptr %arrayidx720.i, align 1
  %arrayidx724.i = getelementptr i8, ptr %dev, i32 34954
  %202 = ptrtoint ptr %arrayidx724.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 4, ptr %arrayidx724.i, align 2
  %arrayidx728.i = getelementptr i8, ptr %dev, i32 34955
  %203 = ptrtoint ptr %arrayidx728.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 2, ptr %arrayidx728.i, align 1
  %arrayidx730.i = getelementptr i8, ptr %dev, i32 34956
  %204 = ptrtoint ptr %arrayidx730.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 22, ptr %arrayidx730.i, align 4
  %arrayidx736.i = getelementptr i8, ptr %dev, i32 34957
  %205 = ptrtoint ptr %arrayidx736.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 21, ptr %arrayidx736.i, align 1
  %arrayidx740.i = getelementptr i8, ptr %dev, i32 34958
  %206 = ptrtoint ptr %arrayidx740.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 18, ptr %arrayidx740.i, align 2
  %arrayidx744.i = getelementptr i8, ptr %dev, i32 34959
  %207 = ptrtoint ptr %arrayidx744.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 15, ptr %arrayidx744.i, align 1
  %arrayidx748.i = getelementptr i8, ptr %dev, i32 34960
  %208 = ptrtoint ptr %arrayidx748.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 11, ptr %arrayidx748.i, align 4
  %arrayidx752.i = getelementptr i8, ptr %dev, i32 34961
  %209 = ptrtoint ptr %arrayidx752.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 7, ptr %arrayidx752.i, align 1
  %arrayidx756.i = getelementptr i8, ptr %dev, i32 34962
  %210 = ptrtoint ptr %arrayidx756.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 4, ptr %arrayidx756.i, align 2
  %arrayidx760.i = getelementptr i8, ptr %dev, i32 34963
  %211 = ptrtoint ptr %arrayidx760.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 1, ptr %arrayidx760.i, align 1
  %arrayidx762.i = getelementptr i8, ptr %dev, i32 34964
  %212 = ptrtoint ptr %arrayidx762.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 20, ptr %arrayidx762.i, align 4
  %arrayidx768.i = getelementptr i8, ptr %dev, i32 34965
  %213 = ptrtoint ptr %arrayidx768.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 20, ptr %arrayidx768.i, align 1
  %arrayidx772.i = getelementptr i8, ptr %dev, i32 34966
  %214 = ptrtoint ptr %arrayidx772.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 17, ptr %arrayidx772.i, align 2
  %arrayidx776.i = getelementptr i8, ptr %dev, i32 34967
  %215 = ptrtoint ptr %arrayidx776.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 14, ptr %arrayidx776.i, align 1
  %arrayidx780.i = getelementptr i8, ptr %dev, i32 34968
  %216 = ptrtoint ptr %arrayidx780.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 11, ptr %arrayidx780.i, align 4
  %arrayidx784.i = getelementptr i8, ptr %dev, i32 34969
  %217 = ptrtoint ptr %arrayidx784.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 7, ptr %arrayidx784.i, align 1
  %arrayidx788.i = getelementptr i8, ptr %dev, i32 34970
  %218 = ptrtoint ptr %arrayidx788.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 3, ptr %arrayidx788.i, align 2
  %arrayidx792.i = getelementptr i8, ptr %dev, i32 34971
  %219 = ptrtoint ptr %arrayidx792.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 2, ptr %arrayidx792.i, align 1
  %arrayidx794.i = getelementptr i8, ptr %dev, i32 34972
  %220 = ptrtoint ptr %arrayidx794.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 19, ptr %arrayidx794.i, align 4
  %arrayidx800.i = getelementptr i8, ptr %dev, i32 34973
  %221 = ptrtoint ptr %arrayidx800.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 19, ptr %arrayidx800.i, align 1
  %arrayidx804.i = getelementptr i8, ptr %dev, i32 34974
  %222 = ptrtoint ptr %arrayidx804.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 16, ptr %arrayidx804.i, align 2
  %arrayidx808.i = getelementptr i8, ptr %dev, i32 34975
  %223 = ptrtoint ptr %arrayidx808.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 13, ptr %arrayidx808.i, align 1
  %arrayidx812.i = getelementptr i8, ptr %dev, i32 34976
  %224 = ptrtoint ptr %arrayidx812.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 10, ptr %arrayidx812.i, align 4
  %arrayidx816.i = getelementptr i8, ptr %dev, i32 34977
  %225 = ptrtoint ptr %arrayidx816.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 6, ptr %arrayidx816.i, align 1
  %arrayidx820.i = getelementptr i8, ptr %dev, i32 34978
  %226 = ptrtoint ptr %arrayidx820.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 3, ptr %arrayidx820.i, align 2
  %arrayidx824.i = getelementptr i8, ptr %dev, i32 34979
  %227 = ptrtoint ptr %arrayidx824.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 1, ptr %arrayidx824.i, align 1
  %arrayidx826.i = getelementptr i8, ptr %dev, i32 34980
  %228 = ptrtoint ptr %arrayidx826.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 18, ptr %arrayidx826.i, align 4
  %arrayidx832.i = getelementptr i8, ptr %dev, i32 34981
  %229 = ptrtoint ptr %arrayidx832.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 18, ptr %arrayidx832.i, align 1
  %arrayidx836.i = getelementptr i8, ptr %dev, i32 34982
  %230 = ptrtoint ptr %arrayidx836.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 15, ptr %arrayidx836.i, align 2
  %arrayidx840.i = getelementptr i8, ptr %dev, i32 34983
  %231 = ptrtoint ptr %arrayidx840.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 12, ptr %arrayidx840.i, align 1
  %arrayidx844.i = getelementptr i8, ptr %dev, i32 34984
  %232 = ptrtoint ptr %arrayidx844.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 9, ptr %arrayidx844.i, align 4
  %arrayidx848.i = getelementptr i8, ptr %dev, i32 34985
  %233 = ptrtoint ptr %arrayidx848.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 6, ptr %arrayidx848.i, align 1
  %arrayidx852.i = getelementptr i8, ptr %dev, i32 34986
  %234 = ptrtoint ptr %arrayidx852.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 3, ptr %arrayidx852.i, align 2
  %arrayidx856.i = getelementptr i8, ptr %dev, i32 34987
  %235 = ptrtoint ptr %arrayidx856.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 1, ptr %arrayidx856.i, align 1
  %arrayidx858.i = getelementptr i8, ptr %dev, i32 34988
  %236 = ptrtoint ptr %arrayidx858.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 17, ptr %arrayidx858.i, align 4
  %arrayidx864.i = getelementptr i8, ptr %dev, i32 34989
  %237 = ptrtoint ptr %arrayidx864.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 17, ptr %arrayidx864.i, align 1
  %arrayidx868.i = getelementptr i8, ptr %dev, i32 34990
  %238 = ptrtoint ptr %arrayidx868.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 15, ptr %arrayidx868.i, align 2
  %arrayidx872.i = getelementptr i8, ptr %dev, i32 34991
  %239 = ptrtoint ptr %arrayidx872.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 12, ptr %arrayidx872.i, align 1
  %arrayidx876.i = getelementptr i8, ptr %dev, i32 34992
  %240 = ptrtoint ptr %arrayidx876.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 9, ptr %arrayidx876.i, align 4
  %arrayidx880.i = getelementptr i8, ptr %dev, i32 34993
  %241 = ptrtoint ptr %arrayidx880.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 6, ptr %arrayidx880.i, align 1
  %arrayidx884.i = getelementptr i8, ptr %dev, i32 34994
  %242 = ptrtoint ptr %arrayidx884.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 3, ptr %arrayidx884.i, align 2
  %arrayidx888.i = getelementptr i8, ptr %dev, i32 34995
  %243 = ptrtoint ptr %arrayidx888.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 1, ptr %arrayidx888.i, align 1
  %arrayidx890.i = getelementptr i8, ptr %dev, i32 34996
  %244 = ptrtoint ptr %arrayidx890.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 16, ptr %arrayidx890.i, align 4
  %arrayidx896.i = getelementptr i8, ptr %dev, i32 34997
  %245 = ptrtoint ptr %arrayidx896.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 16, ptr %arrayidx896.i, align 1
  %arrayidx900.i = getelementptr i8, ptr %dev, i32 34998
  %246 = ptrtoint ptr %arrayidx900.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 14, ptr %arrayidx900.i, align 2
  %arrayidx904.i = getelementptr i8, ptr %dev, i32 34999
  %247 = ptrtoint ptr %arrayidx904.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 11, ptr %arrayidx904.i, align 1
  %arrayidx908.i = getelementptr i8, ptr %dev, i32 35000
  %248 = ptrtoint ptr %arrayidx908.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 8, ptr %arrayidx908.i, align 4
  %arrayidx912.i = getelementptr i8, ptr %dev, i32 35001
  %249 = ptrtoint ptr %arrayidx912.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 5, ptr %arrayidx912.i, align 1
  %arrayidx916.i = getelementptr i8, ptr %dev, i32 35002
  %250 = ptrtoint ptr %arrayidx916.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 3, ptr %arrayidx916.i, align 2
  %arrayidx920.i = getelementptr i8, ptr %dev, i32 35003
  %251 = ptrtoint ptr %arrayidx920.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 1, ptr %arrayidx920.i, align 1
  %arrayidx922.i = getelementptr i8, ptr %dev, i32 35004
  %252 = ptrtoint ptr %arrayidx922.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 15, ptr %arrayidx922.i, align 4
  %arrayidx928.i = getelementptr i8, ptr %dev, i32 35005
  %253 = ptrtoint ptr %arrayidx928.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 15, ptr %arrayidx928.i, align 1
  %arrayidx932.i = getelementptr i8, ptr %dev, i32 35006
  %254 = ptrtoint ptr %arrayidx932.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 13, ptr %arrayidx932.i, align 2
  %arrayidx936.i = getelementptr i8, ptr %dev, i32 35007
  %255 = ptrtoint ptr %arrayidx936.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 11, ptr %arrayidx936.i, align 1
  %arrayidx940.i = getelementptr i8, ptr %dev, i32 35008
  %256 = ptrtoint ptr %arrayidx940.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 8, ptr %arrayidx940.i, align 4
  %arrayidx944.i = getelementptr i8, ptr %dev, i32 35009
  %257 = ptrtoint ptr %arrayidx944.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 5, ptr %arrayidx944.i, align 1
  %arrayidx948.i = getelementptr i8, ptr %dev, i32 35010
  %258 = ptrtoint ptr %arrayidx948.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 3, ptr %arrayidx948.i, align 2
  %arrayidx952.i = getelementptr i8, ptr %dev, i32 35011
  %259 = ptrtoint ptr %arrayidx952.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 1, ptr %arrayidx952.i, align 1
  %cck_txbbgain_ch14_table.i = getelementptr i8, ptr %dev, i32 35012
  %260 = ptrtoint ptr %cck_txbbgain_ch14_table.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 54, ptr %cck_txbbgain_ch14_table.i, align 4
  %arrayidx959.i = getelementptr i8, ptr %dev, i32 35013
  %261 = ptrtoint ptr %arrayidx959.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 53, ptr %arrayidx959.i, align 1
  %arrayidx963.i = getelementptr i8, ptr %dev, i32 35014
  %262 = ptrtoint ptr %arrayidx963.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 46, ptr %arrayidx963.i, align 2
  %arrayidx967.i = getelementptr i8, ptr %dev, i32 35015
  %263 = ptrtoint ptr %arrayidx967.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 27, ptr %arrayidx967.i, align 1
  %arrayidx971.i = getelementptr i8, ptr %dev, i32 35016
  %arrayidx985.i = getelementptr i8, ptr %dev, i32 35020
  %264 = ptrtoint ptr %arrayidx971.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %arrayidx971.i, align 4
  %265 = ptrtoint ptr %arrayidx985.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 51, ptr %arrayidx985.i, align 4
  %arrayidx991.i = getelementptr i8, ptr %dev, i32 35021
  %266 = ptrtoint ptr %arrayidx991.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 50, ptr %arrayidx991.i, align 1
  %arrayidx995.i = getelementptr i8, ptr %dev, i32 35022
  %267 = ptrtoint ptr %arrayidx995.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 43, ptr %arrayidx995.i, align 2
  %arrayidx999.i = getelementptr i8, ptr %dev, i32 35023
  %268 = ptrtoint ptr %arrayidx999.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 25, ptr %arrayidx999.i, align 1
  %arrayidx1003.i = getelementptr i8, ptr %dev, i32 35024
  %arrayidx1017.i = getelementptr i8, ptr %dev, i32 35028
  %269 = ptrtoint ptr %arrayidx1003.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 0, ptr %arrayidx1003.i, align 4
  %270 = ptrtoint ptr %arrayidx1017.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 48, ptr %arrayidx1017.i, align 4
  %arrayidx1023.i = getelementptr i8, ptr %dev, i32 35029
  %271 = ptrtoint ptr %arrayidx1023.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 47, ptr %arrayidx1023.i, align 1
  %arrayidx1027.i = getelementptr i8, ptr %dev, i32 35030
  %272 = ptrtoint ptr %arrayidx1027.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 41, ptr %arrayidx1027.i, align 2
  %arrayidx1031.i = getelementptr i8, ptr %dev, i32 35031
  %273 = ptrtoint ptr %arrayidx1031.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 24, ptr %arrayidx1031.i, align 1
  %arrayidx1035.i = getelementptr i8, ptr %dev, i32 35032
  %arrayidx1049.i = getelementptr i8, ptr %dev, i32 35036
  %274 = ptrtoint ptr %arrayidx1035.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %arrayidx1035.i, align 4
  %275 = ptrtoint ptr %arrayidx1049.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 45, ptr %arrayidx1049.i, align 4
  %arrayidx1055.i = getelementptr i8, ptr %dev, i32 35037
  %276 = ptrtoint ptr %arrayidx1055.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 45, ptr %arrayidx1055.i, align 1
  %arrayidx1059.i = getelementptr i8, ptr %dev, i32 35038
  %277 = ptrtoint ptr %arrayidx1059.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 39, ptr %arrayidx1059.i, align 2
  %arrayidx1063.i = getelementptr i8, ptr %dev, i32 35039
  %278 = ptrtoint ptr %arrayidx1063.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 23, ptr %arrayidx1063.i, align 1
  %arrayidx1067.i = getelementptr i8, ptr %dev, i32 35040
  %arrayidx1081.i = getelementptr i8, ptr %dev, i32 35044
  %279 = ptrtoint ptr %arrayidx1067.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 0, ptr %arrayidx1067.i, align 4
  %280 = ptrtoint ptr %arrayidx1081.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 43, ptr %arrayidx1081.i, align 4
  %arrayidx1087.i = getelementptr i8, ptr %dev, i32 35045
  %281 = ptrtoint ptr %arrayidx1087.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 42, ptr %arrayidx1087.i, align 1
  %arrayidx1091.i = getelementptr i8, ptr %dev, i32 35046
  %282 = ptrtoint ptr %arrayidx1091.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 37, ptr %arrayidx1091.i, align 2
  %arrayidx1095.i = getelementptr i8, ptr %dev, i32 35047
  %283 = ptrtoint ptr %arrayidx1095.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 21, ptr %arrayidx1095.i, align 1
  %arrayidx1099.i = getelementptr i8, ptr %dev, i32 35048
  %arrayidx1113.i = getelementptr i8, ptr %dev, i32 35052
  %284 = ptrtoint ptr %arrayidx1099.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 0, ptr %arrayidx1099.i, align 4
  %285 = ptrtoint ptr %arrayidx1113.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 40, ptr %arrayidx1113.i, align 4
  %arrayidx1119.i = getelementptr i8, ptr %dev, i32 35053
  %286 = ptrtoint ptr %arrayidx1119.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 40, ptr %arrayidx1119.i, align 1
  %arrayidx1123.i = getelementptr i8, ptr %dev, i32 35054
  %287 = ptrtoint ptr %arrayidx1123.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 34, ptr %arrayidx1123.i, align 2
  %arrayidx1127.i = getelementptr i8, ptr %dev, i32 35055
  %288 = ptrtoint ptr %arrayidx1127.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 20, ptr %arrayidx1127.i, align 1
  %arrayidx1131.i = getelementptr i8, ptr %dev, i32 35056
  %arrayidx1145.i = getelementptr i8, ptr %dev, i32 35060
  %289 = ptrtoint ptr %arrayidx1131.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 0, ptr %arrayidx1131.i, align 4
  %290 = ptrtoint ptr %arrayidx1145.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 38, ptr %arrayidx1145.i, align 4
  %arrayidx1151.i = getelementptr i8, ptr %dev, i32 35061
  %291 = ptrtoint ptr %arrayidx1151.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 37, ptr %arrayidx1151.i, align 1
  %arrayidx1155.i = getelementptr i8, ptr %dev, i32 35062
  %292 = ptrtoint ptr %arrayidx1155.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 33, ptr %arrayidx1155.i, align 2
  %arrayidx1159.i = getelementptr i8, ptr %dev, i32 35063
  %293 = ptrtoint ptr %arrayidx1159.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 19, ptr %arrayidx1159.i, align 1
  %arrayidx1163.i = getelementptr i8, ptr %dev, i32 35064
  %arrayidx1177.i = getelementptr i8, ptr %dev, i32 35068
  %294 = ptrtoint ptr %arrayidx1163.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 0, ptr %arrayidx1163.i, align 4
  %295 = ptrtoint ptr %arrayidx1177.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 36, ptr %arrayidx1177.i, align 4
  %arrayidx1183.i = getelementptr i8, ptr %dev, i32 35069
  %296 = ptrtoint ptr %arrayidx1183.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 35, ptr %arrayidx1183.i, align 1
  %arrayidx1187.i = getelementptr i8, ptr %dev, i32 35070
  %297 = ptrtoint ptr %arrayidx1187.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 31, ptr %arrayidx1187.i, align 2
  %arrayidx1191.i = getelementptr i8, ptr %dev, i32 35071
  %298 = ptrtoint ptr %arrayidx1191.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 18, ptr %arrayidx1191.i, align 1
  %arrayidx1195.i = getelementptr i8, ptr %dev, i32 35072
  %arrayidx1209.i = getelementptr i8, ptr %dev, i32 35076
  %299 = ptrtoint ptr %arrayidx1195.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 0, ptr %arrayidx1195.i, align 4
  %300 = ptrtoint ptr %arrayidx1209.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 34, ptr %arrayidx1209.i, align 4
  %arrayidx1215.i = getelementptr i8, ptr %dev, i32 35077
  %301 = ptrtoint ptr %arrayidx1215.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 33, ptr %arrayidx1215.i, align 1
  %arrayidx1219.i = getelementptr i8, ptr %dev, i32 35078
  %302 = ptrtoint ptr %arrayidx1219.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 29, ptr %arrayidx1219.i, align 2
  %arrayidx1223.i = getelementptr i8, ptr %dev, i32 35079
  %303 = ptrtoint ptr %arrayidx1223.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 17, ptr %arrayidx1223.i, align 1
  %arrayidx1227.i = getelementptr i8, ptr %dev, i32 35080
  %arrayidx1241.i = getelementptr i8, ptr %dev, i32 35084
  %304 = ptrtoint ptr %arrayidx1227.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 0, ptr %arrayidx1227.i, align 4
  %305 = ptrtoint ptr %arrayidx1241.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 32, ptr %arrayidx1241.i, align 4
  %arrayidx1247.i = getelementptr i8, ptr %dev, i32 35085
  %306 = ptrtoint ptr %arrayidx1247.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 32, ptr %arrayidx1247.i, align 1
  %arrayidx1251.i = getelementptr i8, ptr %dev, i32 35086
  %307 = ptrtoint ptr %arrayidx1251.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 27, ptr %arrayidx1251.i, align 2
  %arrayidx1255.i = getelementptr i8, ptr %dev, i32 35087
  %308 = ptrtoint ptr %arrayidx1255.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 16, ptr %arrayidx1255.i, align 1
  %arrayidx1259.i = getelementptr i8, ptr %dev, i32 35088
  %arrayidx1273.i = getelementptr i8, ptr %dev, i32 35092
  %309 = ptrtoint ptr %arrayidx1259.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 0, ptr %arrayidx1259.i, align 4
  %310 = ptrtoint ptr %arrayidx1273.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 31, ptr %arrayidx1273.i, align 4
  %arrayidx1279.i = getelementptr i8, ptr %dev, i32 35093
  %311 = ptrtoint ptr %arrayidx1279.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 30, ptr %arrayidx1279.i, align 1
  %arrayidx1283.i = getelementptr i8, ptr %dev, i32 35094
  %312 = ptrtoint ptr %arrayidx1283.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 26, ptr %arrayidx1283.i, align 2
  %arrayidx1287.i = getelementptr i8, ptr %dev, i32 35095
  %313 = ptrtoint ptr %arrayidx1287.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 15, ptr %arrayidx1287.i, align 1
  %arrayidx1291.i = getelementptr i8, ptr %dev, i32 35096
  %arrayidx1305.i = getelementptr i8, ptr %dev, i32 35100
  %314 = ptrtoint ptr %arrayidx1291.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 0, ptr %arrayidx1291.i, align 4
  %315 = ptrtoint ptr %arrayidx1305.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 29, ptr %arrayidx1305.i, align 4
  %arrayidx1311.i = getelementptr i8, ptr %dev, i32 35101
  %316 = ptrtoint ptr %arrayidx1311.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 28, ptr %arrayidx1311.i, align 1
  %arrayidx1315.i = getelementptr i8, ptr %dev, i32 35102
  %317 = ptrtoint ptr %arrayidx1315.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 24, ptr %arrayidx1315.i, align 2
  %arrayidx1319.i = getelementptr i8, ptr %dev, i32 35103
  %318 = ptrtoint ptr %arrayidx1319.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 14, ptr %arrayidx1319.i, align 1
  %arrayidx1323.i = getelementptr i8, ptr %dev, i32 35104
  %arrayidx1337.i = getelementptr i8, ptr %dev, i32 35108
  %319 = ptrtoint ptr %arrayidx1323.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 0, ptr %arrayidx1323.i, align 4
  %320 = ptrtoint ptr %arrayidx1337.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 27, ptr %arrayidx1337.i, align 4
  %arrayidx1343.i = getelementptr i8, ptr %dev, i32 35109
  %321 = ptrtoint ptr %arrayidx1343.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 26, ptr %arrayidx1343.i, align 1
  %arrayidx1347.i = getelementptr i8, ptr %dev, i32 35110
  %322 = ptrtoint ptr %arrayidx1347.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 23, ptr %arrayidx1347.i, align 2
  %arrayidx1351.i = getelementptr i8, ptr %dev, i32 35111
  %323 = ptrtoint ptr %arrayidx1351.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 14, ptr %arrayidx1351.i, align 1
  %arrayidx1355.i = getelementptr i8, ptr %dev, i32 35112
  %arrayidx1369.i = getelementptr i8, ptr %dev, i32 35116
  %324 = ptrtoint ptr %arrayidx1355.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 0, ptr %arrayidx1355.i, align 4
  %325 = ptrtoint ptr %arrayidx1369.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 26, ptr %arrayidx1369.i, align 4
  %arrayidx1375.i = getelementptr i8, ptr %dev, i32 35117
  %326 = ptrtoint ptr %arrayidx1375.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 25, ptr %arrayidx1375.i, align 1
  %arrayidx1379.i = getelementptr i8, ptr %dev, i32 35118
  %327 = ptrtoint ptr %arrayidx1379.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 22, ptr %arrayidx1379.i, align 2
  %arrayidx1383.i = getelementptr i8, ptr %dev, i32 35119
  %328 = ptrtoint ptr %arrayidx1383.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 13, ptr %arrayidx1383.i, align 1
  %arrayidx1387.i = getelementptr i8, ptr %dev, i32 35120
  %arrayidx1401.i = getelementptr i8, ptr %dev, i32 35124
  %329 = ptrtoint ptr %arrayidx1387.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 0, ptr %arrayidx1387.i, align 4
  %330 = ptrtoint ptr %arrayidx1401.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 24, ptr %arrayidx1401.i, align 4
  %arrayidx1407.i = getelementptr i8, ptr %dev, i32 35125
  %331 = ptrtoint ptr %arrayidx1407.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 23, ptr %arrayidx1407.i, align 1
  %arrayidx1411.i = getelementptr i8, ptr %dev, i32 35126
  %332 = ptrtoint ptr %arrayidx1411.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 21, ptr %arrayidx1411.i, align 2
  %arrayidx1415.i = getelementptr i8, ptr %dev, i32 35127
  %333 = ptrtoint ptr %arrayidx1415.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 12, ptr %arrayidx1415.i, align 1
  %arrayidx1419.i = getelementptr i8, ptr %dev, i32 35128
  %arrayidx1433.i = getelementptr i8, ptr %dev, i32 35132
  %334 = ptrtoint ptr %arrayidx1419.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 0, ptr %arrayidx1419.i, align 4
  %335 = ptrtoint ptr %arrayidx1433.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 23, ptr %arrayidx1433.i, align 4
  %arrayidx1439.i = getelementptr i8, ptr %dev, i32 35133
  %336 = ptrtoint ptr %arrayidx1439.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 22, ptr %arrayidx1439.i, align 1
  %arrayidx1443.i = getelementptr i8, ptr %dev, i32 35134
  %337 = ptrtoint ptr %arrayidx1443.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 19, ptr %arrayidx1443.i, align 2
  %arrayidx1447.i = getelementptr i8, ptr %dev, i32 35135
  %338 = ptrtoint ptr %arrayidx1447.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 11, ptr %arrayidx1447.i, align 1
  %arrayidx1451.i = getelementptr i8, ptr %dev, i32 35136
  %arrayidx1465.i = getelementptr i8, ptr %dev, i32 35140
  %339 = ptrtoint ptr %arrayidx1451.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 0, ptr %arrayidx1451.i, align 4
  %340 = ptrtoint ptr %arrayidx1465.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 22, ptr %arrayidx1465.i, align 4
  %arrayidx1471.i = getelementptr i8, ptr %dev, i32 35141
  %341 = ptrtoint ptr %arrayidx1471.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 21, ptr %arrayidx1471.i, align 1
  %arrayidx1475.i = getelementptr i8, ptr %dev, i32 35142
  %342 = ptrtoint ptr %arrayidx1475.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 18, ptr %arrayidx1475.i, align 2
  %arrayidx1479.i = getelementptr i8, ptr %dev, i32 35143
  %343 = ptrtoint ptr %arrayidx1479.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 11, ptr %arrayidx1479.i, align 1
  %arrayidx1483.i = getelementptr i8, ptr %dev, i32 35144
  %arrayidx1497.i = getelementptr i8, ptr %dev, i32 35148
  %344 = ptrtoint ptr %arrayidx1483.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 0, ptr %arrayidx1483.i, align 4
  %345 = ptrtoint ptr %arrayidx1497.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 20, ptr %arrayidx1497.i, align 4
  %arrayidx1503.i = getelementptr i8, ptr %dev, i32 35149
  %346 = ptrtoint ptr %arrayidx1503.i to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 20, ptr %arrayidx1503.i, align 1
  %arrayidx1507.i = getelementptr i8, ptr %dev, i32 35150
  %347 = ptrtoint ptr %arrayidx1507.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 17, ptr %arrayidx1507.i, align 2
  %arrayidx1511.i = getelementptr i8, ptr %dev, i32 35151
  %348 = ptrtoint ptr %arrayidx1511.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 10, ptr %arrayidx1511.i, align 1
  %arrayidx1515.i = getelementptr i8, ptr %dev, i32 35152
  %arrayidx1529.i = getelementptr i8, ptr %dev, i32 35156
  %349 = ptrtoint ptr %arrayidx1515.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 0, ptr %arrayidx1515.i, align 4
  %350 = ptrtoint ptr %arrayidx1529.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 19, ptr %arrayidx1529.i, align 4
  %arrayidx1535.i = getelementptr i8, ptr %dev, i32 35157
  %351 = ptrtoint ptr %arrayidx1535.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 19, ptr %arrayidx1535.i, align 1
  %arrayidx1539.i = getelementptr i8, ptr %dev, i32 35158
  %352 = ptrtoint ptr %arrayidx1539.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 16, ptr %arrayidx1539.i, align 2
  %arrayidx1543.i = getelementptr i8, ptr %dev, i32 35159
  %353 = ptrtoint ptr %arrayidx1543.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 10, ptr %arrayidx1543.i, align 1
  %arrayidx1547.i = getelementptr i8, ptr %dev, i32 35160
  %arrayidx1561.i = getelementptr i8, ptr %dev, i32 35164
  %354 = ptrtoint ptr %arrayidx1547.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 0, ptr %arrayidx1547.i, align 4
  %355 = ptrtoint ptr %arrayidx1561.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 18, ptr %arrayidx1561.i, align 4
  %arrayidx1567.i = getelementptr i8, ptr %dev, i32 35165
  %356 = ptrtoint ptr %arrayidx1567.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 18, ptr %arrayidx1567.i, align 1
  %arrayidx1571.i = getelementptr i8, ptr %dev, i32 35166
  %357 = ptrtoint ptr %arrayidx1571.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 15, ptr %arrayidx1571.i, align 2
  %arrayidx1575.i = getelementptr i8, ptr %dev, i32 35167
  %358 = ptrtoint ptr %arrayidx1575.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 9, ptr %arrayidx1575.i, align 1
  %arrayidx1579.i = getelementptr i8, ptr %dev, i32 35168
  %arrayidx1593.i = getelementptr i8, ptr %dev, i32 35172
  %359 = ptrtoint ptr %arrayidx1579.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 0, ptr %arrayidx1579.i, align 4
  %360 = ptrtoint ptr %arrayidx1593.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 17, ptr %arrayidx1593.i, align 4
  %arrayidx1599.i = getelementptr i8, ptr %dev, i32 35173
  %361 = ptrtoint ptr %arrayidx1599.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 17, ptr %arrayidx1599.i, align 1
  %arrayidx1603.i = getelementptr i8, ptr %dev, i32 35174
  %362 = ptrtoint ptr %arrayidx1603.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 15, ptr %arrayidx1603.i, align 2
  %arrayidx1607.i = getelementptr i8, ptr %dev, i32 35175
  %363 = ptrtoint ptr %arrayidx1607.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 9, ptr %arrayidx1607.i, align 1
  %arrayidx1611.i = getelementptr i8, ptr %dev, i32 35176
  %arrayidx1625.i = getelementptr i8, ptr %dev, i32 35180
  %364 = ptrtoint ptr %arrayidx1611.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 0, ptr %arrayidx1611.i, align 4
  %365 = ptrtoint ptr %arrayidx1625.i to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 16, ptr %arrayidx1625.i, align 4
  %arrayidx1631.i = getelementptr i8, ptr %dev, i32 35181
  %366 = ptrtoint ptr %arrayidx1631.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 16, ptr %arrayidx1631.i, align 1
  %arrayidx1635.i = getelementptr i8, ptr %dev, i32 35182
  %367 = ptrtoint ptr %arrayidx1635.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 14, ptr %arrayidx1635.i, align 2
  %arrayidx1639.i = getelementptr i8, ptr %dev, i32 35183
  %368 = ptrtoint ptr %arrayidx1639.i to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 8, ptr %arrayidx1639.i, align 1
  %arrayidx1643.i = getelementptr i8, ptr %dev, i32 35184
  %arrayidx1657.i = getelementptr i8, ptr %dev, i32 35188
  %369 = ptrtoint ptr %arrayidx1643.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 0, ptr %arrayidx1643.i, align 4
  %370 = ptrtoint ptr %arrayidx1657.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 15, ptr %arrayidx1657.i, align 4
  %arrayidx1663.i = getelementptr i8, ptr %dev, i32 35189
  %371 = ptrtoint ptr %arrayidx1663.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 15, ptr %arrayidx1663.i, align 1
  %arrayidx1667.i = getelementptr i8, ptr %dev, i32 35190
  %372 = ptrtoint ptr %arrayidx1667.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 13, ptr %arrayidx1667.i, align 2
  %arrayidx1671.i = getelementptr i8, ptr %dev, i32 35191
  %373 = ptrtoint ptr %arrayidx1671.i to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 8, ptr %arrayidx1671.i, align 1
  %arrayidx1675.i = getelementptr i8, ptr %dev, i32 35192
  %btxpower_tracking.i = getelementptr i8, ptr %dev, i32 35205
  %374 = ptrtoint ptr %arrayidx1675.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 0, ptr %arrayidx1675.i, align 4
  %375 = ptrtoint ptr %btxpower_tracking.i to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 1, ptr %btxpower_tracking.i, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ieee80211.i = getelementptr i8, ptr %dev, i32 30156
  %376 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %ieee80211.i, align 4
  %FwRWRF.i = getelementptr inbounds %struct.ieee80211_device, ptr %377, i32 0, i32 155
  %378 = ptrtoint ptr %FwRWRF.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %FwRWRF.i, align 4, !range !203
  %380 = getelementptr i8, ptr %dev, i32 35205
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 %379, ptr %380, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %txpower_count.i3 = getelementptr i8, ptr %dev, i32 34824
  %382 = ptrtoint ptr %txpower_count.i3 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 0, ptr %txpower_count.i3, align 4
  %btxpower_trackingInit.i4 = getelementptr i8, ptr %dev, i32 34825
  %383 = ptrtoint ptr %btxpower_trackingInit.i4 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 0, ptr %btxpower_trackingInit.i4, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext %binch14) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30120
  %bDcut = getelementptr i8, ptr %dev, i32 33948
  %0 = ptrtoint ptr %bDcut to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDcut, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cck_present_attenuation59.i = getelementptr i8, ptr %dev, i32 35201
  %2 = ptrtoint ptr %cck_present_attenuation59.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cck_present_attenuation59.i, align 1
  %idxprom60.i = sext i8 %3 to i32
  br i1 %binch14, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 120, i32 %idxprom60.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 4
  %conv.i = zext i8 %5 to i32
  %arrayidx7.i = getelementptr [8 x i8], ptr %arrayidx.i, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv8.i, 8
  %add.i = or i32 %shl.i, %conv.i
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 2592, i32 noundef -65536, i32 noundef %add.i) #6
  %8 = ptrtoint ptr %cck_present_attenuation59.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cck_present_attenuation59.i, align 1
  %idxprom11.i = sext i8 %9 to i32
  %arrayidx12.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 120, i32 %idxprom11.i
  %arrayidx14.i = getelementptr [8 x i8], ptr %arrayidx12.i, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14.i, align 2
  %conv15.i = zext i8 %11 to i32
  %arrayidx21.i = getelementptr [8 x i8], ptr %arrayidx12.i, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %13 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 8
  %add24.i = or i32 %shl23.i, %conv15.i
  %arrayidx30.i = getelementptr [8 x i8], ptr %arrayidx12.i, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx30.i, align 4
  %conv31.i = zext i8 %15 to i32
  %shl32.i = shl nuw nsw i32 %conv31.i, 16
  %add33.i = or i32 %add24.i, %shl32.i
  %arrayidx39.i = getelementptr [8 x i8], ptr %arrayidx12.i, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %17 to i32
  %shl41.i = shl nuw i32 %conv40.i, 24
  %add42.i = or i32 %add33.i, %shl41.i
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 2596, i32 noundef -1, i32 noundef %add42.i) #6
  %18 = ptrtoint ptr %cck_present_attenuation59.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cck_present_attenuation59.i, align 1
  %idxprom45.i = sext i8 %19 to i32
  %arrayidx46.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 120, i32 %idxprom45.i
  br label %dm_CCKTxPowerAdjust_TSSI.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 121, i32 %idxprom60.i
  %20 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx61.i, align 4
  %conv64.i = zext i8 %21 to i32
  %arrayidx70.i = getelementptr [8 x i8], ptr %arrayidx61.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx70.i, align 1
  %conv71.i = zext i8 %23 to i32
  %shl72.i = shl nuw nsw i32 %conv71.i, 8
  %add73.i = or i32 %shl72.i, %conv64.i
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 2592, i32 noundef -65536, i32 noundef %add73.i) #6
  %24 = ptrtoint ptr %cck_present_attenuation59.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cck_present_attenuation59.i, align 1
  %idxprom76.i = sext i8 %25 to i32
  %arrayidx77.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 121, i32 %idxprom76.i
  %arrayidx79.i = getelementptr [8 x i8], ptr %arrayidx77.i, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx79.i, align 2
  %conv80.i = zext i8 %27 to i32
  %arrayidx86.i = getelementptr [8 x i8], ptr %arrayidx77.i, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx86.i, align 1
  %conv87.i = zext i8 %29 to i32
  %shl88.i = shl nuw nsw i32 %conv87.i, 8
  %add89.i = or i32 %shl88.i, %conv80.i
  %arrayidx95.i = getelementptr [8 x i8], ptr %arrayidx77.i, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx95.i, align 4
  %conv96.i = zext i8 %31 to i32
  %shl97.i = shl nuw nsw i32 %conv96.i, 16
  %add98.i = or i32 %add89.i, %shl97.i
  %arrayidx104.i = getelementptr [8 x i8], ptr %arrayidx77.i, i32 0, i32 5
  %32 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx104.i, align 1
  %conv105.i = zext i8 %33 to i32
  %shl106.i = shl nuw i32 %conv105.i, 24
  %add107.i = or i32 %add98.i, %shl106.i
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 2596, i32 noundef -1, i32 noundef %add107.i) #6
  %34 = ptrtoint ptr %cck_present_attenuation59.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cck_present_attenuation59.i, align 1
  %idxprom110.i = sext i8 %35 to i32
  %arrayidx111.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 121, i32 %idxprom110.i
  br label %dm_CCKTxPowerAdjust_TSSI.exit

dm_CCKTxPowerAdjust_TSSI.exit:                    ; preds = %if.else.i, %if.then.i
  %arrayidx111.sink166.i = phi ptr [ %arrayidx111.i, %if.else.i ], [ %arrayidx46.i, %if.then.i ]
  %arrayidx113.i = getelementptr [8 x i8], ptr %arrayidx111.sink166.i, i32 0, i32 6
  %36 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx113.i, align 2
  %conv114.i = zext i8 %37 to i32
  %arrayidx120.i = getelementptr [8 x i8], ptr %arrayidx111.sink166.i, i32 0, i32 7
  %38 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx120.i, align 1
  %conv121.i = zext i8 %39 to i32
  %shl122.i = shl nuw nsw i32 %conv121.i, 8
  %add123.i = or i32 %shl122.i, %conv114.i
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 2600, i32 noundef 65535, i32 noundef %add123.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dm_CCKTxPowerAdjust_ThermalMeter(ptr noundef %dev, i1 noundef zeroext %binch14)
  br label %if.end

if.end:                                           ; preds = %if.else, %dm_CCKTxPowerAdjust_TSSI.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_CCKTxPowerAdjust_ThermalMeter(ptr noundef %dev, i1 noundef zeroext %bInCH14) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %CCK_index103 = getelementptr i8, ptr %dev, i32 34827
  %0 = ptrtoint ptr %CCK_index103 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %CCK_index103, align 1
  %idxprom104 = zext i8 %1 to i32
  br i1 %bInCH14, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom104
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx5 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom104, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv6, 8
  %add = or i32 %shl, %conv
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 2592, i32 noundef -65536, i32 noundef %add) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %6 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then.do.end18_crit_edge, label %do.body9

if.then.do.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.body9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_CCKTxPowerAdjust_ThermalMeter, %if.then15)) #6
          to label %do.end18 [label %if.then15], !srcloc !205

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.31, i32 noundef 2592, i32 noundef %add) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body9, %if.then.do.end18_crit_edge
  %7 = ptrtoint ptr %CCK_index103 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %CCK_index103, align 1
  %idxprom20 = zext i8 %8 to i32
  %arrayidx22 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom20, i32 2
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %10 to i32
  %arrayidx27 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom20, i32 3
  %11 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %12 to i32
  %shl29 = shl nuw nsw i32 %conv28, 8
  %add30 = or i32 %shl29, %conv23
  %arrayidx34 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom20, i32 4
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %14 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = or i32 %add30, %shl36
  %arrayidx41 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom20, i32 5
  %15 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %16 to i32
  %shl43 = shl nuw i32 %conv42, 24
  %add44 = or i32 %add37, %shl43
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 2596, i32 noundef -1, i32 noundef %add44) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %17 = load i32, ptr @rt_global_debug_component, align 4
  %and46 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.end18.do.end67_crit_edge, label %do.body49

do.end18.do.end67_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

do.body49:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_CCKTxPowerAdjust_ThermalMeter, %if.then61)) #6
          to label %do.end67 [label %if.then61], !srcloc !205

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.31, i32 noundef 2596, i32 noundef %add44) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then61, %do.body49, %do.end18.do.end67_crit_edge
  %18 = ptrtoint ptr %CCK_index103 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %CCK_index103, align 1
  %idxprom69 = zext i8 %19 to i32
  %arrayidx71 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom69, i32 6
  %20 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %21 to i32
  %arrayidx76 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %idxprom69, i32 7
  %22 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %23 to i32
  %shl78 = shl nuw nsw i32 %conv77, 8
  %add79 = or i32 %shl78, %conv72
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 2600, i32 noundef 65535, i32 noundef %add79) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %24 = load i32, ptr @rt_global_debug_component, align 4
  %and81 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.end67.if.end222_crit_edge, label %do.body84

do.end67.if.end222_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end222

do.body84:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_CCKTxPowerAdjust_ThermalMeter, %if.then96)) #6
          to label %if.end222 [label %if.then96], !srcloc !205

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.31, i32 noundef 2600, i32 noundef %add79) #6
  br label %if.end222

if.else:                                          ; preds = %entry
  %arrayidx105 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom104
  %25 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx105, align 1
  %conv107 = zext i8 %26 to i32
  %arrayidx111 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom104, i32 1
  %27 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %28 to i32
  %shl113 = shl nuw nsw i32 %conv112, 8
  %add114 = or i32 %shl113, %conv107
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 2592, i32 noundef -65536, i32 noundef %add114) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %29 = load i32, ptr @rt_global_debug_component, align 4
  %and116 = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.else.do.end137_crit_edge, label %do.body119

if.else.do.end137_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end137

do.body119:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_CCKTxPowerAdjust_ThermalMeter, %if.then131)) #6
          to label %do.end137 [label %if.then131], !srcloc !205

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.32, i32 noundef 2592, i32 noundef %add114) #6
  br label %do.end137

do.end137:                                        ; preds = %if.then131, %do.body119, %if.else.do.end137_crit_edge
  %30 = ptrtoint ptr %CCK_index103 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %CCK_index103, align 1
  %idxprom139 = zext i8 %31 to i32
  %arrayidx141 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom139, i32 2
  %32 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx141, align 1
  %conv142 = zext i8 %33 to i32
  %arrayidx146 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom139, i32 3
  %34 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %35 to i32
  %shl148 = shl nuw nsw i32 %conv147, 8
  %add149 = or i32 %shl148, %conv142
  %arrayidx153 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom139, i32 4
  %36 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %37 to i32
  %shl155 = shl nuw nsw i32 %conv154, 16
  %add156 = or i32 %add149, %shl155
  %arrayidx160 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom139, i32 5
  %38 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx160, align 1
  %conv161 = zext i8 %39 to i32
  %shl162 = shl nuw i32 %conv161, 24
  %add163 = or i32 %add156, %shl162
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 2596, i32 noundef -1, i32 noundef %add163) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %40 = load i32, ptr @rt_global_debug_component, align 4
  %and165 = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %do.end137.do.end186_crit_edge, label %do.body168

do.end137.do.end186_crit_edge:                    ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end186

do.body168:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_CCKTxPowerAdjust_ThermalMeter, %if.then180)) #6
          to label %do.end186 [label %if.then180], !srcloc !205

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.32, i32 noundef 2596, i32 noundef %add163) #6
  br label %do.end186

do.end186:                                        ; preds = %if.then180, %do.body168, %do.end137.do.end186_crit_edge
  %41 = ptrtoint ptr %CCK_index103 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %CCK_index103, align 1
  %idxprom188 = zext i8 %42 to i32
  %arrayidx190 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom188, i32 6
  %43 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %44 to i32
  %arrayidx195 = getelementptr [12 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %idxprom188, i32 7
  %45 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %46 to i32
  %shl197 = shl nuw nsw i32 %conv196, 8
  %add198 = or i32 %shl197, %conv191
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 2600, i32 noundef 65535, i32 noundef %add198) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %47 = load i32, ptr @rt_global_debug_component, align 4
  %and200 = and i32 %47, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %do.end186.if.end222_crit_edge, label %do.body203

do.end186.if.end222_crit_edge:                    ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end222

do.body203:                                       ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_CCKTxPowerAdjust_ThermalMeter, %if.then215)) #6
          to label %if.end222 [label %if.then215], !srcloc !205

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.32, i32 noundef 2600, i32 noundef %add198) #6
  br label %if.end222

if.end222:                                        ; preds = %if.then215, %do.body203, %do.end186.if.end222_crit_edge, %if.then96, %do.body84, %do.end67.if.end222_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_rf_pathcheck_workitemcallback(ptr nocapture noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %rfpath = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %work, i32 -5544
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rfpath) #6
  %4 = ptrtoint ptr %rfpath to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %rfpath, align 1
  %call2 = call i32 @read_nic_byte(ptr noundef %3, i32 noundef 3076, ptr noundef nonnull %rfpath) #6
  %5 = ptrtoint ptr %rfpath to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rfpath, align 1
  %brfpath_rxenable = getelementptr i8, ptr %work, i32 -1307
  %and = and i8 %6, 1
  %7 = ptrtoint ptr %brfpath_rxenable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %and, ptr %brfpath_rxenable, align 1
  %and.1 = lshr i8 %6, 1
  %and.1.lobit = and i8 %and.1, 1
  %arrayidx8.1 = getelementptr i8, ptr %work, i32 -1306
  %8 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %and.1.lobit, ptr %arrayidx8.1, align 1
  %and.2 = lshr i8 %6, 2
  %and.2.lobit = and i8 %and.2, 1
  %arrayidx8.2 = getelementptr i8, ptr %work, i32 -1305
  %9 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and.2.lobit, ptr %arrayidx8.2, align 1
  %10 = lshr i8 %6, 3
  %.lobit = and i8 %10, 1
  %arrayidx8.3 = getelementptr i8, ptr %work, i32 -1304
  %11 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.lobit, ptr %arrayidx8.3, align 1
  %rf_type.i = getelementptr i8, ptr %3, i32 30464
  %12 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rf_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.dm_rxpath_sel_byrssi.exit_crit_edge

entry.dm_rxpath_sel_byrssi.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_rxpath_sel_byrssi.exit

if.end.i:                                         ; preds = %entry
  %.b.i = load i1, ptr @dm_rxpath_sel_byrssi.cck_Rx_Path_initialized, align 1
  br i1 %.b.i, label %if.end.i.if.end4.i_crit_edge, label %if.then1.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call i32 @read_nic_byte(ptr noundef %3, i32 noundef 2567, ptr noundef getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 1)) #6
  %14 = load i8, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 1), align 4
  %15 = and i8 %14, 15
  store i8 %15, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 1), align 4
  store i1 true, ptr @dm_rxpath_sel_byrssi.cck_Rx_Path_initialized, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then1.i, %if.end.i.if.end4.i_crit_edge
  %call5.i = call i32 @read_nic_byte(ptr noundef %3, i32 noundef 3076, ptr noundef getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 2)) #6
  %16 = load i8, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 2), align 1
  %17 = and i8 %16, 15
  %18 = xor i8 %17, 15
  store i8 %18, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 2), align 1
  %ieee80211.i = getelementptr i8, ptr %3, i32 30156
  %19 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ieee80211.i, align 4
  %mode.i = getelementptr inbounds %struct.ieee80211_device, ptr %20, i32 0, i32 86
  %21 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp9.i = icmp eq i32 %22, 2
  br i1 %cmp9.i, label %if.then11.i, label %if.end4.i.if.end12.i_crit_edge

if.end4.i.if.end12.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i32 1, ptr @DM_RxPathSelTable, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end4.i.if.end12.i_crit_edge
  %arrayidx.i = getelementptr i8, ptr %3, i32 32384
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  store i8 %24, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 3, i32 0), align 2
  %arrayidx19.i = getelementptr i8, ptr %3, i32 34393
  %25 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx19.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool20.not.i = icmp eq i8 %26, 0
  %not.tobool20.not.i = xor i1 %tobool20.not.i, true
  %rf_num.1.i = zext i1 %not.tobool20.not.i to i8
  %tmp_max_rssi.1.i = select i1 %tobool20.not.i, i8 0, i8 %24
  %arrayidx.1.i = getelementptr i8, ptr %3, i32 32385
  %27 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.1.i, align 1
  store i8 %28, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 3, i32 1), align 1
  %arrayidx19.1.i = getelementptr i8, ptr %3, i32 34394
  %29 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx19.1.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool20.not.1.i = icmp eq i8 %30, 0
  br i1 %tobool20.not.1.i, label %if.end12.i.for.inc.1.i_crit_edge, label %if.then21.1.i

if.end12.i.for.inc.1.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then21.1.i:                                    ; preds = %if.end12.i
  br i1 %tobool20.not.i, label %if.then21.1.i.for.inc.1.i_crit_edge, label %if.else.1.i

if.then21.1.i.for.inc.1.i_crit_edge:              ; preds = %if.then21.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %if.then21.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %tmp_max_rssi.1.i)
  %cmp34.not.1.i = icmp ult i8 %28, %tmp_max_rssi.1.i
  %not.cmp34.not.1.i = xor i1 %cmp34.not.1.i, true
  %max_rssi_index.0.i.0.1.i = zext i1 %not.cmp34.not.1.i to i8
  %i.0.min_rssi_index.0.1.i = zext i1 %cmp34.not.1.i to i8
  %31 = call i8 @llvm.umax.i8(i8 %28, i8 %tmp_max_rssi.1.i) #6
  %32 = call i8 @llvm.umin.i8(i8 %28, i8 %tmp_max_rssi.1.i) #6
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.else.1.i, %if.then21.1.i.for.inc.1.i_crit_edge, %if.end12.i.for.inc.1.i_crit_edge
  %max_rssi_index.1.1.i = phi i8 [ 0, %if.end12.i.for.inc.1.i_crit_edge ], [ 1, %if.then21.1.i.for.inc.1.i_crit_edge ], [ %max_rssi_index.0.i.0.1.i, %if.else.1.i ]
  %min_rssi_index.1.1.i = phi i8 [ 0, %if.end12.i.for.inc.1.i_crit_edge ], [ 1, %if.then21.1.i.for.inc.1.i_crit_edge ], [ %i.0.min_rssi_index.0.1.i, %if.else.1.i ]
  %rf_num.1.1.i = phi i8 [ %rf_num.1.i, %if.end12.i.for.inc.1.i_crit_edge ], [ 1, %if.then21.1.i.for.inc.1.i_crit_edge ], [ 2, %if.else.1.i ]
  %tmp_max_rssi.1.1.i = phi i8 [ %tmp_max_rssi.1.i, %if.end12.i.for.inc.1.i_crit_edge ], [ %28, %if.then21.1.i.for.inc.1.i_crit_edge ], [ %31, %if.else.1.i ]
  %tmp_min_rssi.1.1.i = phi i8 [ %tmp_max_rssi.1.i, %if.end12.i.for.inc.1.i_crit_edge ], [ %28, %if.then21.1.i.for.inc.1.i_crit_edge ], [ %32, %if.else.1.i ]
  %arrayidx.2.i = getelementptr i8, ptr %3, i32 32386
  %33 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.2.i, align 1
  store i8 %34, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 3, i32 2), align 4
  %arrayidx19.2.i = getelementptr i8, ptr %3, i32 34395
  %35 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx19.2.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool20.not.2.i = icmp eq i8 %36, 0
  br i1 %tobool20.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then21.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then21.2.i:                                    ; preds = %for.inc.1.i
  %trunc = trunc i8 %rf_num.1.1.i to i2
  %37 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.57)
  switch i2 %trunc, label %if.else39.2.i [
    i2 0, label %if.then21.2.i.for.inc.2.i_crit_edge
    i2 1, label %if.then31.2.i
  ]

if.then21.2.i.for.inc.2.i_crit_edge:              ; preds = %if.then21.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.else39.2.i:                                    ; preds = %if.then21.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %tmp_max_rssi.1.1.i)
  %cmp42.2.i = icmp ugt i8 %34, %tmp_max_rssi.1.1.i
  br i1 %cmp42.2.i, label %if.else39.2.i.for.inc.2.i_crit_edge, label %if.else45.2.i

if.else39.2.i.for.inc.2.i_crit_edge:              ; preds = %if.else39.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.else45.2.i:                                    ; preds = %if.else39.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %tmp_max_rssi.1.1.i)
  %cmp48.2.i = icmp eq i8 %34, %tmp_max_rssi.1.1.i
  br i1 %cmp48.2.i, label %if.else45.2.i.for.inc.2.i_crit_edge, label %if.else51.2.i

if.else45.2.i.for.inc.2.i_crit_edge:              ; preds = %if.else45.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.else51.2.i:                                    ; preds = %if.else45.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %tmp_min_rssi.1.1.i)
  %cmp58.2.i = icmp ugt i8 %34, %tmp_min_rssi.1.1.i
  br i1 %cmp58.2.i, label %if.else51.2.i.for.inc.2.i_crit_edge, label %if.else61.2.i

if.else51.2.i.for.inc.2.i_crit_edge:              ; preds = %if.else51.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.else61.2.i:                                    ; preds = %if.else51.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %tmp_min_rssi.1.1.i)
  %cmp64.2.i = icmp eq i8 %34, %tmp_min_rssi.1.1.i
  br i1 %cmp64.2.i, label %if.else61.2.i.for.inc.2.i_crit_edge, label %if.else98.2.i

if.else61.2.i.for.inc.2.i_crit_edge:              ; preds = %if.else61.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.else98.2.i:                                    ; preds = %if.else61.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %tmp_min_rssi.1.1.i)
  %cmp101.2.i = icmp ult i8 %34, %tmp_min_rssi.1.1.i
  %spec.select420.2.i = select i1 %cmp101.2.i, i8 2, i8 %min_rssi_index.1.1.i
  %38 = call i8 @llvm.umin.i8(i8 %34, i8 %tmp_min_rssi.1.1.i) #6
  br label %for.inc.2.i

if.then31.2.i:                                    ; preds = %if.then21.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %tmp_max_rssi.1.1.i)
  %cmp34.not.2.i = icmp ult i8 %34, %tmp_max_rssi.1.1.i
  %max_rssi_index.0.i.0.2.i = select i1 %cmp34.not.2.i, i8 %max_rssi_index.1.1.i, i8 2
  %i.0.min_rssi_index.0.2.i = select i1 %cmp34.not.2.i, i8 2, i8 %min_rssi_index.1.1.i
  %39 = call i8 @llvm.umax.i8(i8 %34, i8 %tmp_max_rssi.1.1.i) #6
  %.tmp_min_rssi.0.2.i = select i1 %cmp34.not.2.i, i8 %34, i8 %tmp_min_rssi.1.1.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then31.2.i, %if.else98.2.i, %if.else61.2.i.for.inc.2.i_crit_edge, %if.else51.2.i.for.inc.2.i_crit_edge, %if.else45.2.i.for.inc.2.i_crit_edge, %if.else39.2.i.for.inc.2.i_crit_edge, %if.then21.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %max_rssi_index.1.2.i = phi i8 [ %max_rssi_index.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ 2, %if.then21.2.i.for.inc.2.i_crit_edge ], [ %max_rssi_index.0.i.0.2.i, %if.then31.2.i ], [ 2, %if.else39.2.i.for.inc.2.i_crit_edge ], [ %max_rssi_index.1.1.i, %if.else45.2.i.for.inc.2.i_crit_edge ], [ %max_rssi_index.1.1.i, %if.else51.2.i.for.inc.2.i_crit_edge ], [ %max_rssi_index.1.1.i, %if.else98.2.i ], [ %max_rssi_index.1.1.i, %if.else61.2.i.for.inc.2.i_crit_edge ]
  %min_rssi_index.1.2.i = phi i8 [ %min_rssi_index.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ 2, %if.then21.2.i.for.inc.2.i_crit_edge ], [ %i.0.min_rssi_index.0.2.i, %if.then31.2.i ], [ %min_rssi_index.1.1.i, %if.else39.2.i.for.inc.2.i_crit_edge ], [ %min_rssi_index.1.1.i, %if.else45.2.i.for.inc.2.i_crit_edge ], [ %min_rssi_index.1.1.i, %if.else51.2.i.for.inc.2.i_crit_edge ], [ %spec.select420.2.i, %if.else98.2.i ], [ %min_rssi_index.1.1.i, %if.else61.2.i.for.inc.2.i_crit_edge ]
  %sec_rssi_index.1.2.i = phi i8 [ %min_rssi_index.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ 2, %if.then21.2.i.for.inc.2.i_crit_edge ], [ %i.0.min_rssi_index.0.2.i, %if.then31.2.i ], [ %max_rssi_index.1.1.i, %if.else39.2.i.for.inc.2.i_crit_edge ], [ 2, %if.else45.2.i.for.inc.2.i_crit_edge ], [ 2, %if.else51.2.i.for.inc.2.i_crit_edge ], [ %min_rssi_index.1.1.i, %if.else98.2.i ], [ 2, %if.else61.2.i.for.inc.2.i_crit_edge ]
  %rf_num.1.2.i = phi i8 [ %rf_num.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ 1, %if.then21.2.i.for.inc.2.i_crit_edge ], [ 2, %if.then31.2.i ], [ 3, %if.else39.2.i.for.inc.2.i_crit_edge ], [ 3, %if.else45.2.i.for.inc.2.i_crit_edge ], [ 3, %if.else51.2.i.for.inc.2.i_crit_edge ], [ 3, %if.else98.2.i ], [ 3, %if.else61.2.i.for.inc.2.i_crit_edge ]
  %tmp_max_rssi.1.2.i = phi i8 [ %tmp_max_rssi.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %34, %if.then21.2.i.for.inc.2.i_crit_edge ], [ %39, %if.then31.2.i ], [ %34, %if.else39.2.i.for.inc.2.i_crit_edge ], [ %tmp_max_rssi.1.1.i, %if.else45.2.i.for.inc.2.i_crit_edge ], [ %tmp_max_rssi.1.1.i, %if.else51.2.i.for.inc.2.i_crit_edge ], [ %tmp_max_rssi.1.1.i, %if.else98.2.i ], [ %tmp_max_rssi.1.1.i, %if.else61.2.i.for.inc.2.i_crit_edge ]
  %tmp_min_rssi.1.2.i = phi i8 [ %tmp_min_rssi.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %34, %if.then21.2.i.for.inc.2.i_crit_edge ], [ %.tmp_min_rssi.0.2.i, %if.then31.2.i ], [ %tmp_min_rssi.1.1.i, %if.else39.2.i.for.inc.2.i_crit_edge ], [ %tmp_min_rssi.1.1.i, %if.else45.2.i.for.inc.2.i_crit_edge ], [ %tmp_min_rssi.1.1.i, %if.else51.2.i.for.inc.2.i_crit_edge ], [ %38, %if.else98.2.i ], [ %tmp_min_rssi.1.1.i, %if.else61.2.i.for.inc.2.i_crit_edge ]
  %tmp_sec_rssi.1.2.i = phi i8 [ %tmp_min_rssi.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %34, %if.then21.2.i.for.inc.2.i_crit_edge ], [ %.tmp_min_rssi.0.2.i, %if.then31.2.i ], [ %tmp_max_rssi.1.1.i, %if.else39.2.i.for.inc.2.i_crit_edge ], [ %tmp_max_rssi.1.1.i, %if.else45.2.i.for.inc.2.i_crit_edge ], [ %34, %if.else51.2.i.for.inc.2.i_crit_edge ], [ %tmp_min_rssi.1.1.i, %if.else98.2.i ], [ %tmp_min_rssi.1.1.i, %if.else61.2.i.for.inc.2.i_crit_edge ]
  %arrayidx.3.i = getelementptr i8, ptr %3, i32 32387
  %40 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.3.i, align 1
  store i8 %41, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 3, i32 3), align 1
  %arrayidx19.3.i = getelementptr i8, ptr %3, i32 34396
  %42 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx19.3.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool20.not.3.i = icmp eq i8 %43, 0
  br i1 %tobool20.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then21.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.then21.3.i:                                    ; preds = %for.inc.2.i
  %44 = zext i8 %rf_num.1.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %rf_num.1.2.i, label %if.else39.3.i [
    i8 0, label %if.then21.3.i.for.inc.3.i_crit_edge
    i8 1, label %if.then31.3.i
  ]

if.then21.3.i.for.inc.3.i_crit_edge:              ; preds = %if.then21.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.else39.3.i:                                    ; preds = %if.then21.3.i
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %tmp_max_rssi.1.2.i)
  %cmp42.3.i = icmp ugt i8 %41, %tmp_max_rssi.1.2.i
  br i1 %cmp42.3.i, label %if.else39.3.i.for.inc.3.i_crit_edge, label %if.else45.3.i

if.else39.3.i.for.inc.3.i_crit_edge:              ; preds = %if.else39.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.else45.3.i:                                    ; preds = %if.else39.3.i
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %tmp_max_rssi.1.2.i)
  %cmp48.3.i = icmp eq i8 %41, %tmp_max_rssi.1.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %tmp_sec_rssi.1.2.i)
  %cmp58.3.i = icmp ugt i8 %41, %tmp_sec_rssi.1.2.i
  %or.cond.i = select i1 %cmp48.3.i, i1 true, i1 %cmp58.3.i
  br i1 %or.cond.i, label %if.else45.3.i.for.inc.3.i_crit_edge, label %if.else61.3.i

if.else45.3.i.for.inc.3.i_crit_edge:              ; preds = %if.else45.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.else61.3.i:                                    ; preds = %if.else45.3.i
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %tmp_sec_rssi.1.2.i)
  %cmp64.3.i = icmp eq i8 %41, %tmp_sec_rssi.1.2.i
  br i1 %cmp64.3.i, label %if.then66.3.i, label %if.else74.3.i

if.else74.3.i:                                    ; preds = %if.else61.3.i
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %tmp_sec_rssi.1.2.i)
  %cmp77.3.i = icmp ult i8 %41, %tmp_sec_rssi.1.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %tmp_min_rssi.1.2.i)
  %cmp82.3.i = icmp ugt i8 %41, %tmp_min_rssi.1.2.i
  %or.cond417.3.i = select i1 %cmp77.3.i, i1 %cmp82.3.i, i1 false
  br i1 %or.cond417.3.i, label %if.else74.3.i.for.inc.3.i_crit_edge, label %if.else85.3.i

if.else74.3.i.for.inc.3.i_crit_edge:              ; preds = %if.else74.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.else85.3.i:                                    ; preds = %if.else74.3.i
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %tmp_min_rssi.1.2.i)
  %cmp88.3.i = icmp eq i8 %41, %tmp_min_rssi.1.2.i
  br i1 %cmp88.3.i, label %if.then90.3.i, label %if.else98.3.i

if.else98.3.i:                                    ; preds = %if.else85.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %tmp_min_rssi.1.2.i)
  %cmp101.3.i = icmp ult i8 %41, %tmp_min_rssi.1.2.i
  %spec.select420.3.i = select i1 %cmp101.3.i, i8 3, i8 %min_rssi_index.1.2.i
  %45 = call i8 @llvm.umin.i8(i8 %41, i8 %tmp_min_rssi.1.2.i) #6
  br label %for.inc.3.i

if.then90.3.i:                                    ; preds = %if.else85.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_sec_rssi.1.2.i, i8 %tmp_min_rssi.1.2.i)
  %cmp93.3.i = icmp eq i8 %tmp_sec_rssi.1.2.i, %tmp_min_rssi.1.2.i
  %spec.select418.3.i = select i1 %cmp93.3.i, i8 3, i8 %min_rssi_index.1.2.i
  br label %for.inc.3.i

if.then66.3.i:                                    ; preds = %if.else61.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_sec_rssi.1.2.i, i8 %tmp_min_rssi.1.2.i)
  %cmp69.3.i = icmp eq i8 %tmp_sec_rssi.1.2.i, %tmp_min_rssi.1.2.i
  %spec.select.3.i = select i1 %cmp69.3.i, i8 3, i8 %sec_rssi_index.1.2.i
  br label %for.inc.3.i

if.then31.3.i:                                    ; preds = %if.then21.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %tmp_max_rssi.1.2.i)
  %cmp34.not.3.i = icmp ult i8 %41, %tmp_max_rssi.1.2.i
  %max_rssi_index.0.i.0.3.i = select i1 %cmp34.not.3.i, i8 %max_rssi_index.1.2.i, i8 3
  %i.0.min_rssi_index.0.3.i = select i1 %cmp34.not.3.i, i8 3, i8 %min_rssi_index.1.2.i
  %i.0.sec_rssi_index.0.3.i = select i1 %cmp34.not.3.i, i8 3, i8 %sec_rssi_index.1.2.i
  %46 = call i8 @llvm.umax.i8(i8 %41, i8 %tmp_max_rssi.1.2.i) #6
  %.tmp_min_rssi.0.3.i = select i1 %cmp34.not.3.i, i8 %41, i8 %tmp_min_rssi.1.2.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then31.3.i, %if.then66.3.i, %if.then90.3.i, %if.else98.3.i, %if.else74.3.i.for.inc.3.i_crit_edge, %if.else45.3.i.for.inc.3.i_crit_edge, %if.else39.3.i.for.inc.3.i_crit_edge, %if.then21.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %max_rssi_index.1.3.i = phi i8 [ %max_rssi_index.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ 3, %if.then21.3.i.for.inc.3.i_crit_edge ], [ %max_rssi_index.0.i.0.3.i, %if.then31.3.i ], [ 3, %if.else39.3.i.for.inc.3.i_crit_edge ], [ %max_rssi_index.1.2.i, %if.else45.3.i.for.inc.3.i_crit_edge ], [ %max_rssi_index.1.2.i, %if.then66.3.i ], [ %max_rssi_index.1.2.i, %if.else74.3.i.for.inc.3.i_crit_edge ], [ %max_rssi_index.1.2.i, %if.then90.3.i ], [ %max_rssi_index.1.2.i, %if.else98.3.i ]
  %min_rssi_index.1.3.i = phi i8 [ %min_rssi_index.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ 3, %if.then21.3.i.for.inc.3.i_crit_edge ], [ %i.0.min_rssi_index.0.3.i, %if.then31.3.i ], [ %min_rssi_index.1.2.i, %if.else39.3.i.for.inc.3.i_crit_edge ], [ %min_rssi_index.1.2.i, %if.else45.3.i.for.inc.3.i_crit_edge ], [ %min_rssi_index.1.2.i, %if.then66.3.i ], [ %min_rssi_index.1.2.i, %if.else74.3.i.for.inc.3.i_crit_edge ], [ %spec.select418.3.i, %if.then90.3.i ], [ %spec.select420.3.i, %if.else98.3.i ]
  %sec_rssi_index.1.3.i = phi i8 [ %sec_rssi_index.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ 3, %if.then21.3.i.for.inc.3.i_crit_edge ], [ %i.0.sec_rssi_index.0.3.i, %if.then31.3.i ], [ %max_rssi_index.1.2.i, %if.else39.3.i.for.inc.3.i_crit_edge ], [ 3, %if.else45.3.i.for.inc.3.i_crit_edge ], [ %spec.select.3.i, %if.then66.3.i ], [ %sec_rssi_index.1.2.i, %if.else74.3.i.for.inc.3.i_crit_edge ], [ %sec_rssi_index.1.2.i, %if.then90.3.i ], [ %sec_rssi_index.1.2.i, %if.else98.3.i ]
  %tmp_max_rssi.1.3.i = phi i8 [ %tmp_max_rssi.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %41, %if.then21.3.i.for.inc.3.i_crit_edge ], [ %46, %if.then31.3.i ], [ %41, %if.else39.3.i.for.inc.3.i_crit_edge ], [ %tmp_max_rssi.1.2.i, %if.else45.3.i.for.inc.3.i_crit_edge ], [ %tmp_max_rssi.1.2.i, %if.then66.3.i ], [ %tmp_max_rssi.1.2.i, %if.else74.3.i.for.inc.3.i_crit_edge ], [ %tmp_max_rssi.1.2.i, %if.then90.3.i ], [ %tmp_max_rssi.1.2.i, %if.else98.3.i ]
  %tmp_min_rssi.1.3.i = phi i8 [ %tmp_min_rssi.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %41, %if.then21.3.i.for.inc.3.i_crit_edge ], [ %.tmp_min_rssi.0.3.i, %if.then31.3.i ], [ %tmp_min_rssi.1.2.i, %if.else39.3.i.for.inc.3.i_crit_edge ], [ %tmp_min_rssi.1.2.i, %if.else45.3.i.for.inc.3.i_crit_edge ], [ %tmp_min_rssi.1.2.i, %if.then66.3.i ], [ %tmp_min_rssi.1.2.i, %if.else74.3.i.for.inc.3.i_crit_edge ], [ %tmp_min_rssi.1.2.i, %if.then90.3.i ], [ %45, %if.else98.3.i ]
  %47 = load i32, ptr @DM_RxPathSelTable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp115.i = icmp eq i32 %47, 1
  br i1 %cmp115.i, label %for.body122.preheader.i, label %for.inc.3.i.if.end198.thread.i_crit_edge

for.inc.3.i.if.end198.thread.i_crit_edge:         ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198.thread.i

for.body122.preheader.i:                          ; preds = %for.inc.3.i
  %48 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx19.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool126.not.i = icmp eq i8 %49, 0
  br i1 %tobool126.not.i, label %for.inc195.i, label %for.inc195.thread.i

for.inc195.i:                                     ; preds = %for.body122.preheader.i
  %50 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx19.1.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool126.not.1.i = icmp eq i8 %51, 0
  br i1 %tobool126.not.1.i, label %for.inc195.1.thread.i, label %if.then127.1.i

for.inc195.thread.i:                              ; preds = %for.body122.preheader.i
  %52 = load i32, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 0), align 4
  %53 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx19.1.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool126.not.1466.i = icmp eq i8 %54, 0
  br i1 %tobool126.not.1466.i, label %for.inc195.thread.i.for.inc195.1.i_crit_edge, label %for.inc195.1.i.thread

for.inc195.thread.i.for.inc195.1.i_crit_edge:     ; preds = %for.inc195.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.1.i

if.then127.1.i:                                   ; preds = %for.inc195.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = load i32, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 1), align 4
  br label %for.inc195.1.i

for.inc195.1.i:                                   ; preds = %if.then127.1.i, %for.inc195.thread.i.for.inc195.1.i_crit_edge
  %tmp_cck_max_pwdb.1.1.i = phi i32 [ %55, %if.then127.1.i ], [ %52, %for.inc195.thread.i.for.inc195.1.i_crit_edge ]
  %cck_rx_ver2_max_index.1.1.i = phi i8 [ 1, %if.then127.1.i ], [ 0, %for.inc195.thread.i.for.inc195.1.i_crit_edge ]
  %56 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx19.2.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool126.not.2.i = icmp eq i8 %57, 0
  br i1 %tobool126.not.2.i, label %for.inc195.1.i.for.inc195.2.i_crit_edge, label %if.then139.2.i

for.inc195.1.i.for.inc195.2.i_crit_edge:          ; preds = %for.inc195.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.2.i

for.inc195.1.i.thread:                            ; preds = %for.inc195.thread.i
  %58 = load i32, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %52)
  %cmp140.not.1.i = icmp slt i32 %58, %52
  %59 = call i32 @llvm.smax.i32(i32 %58, i32 %52) #6
  %60 = call i32 @llvm.smin.i32(i32 %58, i32 %52) #6
  %not.cmp140.not.1.i = xor i1 %cmp140.not.1.i, true
  %cck_rx_ver2_max_index.0.i.1.1.i = zext i1 %not.cmp140.not.1.i to i8
  %i.1.cck_rx_ver2_sec_index.0.1.i = zext i1 %cmp140.not.1.i to i8
  %61 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx19.2.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool126.not.2.i25 = icmp eq i8 %62, 0
  br i1 %tobool126.not.2.i25, label %for.inc195.1.i.thread.for.inc195.2.i_crit_edge, label %if.else145.2.i

for.inc195.1.i.thread.for.inc195.2.i_crit_edge:   ; preds = %for.inc195.1.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.2.i

for.inc195.1.thread.i:                            ; preds = %for.inc195.i
  %63 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx19.2.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool126.not.2482.i = icmp eq i8 %64, 0
  br i1 %tobool126.not.2482.i, label %for.inc195.2.thread.i, label %if.then127.2.thread.i

if.then127.2.thread.i:                            ; preds = %for.inc195.1.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = load i32, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 2), align 4
  br label %for.inc195.2.i

if.else145.2.i:                                   ; preds = %for.inc195.1.i.thread
  %66 = load i32, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %59)
  %cmp146.2.i = icmp sgt i32 %66, %59
  br i1 %cmp146.2.i, label %if.else145.2.i.for.inc195.2.i_crit_edge, label %if.else149.2.i

if.else145.2.i.for.inc195.2.i_crit_edge:          ; preds = %if.else145.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.2.i

if.else149.2.i:                                   ; preds = %if.else145.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %59)
  %cmp150.2.i = icmp eq i32 %66, %59
  br i1 %cmp150.2.i, label %if.else149.2.i.for.inc195.2.i_crit_edge, label %if.else153.2.i

if.else149.2.i.for.inc195.2.i_crit_edge:          ; preds = %if.else149.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.2.i

if.else153.2.i:                                   ; preds = %if.else149.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %60)
  %cmp157.2.i = icmp sgt i32 %66, %60
  br i1 %cmp157.2.i, label %if.else153.2.i.for.inc195.2.i_crit_edge, label %if.else160.2.i

if.else153.2.i.for.inc195.2.i_crit_edge:          ; preds = %if.else153.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.2.i

if.else160.2.i:                                   ; preds = %if.else153.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %60)
  %cmp161.2.i = icmp eq i32 %66, %60
  %spec.select16 = select i1 %cmp161.2.i, i8 2, i8 %i.1.cck_rx_ver2_sec_index.0.1.i
  br label %for.inc195.2.i

if.then139.2.i:                                   ; preds = %for.inc195.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = load i32, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %tmp_cck_max_pwdb.1.1.i)
  %cmp140.not.2.i = icmp slt i32 %67, %tmp_cck_max_pwdb.1.1.i
  %68 = call i32 @llvm.smax.i32(i32 %67, i32 %tmp_cck_max_pwdb.1.1.i) #6
  %69 = call i32 @llvm.smin.i32(i32 %67, i32 %tmp_cck_max_pwdb.1.1.i)
  %cck_rx_ver2_max_index.0.i.1.2.i = select i1 %cmp140.not.2.i, i8 %cck_rx_ver2_max_index.1.1.i, i8 2
  %i.1.cck_rx_ver2_sec_index.0.2.i = select i1 %cmp140.not.2.i, i8 2, i8 %cck_rx_ver2_max_index.1.1.i
  br label %for.inc195.2.i

for.inc195.2.i:                                   ; preds = %if.then139.2.i, %if.else160.2.i, %if.else153.2.i.for.inc195.2.i_crit_edge, %if.else149.2.i.for.inc195.2.i_crit_edge, %if.else145.2.i.for.inc195.2.i_crit_edge, %if.then127.2.thread.i, %for.inc195.1.i.thread.for.inc195.2.i_crit_edge, %for.inc195.1.i.for.inc195.2.i_crit_edge
  %cond = phi i1 [ false, %for.inc195.1.i.thread.for.inc195.2.i_crit_edge ], [ false, %if.else160.2.i ], [ false, %if.then139.2.i ], [ false, %if.else153.2.i.for.inc195.2.i_crit_edge ], [ false, %if.else149.2.i.for.inc195.2.i_crit_edge ], [ false, %if.else145.2.i.for.inc195.2.i_crit_edge ], [ true, %if.then127.2.thread.i ], [ true, %for.inc195.1.i.for.inc195.2.i_crit_edge ]
  %tmp_cck_max_pwdb.1.2.i = phi i32 [ %59, %for.inc195.1.i.thread.for.inc195.2.i_crit_edge ], [ %59, %if.else160.2.i ], [ %68, %if.then139.2.i ], [ %59, %if.else153.2.i.for.inc195.2.i_crit_edge ], [ %59, %if.else149.2.i.for.inc195.2.i_crit_edge ], [ %66, %if.else145.2.i.for.inc195.2.i_crit_edge ], [ %65, %if.then127.2.thread.i ], [ %tmp_cck_max_pwdb.1.1.i, %for.inc195.1.i.for.inc195.2.i_crit_edge ]
  %tmp_cck_min_pwdb.1.2.i = phi i32 [ %60, %for.inc195.1.i.thread.for.inc195.2.i_crit_edge ], [ %66, %if.else160.2.i ], [ %69, %if.then139.2.i ], [ %60, %if.else153.2.i.for.inc195.2.i_crit_edge ], [ %60, %if.else149.2.i.for.inc195.2.i_crit_edge ], [ %60, %if.else145.2.i.for.inc195.2.i_crit_edge ], [ %65, %if.then127.2.thread.i ], [ %tmp_cck_max_pwdb.1.1.i, %for.inc195.1.i.for.inc195.2.i_crit_edge ]
  %tmp_cck_sec_pwdb.1.2.i = phi i32 [ %60, %for.inc195.1.i.thread.for.inc195.2.i_crit_edge ], [ %60, %if.else160.2.i ], [ %69, %if.then139.2.i ], [ %66, %if.else153.2.i.for.inc195.2.i_crit_edge ], [ %59, %if.else149.2.i.for.inc195.2.i_crit_edge ], [ %59, %if.else145.2.i.for.inc195.2.i_crit_edge ], [ %65, %if.then127.2.thread.i ], [ %tmp_cck_max_pwdb.1.1.i, %for.inc195.1.i.for.inc195.2.i_crit_edge ]
  %cck_rx_ver2_max_index.1.2.i = phi i8 [ %cck_rx_ver2_max_index.0.i.1.1.i, %for.inc195.1.i.thread.for.inc195.2.i_crit_edge ], [ %cck_rx_ver2_max_index.0.i.1.1.i, %if.else160.2.i ], [ %cck_rx_ver2_max_index.0.i.1.2.i, %if.then139.2.i ], [ %cck_rx_ver2_max_index.0.i.1.1.i, %if.else153.2.i.for.inc195.2.i_crit_edge ], [ %cck_rx_ver2_max_index.0.i.1.1.i, %if.else149.2.i.for.inc195.2.i_crit_edge ], [ 2, %if.else145.2.i.for.inc195.2.i_crit_edge ], [ 2, %if.then127.2.thread.i ], [ %cck_rx_ver2_max_index.1.1.i, %for.inc195.1.i.for.inc195.2.i_crit_edge ]
  %cck_rx_ver2_sec_index.1.2.i = phi i8 [ %i.1.cck_rx_ver2_sec_index.0.1.i, %for.inc195.1.i.thread.for.inc195.2.i_crit_edge ], [ %spec.select16, %if.else160.2.i ], [ %i.1.cck_rx_ver2_sec_index.0.2.i, %if.then139.2.i ], [ 2, %if.else153.2.i.for.inc195.2.i_crit_edge ], [ 2, %if.else149.2.i.for.inc195.2.i_crit_edge ], [ %cck_rx_ver2_max_index.0.i.1.1.i, %if.else145.2.i.for.inc195.2.i_crit_edge ], [ 2, %if.then127.2.thread.i ], [ %cck_rx_ver2_max_index.1.1.i, %for.inc195.1.i.for.inc195.2.i_crit_edge ]
  br i1 %tobool20.not.3.i, label %for.inc195.2.i.for.inc195.3.i_crit_edge, label %if.then127.3.i

for.inc195.2.i.for.inc195.3.i_crit_edge:          ; preds = %for.inc195.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.3.i

for.inc195.2.thread.i:                            ; preds = %for.inc195.1.thread.i
  br i1 %tobool20.not.3.i, label %for.inc195.2.thread.i.for.inc195.3.i_crit_edge, label %if.then127.3.thread.i

for.inc195.2.thread.i.for.inc195.3.i_crit_edge:   ; preds = %for.inc195.2.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.3.i

if.then127.3.thread.i:                            ; preds = %for.inc195.2.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = load i32, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 3), align 4
  br label %for.inc195.3.i

if.then127.3.i:                                   ; preds = %for.inc195.2.i
  %71 = load i32, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 5, i32 3), align 4
  br i1 %cond, label %if.then139.3.i, label %if.else145.3.i

if.else145.3.i:                                   ; preds = %if.then127.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %tmp_cck_max_pwdb.1.2.i)
  %cmp146.3.i = icmp sgt i32 %71, %tmp_cck_max_pwdb.1.2.i
  br i1 %cmp146.3.i, label %if.else145.3.i.for.inc195.3.i_crit_edge, label %if.else149.3.i

if.else145.3.i.for.inc195.3.i_crit_edge:          ; preds = %if.else145.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.3.i

if.else149.3.i:                                   ; preds = %if.else145.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %tmp_cck_max_pwdb.1.2.i)
  %cmp150.3.i = icmp eq i32 %71, %tmp_cck_max_pwdb.1.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %tmp_cck_sec_pwdb.1.2.i)
  %cmp157.3.i = icmp sgt i32 %71, %tmp_cck_sec_pwdb.1.2.i
  %or.cond517.i = select i1 %cmp150.3.i, i1 true, i1 %cmp157.3.i
  br i1 %or.cond517.i, label %if.else149.3.i.for.inc195.3.i_crit_edge, label %if.else160.3.i

if.else149.3.i.for.inc195.3.i_crit_edge:          ; preds = %if.else149.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.3.i

if.else160.3.i:                                   ; preds = %if.else149.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %tmp_cck_sec_pwdb.1.2.i)
  %cmp161.3.i = icmp eq i32 %71, %tmp_cck_sec_pwdb.1.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_cck_sec_pwdb.1.2.i, i32 %tmp_cck_min_pwdb.1.2.i)
  %cmp164.3.i = icmp eq i32 %tmp_cck_sec_pwdb.1.2.i, %tmp_cck_min_pwdb.1.2.i
  %or.cond423.3.i = select i1 %cmp161.3.i, i1 %cmp164.3.i, i1 false
  %spec.select.i = select i1 %or.cond423.3.i, i8 3, i8 %cck_rx_ver2_sec_index.1.2.i
  br label %for.inc195.3.i

if.then139.3.i:                                   ; preds = %if.then127.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %tmp_cck_max_pwdb.1.2.i)
  %cmp140.not.3.i = icmp slt i32 %71, %tmp_cck_max_pwdb.1.2.i
  %72 = call i32 @llvm.smax.i32(i32 %71, i32 %tmp_cck_max_pwdb.1.2.i) #6
  %cck_rx_ver2_max_index.0.i.1.3.i = select i1 %cmp140.not.3.i, i8 %cck_rx_ver2_max_index.1.2.i, i8 3
  %i.1.cck_rx_ver2_sec_index.0.3.i = select i1 %cmp140.not.3.i, i8 3, i8 %cck_rx_ver2_sec_index.1.2.i
  br label %for.inc195.3.i

for.inc195.3.i:                                   ; preds = %if.then139.3.i, %if.else160.3.i, %if.else149.3.i.for.inc195.3.i_crit_edge, %if.else145.3.i.for.inc195.3.i_crit_edge, %if.then127.3.thread.i, %for.inc195.2.thread.i.for.inc195.3.i_crit_edge, %for.inc195.2.i.for.inc195.3.i_crit_edge
  %tmp_cck_max_pwdb.1.3.i = phi i32 [ %tmp_cck_max_pwdb.1.2.i, %for.inc195.2.i.for.inc195.3.i_crit_edge ], [ %72, %if.then139.3.i ], [ %71, %if.else145.3.i.for.inc195.3.i_crit_edge ], [ %tmp_cck_max_pwdb.1.2.i, %if.else149.3.i.for.inc195.3.i_crit_edge ], [ 0, %for.inc195.2.thread.i.for.inc195.3.i_crit_edge ], [ %70, %if.then127.3.thread.i ], [ %tmp_cck_max_pwdb.1.2.i, %if.else160.3.i ]
  %cck_rx_ver2_max_index.1.3.i = phi i8 [ %cck_rx_ver2_max_index.1.2.i, %for.inc195.2.i.for.inc195.3.i_crit_edge ], [ %cck_rx_ver2_max_index.0.i.1.3.i, %if.then139.3.i ], [ 3, %if.else145.3.i.for.inc195.3.i_crit_edge ], [ %cck_rx_ver2_max_index.1.2.i, %if.else149.3.i.for.inc195.3.i_crit_edge ], [ 0, %for.inc195.2.thread.i.for.inc195.3.i_crit_edge ], [ 3, %if.then127.3.thread.i ], [ %cck_rx_ver2_max_index.1.2.i, %if.else160.3.i ]
  %cck_rx_ver2_sec_index.1.3.i = phi i8 [ %cck_rx_ver2_sec_index.1.2.i, %for.inc195.2.i.for.inc195.3.i_crit_edge ], [ %i.1.cck_rx_ver2_sec_index.0.3.i, %if.then139.3.i ], [ %cck_rx_ver2_max_index.1.2.i, %if.else145.3.i.for.inc195.3.i_crit_edge ], [ 3, %if.else149.3.i.for.inc195.3.i_crit_edge ], [ 0, %for.inc195.2.thread.i.for.inc195.3.i_crit_edge ], [ 3, %if.then127.3.thread.i ], [ %spec.select.i, %if.else160.3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %tmp_cck_max_pwdb.1.3.i)
  %cmp202.not.i = icmp ne i32 %tmp_cck_max_pwdb.1.3.i, -64
  %spec.select441.i = zext i1 %cmp202.not.i to i8
  br label %if.end198.thread.i

if.end198.thread.i:                               ; preds = %for.inc195.3.i, %for.inc.3.i.if.end198.thread.i_crit_edge
  %update_cck_rx_path.0.i = phi i8 [ %spec.select441.i, %for.inc195.3.i ], [ 0, %for.inc.3.i.if.end198.thread.i_crit_edge ]
  %cck_optional_Rx.0.i = phi i8 [ %cck_rx_ver2_sec_index.1.3.i, %for.inc195.3.i ], [ 3, %for.inc.3.i.if.end198.thread.i_crit_edge ]
  %cck_default_Rx.0.i = phi i8 [ %cck_rx_ver2_max_index.1.3.i, %for.inc195.3.i ], [ 2, %for.inc.3.i.if.end198.thread.i_crit_edge ]
  %conv207.i = zext i8 %tmp_min_rssi.1.3.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %tmp_min_rssi.1.3.i)
  %cmp208.i = icmp ult i8 %tmp_min_rssi.1.3.i, 30
  br i1 %cmp208.i, label %land.lhs.true210.i, label %if.end198.thread.i.if.end236.i_crit_edge

if.end198.thread.i.if.end236.i_crit_edge:         ; preds = %if.end198.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end236.i

land.lhs.true210.i:                               ; preds = %if.end198.thread.i
  %73 = load i8, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %cmp212.i = icmp ult i8 %73, 2
  br i1 %cmp212.i, label %if.then214.i, label %land.lhs.true210.i.if.end236.i_crit_edge

land.lhs.true210.i.if.end236.i_crit_edge:         ; preds = %land.lhs.true210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end236.i

if.then214.i:                                     ; preds = %land.lhs.true210.i
  %conv215.i = zext i8 %tmp_max_rssi.1.3.i to i32
  %sub.i = sub nsw i32 %conv215.i, %conv207.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i)
  %cmp217.i = icmp sgt i32 %sub.i, 17
  br i1 %cmp217.i, label %if.then219.i, label %if.then214.i.if.end228.i_crit_edge

if.then214.i.if.end228.i_crit_edge:               ; preds = %if.then214.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end228.i

if.then219.i:                                     ; preds = %if.then214.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i8 %tmp_max_rssi.1.3.i, 5
  %idxprom222.i = zext i8 %min_rssi_index.1.3.i to i32
  %arrayidx223.i = getelementptr %struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4, i32 %idxprom222.i
  %74 = ptrtoint ptr %arrayidx223.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %add.i, ptr %arrayidx223.i, align 1
  %shl.i = shl nuw nsw i32 1, %idxprom222.i
  call void @rtl8192_setBBreg(ptr noundef %3, i32 noundef 3076, i32 noundef %shl.i, i32 noundef 0) #6
  call void @rtl8192_setBBreg(ptr noundef %3, i32 noundef 3332, i32 noundef %shl.i, i32 noundef 0) #6
  %75 = load i8, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 1
  %inc227.i = add i8 %75, 1
  store i8 %inc227.i, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 1
  br label %if.end228.i

if.end228.i:                                      ; preds = %if.then219.i, %if.then214.i.if.end228.i_crit_edge
  %76 = load i32, ptr @DM_RxPathSelTable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp229.i = icmp eq i32 %76, 0
  br i1 %cmp229.i, label %if.then231.i, label %if.end228.i.if.end236.i_crit_edge

if.end228.i.if.end236.i_crit_edge:                ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end236.i

if.then231.i:                                     ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp_max_rssi.1.3.i)
  %tobool232.not.i = icmp eq i8 %tmp_max_rssi.1.3.i, 0
  br i1 %tobool232.not.i, label %if.then231.i.if.end236.i_crit_edge, label %if.then231.i.if.then238.i_crit_edge

if.then231.i.if.then238.i_crit_edge:              ; preds = %if.then231.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then238.i

if.then231.i.if.end236.i_crit_edge:               ; preds = %if.then231.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end236.i

if.end236.i:                                      ; preds = %if.then231.i.if.end236.i_crit_edge, %if.end228.i.if.end236.i_crit_edge, %land.lhs.true210.i.if.end236.i_crit_edge, %if.end198.thread.i.if.end236.i_crit_edge
  %cck_default_Rx.1.i = phi i8 [ %cck_default_Rx.0.i, %if.end228.i.if.end236.i_crit_edge ], [ %cck_default_Rx.0.i, %land.lhs.true210.i.if.end236.i_crit_edge ], [ %cck_default_Rx.0.i, %if.end198.thread.i.if.end236.i_crit_edge ], [ %max_rssi_index.1.3.i, %if.then231.i.if.end236.i_crit_edge ]
  %cck_optional_Rx.1.i = phi i8 [ %cck_optional_Rx.0.i, %if.end228.i.if.end236.i_crit_edge ], [ %cck_optional_Rx.0.i, %land.lhs.true210.i.if.end236.i_crit_edge ], [ %cck_optional_Rx.0.i, %if.end198.thread.i.if.end236.i_crit_edge ], [ %sec_rssi_index.1.3.i, %if.then231.i.if.end236.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %update_cck_rx_path.0.i)
  %tobool237.not.i = icmp eq i8 %update_cck_rx_path.0.i, 0
  br i1 %tobool237.not.i, label %if.end236.i.if.end244.i_crit_edge, label %if.end236.i.if.then238.i_crit_edge

if.end236.i.if.then238.i_crit_edge:               ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then238.i

if.end236.i.if.end244.i_crit_edge:                ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244.i

if.then238.i:                                     ; preds = %if.end236.i.if.then238.i_crit_edge, %if.then231.i.if.then238.i_crit_edge
  %cck_optional_Rx.1440.i = phi i8 [ %cck_optional_Rx.1.i, %if.end236.i.if.then238.i_crit_edge ], [ %sec_rssi_index.1.3.i, %if.then231.i.if.then238.i_crit_edge ]
  %cck_default_Rx.1439.i = phi i8 [ %cck_default_Rx.1.i, %if.end236.i.if.then238.i_crit_edge ], [ %max_rssi_index.1.3.i, %if.then231.i.if.then238.i_crit_edge ]
  %shl240.i = shl nuw nsw i8 %cck_default_Rx.1439.i, 2
  %or.i = or i8 %shl240.i, %cck_optional_Rx.1440.i
  store i8 %or.i, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 1), align 4
  %conv243.i = zext i8 %or.i to i32
  call void @rtl8192_setBBreg(ptr noundef %3, i32 noundef 2564, i32 noundef 251658240, i32 noundef %conv243.i) #6
  br label %if.end244.i

if.end244.i:                                      ; preds = %if.then238.i, %if.end236.i.if.end244.i_crit_edge
  %77 = load i8, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool245.not.i = icmp eq i8 %77, 0
  br i1 %tobool245.not.i, label %if.end244.i.dm_rxpath_sel_byrssi.exit_crit_edge, label %for.body251.preheader.i

if.end244.i.dm_rxpath_sel_byrssi.exit_crit_edge:  ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_rxpath_sel_byrssi.exit

for.body251.preheader.i:                          ; preds = %if.end244.i
  %78 = and i8 %77, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool255.not.i = icmp eq i8 %78, 0
  br i1 %tobool255.not.i, label %for.body251.preheader.i.for.inc272.i_crit_edge, label %if.then256.i

for.body251.preheader.i.for.inc272.i_crit_edge:   ; preds = %for.body251.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc272.i

if.then256.i:                                     ; preds = %for.body251.preheader.i
  %79 = load i8, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4, i32 0), align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_max_rssi.1.3.i, i8 %79)
  %cmp261.not.i = icmp ult i8 %tmp_max_rssi.1.3.i, %79
  br i1 %cmp261.not.i, label %if.then256.i.for.inc272.i_crit_edge, label %if.then263.i

if.then256.i.for.inc272.i_crit_edge:              ; preds = %if.then256.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc272.i

if.then263.i:                                     ; preds = %if.then256.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl8192_setBBreg(ptr noundef %3, i32 noundef 3076, i32 noundef 1, i32 noundef 1) #6
  call void @rtl8192_setBBreg(ptr noundef %3, i32 noundef 3332, i32 noundef 1, i32 noundef 1) #6
  store i8 100, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4, i32 0), align 2
  %80 = load i8, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 1
  %dec.i = add i8 %80, -1
  store i8 %dec.i, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 1
  br label %for.inc272.i

for.inc272.i:                                     ; preds = %if.then263.i, %if.then256.i.for.inc272.i_crit_edge, %for.body251.preheader.i.for.inc272.i_crit_edge
  %81 = load i8, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 2), align 1
  %82 = and i8 %81, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool255.not.1.i = icmp eq i8 %82, 0
  br i1 %tobool255.not.1.i, label %for.inc272.i.for.inc272.1.i_crit_edge, label %if.then256.1.i

for.inc272.i.for.inc272.1.i_crit_edge:            ; preds = %for.inc272.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc272.1.i

if.then256.1.i:                                   ; preds = %for.inc272.i
  %83 = load i8, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4, i32 1), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_max_rssi.1.3.i, i8 %83)
  %cmp261.not.1.i = icmp ult i8 %tmp_max_rssi.1.3.i, %83
  br i1 %cmp261.not.1.i, label %if.then256.1.i.for.inc272.1.i_crit_edge, label %if.then263.1.i

if.then256.1.i.for.inc272.1.i_crit_edge:          ; preds = %if.then256.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc272.1.i

if.then263.1.i:                                   ; preds = %if.then256.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl8192_setBBreg(ptr noundef %3, i32 noundef 3076, i32 noundef 2, i32 noundef 1) #6
  call void @rtl8192_setBBreg(ptr noundef %3, i32 noundef 3332, i32 noundef 2, i32 noundef 1) #6
  store i8 100, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4, i32 1), align 1
  %84 = load i8, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 1
  %dec.1.i = add i8 %84, -1
  store i8 %dec.1.i, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 1
  br label %for.inc272.1.i

for.inc272.1.i:                                   ; preds = %if.then263.1.i, %if.then256.1.i.for.inc272.1.i_crit_edge, %for.inc272.i.for.inc272.1.i_crit_edge
  %85 = load i8, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 2), align 1
  %86 = and i8 %85, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool255.not.2.i = icmp eq i8 %86, 0
  br i1 %tobool255.not.2.i, label %for.inc272.1.i.for.inc272.2.i_crit_edge, label %if.then256.2.i

for.inc272.1.i.for.inc272.2.i_crit_edge:          ; preds = %for.inc272.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc272.2.i

if.then256.2.i:                                   ; preds = %for.inc272.1.i
  %87 = load i8, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_max_rssi.1.3.i, i8 %87)
  %cmp261.not.2.i = icmp ult i8 %tmp_max_rssi.1.3.i, %87
  br i1 %cmp261.not.2.i, label %if.then256.2.i.for.inc272.2.i_crit_edge, label %if.then263.2.i

if.then256.2.i.for.inc272.2.i_crit_edge:          ; preds = %if.then256.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc272.2.i

if.then263.2.i:                                   ; preds = %if.then256.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl8192_setBBreg(ptr noundef %3, i32 noundef 3076, i32 noundef 4, i32 noundef 1) #6
  call void @rtl8192_setBBreg(ptr noundef %3, i32 noundef 3332, i32 noundef 4, i32 noundef 1) #6
  store i8 100, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4, i32 2), align 4
  %88 = load i8, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 1
  %dec.2.i = add i8 %88, -1
  store i8 %dec.2.i, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 1
  br label %for.inc272.2.i

for.inc272.2.i:                                   ; preds = %if.then263.2.i, %if.then256.2.i.for.inc272.2.i_crit_edge, %for.inc272.1.i.for.inc272.2.i_crit_edge
  %89 = load i8, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 2), align 1
  %90 = and i8 %89, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool255.not.3.i = icmp eq i8 %90, 0
  br i1 %tobool255.not.3.i, label %for.inc272.2.i.dm_rxpath_sel_byrssi.exit_crit_edge, label %if.then256.3.i

for.inc272.2.i.dm_rxpath_sel_byrssi.exit_crit_edge: ; preds = %for.inc272.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_rxpath_sel_byrssi.exit

if.then256.3.i:                                   ; preds = %for.inc272.2.i
  %91 = load i8, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp_max_rssi.1.3.i, i8 %91)
  %cmp261.not.3.i = icmp ult i8 %tmp_max_rssi.1.3.i, %91
  br i1 %cmp261.not.3.i, label %if.then256.3.i.dm_rxpath_sel_byrssi.exit_crit_edge, label %if.then263.3.i

if.then256.3.i.dm_rxpath_sel_byrssi.exit_crit_edge: ; preds = %if.then256.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_rxpath_sel_byrssi.exit

if.then263.3.i:                                   ; preds = %if.then256.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl8192_setBBreg(ptr noundef %3, i32 noundef 3076, i32 noundef 8, i32 noundef 1) #6
  call void @rtl8192_setBBreg(ptr noundef %3, i32 noundef 3332, i32 noundef 8, i32 noundef 1) #6
  store i8 100, ptr getelementptr inbounds (%struct.dynamic_rx_path_sel, ptr @DM_RxPathSelTable, i32 0, i32 4, i32 3), align 1
  %92 = load i8, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 1
  %dec.3.i = add i8 %92, -1
  store i8 %dec.3.i, ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 1
  br label %dm_rxpath_sel_byrssi.exit

dm_rxpath_sel_byrssi.exit:                        ; preds = %if.then263.3.i, %if.then256.3.i.dm_rxpath_sel_byrssi.exit_crit_edge, %for.inc272.2.i.dm_rxpath_sel_byrssi.exit_crit_edge, %if.end244.i.dm_rxpath_sel_byrssi.exit_crit_edge, %entry.dm_rxpath_sel_byrssi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rfpath) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_nic_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_fsync_timer_callback(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %t, i32 -5068
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.else132_crit_edge

entry.if.else132_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else132

land.lhs.true:                                    ; preds = %entry
  %bfsync_enable = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 148
  %6 = ptrtoint ptr %bfsync_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bfsync_enable, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.else132_crit_edge, label %land.lhs.true4

land.lhs.true.if.else132_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else132

land.lhs.true4:                                   ; preds = %land.lhs.true
  %pHTInfo = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pHTInfo, align 8
  %IOTAction = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %9, i32 0, i32 50
  %10 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %IOTAction, align 1
  %and = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true4.if.else132_crit_edge, label %for.cond.preheader

land.lhs.true4.if.else132_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else132

for.cond.preheader:                               ; preds = %land.lhs.true4
  %fsync_rate_bitmap = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 146
  %12 = ptrtoint ptr %fsync_rate_bitmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fsync_rate_bitmap, align 8
  %arrayidx = getelementptr i8, ptr %t, i32 -4584
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %rate_index.0290 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %rate_count.0289 = phi i32 [ 0, %for.cond.preheader ], [ %rate_count.1, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %rate_index.0290
  %and9 = and i32 %13, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx12 = getelementptr [32 x i32], ptr %arrayidx, i32 0, i32 %rate_index.0290
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %15, %rate_count.0289
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %rate_count.1 = phi i32 [ %add, %if.then11 ], [ %rate_count.0289, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %rate_index.0290, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %rate_record = getelementptr i8, ptr %t, i32 52
  %16 = ptrtoint ptr %rate_record to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate_record, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rate_count.1, i32 %17)
  %cmp13 = icmp ult i32 %rate_count.1, %17
  %sub = xor i32 %rate_count.1, -1
  %add16 = add i32 %17, %sub
  %sub18 = sub i32 %rate_count.1, %17
  %rate_count_diff.0 = select i1 %cmp13, i32 %add16, i32 %sub18
  %rateCountDiffRecord = getelementptr i8, ptr %t, i32 56
  %18 = ptrtoint ptr %rateCountDiffRecord to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rateCountDiffRecord, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %rate_count_diff.0)
  %cmp20 = icmp ugt i32 %19, %rate_count_diff.0
  br i1 %cmp20, label %if.then21, label %for.end.if.end38.sink.split_crit_edge

for.end.if.end38.sink.split_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.sink.split

if.then21:                                        ; preds = %for.end
  %sub23 = sub i32 %19, %rate_count_diff.0
  %fsync_seconddiff_ratethreshold = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 151
  %20 = ptrtoint ptr %fsync_seconddiff_ratethreshold to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fsync_seconddiff_ratethreshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %21)
  %cmp25.not = icmp ult i32 %sub23, %21
  %ContinueDiffCount29 = getelementptr i8, ptr %t, i32 60
  br i1 %cmp25.not, label %if.then21.if.end30_crit_edge, label %if.then26

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ContinueDiffCount29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ContinueDiffCount29, align 4
  %inc27 = add i32 %23, 1
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then21.if.end30_crit_edge
  %.sink = phi i32 [ %inc27, %if.then26 ], [ 0, %if.then21.if.end30_crit_edge ]
  %24 = ptrtoint ptr %ContinueDiffCount29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %ContinueDiffCount29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.sink)
  %cmp32 = icmp ugt i32 %.sink, 1
  br i1 %cmp32, label %if.end30.if.end38.sink.split_crit_edge, label %if.end30.if.end38_crit_edge

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end30.if.end38.sink.split_crit_edge:           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.end30.if.end38.sink.split_crit_edge, %for.end.if.end38.sink.split_crit_edge
  %ContinueDiffCount31.sink = getelementptr i8, ptr %t, i32 60
  %25 = ptrtoint ptr %ContinueDiffCount31.sink to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ContinueDiffCount31.sink, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.end30.if.end38_crit_edge
  %bSwitchFromCountDiff.1.off0 = phi i1 [ false, %if.end30.if.end38_crit_edge ], [ %cmp20, %if.end38.sink.split ]
  %fsync_firstdiff_ratethreshold = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 150
  %26 = ptrtoint ptr %fsync_firstdiff_ratethreshold to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fsync_firstdiff_ratethreshold, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rate_count_diff.0, i32 %27)
  %cmp40.not = icmp ugt i32 %rate_count_diff.0, %27
  br i1 %cmp40.not, label %if.end38.if.end43_crit_edge, label %if.then41

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %ContinueDiffCount42 = getelementptr i8, ptr %t, i32 60
  %28 = ptrtoint ptr %ContinueDiffCount42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ContinueDiffCount42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38.if.end43_crit_edge
  %bSwitchFromCountDiff.2.off0 = phi i1 [ true, %if.then41 ], [ %bSwitchFromCountDiff.1.off0, %if.end38.if.end43_crit_edge ]
  %29 = ptrtoint ptr %rate_record to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rate_count.1, ptr %rate_record, align 4
  %30 = ptrtoint ptr %rateCountDiffRecord to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %rate_count_diff.0, ptr %rateCountDiffRecord, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %31 = load i32, ptr @rt_global_debug_component, align 4
  %and46 = and i32 %31, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end43.do.end60_crit_edge, label %do.body49

if.end43.do.end60_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

do.body49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_fsync_timer_callback.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_fsync_timer_callback, %if.then54)) #6
          to label %do.end60 [label %if.then54], !srcloc !205

if.then54:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %rate_record to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate_record, align 4
  %bswitch_fsync = getelementptr i8, ptr %t, i32 64
  %34 = ptrtoint ptr %bswitch_fsync to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bswitch_fsync, align 4, !range !203
  %36 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_fsync_timer_callback.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.3, i32 noundef %33, i32 noundef %rate_count.1, i32 noundef %rate_count_diff.0, i32 noundef %36) #6
  br label %do.end60

do.end60:                                         ; preds = %if.then54, %do.body49, %if.end43.do.end60_crit_edge
  %undecorated_smoothed_pwdb = getelementptr i8, ptr %t, i32 -864
  %37 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %undecorated_smoothed_pwdb, align 4
  %39 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ieee80211, align 4
  %fsync_rssi_threshold = getelementptr inbounds %struct.ieee80211_device, ptr %40, i32 0, i32 147
  %41 = ptrtoint ptr %fsync_rssi_threshold to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fsync_rssi_threshold, align 4
  %conv62 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv62)
  %cmp63 = icmp sgt i32 %38, %conv62
  %brmerge.demorgan = and i1 %bSwitchFromCountDiff.2.off0, %cmp63
  br i1 %brmerge.demorgan, label %if.then68, label %if.else84

if.then68:                                        ; preds = %do.end60
  %bswitch_fsync69 = getelementptr i8, ptr %t, i32 64
  %43 = ptrtoint ptr %bswitch_fsync69 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bswitch_fsync69, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool70.not = icmp eq i8 %44, 0
  %45 = xor i8 %44, 1
  %46 = ptrtoint ptr %bswitch_fsync69 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %bswitch_fsync69, align 4
  %. = select i1 %tobool70.not, i8 28, i8 92
  %.294 = select i1 %tobool70.not, i8 -112, i8 -106
  %call81 = tail call i32 @write_nic_byte(ptr noundef %3, i32 noundef 3126, i8 noundef zeroext %.) #6
  %call82 = tail call i32 @write_nic_byte(ptr noundef %3, i32 noundef 3134, i8 noundef zeroext %.294) #6
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  %47 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.not, label %if.then68.if.end108_crit_edge, label %if.then105

if.then68.if.end108_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.else84:                                        ; preds = %do.end60
  br i1 %cmp63, label %if.else84.if.else116_crit_edge, label %if.then91

if.else84.if.else116_crit_edge:                   ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else116

if.then91:                                        ; preds = %if.else84
  %bswitch_fsync92 = getelementptr i8, ptr %t, i32 64
  %49 = ptrtoint ptr %bswitch_fsync92 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bswitch_fsync92, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool93.not = icmp eq i8 %50, 0
  br i1 %tobool93.not, label %if.then91.if.else116_crit_edge, label %if.then94

if.then91.if.else116_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else116

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %bswitch_fsync92 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %bswitch_fsync92, align 4
  %call96 = tail call i32 @write_nic_byte(ptr noundef %3, i32 noundef 3126, i8 noundef zeroext 92) #6
  %call97 = tail call i32 @write_nic_byte(ptr noundef %3, i32 noundef 3134, i8 noundef zeroext -106) #6
  br label %if.else116

if.then105:                                       ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  %call107 = tail call i32 @del_timer_sync(ptr noundef %t) #6
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %if.then68.if.end108_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %53 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ieee80211, align 4
  %fsync_time_interval = getelementptr inbounds %struct.ieee80211_device, ptr %54, i32 0, i32 145
  %55 = ptrtoint ptr %fsync_time_interval to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fsync_time_interval, align 4
  %fsync_multiple_timeinterval = getelementptr inbounds %struct.ieee80211_device, ptr %54, i32 0, i32 149
  %57 = ptrtoint ptr %fsync_multiple_timeinterval to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %fsync_multiple_timeinterval, align 2
  %conv111 = zext i8 %58 to i32
  %mul = mul i32 %56, %conv111
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #6
  %add113 = add i32 %call2.i, %52
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %59 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add113, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #6
  br label %do.body143

if.else116:                                       ; preds = %if.then94, %if.then91.if.else116_crit_edge, %if.else84.if.else116_crit_edge
  %pprev.i.i283 = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  %60 = ptrtoint ptr %pprev.i.i283 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %pprev.i.i283, align 4
  %tobool.not.i.i284.not = icmp eq ptr %61, null
  br i1 %tobool.not.i.i284.not, label %if.else116.if.end123_crit_edge, label %if.then120

if.else116.if.end123_crit_edge:                   ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then120:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #8
  %call122 = tail call i32 @del_timer_sync(ptr noundef %t) #6
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %if.else116.if.end123_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %63 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ieee80211, align 4
  %fsync_time_interval125 = getelementptr inbounds %struct.ieee80211_device, ptr %64, i32 0, i32 145
  %65 = ptrtoint ptr %fsync_time_interval125 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fsync_time_interval125, align 4
  %call2.i273 = tail call i32 @__msecs_to_jiffies(i32 noundef %66) #6
  %add127 = add i32 %call2.i273, %62
  %expires129 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %67 = ptrtoint ptr %expires129 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add127, ptr %expires129, align 4
  tail call void @add_timer(ptr noundef %t) #6
  br label %do.body143

if.else132:                                       ; preds = %land.lhs.true4.if.else132_crit_edge, %land.lhs.true.if.else132_crit_edge, %entry.if.else132_crit_edge
  %bswitch_fsync133 = getelementptr i8, ptr %t, i32 64
  %68 = ptrtoint ptr %bswitch_fsync133 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bswitch_fsync133, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool134.not = icmp eq i8 %69, 0
  br i1 %tobool134.not, label %if.else132.if.end139_crit_edge, label %if.then135

if.else132.if.end139_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then135:                                       ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %bswitch_fsync133 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %bswitch_fsync133, align 4
  %call137 = tail call i32 @write_nic_byte(ptr noundef %3, i32 noundef 3126, i8 noundef zeroext 92) #6
  %call138 = tail call i32 @write_nic_byte(ptr noundef %3, i32 noundef 3134, i8 noundef zeroext -106) #6
  br label %if.end139

if.end139:                                        ; preds = %if.then135, %if.else132.if.end139_crit_edge
  %ContinueDiffCount140 = getelementptr i8, ptr %t, i32 60
  %71 = ptrtoint ptr %ContinueDiffCount140 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %ContinueDiffCount140, align 4
  %call141 = tail call i32 @write_nic_dword(ptr noundef %3, i32 noundef 3124, i32 noundef 1180455629) #6
  br label %do.body143

do.body143:                                       ; preds = %if.end139, %if.end123, %if.end108
  %rate_count_diff.1 = phi i32 [ 0, %if.end139 ], [ %rate_count_diff.0, %if.end123 ], [ %rate_count_diff.0, %if.end108 ]
  %rate_count.2 = phi i32 [ 0, %if.end139 ], [ %rate_count.1, %if.end123 ], [ %rate_count.1, %if.end108 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %72 = load i32, ptr @rt_global_debug_component, align 4
  %and144 = and i32 %72, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body143.do.body167_crit_edge, label %do.body147

do.body143.do.body167_crit_edge:                  ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

do.body147:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_fsync_timer_callback.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_fsync_timer_callback, %if.then159)) #6
          to label %do.body167 [label %if.then159], !srcloc !205

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #8
  %ContinueDiffCount160 = getelementptr i8, ptr %t, i32 60
  %73 = ptrtoint ptr %ContinueDiffCount160 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ContinueDiffCount160, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_fsync_timer_callback.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.4, i32 noundef %74) #6
  br label %do.body167

do.body167:                                       ; preds = %if.then159, %do.body147, %do.body143.do.body167_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %75 = load i32, ptr @rt_global_debug_component, align 4
  %and168 = and i32 %75, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %do.body167.do.end193_crit_edge, label %do.body171

do.body167.do.end193_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end193

do.body171:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_fsync_timer_callback.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_fsync_timer_callback, %if.then183)) #6
          to label %do.end193 [label %if.then183], !srcloc !205

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #8
  %rate_record184 = getelementptr i8, ptr %t, i32 52
  %76 = ptrtoint ptr %rate_record184 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rate_record184, align 4
  %bswitch_fsync185 = getelementptr i8, ptr %t, i32 64
  %78 = ptrtoint ptr %bswitch_fsync185 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bswitch_fsync185, align 4, !range !203
  %80 = zext i8 %79 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_fsync_timer_callback.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.3, i32 noundef %77, i32 noundef %rate_count.2, i32 noundef %rate_count_diff.1, i32 noundef %80) #6
  br label %do.end193

do.end193:                                        ; preds = %if.then183, %do.body171, %do.body167.do.end193_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_nic_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_nic_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_EndSWFsync(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_EndSWFsync.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_EndSWFsync, %if.then6)) #6
          to label %do.end9 [label %if.then6], !srcloc !205

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_EndSWFsync.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %fsync_timer = getelementptr i8, ptr %dev, i32 35224
  %call10 = tail call i32 @del_timer_sync(ptr noundef %fsync_timer) #6
  %bswitch_fsync = getelementptr i8, ptr %dev, i32 35288
  %1 = ptrtoint ptr %bswitch_fsync to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bswitch_fsync, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool11.not = icmp eq i8 %2, 0
  br i1 %tobool11.not, label %do.end9.if.end16_crit_edge, label %if.then12

do.end9.if.end16_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %bswitch_fsync to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bswitch_fsync, align 4
  %call14 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3126, i8 noundef zeroext 92) #6
  %call15 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3134, i8 noundef zeroext -106) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %do.end9.if.end16_crit_edge
  %ContinueDiffCount = getelementptr i8, ptr %dev, i32 35284
  %4 = ptrtoint ptr %ContinueDiffCount to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ContinueDiffCount, align 4
  %call17 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180455629) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_StartSWFsync(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_StartSWFsync.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_StartSWFsync, %if.then6)) #6
          to label %do.end9 [label %if.then6], !srcloc !205

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_StartSWFsync.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.41) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %rate_record = getelementptr i8, ptr %dev, i32 35276
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %1 = call ptr @memset(ptr %rate_record, i32 0, i32 13)
  %2 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211, align 4
  %mode = getelementptr inbounds %struct.ieee80211_device, ptr %3, i32 0, i32 86
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp eq i32 %5, 16
  %fsync_firstdiff_ratethreshold = getelementptr inbounds %struct.ieee80211_device, ptr %3, i32 0, i32 150
  %. = select i1 %cmp, i32 600, i32 200
  %.64 = select i1 %cmp, i32 65535, i32 200
  %6 = ptrtoint ptr %fsync_firstdiff_ratethreshold to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %fsync_firstdiff_ratethreshold, align 8
  %7 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ieee80211, align 4
  %fsync_seconddiff_ratethreshold16 = getelementptr inbounds %struct.ieee80211_device, ptr %8, i32 0, i32 151
  %9 = ptrtoint ptr %fsync_seconddiff_ratethreshold16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.64, ptr %fsync_seconddiff_ratethreshold16, align 4
  %10 = load ptr, ptr %ieee80211, align 4
  %fsync_rate_bitmap = getelementptr inbounds %struct.ieee80211_device, ptr %10, i32 0, i32 146
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end9
  %rateIndex.060 = phi i32 [ 0, %do.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %rateIndex.060
  %11 = ptrtoint ptr %fsync_rate_bitmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fsync_rate_bitmap, align 8
  %and20 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %if.then22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx23 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 34, i32 5, i32 1, i32 %rateIndex.060
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx23, align 4
  %15 = ptrtoint ptr %rate_record to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate_record, align 4
  %add = add i32 %16, %14
  store i32 %add, ptr %rate_record, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %rateIndex.060, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %fsync_timer = getelementptr i8, ptr %dev, i32 35224
  %pprev.i.i = getelementptr i8, ptr %dev, i32 35228
  %17 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.not, label %for.end.if.end31_crit_edge, label %if.then28

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 @del_timer_sync(ptr noundef %fsync_timer) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %for.end.if.end31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %20 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ieee80211, align 4
  %fsync_time_interval = getelementptr inbounds %struct.ieee80211_device, ptr %21, i32 0, i32 145
  %22 = ptrtoint ptr %fsync_time_interval to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fsync_time_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %23) #6
  %add34 = add i32 %call2.i, %19
  %expires = getelementptr i8, ptr %dev, i32 35232
  %24 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add34, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %fsync_timer) #6
  %call37 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 3124, i32 noundef 1180439245) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_shadow_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body6.for.body6_crit_edge ]
  %arrayidx10 = getelementptr [16 x [256 x i8]], ptr @dm_shadow, i32 0, i32 0, i32 %indvars.iv
  %call = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %indvars.iv, ptr noundef %arrayidx10) #6
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 256
  br i1 %exitcond.not, label %for.body6.for.body6.1_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.body6.for.body6.1_crit_edge:                  ; preds = %for.body6
  br label %for.body6.1

for.body6.1:                                      ; preds = %for.body6.1.for.body6.1_crit_edge, %for.body6.for.body6.1_crit_edge
  %indvars.iv.1 = phi i32 [ %indvars.iv.next.1, %for.body6.1.for.body6.1_crit_edge ], [ 0, %for.body6.for.body6.1_crit_edge ]
  %add.1 = add nuw nsw i32 %indvars.iv.1, 256
  %arrayidx10.1 = getelementptr [16 x [256 x i8]], ptr @dm_shadow, i32 0, i32 1, i32 %indvars.iv.1
  %call.1 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %add.1, ptr noundef %arrayidx10.1) #6
  %indvars.iv.next.1 = add nuw nsw i32 %indvars.iv.1, 1
  %exitcond.1.not = icmp eq i32 %indvars.iv.next.1, 256
  br i1 %exitcond.1.not, label %for.body6.1.for.body6.2_crit_edge, label %for.body6.1.for.body6.1_crit_edge

for.body6.1.for.body6.1_crit_edge:                ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.1

for.body6.1.for.body6.2_crit_edge:                ; preds = %for.body6.1
  br label %for.body6.2

for.body6.2:                                      ; preds = %for.body6.2.for.body6.2_crit_edge, %for.body6.1.for.body6.2_crit_edge
  %indvars.iv.2 = phi i32 [ %indvars.iv.next.2, %for.body6.2.for.body6.2_crit_edge ], [ 0, %for.body6.1.for.body6.2_crit_edge ]
  %add.2 = add nuw nsw i32 %indvars.iv.2, 512
  %arrayidx10.2 = getelementptr [16 x [256 x i8]], ptr @dm_shadow, i32 0, i32 2, i32 %indvars.iv.2
  %call.2 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %add.2, ptr noundef %arrayidx10.2) #6
  %indvars.iv.next.2 = add nuw nsw i32 %indvars.iv.2, 1
  %exitcond.2.not = icmp eq i32 %indvars.iv.next.2, 256
  br i1 %exitcond.2.not, label %for.body6.2.for.body6.3_crit_edge, label %for.body6.2.for.body6.2_crit_edge

for.body6.2.for.body6.2_crit_edge:                ; preds = %for.body6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.2

for.body6.2.for.body6.3_crit_edge:                ; preds = %for.body6.2
  br label %for.body6.3

for.body6.3:                                      ; preds = %for.body6.3.for.body6.3_crit_edge, %for.body6.2.for.body6.3_crit_edge
  %indvars.iv.3 = phi i32 [ %indvars.iv.next.3, %for.body6.3.for.body6.3_crit_edge ], [ 0, %for.body6.2.for.body6.3_crit_edge ]
  %add.3 = add nuw nsw i32 %indvars.iv.3, 768
  %arrayidx10.3 = getelementptr [16 x [256 x i8]], ptr @dm_shadow, i32 0, i32 3, i32 %indvars.iv.3
  %call.3 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %add.3, ptr noundef %arrayidx10.3) #6
  %indvars.iv.next.3 = add nuw nsw i32 %indvars.iv.3, 1
  %exitcond.3.not = icmp eq i32 %indvars.iv.next.3, 256
  br i1 %exitcond.3.not, label %for.body6.3.for.body6.4_crit_edge, label %for.body6.3.for.body6.3_crit_edge

for.body6.3.for.body6.3_crit_edge:                ; preds = %for.body6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.3

for.body6.3.for.body6.4_crit_edge:                ; preds = %for.body6.3
  br label %for.body6.4

for.body6.4:                                      ; preds = %for.body6.4.for.body6.4_crit_edge, %for.body6.3.for.body6.4_crit_edge
  %indvars.iv.4 = phi i32 [ %indvars.iv.next.4, %for.body6.4.for.body6.4_crit_edge ], [ 0, %for.body6.3.for.body6.4_crit_edge ]
  %add.4 = add nuw nsw i32 %indvars.iv.4, 1024
  %arrayidx10.4 = getelementptr [16 x [256 x i8]], ptr @dm_shadow, i32 0, i32 4, i32 %indvars.iv.4
  %call.4 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %add.4, ptr noundef %arrayidx10.4) #6
  %indvars.iv.next.4 = add nuw nsw i32 %indvars.iv.4, 1
  %exitcond.4.not = icmp eq i32 %indvars.iv.next.4, 256
  br i1 %exitcond.4.not, label %for.body6.4.for.body23_crit_edge, label %for.body6.4.for.body6.4_crit_edge

for.body6.4.for.body6.4_crit_edge:                ; preds = %for.body6.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.4

for.body6.4.for.body23_crit_edge:                 ; preds = %for.body6.4
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body6.4.for.body23_crit_edge
  %indvars.iv100 = phi i32 [ %indvars.iv.next101, %for.body23.for.body23_crit_edge ], [ 0, %for.body6.4.for.body23_crit_edge ]
  %add27 = add nuw nsw i32 %indvars.iv100, 2048
  %arrayidx31 = getelementptr [16 x [256 x i8]], ptr @dm_shadow, i32 0, i32 8, i32 %indvars.iv100
  %call32 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %add27, ptr noundef %arrayidx31) #6
  %indvars.iv.next101 = add nuw nsw i32 %indvars.iv100, 1
  %exitcond102.not = icmp eq i32 %indvars.iv.next101, 256
  br i1 %exitcond102.not, label %for.body23.for.body23.1_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23

for.body23.for.body23.1_crit_edge:                ; preds = %for.body23
  br label %for.body23.1

for.body23.1:                                     ; preds = %for.body23.1.for.body23.1_crit_edge, %for.body23.for.body23.1_crit_edge
  %indvars.iv100.1 = phi i32 [ %indvars.iv.next101.1, %for.body23.1.for.body23.1_crit_edge ], [ 0, %for.body23.for.body23.1_crit_edge ]
  %add27.1 = add nuw nsw i32 %indvars.iv100.1, 2304
  %arrayidx31.1 = getelementptr [16 x [256 x i8]], ptr @dm_shadow, i32 0, i32 9, i32 %indvars.iv100.1
  %call32.1 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %add27.1, ptr noundef %arrayidx31.1) #6
  %indvars.iv.next101.1 = add nuw nsw i32 %indvars.iv100.1, 1
  %exitcond102.1.not = icmp eq i32 %indvars.iv.next101.1, 256
  br i1 %exitcond102.1.not, label %for.body23.1.for.body23.2_crit_edge, label %for.body23.1.for.body23.1_crit_edge

for.body23.1.for.body23.1_crit_edge:              ; preds = %for.body23.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23.1

for.body23.1.for.body23.2_crit_edge:              ; preds = %for.body23.1
  br label %for.body23.2

for.body23.2:                                     ; preds = %for.body23.2.for.body23.2_crit_edge, %for.body23.1.for.body23.2_crit_edge
  %indvars.iv100.2 = phi i32 [ %indvars.iv.next101.2, %for.body23.2.for.body23.2_crit_edge ], [ 0, %for.body23.1.for.body23.2_crit_edge ]
  %add27.2 = add nuw nsw i32 %indvars.iv100.2, 2560
  %arrayidx31.2 = getelementptr [16 x [256 x i8]], ptr @dm_shadow, i32 0, i32 10, i32 %indvars.iv100.2
  %call32.2 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %add27.2, ptr noundef %arrayidx31.2) #6
  %indvars.iv.next101.2 = add nuw nsw i32 %indvars.iv100.2, 1
  %exitcond102.2.not = icmp eq i32 %indvars.iv.next101.2, 256
  br i1 %exitcond102.2.not, label %for.body23.2.for.body48_crit_edge, label %for.body23.2.for.body23.2_crit_edge

for.body23.2.for.body23.2_crit_edge:              ; preds = %for.body23.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23.2

for.body23.2.for.body48_crit_edge:                ; preds = %for.body23.2
  br label %for.body48

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.body23.2.for.body48_crit_edge
  %indvars.iv106 = phi i32 [ %indvars.iv.next107, %for.body48.for.body48_crit_edge ], [ 0, %for.body23.2.for.body48_crit_edge ]
  %add52 = add nuw nsw i32 %indvars.iv106, 3072
  %arrayidx56 = getelementptr [16 x [256 x i8]], ptr @dm_shadow, i32 0, i32 12, i32 %indvars.iv106
  %call57 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %add52, ptr noundef %arrayidx56) #6
  %indvars.iv.next107 = add nuw nsw i32 %indvars.iv106, 1
  %exitcond108.not = icmp eq i32 %indvars.iv.next107, 256
  br i1 %exitcond108.not, label %for.body48.for.body48.1_crit_edge, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body48

for.body48.for.body48.1_crit_edge:                ; preds = %for.body48
  br label %for.body48.1

for.body48.1:                                     ; preds = %for.body48.1.for.body48.1_crit_edge, %for.body48.for.body48.1_crit_edge
  %indvars.iv106.1 = phi i32 [ %indvars.iv.next107.1, %for.body48.1.for.body48.1_crit_edge ], [ 0, %for.body48.for.body48.1_crit_edge ]
  %add52.1 = add nuw nsw i32 %indvars.iv106.1, 3328
  %arrayidx56.1 = getelementptr [16 x [256 x i8]], ptr @dm_shadow, i32 0, i32 13, i32 %indvars.iv106.1
  %call57.1 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %add52.1, ptr noundef %arrayidx56.1) #6
  %indvars.iv.next107.1 = add nuw nsw i32 %indvars.iv106.1, 1
  %exitcond108.1.not = icmp eq i32 %indvars.iv.next107.1, 256
  br i1 %exitcond108.1.not, label %for.body48.1.for.body48.2_crit_edge, label %for.body48.1.for.body48.1_crit_edge

for.body48.1.for.body48.1_crit_edge:              ; preds = %for.body48.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body48.1

for.body48.1.for.body48.2_crit_edge:              ; preds = %for.body48.1
  br label %for.body48.2

for.body48.2:                                     ; preds = %for.body48.2.for.body48.2_crit_edge, %for.body48.1.for.body48.2_crit_edge
  %indvars.iv106.2 = phi i32 [ %indvars.iv.next107.2, %for.body48.2.for.body48.2_crit_edge ], [ 0, %for.body48.1.for.body48.2_crit_edge ]
  %add52.2 = add nuw nsw i32 %indvars.iv106.2, 3584
  %arrayidx56.2 = getelementptr [16 x [256 x i8]], ptr @dm_shadow, i32 0, i32 14, i32 %indvars.iv106.2
  %call57.2 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef %add52.2, ptr noundef %arrayidx56.2) #6
  %indvars.iv.next107.2 = add nuw nsw i32 %indvars.iv106.2, 1
  %exitcond108.2.not = icmp eq i32 %indvars.iv.next107.2, 256
  br i1 %exitcond108.2.not, label %for.inc61.2, label %for.body48.2.for.body48.2_crit_edge

for.body48.2.for.body48.2_crit_edge:              ; preds = %for.body48.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body48.2

for.inc61.2:                                      ; preds = %for.body48.2
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_nic_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SendTxCommandPacket(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_nic_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8192_setBBreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8192_QueryBBReg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8192_phy_QueryRFReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8192_phy_SetRFReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_ctrl_initgain_byrssi_highpwr(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %undecorated_smoothed_pwdb = getelementptr i8, ptr %dev, i32 34360
  %0 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %undecorated_smoothed_pwdb, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp slt i32 %1, %3
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp4.not = icmp slt i32 %1, %4
  %5 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 8), align 4
  br i1 %cmp4.not, label %if.else16, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %land.lhs.true7, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true7:                                   ; preds = %if.then5
  %reset_count = getelementptr i8, ptr %dev, i32 35304
  %6 = ptrtoint ptr %reset_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_count, align 4
  %8 = load i32, ptr @dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp8 = icmp eq i32 %7, %8
  br i1 %cmp8, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end10_crit_edge

land.lhs.true7.if.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true7.if.end10_crit_edge, %if.then5.if.end10_crit_edge
  store i32 1, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 8), align 4
  %CurrentChannelBW = getelementptr i8, ptr %dev, i32 34368
  %9 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11.not = icmp eq i32 %10, 0
  br i1 %cmp11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 16) #6
  br label %if.end37

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 67) #6
  br label %if.end37

if.else16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp17 = icmp eq i32 %5, 0
  br i1 %cmp17, label %land.lhs.true18, label %if.else16.if.end22_crit_edge

if.else16.if.end22_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true18:                                  ; preds = %if.else16
  %reset_count19 = getelementptr i8, ptr %dev, i32 35304
  %11 = ptrtoint ptr %reset_count19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reset_count19, align 4
  %13 = load i32, ptr @dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp20 = icmp eq i32 %12, %13
  br i1 %cmp20, label %land.lhs.true18.cleanup_crit_edge, label %land.lhs.true18.if.end22_crit_edge

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true18.if.end22_crit_edge, %if.else16.if.end22_crit_edge
  store i32 0, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 8), align 4
  %14 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %undecorated_smoothed_pwdb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %2)
  %cmp24 = icmp slt i32 %15, %2
  br i1 %cmp24, label %land.lhs.true25, label %if.end22.if.end37_crit_edge

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true25:                                  ; preds = %if.end22
  %16 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp27.not = icmp slt i32 %15, %16
  br i1 %cmp27.not, label %land.lhs.true25.if.end37_crit_edge, label %if.then28

land.lhs.true25.if.end37_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then28:                                        ; preds = %land.lhs.true25
  %CurrentChannelBW29 = getelementptr i8, ptr %dev, i32 34368
  %17 = ptrtoint ptr %CurrentChannelBW29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %CurrentChannelBW29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp30.not = icmp eq i32 %18, 0
  br i1 %cmp30.not, label %if.else33, label %if.then31

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3207, i8 noundef zeroext 32) #6
  br label %if.end37

if.else33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 3120, i8 noundef zeroext 68) #6
  br label %if.end37

if.end37:                                         ; preds = %if.else33, %if.then31, %land.lhs.true25.if.end37_crit_edge, %if.end22.if.end37_crit_edge, %if.else, %if.then12
  %reset_count38 = getelementptr i8, ptr %dev, i32 35304
  %19 = ptrtoint ptr %reset_count38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reset_count38, align 4
  store i32 %20, ptr @dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %land.lhs.true18.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8192_phy_setTxPower(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !20, !21, !23, !24, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !75, !77, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !100, !102, !104, !106, !107, !108, !110, !112, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !155, !157, !159, !161, !163, !164, !165, !167, !169, !171, !173, !174, !176, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !191, !193}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @dm_shadow, !1, !"dm_shadow", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 43, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2640, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @dm_fsync_timer_callback.__UNIQUE_ID_ddebug377, !3, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2682, i32 2}
!10 = !{ptr @dm_fsync_timer_callback.__UNIQUE_ID_ddebug378, !9, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!11 = !{ptr @dm_fsync_timer_callback.__UNIQUE_ID_ddebug379, !12, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!12 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2683, i32 2}
!13 = !{ptr @dm_check_fsync.reg_c38_State, !14, !"reg_c38_State", i1 false, i1 false}
!14 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2762, i32 13}
!15 = !{ptr @dm_check_fsync.reset_cnt, !16, !"reset_cnt", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2763, i32 13}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2765, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dm_check_fsync.__UNIQUE_ID_ddebug384, !18, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2766, i32 2}
!23 = !{ptr @dm_check_fsync.__UNIQUE_ID_ddebug385, !22, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!24 = !{ptr @dm_digtable, !25, !"dm_digtable", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 41, i32 12}
!26 = distinct !{null, !27, !"ping_rssi_state", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 291, i32 16}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 294, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dm_check_rate_adaptive.__UNIQUE_ID_ddebug346, !29, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 400, i32 4}
!34 = !{ptr @dm_check_rate_adaptive.__UNIQUE_ID_ddebug347, !33, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 517, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug348, !36, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 525, i32 4}
!41 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug349, !40, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 546, i32 5}
!44 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug350, !43, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 559, i32 5}
!47 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug351, !46, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 569, i32 4}
!50 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug352, !49, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 571, i32 4}
!53 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug353, !52, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 583, i32 5}
!56 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug354, !55, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 584, i32 5}
!59 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug355, !58, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 585, i32 5}
!62 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug356, !61, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 586, i32 5}
!65 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug357, !64, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 587, i32 5}
!68 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug358, !67, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!69 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug359, !70, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!70 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 625, i32 4}
!71 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug360, !72, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!72 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 626, i32 4}
!73 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug361, !74, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!74 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 627, i32 4}
!75 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug362, !76, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!76 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 628, i32 4}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 633, i32 5}
!79 = !{ptr @dm_TXPowerTrackingCallback_TSSI.__UNIQUE_ID_ddebug363, !78, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 662, i32 5}
!82 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug364, !81, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 672, i32 5}
!86 = !{ptr @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug365, !85, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 689, i32 2}
!89 = !{ptr @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug366, !88, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 694, i32 2}
!92 = !{ptr @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug367, !91, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 750, i32 3}
!95 = !{ptr @dm_TXPowerTrackingCallback_ThermalMeter.__UNIQUE_ID_ddebug368, !94, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!96 = !{ptr @OFDMSwingTable, !97, !"OFDMSwingTable", i1 false, i1 false}
!97 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 442, i32 12}
!98 = !{ptr @CCKSwingTable_Ch1_Ch13, !99, !"CCKSwingTable_Ch1_Ch13", i1 false, i1 false}
!99 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 464, i32 11}
!100 = !{ptr @dm_CheckTXPowerTracking_TSSI.tx_power_track_counter, !101, !"tx_power_track_counter", i1 false, i1 false}
!101 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1302, i32 13}
!102 = distinct !{null, !103, !"TM_Trigger", i1 false, i1 false}
!103 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1314, i32 12}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1410, i32 3}
!106 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug369, !105, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!108 = !{ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug370, !109, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!109 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1418, i32 3}
!110 = !{ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug371, !111, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!111 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1425, i32 3}
!112 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1434, i32 3}
!114 = !{ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug372, !113, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!115 = !{ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug373, !116, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!116 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1442, i32 3}
!117 = !{ptr @dm_CCKTxPowerAdjust_ThermalMeter.__UNIQUE_ID_ddebug374, !118, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!118 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1449, i32 3}
!119 = !{ptr @CCKSwingTable_Ch14, !120, !"CCKSwingTable_Ch14", i1 false, i1 false}
!120 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 479, i32 11}
!121 = !{ptr @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, !122, !"reset_cnt", i1 false, i1 false}
!122 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1701, i32 13}
!123 = !{ptr @dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, !124, !"reset_cnt_highpwr", i1 false, i1 false}
!124 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1863, i32 13}
!125 = !{ptr @dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig, !126, !"fw_dig", i1 false, i1 false}
!126 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1661, i32 12}
!127 = distinct !{null, !128, !"initialized", i1 false, i1 false}
!128 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1920, i32 15}
!129 = distinct !{null, !130, !"force_write", i1 false, i1 false}
!130 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1920, i32 28}
!131 = !{ptr @dm_initial_gain.reset_cnt, !132, !"reset_cnt", i1 false, i1 false}
!132 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1921, i32 15}
!133 = !{ptr @dm_pd_th.initialized, !134, !"initialized", i1 false, i1 false}
!134 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1980, i32 15}
!135 = distinct !{null, !136, !"force_write", i1 false, i1 false}
!136 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1980, i32 28}
!137 = !{ptr @dm_pd_th.reset_cnt, !138, !"reset_cnt", i1 false, i1 false}
!138 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 1981, i32 15}
!139 = distinct !{null, !140, !"initialized", i1 false, i1 false}
!140 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2062, i32 15}
!141 = distinct !{null, !142, !"force_write", i1 false, i1 false}
!142 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2062, i32 28}
!143 = !{ptr @dm_cs_ratio.reset_cnt, !144, !"reset_cnt", i1 false, i1 false}
!144 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2063, i32 15}
!145 = !{ptr @dm_check_edca_turbo.lastTxOkCnt, !146, !"lastTxOkCnt", i1 false, i1 false}
!146 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2125, i32 25}
!147 = !{ptr @dm_check_edca_turbo.lastRxOkCnt, !148, !"lastRxOkCnt", i1 false, i1 false}
!148 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2126, i32 25}
!149 = !{ptr @.str.33, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2207, i32 5}
!151 = !{ptr @.str.34, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @dm_check_edca_turbo.__UNIQUE_ID_ddebug375, !150, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!153 = !{ptr @edca_setting_DL, !154, !"edca_setting_DL", i1 false, i1 false}
!154 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 26, i32 12}
!155 = !{ptr @edca_setting_UL, !156, !"edca_setting_UL", i1 false, i1 false}
!156 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 30, i32 12}
!157 = !{ptr @dm_ctstoself.lastTxOkCnt, !158, !"lastTxOkCnt", i1 false, i1 false}
!158 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2233, i32 26}
!159 = !{ptr @dm_ctstoself.lastRxOkCnt, !160, !"lastRxOkCnt", i1 false, i1 false}
!160 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2234, i32 26}
!161 = !{ptr @.str.35, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2291, i32 3}
!163 = !{ptr @.str.36, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @dm_check_pbc_gpio.__UNIQUE_ID_ddebug376, !162, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!165 = !{ptr @DM_RxPathSelTable, !166, !"DM_RxPathSelTable", i1 false, i1 false}
!166 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 45, i32 35}
!167 = !{ptr @dm_rxpath_sel_byrssi.disabled_rf_cnt, !168, !"disabled_rf_cnt", i1 false, i1 false}
!168 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2364, i32 14}
!169 = distinct !{null, !170, !"cck_Rx_Path_initialized", i1 false, i1 false}
!170 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2364, i32 31}
!171 = !{ptr @dm_init_fsync.__key, !172, !"__key", i1 false, i1 false}
!172 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2581, i32 2}
!173 = !{ptr @.str.37, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.38, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2688, i32 2}
!176 = !{ptr @.str.39, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @dm_StartHWFsync.__UNIQUE_ID_ddebug380, !175, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!178 = !{ptr @.str.40, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2697, i32 2}
!180 = !{ptr @dm_EndSWFsync.__UNIQUE_ID_ddebug381, !179, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!181 = !{ptr @.str.41, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2719, i32 2}
!183 = !{ptr @dm_StartSWFsync.__UNIQUE_ID_ddebug382, !182, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!184 = !{ptr @.str.42, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2750, i32 2}
!186 = !{ptr @dm_EndHWFsync.__UNIQUE_ID_ddebug383, !185, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!187 = !{ptr @.str.43, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2954, i32 2}
!189 = !{ptr @.str.44, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @dm_dynamic_txpower.__UNIQUE_ID_ddebug386, !188, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!191 = !{ptr @.str.45, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/staging/rtl8192u/r8192U_dm.c", i32 2979, i32 3}
!193 = !{ptr @dm_dynamic_txpower.__UNIQUE_ID_ddebug387, !192, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{i8 0, i8 2}
!204 = !{!"auto-init"}
!205 = !{i64 2149100091, i64 2149100096, i64 2149100109, i64 2149100153, i64 2149100187, i64 2149100208}
