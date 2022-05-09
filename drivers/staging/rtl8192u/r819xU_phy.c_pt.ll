; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/r819xU_phy.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/r819xU_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.dig = type { i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.r8192_priv = type { ptr, i16, i16, i16, i8, i8, i32, i32, [9 x i8], i32, ptr, i16, i32, i16, i32, i16, i16, %struct.spinlock, %struct.spinlock, %struct.mutex, i16, i16, i16, i16, i16, i16, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, i16, %struct.Stats, %struct.iw_statistics, ptr, ptr, ptr, %struct.atomic_t, ptr, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, i16, [16 x %struct.atomic_t], %struct.tasklet_struct, ptr, i16, i16, i32, i8, i32, i32, i16, i32, i8, i8, i8, i8, i16, %struct.ChnlAccessSetting, %struct.work_struct, i16, i8, i8, i8, i8, i32, ptr, i32, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], [24 x i8], [4 x %struct._BB_REGISTER_DEFINITION], [6 x i32], i32, [14 x i8], [14 x i8], [14 x i8], i32, i8, [2 x i8], i8, [2 x i8], i8, i8, i32, i8, i8, i8, i8, i32, i8, i8, [4 x i32], i8, [4 x i8], i8, %struct.timer_list, i8, i8, i8, i8, i8, i8, i8, %struct._rate_adaptive, [37 x %struct._txbbgain_struct], i8, i8, i8, i8, [23 x %struct._ccktxbbgain_struct], [23 x %struct._ccktxbbgain_struct], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct._init_gain, [4 x i8], i8, i8, i8, %struct.timer_list, i8, i32, i32, i32, i8, i8, i32, i8, i16, i8, i8, i32, i8, i32, i32, [40 x i8], i8, i32, i32, i8, i8, i32, i8, i8, i16, i16, i32, i8, i8, i8, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.Stats = type { i32, i32, i32, i32, i32, [4 x [32 x i32]], [2 x [32 x i32]], [5 x i32], [5 x i32], i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [100 x i32], [100 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [2 x i8], [4 x i32], %struct._rt_9x_tx_rate_history, [100 x i32], i32, %struct._RT_SMOOTH_DATA_4RF, i32 }
%struct._rt_9x_tx_rate_history = type { [4 x i32], [8 x i32], [4 x [16 x i32]] }
%struct._RT_SMOOTH_DATA_4RF = type { [4 x [100 x i8]], i32, i32, [4 x i32] }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.ChnlAccessSetting = type { i16, i16, i16, i16, i16, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct._BB_REGISTER_DEFINITION = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._rate_adaptive = type { i8, i32, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct._txbbgain_struct = type { i32, i32 }
%struct._ccktxbbgain_struct = type { [8 x i8] }
%struct._init_gain = type { i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.ieee80211_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.ieee80211_network = type <{ [6 x i8], i8, i8, [6 x i8], i8, [33 x i8], i8, [3 x i8], %struct.ieee80211_qos_data, i8, i8, i8, i8, [2 x i16], i8, i8, [6 x i8], %struct.ieee80211_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, [3 x i8], i32, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i8, i32, [64 x i8], i32, %struct.ieee80211_tim_parameters, i8, i8, [2 x i32], i8, [4 x %struct.ieee80211_wmm_ac_param], i8, i8, i8, i16, [255 x i8], %struct._BSS_HT, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head, [4 x i8] }>
%struct.ieee80211_qos_data = type { %struct.ieee80211_qos_parameters, i32, i32, i8, i8 }
%struct.ieee80211_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.ieee80211_rx_stats = type { [2 x i32], i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, ptr, i16, i16, i16, i16, i8, i8, i8, [4 x i8], i16 }
%struct.ieee80211_tim_parameters = type { i8, i8 }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }
%struct._BSS_HT = type <{ i8, [32 x i8], i16, [32 x i8], i16, i32, i8, i8 }>
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i8 }
%struct.rt_power_save_control = type { i8, i8, i8, i32, %struct.work_struct, %struct.timer_list, i32, i8, i32, %struct.ieee80211_network, i8, i8, i8, i8, [33 x i8], %struct.octet_string, i8, i8, i8, i16, i8, i16, %struct.octet_string, [264 x i8], i8, %struct.ibss_parms, i8, i8, [6 x i8] }
%struct.octet_string = type { ptr, i16 }
%struct.ibss_parms = type { i16 }
%struct.tx_pending = type { i32, ptr }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@rtl8192_phy_configmac.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192u_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8192_phy_configmac\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/rtl8192u/r819xU_phy.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTL8192U: Rtl819XMACPHY_Array_PG\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@Rtl8192UsbMACPHY_Array_PG = external dso_local local_unnamed_addr global [0 x i32], align 4
@rtl8192_phy_configmac.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RTL8192U: Rtl819XMACPHY_Array\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@Rtl8192UsbMACPHY_Array = external dso_local local_unnamed_addr global [0 x i32], align 4
@rtl8192_phy_configmac.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"RTL8192U: Rtl8190MACPHY_Array[0]=%x Rtl8190MACPHY_Array[1]=%x Rtl8190MACPHY_Array[2]=%x\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@__const.rtl8192_phy_checkBBAndRF.WriteData = private unnamed_addr constant [4 x i32] [i32 -4057, i32 -1437229009, i32 39, i32 1437225007], align 4
@rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl8192_phy_checkBBAndRF\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RTL8192U: %s(), CheckBlock: %d\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RTL8192U: PHY_CheckBBRFOK(): Never Write 0x100 here!\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RTL8192U: error reg: %x, WriteData: %x\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl8192_phy_getTxPower.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtl8192_phy_getTxPower\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"RTL8192U: Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x)\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@rtl8192_phy_getTxPower.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RTL8192U: Default framesync (0x%x) = 0x%x\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl8192_phy_setTxPower.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtl8192_phy_setTxPower\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"RTL8192U: error RF chipID(8225 or 8258) in function %s()\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8192_phy_RFConfig.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl8192_phy_RFConfig\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RTL8192U: error chip id\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@Rtl8192UsbRadioA_Array = external dso_local local_unnamed_addr global [0 x i32], align 4
@Rtl8192UsbRadioB_Array = external dso_local local_unnamed_addr global [0 x i32], align 4
@Rtl8192UsbRadioC_Array = external dso_local local_unnamed_addr global [0 x i32], align 4
@Rtl8192UsbRadioD_Array = external dso_local local_unnamed_addr global [0 x i32], align 4
@rtl8192_SetRFPowerState.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8192_SetRFPowerState\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RTL8192U: %s(): unknown state to set: 0x%X\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@rtl8192_SetRFPowerState.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 1, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RTL8192U: Not support rf_chip(%x)\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8192_SwChnl_WorkItem\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"RTL8192U: ==> SwChnlCallback819xUsbWorkItem(), chan:%d\0A\0A\00", [39 x i8] zeroinitializer }, align 32
@rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 1, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RTL8192U: <== SwChnlCallback819xUsbWorkItem()\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8192_phy_SwChnl\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RTL8192U: %s(), SwChnlInProgress: %d\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 1, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RTL8192U: WIRELESS_MODE_A but channel<=14\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 1, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RTL8192U: WIRELESS_MODE_B but channel>14\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.27, i8 1, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RTL8192U: WIRELESS_MODE_G but channel>14\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl8192_SetBWModeWorkItem\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RTL8192U: %s()  Switch to %s bandwidth\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.32, i8 1, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"RTL8192U: SetChannelBandwidth819xUsb(): unknown Bandwidth: %#X\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.33, i8 1, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RTL8192U: 20M, pHalData->CCKPresentAttentuation = %d\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.34, i8 1, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RTL8192U: 40M, pHalData->CCKPresentAttentuation = %d\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.32, i8 1, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.35, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RTL8192U: Unknown RFChipID: %d\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.36, i8 1, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RTL8192U: <==SetBWMode819xUsb(), %d\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 1, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"InitialGainOperateWorkItemCallBack\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RTL8192U: IG_Backup, backup the initial gain.\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@dm_digtable = external dso_local local_unnamed_addr global %struct.dig, align 4
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 1, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RTL8192U: Scan InitialGainBackup 0xc50 is %x\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.40, i8 1, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RTL8192U: Scan InitialGainBackup 0xc58 is %x\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.41, i8 1, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RTL8192U: Scan InitialGainBackup 0xc60 is %x\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.42, i8 1, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RTL8192U: Scan InitialGainBackup 0xc68 is %x\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.43, i8 1, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RTL8192U: Scan InitialGainBackup 0xa0a is %x\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.44, i8 1, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RTL8192U: Write scan initial gain = 0x%x\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.45, i8 1, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RTL8192U: Write scan 0xa0a = 0x%x\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.46, i8 1, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RTL8192U: IG_Restore, restore the initial gain.\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.47, i8 1, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RTL8192U: Scan BBInitialGainRestore 0xc50 is %x\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.48, i8 1, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RTL8192U: Scan BBInitialGainRestore 0xc58 is %x\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.49, i8 1, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RTL8192U: Scan BBInitialGainRestore 0xc60 is %x\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.50, i8 1, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RTL8192U: Scan BBInitialGainRestore 0xc68 is %x\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.51, i8 1, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RTL8192U: Scan BBInitialGainRestore 0xa0a is %x\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.52, i8 1, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RTL8192U: Unknown IG Operation.\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@rtl8192_phy_RFSerialRead.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl8192_phy_RFSerialRead\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RTL8192U: check RF type here, need to be 8256\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl8192_phy_RFSerialWrite.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.54, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl8192_phy_RFSerialWrite\00", [38 x i8] zeroinitializer }, align 32
@rtl8192_BB_Config_ParaFile.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl8192_BB_Config_ParaFile\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RTL8192U: phy_rf8256_config(): Check PHY%d Fail!!\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@Rtl8192UsbPHY_REG_1T2RArray = external dso_local local_unnamed_addr global [0 x i32], align 4
@rtl8192_phyConfigBB.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl8192_phyConfigBB\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"RTL8192U: i: %x, Rtl819xUsbPHY_REGArray[0]=%x Rtl819xUsbPHY_REGArray[1]=%x\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@Rtl8192UsbAGCTAB_Array = external dso_local local_unnamed_addr global [0 x i32], align 4
@rtl8192_phyConfigBB.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"RTL8192U: i: %x, Rtl8192UsbAGCTAB_Array[0]=%x Rtl8192UsbAGCTAB_Array[1]=%x\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtl8192_phy_SwChnlStepByStep\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RTL8192U: %s() stage: %d, step: %d, channel: %d\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.63, i8 1, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RTL8192U: set to illegal channel: %d\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.64, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RTL8192U: illegal channel for Zebra 8225: %d\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@RF_CHANNEL_TABLE_ZEBRA = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 2140, i32 2268, i32 2396, i32 2524, i32 2652, i32 2780, i32 2908, i32 3036, i32 3164, i32 3292, i32 3420, i32 3548, i32 3676, i32 3954], [36 x i8] zeroinitializer }, align 32
@rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.65, i8 1, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RTL8192U: illegal channel for Zebra 8256: %d\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.35, i8 1, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rtl8192_SetTxPowerLevel.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 1, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8192_SetTxPowerLevel\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RTL8192U: unknown rf chip ID in %s()\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 477, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 482, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 490, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 694, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 699, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 732, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 868, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 877, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 905, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 927, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1120, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1126, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1387, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1392, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1407, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1419, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1425, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1432, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1467, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1492, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1515, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1547, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1587, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1592, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1654, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1672, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1674, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1676, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1678, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1680, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1683, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1689, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1694, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1712, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1714, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1716, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1718, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1720, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1730, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 160, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 236, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 777, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 517, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 526, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1215, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1218, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1242, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant [23 x i8] c"RF_CHANNEL_TABLE_ZEBRA\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 13, i32 12 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1262, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [41 x i8] c"../drivers/staging/rtl8192u/r819xU_phy.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1042, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @RF_CHANNEL_TABLE_ZEBRA, ptr @.str.65, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RF_CHANNEL_TABLE_ZEBRA to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtl8192_phy_CheckIsLegalRFPath(ptr nocapture noundef readonly %dev, i32 noundef %e_rfpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_type = getelementptr i8, ptr %dev, i32 30464
  %0 = ptrtoint ptr %rf_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end14.fold.split [
    i32 1, label %entry.if.end14_crit_edge
    i32 0, label %if.then3
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = and i32 %e_rfpath, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ne i32 %3, 2
  %spec.select = zext i1 %switch to i8
  br label %if.end14

if.end14.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end14:                                         ; preds = %if.end14.fold.split, %if.then3, %entry.if.end14_crit_edge
  %ret.0 = phi i8 [ 0, %entry.if.end14_crit_edge ], [ 1, %if.end14.fold.split ], [ %spec.select, %if.then3 ]
  ret i8 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef %reg_addr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bitmask)
  %cmp.not = icmp eq i32 %bitmask, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef %reg_addr, ptr noundef nonnull %reg) #7
  %1 = call i32 @llvm.cttz.i32(i32 %bitmask, i1 true), !range !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmask)
  %iszero = icmp eq i32 %bitmask, 0
  %sub = select i1 %iszero, i32 -1, i32 %1
  %neg = xor i32 %bitmask, -1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %and = and i32 %3, %neg
  %shl = shl i32 %data, %sub
  %or = or i32 %and, %shl
  store i32 %or, ptr %reg, align 4
  %call1 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %reg_addr, i32 noundef %or) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %reg_addr, i32 noundef %data) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_nic_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_nic_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8192_QueryBBReg(ptr noundef %dev, i32 noundef %reg_addr, i32 noundef %bitmask) local_unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !188
  %call = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef %reg_addr, ptr noundef nonnull %reg) #7
  %1 = call i32 @llvm.cttz.i32(i32 %bitmask, i1 true), !range !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmask)
  %iszero = icmp eq i32 %bitmask, 0
  %sub = select i1 %iszero, i32 -1, i32 %1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %and = and i32 %3, %bitmask
  %shr = lshr i32 %and, %sub
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef %reg_addr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i55 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_type.i = getelementptr i8, ptr %dev, i32 30464
  %0 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 0, label %rtl8192_phy_CheckIsLegalRFPath.exit
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rtl8192_phy_CheckIsLegalRFPath.exit:              ; preds = %entry
  %3 = and i32 %e_rfpath, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i.not = icmp eq i32 %3, 2
  br i1 %switch.i.not, label %rtl8192_phy_CheckIsLegalRFPath.exit.cleanup_crit_edge, label %rtl8192_phy_CheckIsLegalRFPath.exit.if.end_crit_edge

rtl8192_phy_CheckIsLegalRFPath.exit.if.end_crit_edge: ; preds = %rtl8192_phy_CheckIsLegalRFPath.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rtl8192_phy_CheckIsLegalRFPath.exit.cleanup_crit_edge: ; preds = %rtl8192_phy_CheckIsLegalRFPath.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rtl8192_phy_CheckIsLegalRFPath.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %Rf_Mode = getelementptr i8, ptr %dev, i32 33952
  %4 = ptrtoint ptr %Rf_Mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %Rf_Mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %bitmask)
  %cmp3.not = icmp eq i32 %bitmask, 4095
  br i1 %cmp, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.end
  br i1 %cmp3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  %call5 = tail call fastcc i32 @phy_FwRFSerialRead(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef %reg_addr)
  %6 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 true), !range !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmask)
  %iszero = icmp eq i32 %bitmask, 0
  %sub = select i1 %iszero, i32 -1, i32 %6
  %neg = xor i32 %bitmask, -1
  %and = and i32 %call5, %neg
  %shl = shl i32 %data, %sub
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tmp.i, align 4, !annotation !188
  %call.i = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 464, ptr noundef nonnull %tmp.i) #7
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not16.i = icmp slt i32 %9, 0
  br i1 %tobool.not16.i, label %if.then4.if.then.i_crit_edge, label %if.then4.phy_FwRFSerialWrite.exit_crit_edge

if.then4.phy_FwRFSerialWrite.exit_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_FwRFSerialWrite.exit

if.then4.if.then.i_crit_edge:                     ; preds = %if.then4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %if.then4.if.then.i_crit_edge
  %time.017.i = phi i8 [ %inc.i, %if.then.i.if.then.i_crit_edge ], [ 0, %if.then4.if.then.i_crit_edge ]
  %inc.i = add nuw nsw i8 %time.017.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 2147480) #7
  %call8.i = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 464, ptr noundef nonnull %tmp.i) #7
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp slt i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %time.017.i)
  %cmp.i = icmp ult i8 %time.017.i, 99
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then.i.if.then.i_crit_edge, label %if.then.i.phy_FwRFSerialWrite.exit_crit_edge

if.then.i.phy_FwRFSerialWrite.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_FwRFSerialWrite.exit

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

phy_FwRFSerialWrite.exit:                         ; preds = %if.then.i.phy_FwRFSerialWrite.exit_crit_edge, %if.then4.phy_FwRFSerialWrite.exit_crit_edge
  %and.i = shl i32 %reg_addr, 12
  %shl.i = and i32 %and.i, 1044480
  %and1.i = shl i32 %e_rfpath, 20
  %shl2.i = and i32 %and1.i, 3145728
  %or = or i32 %shl2.i, %shl.i
  %or.i = or i32 %or, %shl
  %or3.i = or i32 %or.i, %and
  %or5.i = or i32 %or3.i, -2143289344
  %call9.i = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 464, i32 noundef %or5.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %if.end6

if.else:                                          ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i55) #7
  %13 = ptrtoint ptr %tmp.i55 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %tmp.i55, align 4, !annotation !188
  %call.i56 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 464, ptr noundef nonnull %tmp.i55) #7
  %14 = ptrtoint ptr %tmp.i55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tmp.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not16.i57 = icmp slt i32 %15, 0
  br i1 %tobool.not16.i57, label %if.else.if.then.i64_crit_edge, label %if.else.phy_FwRFSerialWrite.exit73_crit_edge

if.else.phy_FwRFSerialWrite.exit73_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_FwRFSerialWrite.exit73

if.else.if.then.i64_crit_edge:                    ; preds = %if.else
  br label %if.then.i64

if.then.i64:                                      ; preds = %if.then.i64.if.then.i64_crit_edge, %if.else.if.then.i64_crit_edge
  %time.017.i58 = phi i8 [ %inc.i59, %if.then.i64.if.then.i64_crit_edge ], [ 0, %if.else.if.then.i64_crit_edge ]
  %inc.i59 = add nuw nsw i8 %time.017.i58, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 2147480) #7
  %call8.i60 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 464, ptr noundef nonnull %tmp.i55) #7
  %17 = ptrtoint ptr %tmp.i55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tmp.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i61 = icmp slt i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %time.017.i58)
  %cmp.i62 = icmp ult i8 %time.017.i58, 99
  %or.cond.i63 = select i1 %tobool.not.i61, i1 %cmp.i62, i1 false
  br i1 %or.cond.i63, label %if.then.i64.if.then.i64_crit_edge, label %if.then.i64.phy_FwRFSerialWrite.exit73_crit_edge

if.then.i64.phy_FwRFSerialWrite.exit73_crit_edge: ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_FwRFSerialWrite.exit73

if.then.i64.if.then.i64_crit_edge:                ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i64

phy_FwRFSerialWrite.exit73:                       ; preds = %if.then.i64.phy_FwRFSerialWrite.exit73_crit_edge, %if.else.phy_FwRFSerialWrite.exit73_crit_edge
  %and.i65 = shl i32 %reg_addr, 12
  %shl.i66 = and i32 %and.i65, 1044480
  %and1.i67 = shl i32 %e_rfpath, 20
  %shl2.i68 = and i32 %and1.i67, 3145728
  %or.i69 = or i32 %shl2.i68, %data
  %or3.i70 = or i32 %or.i69, %shl.i66
  %or5.i71 = or i32 %or3.i70, -2143289344
  %call9.i72 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 464, i32 noundef %or5.i71) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i55) #7
  br label %if.end6

if.end6:                                          ; preds = %phy_FwRFSerialWrite.exit73, %phy_FwRFSerialWrite.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 42949600) #7
  br label %cleanup

if.else7:                                         ; preds = %if.end
  br i1 %cmp3.not, label %if.else18, label %if.then9

if.then9:                                         ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call fastcc i32 @rtl8192_phy_RFSerialRead(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef %reg_addr)
  %20 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 true), !range !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmask)
  %iszero11 = icmp eq i32 %bitmask, 0
  %sub13 = select i1 %iszero11, i32 -1, i32 %20
  %neg14 = xor i32 %bitmask, -1
  %and15 = and i32 %call10, %neg14
  %shl16 = shl i32 %data, %sub13
  %or17 = or i32 %and15, %shl16
  tail call fastcc void @rtl8192_phy_RFSerialWrite(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef %reg_addr, i32 noundef %or17)
  br label %cleanup

if.else18:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rtl8192_phy_RFSerialWrite(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef %reg_addr, i32 noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.else18, %if.then9, %if.end6, %rtl8192_phy_CheckIsLegalRFPath.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @phy_FwRFSerialRead(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmp, align 4, !annotation !188
  %and = shl i32 %offset, 12
  %shl = and i32 %and, 1044480
  %and1 = shl i32 %e_rfpath, 20
  %shl2 = and i32 %and1, 3145728
  %or3 = or i32 %shl2, %shl
  %or4 = or i32 %or3, -2147483648
  %call = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 464, ptr noundef nonnull %tmp) #7
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not36 = icmp sgt i32 %3, -1
  br i1 %tobool.not36, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.then.while.body_crit_edge, %entry.while.body_crit_edge
  %time.037 = phi i8 [ %inc, %if.then.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %time.037)
  %cmp = icmp ult i8 %time.037, 100
  br i1 %cmp, label %if.then, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then:                                          ; preds = %while.body
  %inc = add nuw nsw i8 %time.037, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 2147480) #7
  %call7 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 464, ptr noundef nonnull %tmp) #7
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.then.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %time.1 = phi i8 [ 0, %entry.while.end_crit_edge ], [ %inc, %if.then.while.end_crit_edge ], [ 101, %while.body.while.end_crit_edge ]
  %call8 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 464, i32 noundef %or4) #7
  %call9 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 464, ptr noundef nonnull %tmp) #7
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool12.not39 = icmp sgt i32 %8, -1
  br i1 %tobool12.not39, label %while.end.while.end22_crit_edge, label %while.end.while.body13_crit_edge

while.end.while.body13_crit_edge:                 ; preds = %while.end
  br label %while.body13

while.end.while.end22_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end22

while.body13:                                     ; preds = %if.then18.while.body13_crit_edge, %while.end.while.body13_crit_edge
  %time.240 = phi i8 [ %inc14, %if.then18.while.body13_crit_edge ], [ %time.1, %while.end.while.body13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %time.240)
  %cmp16 = icmp ult i8 %time.240, 100
  br i1 %cmp16, label %if.then18, label %while.body13.cleanup_crit_edge

while.body13.cleanup_crit_edge:                   ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %while.body13
  %inc14 = add nuw nsw i8 %time.240, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 2147480) #7
  %call19 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 464, ptr noundef nonnull %tmp) #7
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp, align 4
  %tobool12.not = icmp sgt i32 %11, -1
  br i1 %tobool12.not, label %if.then18.while.end22_crit_edge, label %if.then18.while.body13_crit_edge

if.then18.while.body13_crit_edge:                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body13

if.then18.while.end22_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end22

while.end22:                                      ; preds = %if.then18.while.end22_crit_edge, %while.end.while.end22_crit_edge
  %call23 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 468, ptr noundef nonnull %reg) #7
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end22, %while.body13.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %while.end22 ], [ 0, %while.body13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl8192_phy_RFSerialRead(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %reg.i103 = alloca i32, align 4
  %reg.i98 = alloca i32, align 4
  %reg.i94 = alloca i32, align 4
  %reg.i90 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30120
  %rfLSSIReadBack = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %e_rfpath, i32 16
  %0 = ptrtoint ptr %rfLSSIReadBack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rfLSSIReadBack, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !188
  %call.i = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef %1, ptr noundef nonnull %reg.i) #7
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %4, -4096
  store i32 %and.i, ptr %reg.i, align 4
  %call1.i = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %1, i32 noundef %and.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  %and = and i32 %offset, 63
  %rf_chip = getelementptr i8, ptr %dev, i32 30468
  %5 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and)
  %cmp1 = icmp ugt i32 %and, 30
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 102, i32 %e_rfpath
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %or = or i32 %8, 320
  store i32 %or, ptr %arrayidx3, align 4
  %rf3wireOffset = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %e_rfpath, i32 4
  %9 = ptrtoint ptr %rf3wireOffset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rf3wireOffset, align 4
  %shl = shl i32 %or, 16
  %call2.i = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %10, i32 noundef %shl) #7
  %sub = add nsw i32 %and, -30
  br label %if.end34

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp6 = icmp ugt i32 %and, 15
  br i1 %cmp6, label %if.then7, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 102, i32 %e_rfpath
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9, align 4
  %or10 = and i32 %12, -321
  %and13 = or i32 %or10, 256
  store i32 %and13, ptr %arrayidx9, align 4
  %rf3wireOffset14 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %e_rfpath, i32 4
  %13 = ptrtoint ptr %rf3wireOffset14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rf3wireOffset14, align 4
  %shl17 = shl i32 %and13, 16
  %call2.i89 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %14, i32 noundef %shl17) #7
  %sub18 = add nsw i32 %and, -15
  br label %if.end34

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %15 = load i32, ptr @rt_global_debug_component, align 4
  %and22 = and i32 %15, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %do.body.if.end34_crit_edge, label %do.body24

do.body.if.end34_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.body24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_RFSerialRead.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_RFSerialRead, %if.then29)) #7
          to label %if.end34 [label %if.then29], !srcloc !190

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_RFSerialRead.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.54) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %do.body24, %do.body.if.end34_crit_edge, %if.then7, %if.else.if.end34_crit_edge, %if.then2
  %new_offset.0 = phi i32 [ %sub, %if.then2 ], [ %sub18, %if.then7 ], [ %and, %if.else.if.end34_crit_edge ], [ %and, %if.then29 ], [ %and, %do.body.if.end34_crit_edge ], [ %and, %do.body24 ]
  %rfHSSIPara2 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %e_rfpath, i32 8
  %16 = ptrtoint ptr %rfHSSIPara2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rfHSSIPara2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i90) #7
  %18 = ptrtoint ptr %reg.i90 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %reg.i90, align 4, !annotation !188
  %call.i91 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef %17, ptr noundef nonnull %reg.i90) #7
  %19 = ptrtoint ptr %reg.i90 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg.i90, align 4
  %and.i92 = and i32 %20, -1056964609
  %shl.i = shl nuw nsw i32 %new_offset.0, 24
  %or.i = or i32 %and.i92, %shl.i
  store i32 %or.i, ptr %reg.i90, align 4
  %call1.i93 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %17, i32 noundef %or.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i90) #7
  %21 = ptrtoint ptr %rfHSSIPara2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rfHSSIPara2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i94) #7
  %23 = ptrtoint ptr %reg.i94 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %reg.i94, align 4, !annotation !188
  %call.i95 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef %22, ptr noundef nonnull %reg.i94) #7
  %24 = ptrtoint ptr %reg.i94 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg.i94, align 4
  %and.i96 = and i32 %25, 2147483647
  store i32 %and.i96, ptr %reg.i94, align 4
  %call1.i97 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %22, i32 noundef %and.i96) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i94) #7
  %26 = ptrtoint ptr %rfHSSIPara2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rfHSSIPara2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i98) #7
  %28 = ptrtoint ptr %reg.i98 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %reg.i98, align 4, !annotation !188
  %call.i99 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef %27, ptr noundef nonnull %reg.i98) #7
  %29 = ptrtoint ptr %reg.i98 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg.i98, align 4
  %or.i101 = or i32 %30, -2147483648
  store i32 %or.i101, ptr %reg.i98, align 4
  %call1.i102 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %27, i32 noundef %or.i101) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i98) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1000, i32 noundef 2) #7
  %31 = ptrtoint ptr %rfLSSIReadBack to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rfLSSIReadBack, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i103) #7
  %33 = ptrtoint ptr %reg.i103 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %reg.i103, align 4, !annotation !188
  %call.i104 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef %32, ptr noundef nonnull %reg.i103) #7
  %34 = ptrtoint ptr %reg.i103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg.i103, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i103) #7
  %36 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp40 = icmp eq i32 %37, 2
  br i1 %cmp40, label %if.then41, label %if.end34.if.end49_crit_edge

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then41:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx43 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 102, i32 %e_rfpath
  %38 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx43, align 4
  %and44 = and i32 %39, 3775
  store i32 %and44, ptr %arrayidx43, align 4
  %rf3wireOffset45 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %e_rfpath, i32 4
  %40 = ptrtoint ptr %rf3wireOffset45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rf3wireOffset45, align 4
  %shl48 = shl nuw nsw i32 %and44, 16
  %call2.i107 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %41, i32 noundef %shl48) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then41, %if.end34.if.end49_crit_edge
  %and.i105 = and i32 %35, 4095
  ret i32 %and.i105
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8192_phy_RFSerialWrite(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef %offset, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30120
  %and = and i32 %offset, 63
  %rf_chip = getelementptr i8, ptr %dev, i32 30468
  %0 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and)
  %cmp1 = icmp ugt i32 %and, 30
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 102, i32 %e_rfpath
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %or = or i32 %3, 320
  store i32 %or, ptr %arrayidx3, align 4
  %rf3wireOffset = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %e_rfpath, i32 4
  %4 = ptrtoint ptr %rf3wireOffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rf3wireOffset, align 4
  %shl = shl i32 %or, 16
  %call2.i = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %5, i32 noundef %shl) #7
  %sub = add nsw i32 %and, -30
  br label %if.end34

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp6 = icmp ugt i32 %and, 15
  br i1 %cmp6, label %if.then7, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 102, i32 %e_rfpath
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx9, align 4
  %or10 = and i32 %7, -321
  %and13 = or i32 %or10, 256
  store i32 %and13, ptr %arrayidx9, align 4
  %rf3wireOffset14 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %e_rfpath, i32 4
  %8 = ptrtoint ptr %rf3wireOffset14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rf3wireOffset14, align 4
  %shl17 = shl i32 %and13, 16
  %call2.i93 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %9, i32 noundef %shl17) #7
  %sub18 = add nsw i32 %and, -15
  br label %if.end34

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and22 = and i32 %10, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %do.body.if.end34_crit_edge, label %do.body24

do.body.if.end34_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.body24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_RFSerialWrite.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_RFSerialWrite, %if.then29)) #7
          to label %if.end34 [label %if.then29], !srcloc !190

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_RFSerialWrite.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.54) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %do.body24, %do.body.if.end34_crit_edge, %if.then7, %if.else.if.end34_crit_edge, %if.then2
  %new_offset.0 = phi i32 [ %sub, %if.then2 ], [ %sub18, %if.then7 ], [ %and, %if.else.if.end34_crit_edge ], [ %and, %if.then29 ], [ %and, %do.body.if.end34_crit_edge ], [ %and, %do.body24 ]
  %shl35 = shl i32 %data, 16
  %or37 = or i32 %new_offset.0, %shl35
  %rf3wireOffset38 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %e_rfpath, i32 4
  %11 = ptrtoint ptr %rf3wireOffset38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rf3wireOffset38, align 4
  %call2.i95 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %12, i32 noundef %or37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp39 = icmp eq i32 %and, 0
  br i1 %cmp39, label %if.end43.thread, label %if.end43

if.end43.thread:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx42 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 102, i32 %e_rfpath
  %13 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %data, ptr %arrayidx42, align 4
  br label %if.end57

if.end43:                                         ; preds = %if.end34
  %14 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp45.not = icmp eq i32 %15, 2
  br i1 %cmp45.not, label %if.then48, label %if.end43.if.end57_crit_edge

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx50 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 102, i32 %e_rfpath
  %16 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx50, align 4
  %and51 = and i32 %17, 3775
  store i32 %and51, ptr %arrayidx50, align 4
  %18 = ptrtoint ptr %rf3wireOffset38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rf3wireOffset38, align 4
  %shl55 = shl nuw nsw i32 %and51, 16
  %call2.i97 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %19, i32 noundef %shl55) #7
  br label %if.end57

if.end57:                                         ; preds = %if.then48, %if.end43.if.end57_crit_edge, %if.end43.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8192_phy_QueryRFReg(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef %reg_addr, i32 noundef %bitmask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_type.i = getelementptr i8, ptr %dev, i32 30464
  %0 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 0, label %rtl8192_phy_CheckIsLegalRFPath.exit
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rtl8192_phy_CheckIsLegalRFPath.exit:              ; preds = %entry
  %3 = and i32 %e_rfpath, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i.not = icmp eq i32 %3, 2
  br i1 %switch.i.not, label %rtl8192_phy_CheckIsLegalRFPath.exit.cleanup_crit_edge, label %rtl8192_phy_CheckIsLegalRFPath.exit.if.end_crit_edge

rtl8192_phy_CheckIsLegalRFPath.exit.if.end_crit_edge: ; preds = %rtl8192_phy_CheckIsLegalRFPath.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rtl8192_phy_CheckIsLegalRFPath.exit.cleanup_crit_edge: ; preds = %rtl8192_phy_CheckIsLegalRFPath.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rtl8192_phy_CheckIsLegalRFPath.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %Rf_Mode = getelementptr i8, ptr %dev, i32 33952
  %4 = ptrtoint ptr %Rf_Mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %Rf_Mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @phy_FwRFSerialRead(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef %reg_addr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 42949600) #7
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call fastcc i32 @rtl8192_phy_RFSerialRead(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef %reg_addr)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %reg.0 = phi i32 [ %call3, %if.then2 ], [ %call4, %if.else ]
  %7 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 true), !range !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmask)
  %iszero = icmp eq i32 %bitmask, 0
  %sub = select i1 %iszero, i32 -1, i32 %7
  %and = and i32 %reg.0, %bitmask
  %shr = lshr i32 %and, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %rtl8192_phy_CheckIsLegalRFPath.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end5 ], [ 0, %rtl8192_phy_CheckIsLegalRFPath.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192_phy_configmac(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %btxpowerdata_readfromEEPORM = getelementptr i8, ptr %dev, i32 35207
  %0 = ptrtoint ptr %btxpowerdata_readfromEEPORM to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btxpowerdata_readfromEEPORM, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %2 = load i32, ptr @rt_global_debug_component, align 4
  %and13 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %do.body12, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool14.not, label %do.body.if.end35_crit_edge, label %do.body3

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_configmac.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_configmac, %if.then8)) #7
          to label %if.end35 [label %if.then8], !srcloc !190

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_configmac.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.3) #7
  br label %if.end35

do.body12:                                        ; preds = %entry
  br i1 %tobool14.not, label %do.body12.if.end35_crit_edge, label %do.body16

do.body12.if.end35_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.body16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_configmac.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_configmac, %if.then28)) #7
          to label %if.end35 [label %if.then28], !srcloc !190

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_configmac.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.4) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %do.body16, %do.body12.if.end35_crit_edge, %if.then8, %do.body3, %do.body.if.end35_crit_edge
  %pdwArray.0 = phi ptr [ @Rtl8192UsbMACPHY_Array_PG, %if.then8 ], [ @Rtl8192UsbMACPHY_Array_PG, %do.body.if.end35_crit_edge ], [ @Rtl8192UsbMACPHY_Array, %if.then28 ], [ @Rtl8192UsbMACPHY_Array, %do.body12.if.end35_crit_edge ], [ @Rtl8192UsbMACPHY_Array_PG, %do.body3 ], [ @Rtl8192UsbMACPHY_Array, %do.body16 ]
  %dwArrayLen.0 = phi i32 [ 30, %if.then8 ], [ 30, %do.body.if.end35_crit_edge ], [ 18, %if.then28 ], [ 18, %do.body12.if.end35_crit_edge ], [ 30, %do.body3 ], [ 18, %do.body16 ]
  br label %for.body

for.body:                                         ; preds = %rtl8192_setBBreg.exit.for.body_crit_edge, %if.end35
  %i.0100 = phi i32 [ 0, %if.end35 ], [ %add73, %rtl8192_setBBreg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %pdwArray.0, i32 %i.0100
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 792, i32 %4)
  %cmp36 = icmp eq i32 %4, 792
  br i1 %cmp36, label %if.then37, label %for.body.do.body40_crit_edge

for.body.do.body40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

if.then37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %i.0100, 2
  %arrayidx38 = getelementptr i32, ptr %pdwArray.0, i32 %add
  %5 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2048, ptr %arrayidx38, align 4
  br label %do.body40

do.body40:                                        ; preds = %if.then37, %for.body.do.body40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %6 = load i32, ptr @rt_global_debug_component, align 4
  %and41 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.do.end67_crit_edge, label %do.body44

do.body40.do.end67_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

do.body44:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_configmac.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_configmac, %if.then56)) #7
          to label %do.end67 [label %if.then56], !srcloc !190

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add58 = add nuw nsw i32 %i.0100, 1
  %arrayidx59 = getelementptr i32, ptr %pdwArray.0, i32 %add58
  %9 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx59, align 4
  %add60 = add nuw nsw i32 %i.0100, 2
  %arrayidx61 = getelementptr i32, ptr %pdwArray.0, i32 %add60
  %11 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx61, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_configmac.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.5, i32 noundef %8, i32 noundef %10, i32 noundef %12) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then56, %do.body44, %do.body40.do.end67_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add69 = add nuw nsw i32 %i.0100, 1
  %arrayidx70 = getelementptr i32, ptr %pdwArray.0, i32 %add69
  %15 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx70, align 4
  %add71 = add nuw nsw i32 %i.0100, 2
  %arrayidx72 = getelementptr i32, ptr %pdwArray.0, i32 %add71
  %17 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx72, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %reg.i, align 4, !annotation !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.not.i = icmp eq i32 %16, -1
  br i1 %cmp.not.i, label %do.end67.rtl8192_setBBreg.exit_crit_edge, label %if.then.i

do.end67.rtl8192_setBBreg.exit_crit_edge:         ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8192_setBBreg.exit

if.then.i:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull %reg.i) #7
  %20 = call i32 @llvm.cttz.i32(i32 %16, i1 true) #7, !range !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %iszero.i = icmp eq i32 %16, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %20
  %neg.i = xor i32 %16, -1
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %22, %neg.i
  %shl.i = shl i32 %18, %sub.i
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %reg.i, align 4
  br label %rtl8192_setBBreg.exit

rtl8192_setBBreg.exit:                            ; preds = %if.then.i, %do.end67.rtl8192_setBBreg.exit_crit_edge
  %or.i.sink = phi i32 [ %or.i, %if.then.i ], [ %18, %do.end67.rtl8192_setBBreg.exit_crit_edge ]
  %call1.i = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %14, i32 noundef %or.i.sink) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  %add73 = add nuw nsw i32 %i.0100, 3
  %cmp = icmp ult i32 %add73, %dwArrayLen.0
  br i1 %cmp, label %rtl8192_setBBreg.exit.for.body_crit_edge, label %for.end

rtl8192_setBBreg.exit.for.body_crit_edge:         ; preds = %rtl8192_setBBreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %rtl8192_setBBreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl8192_phy_checkBBAndRF(ptr noundef %dev, i32 noundef %CheckBlock, i32 noundef %e_rfpath) local_unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %WriteAddr = alloca [4 x i32], align 4
  %WriteData = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %WriteAddr) #7
  %1 = getelementptr inbounds [4 x i32], ptr %WriteAddr, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i32], ptr %WriteAddr, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i32], ptr %WriteAddr, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %WriteData) #7
  %4 = call ptr @memcpy(ptr %WriteData, ptr @__const.rtl8192_phy_checkBBAndRF.WriteData, i32 16)
  %5 = ptrtoint ptr %WriteAddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %WriteAddr, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2304, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2048, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %9 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body4

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_checkBBAndRF, %if.then8)) #7
          to label %do.end11 [label %if.then8], !srcloc !190

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %CheckBlock) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body4, %entry.do.end11_crit_edge
  %rf_type.i.i = getelementptr i8, ptr %dev, i32 30464
  %10 = and i32 %e_rfpath, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch.i.not.i = icmp eq i32 %10, 2
  %Rf_Mode.i = getelementptr i8, ptr %dev, i32 33952
  %arrayidx36 = getelementptr [4 x i32], ptr %WriteAddr, i32 0, i32 %CheckBlock
  br label %for.body

for.cond:                                         ; preds = %sw.epilog
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end11
  %ret.0101 = phi i8 [ 0, %do.end11 ], [ %ret.1, %for.cond.for.body_crit_edge ]
  %i.0100 = phi i32 [ 0, %do.end11 ], [ %inc, %for.cond.for.body_crit_edge ]
  %11 = zext i32 %CheckBlock to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %CheckBlock, label %for.body.sw.epilog_crit_edge [
    i32 0, label %do.body12
    i32 1, label %for.body.sw.bb35_crit_edge
    i32 2, label %for.body.sw.bb35_crit_edge112
    i32 3, label %sw.bb41
  ]

for.body.sw.bb35_crit_edge112:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb35

for.body.sw.bb35_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb35

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body12:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %12 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool14.not = icmp sgt i32 %12, -1
  br i1 %tobool14.not, label %do.body12.sw.epilog_crit_edge, label %do.body16

do.body12.sw.epilog_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_checkBBAndRF, %if.then28)) #7
          to label %sw.epilog [label %if.then28], !srcloc !190

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.8) #7
  br label %sw.epilog

sw.bb35:                                          ; preds = %for.body.sw.bb35_crit_edge, %for.body.sw.bb35_crit_edge112
  %13 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx36, align 4
  %arrayidx37 = getelementptr [4 x i32], ptr %WriteData, i32 0, i32 %i.0100
  %15 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx37, align 4
  %call38 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %14, i32 noundef %16) #7
  %call40 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull %reg) #7
  br label %sw.epilog

sw.bb41:                                          ; preds = %for.body
  %arrayidx42 = getelementptr [4 x i32], ptr %WriteData, i32 0, i32 %i.0100
  %17 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx42, align 4
  %and43 = and i32 %18, 4095
  store i32 %and43, ptr %arrayidx42, align 4
  call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef 3, i32 noundef 4095, i32 noundef %and43)
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1000, i32 noundef 2) #7
  %19 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rf_type.i.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %20, label %sw.bb41.if.end.i_crit_edge [
    i32 1, label %sw.bb41.rtl8192_phy_QueryRFReg.exit_crit_edge
    i32 0, label %rtl8192_phy_CheckIsLegalRFPath.exit.i
  ]

sw.bb41.rtl8192_phy_QueryRFReg.exit_crit_edge:    ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8192_phy_QueryRFReg.exit

sw.bb41.if.end.i_crit_edge:                       ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

rtl8192_phy_CheckIsLegalRFPath.exit.i:            ; preds = %sw.bb41
  br i1 %switch.i.not.i, label %rtl8192_phy_CheckIsLegalRFPath.exit.i.rtl8192_phy_QueryRFReg.exit_crit_edge, label %rtl8192_phy_CheckIsLegalRFPath.exit.i.if.end.i_crit_edge

rtl8192_phy_CheckIsLegalRFPath.exit.i.if.end.i_crit_edge: ; preds = %rtl8192_phy_CheckIsLegalRFPath.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

rtl8192_phy_CheckIsLegalRFPath.exit.i.rtl8192_phy_QueryRFReg.exit_crit_edge: ; preds = %rtl8192_phy_CheckIsLegalRFPath.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8192_phy_QueryRFReg.exit

if.end.i:                                         ; preds = %rtl8192_phy_CheckIsLegalRFPath.exit.i.if.end.i_crit_edge, %sw.bb41.if.end.i_crit_edge
  %22 = ptrtoint ptr %Rf_Mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %Rf_Mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i = icmp eq i32 %23, 1
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = call fastcc i32 @phy_FwRFSerialRead(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef 3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 42949600) #7
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call fastcc i32 @rtl8192_phy_RFSerialRead(ptr noundef %dev, i32 noundef %e_rfpath, i32 noundef 3) #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then2.i
  %reg.0.i = phi i32 [ %call3.i, %if.then2.i ], [ %call4.i, %if.else.i ]
  %and.i = and i32 %reg.0.i, 4095
  br label %rtl8192_phy_QueryRFReg.exit

rtl8192_phy_QueryRFReg.exit:                      ; preds = %if.end5.i, %rtl8192_phy_CheckIsLegalRFPath.exit.i.rtl8192_phy_QueryRFReg.exit_crit_edge, %sw.bb41.rtl8192_phy_QueryRFReg.exit_crit_edge
  %retval.0.i95 = phi i32 [ %and.i, %if.end5.i ], [ 0, %rtl8192_phy_CheckIsLegalRFPath.exit.i.rtl8192_phy_QueryRFReg.exit_crit_edge ], [ 0, %sw.bb41.rtl8192_phy_QueryRFReg.exit_crit_edge ]
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i95, ptr %reg, align 4
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1000, i32 noundef 2) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %rtl8192_phy_QueryRFReg.exit, %sw.bb35, %if.then28, %do.body16, %do.body12.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %ret.1 = phi i8 [ %ret.0101, %rtl8192_phy_QueryRFReg.exit ], [ %ret.0101, %sw.bb35 ], [ %ret.0101, %if.then28 ], [ %ret.0101, %do.body12.sw.epilog_crit_edge ], [ 1, %for.body.sw.epilog_crit_edge ], [ %ret.0101, %do.body16 ]
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg, align 4
  %arrayidx48 = getelementptr [4 x i32], ptr %WriteData, i32 0, i32 %i.0100
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp49.not = icmp eq i32 %27, %29
  br i1 %cmp49.not, label %for.cond, label %do.body51

do.body51:                                        ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %30 = load i32, ptr @rt_global_debug_component, align 4
  %and52 = and i32 %30, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.for.end_crit_edge, label %do.body55

do.body51.for.end_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body55:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_checkBBAndRF, %if.then67)) #7
          to label %for.end [label %if.then67], !srcloc !190

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.9, i32 noundef %32, i32 noundef %29) #7
  br label %for.end

for.end:                                          ; preds = %if.then67, %do.body55, %do.body51.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.2 = phi i8 [ 1, %if.then67 ], [ 1, %do.body51.for.end_crit_edge ], [ 1, %do.body55 ], [ %ret.1, %for.cond.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %WriteData) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %WriteAddr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i8 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192_BBConfig(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %PHYRegDef.i = getelementptr i8, ptr %dev, i32 34004
  %0 = ptrtoint ptr %PHYRegDef.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2160, ptr %PHYRegDef.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %dev, i32 34072
  %1 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2160, ptr %arrayidx2.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %dev, i32 34140
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2164, ptr %arrayidx5.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %dev, i32 34208
  %3 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2164, ptr %arrayidx8.i, align 4
  %rfintfi.i = getelementptr i8, ptr %dev, i32 34008
  %4 = ptrtoint ptr %rfintfi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2272, ptr %rfintfi.i, align 4
  %rfintfi14.i = getelementptr i8, ptr %dev, i32 34076
  %5 = ptrtoint ptr %rfintfi14.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2272, ptr %rfintfi14.i, align 4
  %rfintfi17.i = getelementptr i8, ptr %dev, i32 34144
  %6 = ptrtoint ptr %rfintfi17.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2276, ptr %rfintfi17.i, align 4
  %rfintfi20.i = getelementptr i8, ptr %dev, i32 34212
  %7 = ptrtoint ptr %rfintfi20.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2276, ptr %rfintfi20.i, align 4
  %rfintfo.i = getelementptr i8, ptr %dev, i32 34012
  %8 = ptrtoint ptr %rfintfo.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2144, ptr %rfintfo.i, align 4
  %rfintfo25.i = getelementptr i8, ptr %dev, i32 34080
  %9 = ptrtoint ptr %rfintfo25.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2148, ptr %rfintfo25.i, align 4
  %rfintfo28.i = getelementptr i8, ptr %dev, i32 34148
  %10 = ptrtoint ptr %rfintfo28.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2152, ptr %rfintfo28.i, align 4
  %rfintfo31.i = getelementptr i8, ptr %dev, i32 34216
  %11 = ptrtoint ptr %rfintfo31.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2156, ptr %rfintfo31.i, align 4
  %rfintfe.i = getelementptr i8, ptr %dev, i32 34016
  %12 = ptrtoint ptr %rfintfe.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2144, ptr %rfintfe.i, align 4
  %rfintfe36.i = getelementptr i8, ptr %dev, i32 34084
  %13 = ptrtoint ptr %rfintfe36.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2148, ptr %rfintfe36.i, align 4
  %rfintfe39.i = getelementptr i8, ptr %dev, i32 34152
  %14 = ptrtoint ptr %rfintfe39.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2152, ptr %rfintfe39.i, align 4
  %rfintfe42.i = getelementptr i8, ptr %dev, i32 34220
  %15 = ptrtoint ptr %rfintfe42.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2156, ptr %rfintfe42.i, align 4
  %rf3wireOffset.i = getelementptr i8, ptr %dev, i32 34020
  %16 = ptrtoint ptr %rf3wireOffset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2112, ptr %rf3wireOffset.i, align 4
  %rf3wireOffset47.i = getelementptr i8, ptr %dev, i32 34088
  %17 = ptrtoint ptr %rf3wireOffset47.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2116, ptr %rf3wireOffset47.i, align 4
  %rf3wireOffset50.i = getelementptr i8, ptr %dev, i32 34156
  %18 = ptrtoint ptr %rf3wireOffset50.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2120, ptr %rf3wireOffset50.i, align 4
  %rf3wireOffset53.i = getelementptr i8, ptr %dev, i32 34224
  %19 = ptrtoint ptr %rf3wireOffset53.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2124, ptr %rf3wireOffset53.i, align 4
  %rfLSSI_Select.i = getelementptr i8, ptr %dev, i32 34024
  %20 = ptrtoint ptr %rfLSSI_Select.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2168, ptr %rfLSSI_Select.i, align 4
  %rfLSSI_Select58.i = getelementptr i8, ptr %dev, i32 34092
  %21 = ptrtoint ptr %rfLSSI_Select58.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2168, ptr %rfLSSI_Select58.i, align 4
  %rfLSSI_Select61.i = getelementptr i8, ptr %dev, i32 34160
  %22 = ptrtoint ptr %rfLSSI_Select61.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2172, ptr %rfLSSI_Select61.i, align 4
  %rfLSSI_Select64.i = getelementptr i8, ptr %dev, i32 34228
  %23 = ptrtoint ptr %rfLSSI_Select64.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2172, ptr %rfLSSI_Select64.i, align 4
  %rfTxGainStage.i = getelementptr i8, ptr %dev, i32 34028
  %24 = ptrtoint ptr %rfTxGainStage.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2060, ptr %rfTxGainStage.i, align 4
  %rfTxGainStage69.i = getelementptr i8, ptr %dev, i32 34096
  %25 = ptrtoint ptr %rfTxGainStage69.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2060, ptr %rfTxGainStage69.i, align 4
  %rfTxGainStage72.i = getelementptr i8, ptr %dev, i32 34164
  %26 = ptrtoint ptr %rfTxGainStage72.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2060, ptr %rfTxGainStage72.i, align 4
  %rfTxGainStage75.i = getelementptr i8, ptr %dev, i32 34232
  %27 = ptrtoint ptr %rfTxGainStage75.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2060, ptr %rfTxGainStage75.i, align 4
  %rfHSSIPara1.i = getelementptr i8, ptr %dev, i32 34032
  %28 = ptrtoint ptr %rfHSSIPara1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2080, ptr %rfHSSIPara1.i, align 4
  %rfHSSIPara180.i = getelementptr i8, ptr %dev, i32 34100
  %29 = ptrtoint ptr %rfHSSIPara180.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2088, ptr %rfHSSIPara180.i, align 4
  %rfHSSIPara183.i = getelementptr i8, ptr %dev, i32 34168
  %30 = ptrtoint ptr %rfHSSIPara183.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2096, ptr %rfHSSIPara183.i, align 4
  %rfHSSIPara186.i = getelementptr i8, ptr %dev, i32 34236
  %31 = ptrtoint ptr %rfHSSIPara186.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2104, ptr %rfHSSIPara186.i, align 4
  %rfHSSIPara2.i = getelementptr i8, ptr %dev, i32 34036
  %32 = ptrtoint ptr %rfHSSIPara2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2084, ptr %rfHSSIPara2.i, align 4
  %rfHSSIPara291.i = getelementptr i8, ptr %dev, i32 34104
  %33 = ptrtoint ptr %rfHSSIPara291.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2092, ptr %rfHSSIPara291.i, align 4
  %rfHSSIPara294.i = getelementptr i8, ptr %dev, i32 34172
  %34 = ptrtoint ptr %rfHSSIPara294.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2100, ptr %rfHSSIPara294.i, align 4
  %rfHSSIPara297.i = getelementptr i8, ptr %dev, i32 34240
  %35 = ptrtoint ptr %rfHSSIPara297.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2108, ptr %rfHSSIPara297.i, align 4
  %rfSwitchControl.i = getelementptr i8, ptr %dev, i32 34040
  %36 = ptrtoint ptr %rfSwitchControl.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2136, ptr %rfSwitchControl.i, align 4
  %rfSwitchControl102.i = getelementptr i8, ptr %dev, i32 34108
  %37 = ptrtoint ptr %rfSwitchControl102.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2136, ptr %rfSwitchControl102.i, align 4
  %rfSwitchControl105.i = getelementptr i8, ptr %dev, i32 34176
  %38 = ptrtoint ptr %rfSwitchControl105.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2140, ptr %rfSwitchControl105.i, align 4
  %rfSwitchControl108.i = getelementptr i8, ptr %dev, i32 34244
  %39 = ptrtoint ptr %rfSwitchControl108.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2140, ptr %rfSwitchControl108.i, align 4
  %rfAGCControl1.i = getelementptr i8, ptr %dev, i32 34044
  %40 = ptrtoint ptr %rfAGCControl1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3152, ptr %rfAGCControl1.i, align 4
  %rfAGCControl1113.i = getelementptr i8, ptr %dev, i32 34112
  %41 = ptrtoint ptr %rfAGCControl1113.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3160, ptr %rfAGCControl1113.i, align 4
  %rfAGCControl1116.i = getelementptr i8, ptr %dev, i32 34180
  %42 = ptrtoint ptr %rfAGCControl1116.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3168, ptr %rfAGCControl1116.i, align 4
  %rfAGCControl1119.i = getelementptr i8, ptr %dev, i32 34248
  %43 = ptrtoint ptr %rfAGCControl1119.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3176, ptr %rfAGCControl1119.i, align 4
  %rfAGCControl2.i = getelementptr i8, ptr %dev, i32 34048
  %44 = ptrtoint ptr %rfAGCControl2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3156, ptr %rfAGCControl2.i, align 4
  %rfAGCControl2124.i = getelementptr i8, ptr %dev, i32 34116
  %45 = ptrtoint ptr %rfAGCControl2124.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3164, ptr %rfAGCControl2124.i, align 4
  %rfAGCControl2127.i = getelementptr i8, ptr %dev, i32 34184
  %46 = ptrtoint ptr %rfAGCControl2127.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3172, ptr %rfAGCControl2127.i, align 4
  %rfAGCControl2130.i = getelementptr i8, ptr %dev, i32 34252
  %47 = ptrtoint ptr %rfAGCControl2130.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3180, ptr %rfAGCControl2130.i, align 4
  %rfRxIQImbalance.i = getelementptr i8, ptr %dev, i32 34052
  %48 = ptrtoint ptr %rfRxIQImbalance.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3092, ptr %rfRxIQImbalance.i, align 4
  %rfRxIQImbalance135.i = getelementptr i8, ptr %dev, i32 34120
  %49 = ptrtoint ptr %rfRxIQImbalance135.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3100, ptr %rfRxIQImbalance135.i, align 4
  %rfRxIQImbalance138.i = getelementptr i8, ptr %dev, i32 34188
  %50 = ptrtoint ptr %rfRxIQImbalance138.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3108, ptr %rfRxIQImbalance138.i, align 4
  %rfRxIQImbalance141.i = getelementptr i8, ptr %dev, i32 34256
  %51 = ptrtoint ptr %rfRxIQImbalance141.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3116, ptr %rfRxIQImbalance141.i, align 4
  %rfRxAFE.i = getelementptr i8, ptr %dev, i32 34056
  %52 = ptrtoint ptr %rfRxAFE.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3088, ptr %rfRxAFE.i, align 4
  %rfRxAFE146.i = getelementptr i8, ptr %dev, i32 34124
  %53 = ptrtoint ptr %rfRxAFE146.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3096, ptr %rfRxAFE146.i, align 4
  %rfRxAFE149.i = getelementptr i8, ptr %dev, i32 34192
  %54 = ptrtoint ptr %rfRxAFE149.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3104, ptr %rfRxAFE149.i, align 4
  %rfRxAFE152.i = getelementptr i8, ptr %dev, i32 34260
  %55 = ptrtoint ptr %rfRxAFE152.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3112, ptr %rfRxAFE152.i, align 4
  %rfTxIQImbalance.i = getelementptr i8, ptr %dev, i32 34060
  %56 = ptrtoint ptr %rfTxIQImbalance.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3200, ptr %rfTxIQImbalance.i, align 4
  %rfTxIQImbalance157.i = getelementptr i8, ptr %dev, i32 34128
  %57 = ptrtoint ptr %rfTxIQImbalance157.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3208, ptr %rfTxIQImbalance157.i, align 4
  %rfTxIQImbalance160.i = getelementptr i8, ptr %dev, i32 34196
  %58 = ptrtoint ptr %rfTxIQImbalance160.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3216, ptr %rfTxIQImbalance160.i, align 4
  %rfTxIQImbalance163.i = getelementptr i8, ptr %dev, i32 34264
  %59 = ptrtoint ptr %rfTxIQImbalance163.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3224, ptr %rfTxIQImbalance163.i, align 4
  %rfTxAFE.i = getelementptr i8, ptr %dev, i32 34064
  %60 = ptrtoint ptr %rfTxAFE.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3204, ptr %rfTxAFE.i, align 4
  %rfTxAFE168.i = getelementptr i8, ptr %dev, i32 34132
  %61 = ptrtoint ptr %rfTxAFE168.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3212, ptr %rfTxAFE168.i, align 4
  %rfTxAFE171.i = getelementptr i8, ptr %dev, i32 34200
  %62 = ptrtoint ptr %rfTxAFE171.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3220, ptr %rfTxAFE171.i, align 4
  %rfTxAFE174.i = getelementptr i8, ptr %dev, i32 34268
  %63 = ptrtoint ptr %rfTxAFE174.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3228, ptr %rfTxAFE174.i, align 4
  %rfLSSIReadBack.i = getelementptr i8, ptr %dev, i32 34068
  %64 = ptrtoint ptr %rfLSSIReadBack.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2208, ptr %rfLSSIReadBack.i, align 4
  %rfLSSIReadBack179.i = getelementptr i8, ptr %dev, i32 34136
  %65 = ptrtoint ptr %rfLSSIReadBack179.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2212, ptr %rfLSSIReadBack179.i, align 4
  %rfLSSIReadBack182.i = getelementptr i8, ptr %dev, i32 34204
  %66 = ptrtoint ptr %rfLSSIReadBack182.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2216, ptr %rfLSSIReadBack182.i, align 4
  %rfLSSIReadBack185.i = getelementptr i8, ptr %dev, i32 34272
  %67 = ptrtoint ptr %rfLSSIReadBack185.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2220, ptr %rfLSSIReadBack185.i, align 4
  tail call fastcc void @rtl8192_BB_Config_ParaFile(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8192_BB_Config_ParaFile(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %reg.i81 = alloca i32, align 4
  %reg.i75 = alloca i32, align 4
  %reg.i71 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %reg_u8 = alloca i8, align 1
  %reg_u32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_u8) #7
  %0 = ptrtoint ptr %reg_u8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reg_u8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_u32) #7
  %1 = ptrtoint ptr %reg_u32 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %reg_u32, align 4
  %call1 = call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull %reg_u8) #7
  %2 = ptrtoint ptr %reg_u8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_u8, align 1
  %4 = or i8 %3, 1
  %call3 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 32, i8 noundef zeroext %4) #7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.086 = phi i32 [ 50, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.086, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #7
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  %call4 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %reg_u32) #7
  %6 = ptrtoint ptr %reg_u32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_u32, align 4
  %and = and i32 %7, -257
  %call5 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 256, i32 noundef %and) #7
  %call9 = call zeroext i8 @rtl8192_phy_checkBBAndRF(ptr noundef %dev, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %cmp11.not = icmp eq i8 %call9, 0
  br i1 %cmp11.not, label %for.cond, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond:                                         ; preds = %while.end
  %call9.1 = call zeroext i8 @rtl8192_phy_checkBBAndRF(ptr noundef %dev, i32 noundef 2, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9.1)
  %cmp11.not.1 = icmp eq i8 %call9.1, 0
  br i1 %cmp11.not.1, label %for.cond.1, label %for.cond.do.body_crit_edge

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.1:                                       ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reg.i, align 4, !annotation !188
  %call.i = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2048, ptr noundef nonnull %reg.i) #7
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %10, -50331649
  store i32 %and.i, ptr %reg.i, align 4
  %call1.i = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2048, i32 noundef %and.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  br label %for.body.i

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %while.end.do.body_crit_edge
  %conv688.lcssa = phi i32 [ 0, %while.end.do.body_crit_edge ], [ 1, %for.cond.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %11 = load i32, ptr @rt_global_debug_component, align 4
  %and13 = and i32 %11, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body.cleanup_crit_edge, label %do.body16

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_BB_Config_ParaFile.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_BB_Config_ParaFile, %if.then21)) #7
          to label %cleanup [label %if.then21], !srcloc !190

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_BB_Config_ParaFile.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.57, i32 noundef %conv688.lcssa) #7
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.1
  %i.080.i = phi i32 [ %add15.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.1 ]
  %arrayidx.i = getelementptr [0 x i32], ptr @Rtl8192UsbPHY_REG_1T2RArray, i32 0, i32 %i.080.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = or i32 %i.080.i, 1
  %arrayidx2.i = getelementptr [0 x i32], ptr @Rtl8192UsbPHY_REG_1T2RArray, i32 0, i32 %add.i
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  %call2.i.i = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %13, i32 noundef %15) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %16 = load i32, ptr @rt_global_debug_component, align 4
  %and.i69 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i = icmp eq i32 %and.i69, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.body4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.body4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phyConfigBB.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_BB_Config_ParaFile, %if.then8.i)) #7
          to label %for.inc.i [label %if.then8.i], !srcloc !190

if.then8.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phyConfigBB.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.59, i32 noundef %i.080.i, i32 noundef %18, i32 noundef %20) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %do.body4.i, %for.body.i.for.inc.i_crit_edge
  %add15.i = add nuw nsw i32 %i.080.i, 2
  %cmp1.i = icmp ult i32 %i.080.i, 294
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %rtl8192_phyConfigBB.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rtl8192_phyConfigBB.exit:                         ; preds = %for.inc.i
  %call27 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %reg_u32) #7
  %21 = ptrtoint ptr %reg_u32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_u32, align 4
  %or28 = or i32 %22, 256
  %call29 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 256, i32 noundef %or28) #7
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.inc50.i.for.body20.i_crit_edge, %rtl8192_phyConfigBB.exit
  %i.178.i = phi i32 [ %add51.i, %for.inc50.i.for.body20.i_crit_edge ], [ 0, %rtl8192_phyConfigBB.exit ]
  %arrayidx21.i = getelementptr [0 x i32], ptr @Rtl8192UsbAGCTAB_Array, i32 0, i32 %i.178.i
  %23 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx21.i, align 4
  %add22.i = or i32 %i.178.i, 1
  %arrayidx23.i = getelementptr [0 x i32], ptr @Rtl8192UsbAGCTAB_Array, i32 0, i32 %add22.i
  %25 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx23.i, align 4
  %call2.i74.i = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %24, i32 noundef %26) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %27 = load i32, ptr @rt_global_debug_component, align 4
  %and25.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %for.body20.i.for.inc50.i_crit_edge, label %do.body28.i

for.body20.i.for.inc50.i_crit_edge:               ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc50.i

do.body28.i:                                      ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phyConfigBB.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_BB_Config_ParaFile, %if.then40.i)) #7
          to label %for.inc50.i [label %if.then40.i], !srcloc !190

if.then40.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx21.i, align 4
  %30 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx23.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phyConfigBB.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.60, i32 noundef %i.178.i, i32 noundef %29, i32 noundef %31) #7
  br label %for.inc50.i

for.inc50.i:                                      ; preds = %if.then40.i, %do.body28.i, %for.body20.i.for.inc50.i_crit_edge
  %add51.i = add nuw nsw i32 %i.178.i, 2
  %cmp19.i = icmp ult i32 %i.178.i, 382
  br i1 %cmp19.i, label %for.inc50.i.for.body20.i_crit_edge, label %rtl8192_phyConfigBB.exit70

for.inc50.i.for.body20.i_crit_edge:               ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20.i

rtl8192_phyConfigBB.exit70:                       ; preds = %for.inc50.i
  %call30 = call i32 @write_nic_byte_E(ptr noundef %dev, i32 noundef 94, i8 noundef zeroext 0) #7
  %card_8192_version = getelementptr i8, ptr %dev, i32 30164
  %32 = ptrtoint ptr %card_8192_version to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %card_8192_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp31 = icmp eq i32 %33, 0
  br i1 %cmp31, label %if.then33, label %rtl8192_phyConfigBB.exit70.if.end41_crit_edge

rtl8192_phyConfigBB.exit70.if.end41_crit_edge:    ; preds = %rtl8192_phyConfigBB.exit70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then33:                                        ; preds = %rtl8192_phyConfigBB.exit70
  call void @__sanitizer_cov_trace_pc() #9
  %AntennaTxPwDiff = getelementptr i8, ptr %dev, i32 34353
  %arrayidx = getelementptr i8, ptr %dev, i32 34354
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %conv34 = zext i8 %35 to i32
  %shl = shl nuw nsw i32 %conv34, 4
  %36 = ptrtoint ptr %AntennaTxPwDiff to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %AntennaTxPwDiff, align 1
  %conv37 = zext i8 %37 to i32
  %or38 = or i32 %shl, %conv37
  %38 = ptrtoint ptr %reg_u32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or38, ptr %reg_u32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i71) #7
  %39 = ptrtoint ptr %reg.i71 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %reg.i71, align 4, !annotation !188
  %call.i72 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2060, ptr noundef nonnull %reg.i71) #7
  %40 = ptrtoint ptr %reg.i71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg.i71, align 4
  %and.i73 = and i32 %41, -65281
  %shl.i = shl nuw nsw i32 %or38, 8
  %or.i = or i32 %and.i73, %shl.i
  store i32 %or.i, ptr %reg.i71, align 4
  %call1.i74 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2060, i32 noundef %or.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i71) #7
  %CrystalCap = getelementptr i8, ptr %dev, i32 34355
  %42 = ptrtoint ptr %CrystalCap to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %CrystalCap, align 1
  %44 = and i8 %43, 15
  %and40 = zext i8 %44 to i32
  %45 = ptrtoint ptr %reg_u32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and40, ptr %reg_u32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i75) #7
  %46 = ptrtoint ptr %reg.i75 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %reg.i75, align 4, !annotation !188
  %call.i76 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2176, ptr noundef nonnull %reg.i75) #7
  %47 = ptrtoint ptr %reg.i75 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg.i75, align 4
  %and.i77 = and i32 %48, -251658241
  %shl.i78 = shl nuw nsw i32 %and40, 24
  %or.i79 = or i32 %and.i77, %shl.i78
  store i32 %or.i79, ptr %reg.i75, align 4
  %call1.i80 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2176, i32 noundef %or.i79) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i75) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %rtl8192_phyConfigBB.exit70.if.end41_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i81) #7
  %49 = ptrtoint ptr %reg.i81 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %reg.i81, align 4, !annotation !188
  %call.i82 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2084, ptr noundef nonnull %reg.i81) #7
  %50 = ptrtoint ptr %reg.i81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg.i81, align 4
  %and.i83 = lshr i32 %51, 9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i81) #7
  %52 = trunc i32 %and.i83 to i8
  %conv43 = and i8 %52, 1
  %bCckHighPower = getelementptr i8, ptr %dev, i32 34359
  %53 = ptrtoint ptr %bCckHighPower to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv43, ptr %bCckHighPower, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then21, %do.body16, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_u32) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_u8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192_phy_getTxPower(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !188
  %MCSTxPowerLevelOriginalOffset = getelementptr i8, ptr %dev, i32 34276
  %call1 = tail call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 3584, ptr noundef %MCSTxPowerLevelOriginalOffset) #7
  %arrayidx3 = getelementptr i8, ptr %dev, i32 34280
  %call4 = tail call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 3588, ptr noundef %arrayidx3) #7
  %arrayidx6 = getelementptr i8, ptr %dev, i32 34284
  %call7 = tail call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 3600, ptr noundef %arrayidx6) #7
  %arrayidx9 = getelementptr i8, ptr %dev, i32 34288
  %call10 = tail call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 3604, ptr noundef %arrayidx9) #7
  %arrayidx12 = getelementptr i8, ptr %dev, i32 34292
  %call13 = tail call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 3608, ptr noundef %arrayidx12) #7
  %arrayidx15 = getelementptr i8, ptr %dev, i32 34296
  %call16 = tail call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 3612, ptr noundef %arrayidx15) #7
  %DefaultInitialGain = getelementptr i8, ptr %dev, i32 35215
  %call18 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 3152, ptr noundef %DefaultInitialGain) #7
  %arrayidx20 = getelementptr i8, ptr %dev, i32 35216
  %call21 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 3160, ptr noundef %arrayidx20) #7
  %arrayidx23 = getelementptr i8, ptr %dev, i32 35217
  %call24 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 3168, ptr noundef %arrayidx23) #7
  %arrayidx26 = getelementptr i8, ptr %dev, i32 35218
  %call27 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 3176, ptr noundef %arrayidx26) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %1 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end48_crit_edge, label %do.body28

entry.do.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.body28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_getTxPower.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_getTxPower, %if.then34)) #7
          to label %do.end48 [label %if.then34], !srcloc !190

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %DefaultInitialGain to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %DefaultInitialGain, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx20, align 1
  %conv39 = zext i8 %5 to i32
  %6 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx23, align 1
  %conv42 = zext i8 %7 to i32
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx26, align 1
  %conv45 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_getTxPower.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv39, i32 noundef %conv42, i32 noundef %conv45) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then34, %do.body28, %entry.do.end48_crit_edge
  %framesync = getelementptr i8, ptr %dev, i32 35289
  %call49 = tail call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 3128, ptr noundef %framesync) #7
  %call50 = call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 3124, ptr noundef nonnull %tmp) #7
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tmp, align 1
  %conv51 = zext i8 %11 to i32
  %framesyncC34 = getelementptr i8, ptr %dev, i32 35292
  %12 = ptrtoint ptr %framesyncC34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv51, ptr %framesyncC34, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %13 = load i32, ptr @rt_global_debug_component, align 4
  %and53 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.end48.do.end76_crit_edge, label %do.body56

do.end48.do.end76_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76

do.body56:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_getTxPower.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_getTxPower, %if.then68)) #7
          to label %do.end76 [label %if.then68], !srcloc !190

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %framesync to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %framesync, align 1
  %conv70 = zext i8 %15 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_getTxPower.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.12, i32 noundef 3128, i32 noundef %conv70) #7
  br label %do.end76

do.end76:                                         ; preds = %if.then68, %do.body56, %do.end48.do.end76_crit_edge
  %SifsTime = getelementptr i8, ptr %dev, i32 35396
  %call77 = call i32 @read_nic_word(ptr noundef %dev, i32 noundef 62, ptr noundef %SifsTime) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_nic_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_nic_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192_phy_setTxPower(ptr noundef %dev, i8 noundef zeroext %channel) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_chip = getelementptr i8, ptr %dev, i32 30468
  %0 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr i8, ptr %dev, i32 30120
  %conv = zext i8 %channel to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx3 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 85, i32 %sub
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %arrayidx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 84, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  tail call void @phy_set_rf8256_cck_tx_power(ptr noundef %dev, i8 noundef zeroext %5) #7
  tail call void @phy_set_rf8256_ofdm_tx_power(ptr noundef %dev, i8 noundef zeroext %3) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %6 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %6, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.body4

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_setTxPower.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_setTxPower, %if.then9)) #7
          to label %sw.epilog [label %if.then9], !srcloc !190

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_setTxPower.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then9, %do.body4, %do.body.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_rf8256_cck_tx_power(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_rf8256_ofdm_tx_power(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192_phy_RFConfig(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_chip = getelementptr i8, ptr %dev, i32 30468
  %0 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_rf8256_config(ptr noundef %dev) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %2 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.body1

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_RFConfig.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_RFConfig, %if.then6)) #7
          to label %sw.epilog [label %if.then6], !srcloc !190

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_RFConfig.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.16) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6, %do.body1, %do.body.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_rf8256_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8192_phy_updateInitGain(ptr nocapture noundef %dev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl8192_phy_ConfigRFWithHeaderFile(ptr noundef %dev, i32 noundef %e_rfpath) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %e_rfpath to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %e_rfpath, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.for.body_crit_edge
    i32 1, label %entry.for.body8_crit_edge
    i32 2, label %for.body28
    i32 3, label %for.body48
  ]

entry.for.body8_crit_edge:                        ; preds = %entry
  br label %for.body8

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0104 = phi i32 [ %add4, %for.inc.for.body_crit_edge ], [ %e_rfpath, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x i32], ptr @Rtl8192UsbRadioA_Array, i32 0, i32 %i.0104
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %2)
  %cmp1 = icmp eq i32 %2, 254
  br i1 %cmp1, label %for.body.while.body_crit_edge, label %if.end

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %__ms.0103 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %for.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0103, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add = or i32 %i.0104, 1
  %arrayidx3 = getelementptr [0 x i32], ptr @Rtl8192UsbRadioA_Array, i32 0, i32 %add
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 0, i32 noundef %2, i32 noundef 4095, i32 noundef %5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %while.body.for.inc_crit_edge
  %add4 = add nuw nsw i32 %i.0104, 2
  %cmp = icmp ult i32 %i.0104, 244
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.sw.epilog_crit_edge

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body8:                                        ; preds = %for.inc22.for.body8_crit_edge, %entry.for.body8_crit_edge
  %i.1101 = phi i32 [ %add23, %for.inc22.for.body8_crit_edge ], [ 0, %entry.for.body8_crit_edge ]
  %arrayidx9 = getelementptr [0 x i32], ptr @Rtl8192UsbRadioB_Array, i32 0, i32 %i.1101
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %8)
  %cmp10 = icmp eq i32 %8, 254
  br i1 %cmp10, label %for.body8.while.body16_crit_edge, label %if.end18

for.body8.while.body16_crit_edge:                 ; preds = %for.body8
  br label %while.body16

while.body16:                                     ; preds = %while.body16.while.body16_crit_edge, %for.body8.while.body16_crit_edge
  %__ms12.0100 = phi i32 [ %dec14, %while.body16.while.body16_crit_edge ], [ 100, %for.body8.while.body16_crit_edge ]
  %dec14 = add nsw i32 %__ms12.0100, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  %tobool15.not = icmp eq i32 %dec14, 0
  br i1 %tobool15.not, label %while.body16.for.inc22_crit_edge, label %while.body16.while.body16_crit_edge

while.body16.while.body16_crit_edge:              ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body16

while.body16.for.inc22_crit_edge:                 ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22

if.end18:                                         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  %add20 = or i32 %i.1101, 1
  %arrayidx21 = getelementptr [0 x i32], ptr @Rtl8192UsbRadioB_Array, i32 0, i32 %add20
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx21, align 4
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 1, i32 noundef %8, i32 noundef 4095, i32 noundef %11)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  br label %for.inc22

for.inc22:                                        ; preds = %if.end18, %while.body16.for.inc22_crit_edge
  %add23 = add nuw nsw i32 %i.1101, 2
  %cmp7 = icmp ult i32 %i.1101, 76
  br i1 %cmp7, label %for.inc22.for.body8_crit_edge, label %for.inc22.sw.epilog_crit_edge

for.inc22.sw.epilog_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.inc22.for.body8_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.body28:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @Rtl8192UsbRadioC_Array to i32))
  %13 = load i32, ptr @Rtl8192UsbRadioC_Array, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %13)
  %cmp30 = icmp eq i32 %13, 254
  br i1 %cmp30, label %for.body28.while.body36_crit_edge, label %if.end38

for.body28.while.body36_crit_edge:                ; preds = %for.body28
  br label %while.body36

while.body36:                                     ; preds = %while.body36.while.body36_crit_edge, %for.body28.while.body36_crit_edge
  %__ms32.099 = phi i32 [ %dec34, %while.body36.while.body36_crit_edge ], [ 100, %for.body28.while.body36_crit_edge ]
  %dec34 = add nsw i32 %__ms32.099, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #7
  %tobool35.not = icmp eq i32 %dec34, 0
  br i1 %tobool35.not, label %while.body36.sw.epilog_crit_edge, label %while.body36.while.body36_crit_edge

while.body36.while.body36_crit_edge:              ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body36

while.body36.sw.epilog_crit_edge:                 ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end38:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i32], ptr @Rtl8192UsbRadioC_Array, i32 0, i32 1) to i32))
  %15 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @Rtl8192UsbRadioC_Array, i32 0, i32 1), align 4
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 2, i32 noundef %13, i32 noundef 4095, i32 noundef %15)
  br label %sw.epilog.sink.split

for.body48:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @Rtl8192UsbRadioD_Array to i32))
  %16 = load i32, ptr @Rtl8192UsbRadioD_Array, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %16)
  %cmp50 = icmp eq i32 %16, 254
  br i1 %cmp50, label %for.body48.while.body56_crit_edge, label %if.end58

for.body48.while.body56_crit_edge:                ; preds = %for.body48
  br label %while.body56

while.body56:                                     ; preds = %while.body56.while.body56_crit_edge, %for.body48.while.body56_crit_edge
  %__ms52.098 = phi i32 [ %dec54, %while.body56.while.body56_crit_edge ], [ 100, %for.body48.while.body56_crit_edge ]
  %dec54 = add nsw i32 %__ms52.098, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  %tobool55.not = icmp eq i32 %dec54, 0
  br i1 %tobool55.not, label %while.body56.sw.epilog_crit_edge, label %while.body56.while.body56_crit_edge

while.body56.while.body56_crit_edge:              ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body56

while.body56.sw.epilog_crit_edge:                 ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end58:                                         ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i32], ptr @Rtl8192UsbRadioD_Array, i32 0, i32 1) to i32))
  %18 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @Rtl8192UsbRadioD_Array, i32 0, i32 1), align 4
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 3, i32 noundef %16, i32 noundef 4095, i32 noundef %18)
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end58, %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %while.body56.sw.epilog_crit_edge, %while.body36.sw.epilog_crit_edge, %for.inc22.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8192_SetRFPowerState(ptr noundef %dev, i32 noundef %eRFPowerState) local_unnamed_addr #2 align 64 {
entry:
  %reg.i115 = alloca i32, align 4
  %reg.i111 = alloca i32, align 4
  %reg.i107 = alloca i32, align 4
  %reg.i103 = alloca i32, align 4
  %reg.i99 = alloca i32, align 4
  %reg.i95 = alloca i32, align 4
  %reg.i90 = alloca i32, align 4
  %reg.i85 = alloca i32, align 4
  %reg.i80 = alloca i32, align 4
  %reg.i75 = alloca i32, align 4
  %reg.i70 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %eRFPowerState1 = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %eRFPowerState1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eRFPowerState1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %eRFPowerState)
  %cmp = icmp eq i32 %3, %eRFPowerState
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %SetRFPowerStateInProgress = getelementptr i8, ptr %dev, i32 34397
  %4 = ptrtoint ptr %SetRFPowerStateInProgress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %SetRFPowerStateInProgress, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %SetRFPowerStateInProgress to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %SetRFPowerStateInProgress, align 1
  %rf_chip = getelementptr i8, ptr %dev, i32 30468
  %7 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cond = icmp eq i32 %8, 2
  br i1 %cond, label %sw.bb, label %do.body20

sw.bb:                                            ; preds = %if.end3
  %9 = zext i32 %eRFPowerState to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %eRFPowerState, label %sw.default [
    i32 0, label %sw.bb5
    i32 1, label %sw.bb.sw.epilog44_crit_edge
    i32 2, label %sw.bb6
  ]

sw.bb.sw.epilog44_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog44

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %reg.i, align 4, !annotation !188
  %call.i = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2144, ptr noundef nonnull %reg.i) #7
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %12, 16
  store i32 %or.i, ptr %reg.i, align 4
  %call1.i = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2144, i32 noundef %or.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i70) #7
  %13 = ptrtoint ptr %reg.i70 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %reg.i70, align 4, !annotation !188
  %call.i71 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2188, ptr noundef nonnull %reg.i70) #7
  %14 = ptrtoint ptr %reg.i70 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg.i70, align 4
  %or.i73 = or i32 %15, 768
  store i32 %or.i73, ptr %reg.i70, align 4
  %call1.i74 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2188, i32 noundef %or.i73) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i70) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i75) #7
  %16 = ptrtoint ptr %reg.i75 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %reg.i75, align 4, !annotation !188
  %call.i76 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2176, ptr noundef nonnull %reg.i75) #7
  %17 = ptrtoint ptr %reg.i75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg.i75, align 4
  %or.i78 = or i32 %18, 24
  store i32 %or.i78, ptr %reg.i75, align 4
  %call1.i79 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2176, i32 noundef %or.i78) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i75) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i80) #7
  %19 = ptrtoint ptr %reg.i80 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %reg.i80, align 4, !annotation !188
  %call.i81 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 3076, ptr noundef nonnull %reg.i80) #7
  %20 = ptrtoint ptr %reg.i80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg.i80, align 4
  %or.i83 = or i32 %21, 3
  store i32 %or.i83, ptr %reg.i80, align 4
  %call1.i84 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 3076, i32 noundef %or.i83) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i80) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i85) #7
  %22 = ptrtoint ptr %reg.i85 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %reg.i85, align 4, !annotation !188
  %call.i86 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 3332, ptr noundef nonnull %reg.i85) #7
  %23 = ptrtoint ptr %reg.i85 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg.i85, align 4
  %or.i88 = or i32 %24, 3
  store i32 %or.i88, ptr %reg.i85, align 4
  %call1.i89 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 3332, i32 noundef %or.i88) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i85) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i90) #7
  %25 = ptrtoint ptr %reg.i90 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %reg.i90, align 4, !annotation !188
  %call.i91 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2176, ptr noundef nonnull %reg.i90) #7
  %26 = ptrtoint ptr %reg.i90 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg.i90, align 4
  %or.i93 = or i32 %27, 96
  store i32 %or.i93, ptr %reg.i90, align 4
  %call1.i94 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2176, i32 noundef %or.i93) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i90) #7
  br label %sw.epilog44

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i95) #7
  %28 = ptrtoint ptr %reg.i95 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %reg.i95, align 4, !annotation !188
  %call.i96 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2144, ptr noundef nonnull %reg.i95) #7
  %29 = ptrtoint ptr %reg.i95 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg.i95, align 4
  %and.i97 = and i32 %30, -17
  store i32 %and.i97, ptr %reg.i95, align 4
  %call1.i98 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2144, i32 noundef %and.i97) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i95) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i99) #7
  %31 = ptrtoint ptr %reg.i99 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %reg.i99, align 4, !annotation !188
  %call.i100 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2188, ptr noundef nonnull %reg.i99) #7
  %32 = ptrtoint ptr %reg.i99 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg.i99, align 4
  %and.i101 = and i32 %33, -3841
  store i32 %and.i101, ptr %reg.i99, align 4
  %call1.i102 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2188, i32 noundef %and.i101) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i99) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i103) #7
  %34 = ptrtoint ptr %reg.i103 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %reg.i103, align 4, !annotation !188
  %call.i104 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2176, ptr noundef nonnull %reg.i103) #7
  %35 = ptrtoint ptr %reg.i103 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg.i103, align 4
  %and.i105 = and i32 %36, -25
  store i32 %and.i105, ptr %reg.i103, align 4
  %call1.i106 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2176, i32 noundef %and.i105) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i103) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i107) #7
  %37 = ptrtoint ptr %reg.i107 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %reg.i107, align 4, !annotation !188
  %call.i108 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 3076, ptr noundef nonnull %reg.i107) #7
  %38 = ptrtoint ptr %reg.i107 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg.i107, align 4
  %and.i109 = and i32 %39, -16
  store i32 %and.i109, ptr %reg.i107, align 4
  %call1.i110 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 3076, i32 noundef %and.i109) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i107) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i111) #7
  %40 = ptrtoint ptr %reg.i111 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %reg.i111, align 4, !annotation !188
  %call.i112 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 3332, ptr noundef nonnull %reg.i111) #7
  %41 = ptrtoint ptr %reg.i111 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg.i111, align 4
  %and.i113 = and i32 %42, -16
  store i32 %and.i113, ptr %reg.i111, align 4
  %call1.i114 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 3332, i32 noundef %and.i113) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i111) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i115) #7
  %43 = ptrtoint ptr %reg.i115 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %reg.i115, align 4, !annotation !188
  %call.i116 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2176, ptr noundef nonnull %reg.i115) #7
  %44 = ptrtoint ptr %reg.i115 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg.i115, align 4
  %and.i117 = and i32 %45, -97
  store i32 %and.i117, ptr %reg.i115, align 4
  %call1.i118 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2176, i32 noundef %and.i117) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i115) #7
  br label %sw.epilog44

sw.default:                                       ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %46 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %tobool7.not = icmp sgt i32 %46, -1
  br i1 %tobool7.not, label %sw.default.sw.epilog44_crit_edge, label %do.body9

sw.default.sw.epilog44_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog44

do.body9:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SetRFPowerState.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SetRFPowerState, %if.then14)) #7
          to label %sw.epilog44 [label %if.then14], !srcloc !190

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SetRFPowerState.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %eRFPowerState) #7
  br label %sw.epilog44

do.body20:                                        ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %47 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %tobool22.not = icmp sgt i32 %47, -1
  br i1 %tobool22.not, label %do.body20.sw.epilog44_crit_edge, label %do.body24

do.body20.sw.epilog44_crit_edge:                  ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog44

do.body24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SetRFPowerState.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SetRFPowerState, %if.then36)) #7
          to label %sw.epilog44 [label %if.then36], !srcloc !190

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rf_chip, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SetRFPowerState.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.19, i32 noundef %49) #7
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %if.then36, %do.body24, %do.body20.sw.epilog44_crit_edge, %if.then14, %do.body9, %sw.default.sw.epilog44_crit_edge, %sw.bb6, %sw.bb5, %sw.bb.sw.epilog44_crit_edge
  %bResult.0.off0 = phi i1 [ false, %if.then14 ], [ false, %sw.default.sw.epilog44_crit_edge ], [ true, %sw.bb6 ], [ true, %sw.bb.sw.epilog44_crit_edge ], [ true, %sw.bb5 ], [ true, %if.then36 ], [ true, %do.body20.sw.epilog44_crit_edge ], [ false, %do.body9 ], [ true, %do.body24 ]
  %50 = ptrtoint ptr %SetRFPowerStateInProgress to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %SetRFPowerStateInProgress, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog44, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %bResult.0.off0, %sw.epilog44 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192_SwChnl_WorkItem(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  %delay.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SwChnl_WorkItem, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !190

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %chan = getelementptr i8, ptr %dev, i32 30362
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %chan, align 2
  %conv = sext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.21, i32 noundef %conv) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %chan10 = getelementptr i8, ptr %dev, i32 30362
  %3 = ptrtoint ptr %chan10 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %chan10, align 2
  %conv11 = trunc i16 %4 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay.i) #7
  %up.i = getelementptr i8, ptr %dev, i32 30368
  %SwChnlStage.i = getelementptr i8, ptr %dev, i32 34365
  %SwChnlStep.i = getelementptr i8, ptr %dev, i32 34366
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.end9
  %call1.i = call fastcc zeroext i8 @rtl8192_phy_SwChnlStepByStep(ptr noundef %dev, i8 noundef zeroext %conv11, ptr noundef %SwChnlStage.i, ptr noundef %SwChnlStep.i, ptr noundef nonnull %delay.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.i)
  %tobool.not.i = icmp eq i8 %call1.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.cond.i.rtl8192_phy_FinishSwChnlNow.exit_crit_edge

while.cond.i.rtl8192_phy_FinishSwChnlNow.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8192_phy_FinishSwChnlNow.exit

while.body.i:                                     ; preds = %while.cond.i
  %5 = ptrtoint ptr %up.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %up.i, align 4
  %tobool2.not.i = icmp eq i16 %6, 0
  br i1 %tobool2.not.i, label %while.body.i.rtl8192_phy_FinishSwChnlNow.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.body.i.rtl8192_phy_FinishSwChnlNow.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8192_phy_FinishSwChnlNow.exit

rtl8192_phy_FinishSwChnlNow.exit:                 ; preds = %while.body.i.rtl8192_phy_FinishSwChnlNow.exit_crit_edge, %while.cond.i.rtl8192_phy_FinishSwChnlNow.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %7 = load i32, ptr @rt_global_debug_component, align 4
  %and13 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %rtl8192_phy_FinishSwChnlNow.exit.do.end34_crit_edge, label %do.body16

rtl8192_phy_FinishSwChnlNow.exit.do.end34_crit_edge: ; preds = %rtl8192_phy_FinishSwChnlNow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.body16:                                        ; preds = %rtl8192_phy_FinishSwChnlNow.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SwChnl_WorkItem, %if.then28)) #7
          to label %do.end34 [label %if.then28], !srcloc !190

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.22) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then28, %do.body16, %rtl8192_phy_FinishSwChnlNow.exit.do.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl8192_phy_SwChnl(ptr noundef %dev, i8 noundef zeroext %channel) local_unnamed_addr #2 align 64 {
entry:
  %delay.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_SwChnl, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !190

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %SwChnlInProgress = getelementptr i8, ptr %dev, i32 34364
  %1 = ptrtoint ptr %SwChnlInProgress to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %SwChnlInProgress, align 4
  %conv = zext i8 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %conv) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %up = getelementptr i8, ptr %dev, i32 30368
  %3 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool10.not = icmp eq i16 %4, 0
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %SwChnlInProgress13 = getelementptr i8, ptr %dev, i32 34364
  %5 = ptrtoint ptr %SwChnlInProgress13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %SwChnlInProgress13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool14.not = icmp eq i8 %6, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %7 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ieee80211, align 4
  %mode = getelementptr inbounds %struct.ieee80211_device, ptr %8, i32 0, i32 86
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %10, label %if.end16.if.then111_crit_edge [
    i32 1, label %if.end16.sw.bb_crit_edge
    i32 32, label %if.end16.sw.bb_crit_edge141
    i32 2, label %sw.bb44
    i32 4, label %if.end16.sw.bb73_crit_edge
    i32 16, label %if.end16.sw.bb73_crit_edge142
  ]

if.end16.sw.bb73_crit_edge142:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb73

if.end16.sw.bb73_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb73

if.end16.sw.bb_crit_edge141:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end16.sw.bb_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end16.if.then111_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then111

sw.bb:                                            ; preds = %if.end16.sw.bb_crit_edge, %if.end16.sw.bb_crit_edge141
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %channel)
  %cmp = icmp ult i8 %channel, 15
  br i1 %cmp, label %do.body20, label %sw.bb.if.then111_crit_edge

sw.bb.if.then111_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then111

do.body20:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %12 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool22.not = icmp sgt i32 %12, -1
  br i1 %tobool22.not, label %do.body20.cleanup_crit_edge, label %do.body24

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_SwChnl, %if.then36)) #7
          to label %cleanup [label %if.then36], !srcloc !190

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.25) #7
  br label %cleanup

sw.bb44:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel)
  %cmp46 = icmp ugt i8 %channel, 14
  br i1 %cmp46, label %do.body49, label %sw.bb44.if.then111_crit_edge

sw.bb44.if.then111_crit_edge:                     ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then111

do.body49:                                        ; preds = %sw.bb44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %13 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool51.not = icmp sgt i32 %13, -1
  br i1 %tobool51.not, label %do.body49.cleanup_crit_edge, label %do.body53

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body53:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_SwChnl, %if.then65)) #7
          to label %cleanup [label %if.then65], !srcloc !190

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.26) #7
  br label %cleanup

sw.bb73:                                          ; preds = %if.end16.sw.bb73_crit_edge, %if.end16.sw.bb73_crit_edge142
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel)
  %cmp75 = icmp ugt i8 %channel, 14
  br i1 %cmp75, label %do.body78, label %sw.bb73.if.then111_crit_edge

sw.bb73.if.then111_crit_edge:                     ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then111

do.body78:                                        ; preds = %sw.bb73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %14 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool80.not = icmp sgt i32 %14, -1
  br i1 %tobool80.not, label %do.body78.cleanup_crit_edge, label %do.body82

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body82:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_SwChnl, %if.then94)) #7
          to label %cleanup [label %if.then94], !srcloc !190

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.then111:                                       ; preds = %sw.bb73.if.then111_crit_edge, %sw.bb44.if.then111_crit_edge, %sw.bb.if.then111_crit_edge, %if.end16.if.then111_crit_edge
  %15 = ptrtoint ptr %SwChnlInProgress13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %SwChnlInProgress13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %channel)
  %cmp104 = icmp eq i8 %channel, 0
  %spec.store.select = select i1 %cmp104, i8 1, i8 %channel
  %conv108 = zext i8 %spec.store.select to i16
  %chan = getelementptr i8, ptr %dev, i32 30362
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv108, ptr %chan, align 2
  %SwChnlStage = getelementptr i8, ptr %dev, i32 34365
  %17 = ptrtoint ptr %SwChnlStage to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %SwChnlStage, align 1
  %SwChnlStep = getelementptr i8, ptr %dev, i32 34366
  %18 = ptrtoint ptr %SwChnlStep to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %SwChnlStep, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %19 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then111.do.end9.i_crit_edge, label %do.body1.i

if.then111.do.end9.i_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

do.body1.i:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_SwChnl, %if.then6.i)) #7
          to label %do.end9.i [label %if.then6.i], !srcloc !190

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %chan, align 2
  %conv.i = sext i16 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #7
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %do.body1.i, %if.then111.do.end9.i_crit_edge
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %chan, align 2
  %conv11.i = trunc i16 %23 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay.i.i) #7
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %do.end9.i
  %call1.i.i = call fastcc zeroext i8 @rtl8192_phy_SwChnlStepByStep(ptr noundef %dev, i8 noundef zeroext %conv11.i, ptr noundef %SwChnlStage, ptr noundef %SwChnlStep, ptr noundef nonnull %delay.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.i.i)
  %tobool.not.i.i = icmp eq i8 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.cond.i.i.rtl8192_phy_FinishSwChnlNow.exit.i_crit_edge

while.cond.i.i.rtl8192_phy_FinishSwChnlNow.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8192_phy_FinishSwChnlNow.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %24 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %up, align 4
  %tobool2.not.i.i = icmp eq i16 %25, 0
  br i1 %tobool2.not.i.i, label %while.body.i.i.rtl8192_phy_FinishSwChnlNow.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.rtl8192_phy_FinishSwChnlNow.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8192_phy_FinishSwChnlNow.exit.i

rtl8192_phy_FinishSwChnlNow.exit.i:               ; preds = %while.body.i.i.rtl8192_phy_FinishSwChnlNow.exit.i_crit_edge, %while.cond.i.i.rtl8192_phy_FinishSwChnlNow.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %26 = load i32, ptr @rt_global_debug_component, align 4
  %and13.i = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %rtl8192_phy_FinishSwChnlNow.exit.i.if.end112_crit_edge, label %do.body16.i

rtl8192_phy_FinishSwChnlNow.exit.i.if.end112_crit_edge: ; preds = %rtl8192_phy_FinishSwChnlNow.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

do.body16.i:                                      ; preds = %rtl8192_phy_FinishSwChnlNow.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_SwChnl, %if.then28.i)) #7
          to label %if.end112 [label %if.then28.i], !srcloc !190

if.then28.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.22) #7
  br label %if.end112

if.end112:                                        ; preds = %if.then28.i, %do.body16.i, %rtl8192_phy_FinishSwChnlNow.exit.i.if.end112_crit_edge
  %27 = ptrtoint ptr %SwChnlInProgress13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %SwChnlInProgress13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %if.then94, %do.body82, %do.body78.cleanup_crit_edge, %if.then65, %do.body53, %do.body49.cleanup_crit_edge, %if.then36, %do.body24, %do.body20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.end112 ], [ 0, %do.end9.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %do.body20.cleanup_crit_edge ], [ 0, %if.then65 ], [ 0, %do.body49.cleanup_crit_edge ], [ 0, %if.then94 ], [ 0, %do.body78.cleanup_crit_edge ], [ 0, %do.body24 ], [ 0, %do.body53 ], [ 0, %do.body82 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192_SetBWModeWorkItem(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  %reg.i388 = alloca i32, align 4
  %reg.i384 = alloca i32, align 4
  %reg.i379 = alloca i32, align 4
  %reg.i374 = alloca i32, align 4
  %reg.i369 = alloca i32, align 4
  %reg.i365 = alloca i32, align 4
  %reg.i361 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %regBwOpMode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regBwOpMode) #7
  %0 = ptrtoint ptr %regBwOpMode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %regBwOpMode, align 1, !annotation !188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %1 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SetBWModeWorkItem, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !190

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %CurrentChannelBW = getelementptr i8, ptr %dev, i32 34368
  %2 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %rf_chip = getelementptr i8, ptr %dev, i32 30468
  %4 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rf_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp10 = icmp eq i32 %5, 4
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %SetBWModeInProgress = getelementptr i8, ptr %dev, i32 34367
  %6 = ptrtoint ptr %SetBWModeInProgress to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %SetBWModeInProgress, align 1
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %call13 = call i32 @read_nic_byte(ptr noundef %dev, i32 noundef 768, ptr noundef nonnull %regBwOpMode) #7
  %CurrentChannelBW14 = getelementptr i8, ptr %dev, i32 34368
  %7 = ptrtoint ptr %CurrentChannelBW14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %CurrentChannelBW14, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %8, label %do.body22 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %regBwOpMode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %regBwOpMode, align 1
  %12 = or i8 %11, 4
  store i8 %12, ptr %regBwOpMode, align 1
  %call16 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 768, i8 noundef zeroext %12) #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %regBwOpMode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regBwOpMode, align 1
  %15 = and i8 %14, -5
  store i8 %15, ptr %regBwOpMode, align 1
  %call21 = call i32 @write_nic_byte(ptr noundef %dev, i32 noundef 768, i8 noundef zeroext %15) #7
  br label %sw.epilog

do.body22:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %16 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool24.not = icmp sgt i32 %16, -1
  br i1 %tobool24.not, label %do.body22.sw.epilog_crit_edge, label %do.body26

do.body22.sw.epilog_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SetBWModeWorkItem, %if.then38)) #7
          to label %sw.epilog [label %if.then38], !srcloc !190

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %CurrentChannelBW14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %CurrentChannelBW14, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.32, i32 noundef %18) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then38, %do.body26, %do.body22.sw.epilog_crit_edge, %sw.bb17, %sw.bb
  %19 = ptrtoint ptr %CurrentChannelBW14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %CurrentChannelBW14, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %20, label %do.body194 [
    i32 0, label %sw.bb47
    i32 1, label %sw.bb115
  ]

sw.bb47:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %reg.i, align 4, !annotation !188
  %call.i = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2048, ptr noundef nonnull %reg.i) #7
  %23 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %24, -2
  store i32 %and.i, ptr %reg.i, align 4
  %call1.i = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2048, i32 noundef %and.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i361) #7
  %25 = ptrtoint ptr %reg.i361 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %reg.i361, align 4, !annotation !188
  %call.i362 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2304, ptr noundef nonnull %reg.i361) #7
  %26 = ptrtoint ptr %reg.i361 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg.i361, align 4
  %and.i363 = and i32 %27, -2
  store i32 %and.i363, ptr %reg.i361, align 4
  %call1.i364 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2304, i32 noundef %and.i363) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i361) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i365) #7
  %28 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %reg.i365, align 4, !annotation !188
  %call.i366 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2176, ptr noundef nonnull %reg.i365) #7
  %29 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg.i365, align 4
  %or.i = or i32 %30, 1048576
  store i32 %or.i, ptr %reg.i365, align 4
  %call1.i368 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2176, i32 noundef %or.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i365) #7
  %cck_present_attenuation_20Mdefault = getelementptr i8, ptr %dev, i32 35202
  %31 = ptrtoint ptr %cck_present_attenuation_20Mdefault to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cck_present_attenuation_20Mdefault, align 2
  %cck_present_attenuation_difference = getelementptr i8, ptr %dev, i32 35204
  %33 = ptrtoint ptr %cck_present_attenuation_difference to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cck_present_attenuation_difference, align 4
  %add = add i8 %34, %32
  %cck_present_attenuation = getelementptr i8, ptr %dev, i32 35201
  %35 = call i8 @llvm.smin.i8(i8 %add, i8 22)
  %36 = call i8 @llvm.smax.i8(i8 %35, i8 0)
  %37 = ptrtoint ptr %cck_present_attenuation to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %cck_present_attenuation, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %38 = load i32, ptr @rt_global_debug_component, align 4
  %and66 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %sw.bb47.do.end89_crit_edge, label %do.body69

sw.bb47.do.end89_crit_edge:                       ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89

do.body69:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SetBWModeWorkItem, %if.then81)) #7
          to label %do.end89 [label %if.then81], !srcloc !190

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %cck_present_attenuation to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cck_present_attenuation, align 1
  %conv83 = sext i8 %40 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.33, i32 noundef %conv83) #7
  br label %do.end89

do.end89:                                         ; preds = %if.then81, %do.body69, %sw.bb47.do.end89_crit_edge
  %chan = getelementptr i8, ptr %dev, i32 30362
  %41 = ptrtoint ptr %chan to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %chan, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %42)
  %cmp91 = icmp eq i16 %42, 14
  %bcck_in_ch14 = getelementptr i8, ptr %dev, i32 35206
  %43 = ptrtoint ptr %bcck_in_ch14 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bcck_in_ch14, align 2, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool93.not = icmp eq i8 %44, 0
  br i1 %cmp91, label %land.lhs.true, label %land.lhs.true102

land.lhs.true:                                    ; preds = %do.end89
  br i1 %tobool93.not, label %if.then94, label %land.lhs.true.if.else110_crit_edge

land.lhs.true.if.else110_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else110

if.then94:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %bcck_in_ch14 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %bcck_in_ch14, align 2
  call void @dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %sw.epilog218

land.lhs.true102:                                 ; preds = %do.end89
  br i1 %tobool93.not, label %land.lhs.true102.if.else110_crit_edge, label %if.then106

land.lhs.true102.if.else110_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else110

if.then106:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %bcck_in_ch14 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %bcck_in_ch14, align 2
  call void @dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext false) #7
  br label %sw.epilog218

if.else110:                                       ; preds = %land.lhs.true102.if.else110_crit_edge, %land.lhs.true.if.else110_crit_edge
  %bcck_in_ch14111 = getelementptr i8, ptr %dev, i32 35206
  %47 = ptrtoint ptr %bcck_in_ch14111 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bcck_in_ch14111, align 2, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool112 = icmp ne i8 %48, 0
  call void @dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext %tobool112) #7
  br label %sw.epilog218

sw.bb115:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i369) #7
  %49 = ptrtoint ptr %reg.i369 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %reg.i369, align 4, !annotation !188
  %call.i370 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2048, ptr noundef nonnull %reg.i369) #7
  %50 = ptrtoint ptr %reg.i369 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg.i369, align 4
  %or.i372 = or i32 %51, 1
  store i32 %or.i372, ptr %reg.i369, align 4
  %call1.i373 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2048, i32 noundef %or.i372) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i369) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i374) #7
  %52 = ptrtoint ptr %reg.i374 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %reg.i374, align 4, !annotation !188
  %call.i375 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2304, ptr noundef nonnull %reg.i374) #7
  %53 = ptrtoint ptr %reg.i374 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg.i374, align 4
  %or.i377 = or i32 %54, 1
  store i32 %or.i377, ptr %reg.i374, align 4
  %call1.i378 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2304, i32 noundef %or.i377) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i374) #7
  %nCur40MhzPrimeSC = getelementptr i8, ptr %dev, i32 34373
  %55 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nCur40MhzPrimeSC, align 1
  %57 = lshr i8 %56, 1
  %58 = zext i8 %57 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i379) #7
  %59 = ptrtoint ptr %reg.i379 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %reg.i379, align 4, !annotation !188
  %call.i380 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2560, ptr noundef nonnull %reg.i379) #7
  %60 = ptrtoint ptr %reg.i379 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reg.i379, align 4
  %and.i381 = and i32 %61, -17
  %shl.i = shl nuw nsw i32 %58, 4
  %or.i382 = or i32 %and.i381, %shl.i
  store i32 %or.i382, ptr %reg.i379, align 4
  %call1.i383 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2560, i32 noundef %or.i382) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i379) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i384) #7
  %62 = ptrtoint ptr %reg.i384 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %reg.i384, align 4, !annotation !188
  %call.i385 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 2176, ptr noundef nonnull %reg.i384) #7
  %63 = ptrtoint ptr %reg.i384 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reg.i384, align 4
  %and.i386 = and i32 %64, -1048577
  store i32 %and.i386, ptr %reg.i384, align 4
  %call1.i387 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 2176, i32 noundef %and.i386) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i384) #7
  %65 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nCur40MhzPrimeSC, align 1
  %conv118 = zext i8 %66 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i388) #7
  %67 = ptrtoint ptr %reg.i388 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %reg.i388, align 4, !annotation !188
  %call.i389 = call i32 @read_nic_dword(ptr noundef %dev, i32 noundef 3328, ptr noundef nonnull %reg.i388) #7
  %68 = ptrtoint ptr %reg.i388 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %reg.i388, align 4
  %and.i390 = and i32 %69, -3073
  %shl.i391 = shl nuw nsw i32 %conv118, 10
  %or.i392 = or i32 %and.i390, %shl.i391
  store i32 %or.i392, ptr %reg.i388, align 4
  %call1.i393 = call i32 @write_nic_dword(ptr noundef %dev, i32 noundef 3328, i32 noundef %or.i392) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i388) #7
  %cck_present_attenuation_40Mdefault = getelementptr i8, ptr %dev, i32 35203
  %70 = ptrtoint ptr %cck_present_attenuation_40Mdefault to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %cck_present_attenuation_40Mdefault, align 1
  %cck_present_attenuation_difference120 = getelementptr i8, ptr %dev, i32 35204
  %72 = ptrtoint ptr %cck_present_attenuation_difference120 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %cck_present_attenuation_difference120, align 4
  %add122 = add i8 %73, %71
  %cck_present_attenuation124 = getelementptr i8, ptr %dev, i32 35201
  %74 = call i8 @llvm.smin.i8(i8 %add122, i8 22)
  %75 = call i8 @llvm.smax.i8(i8 %74, i8 0)
  %76 = ptrtoint ptr %cck_present_attenuation124 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %cck_present_attenuation124, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %77 = load i32, ptr @rt_global_debug_component, align 4
  %and140 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %sw.bb115.do.end163_crit_edge, label %do.body143

sw.bb115.do.end163_crit_edge:                     ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end163

do.body143:                                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SetBWModeWorkItem, %if.then155)) #7
          to label %do.end163 [label %if.then155], !srcloc !190

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %cck_present_attenuation124 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cck_present_attenuation124, align 1
  %conv157 = sext i8 %79 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.34, i32 noundef %conv157) #7
  br label %do.end163

do.end163:                                        ; preds = %if.then155, %do.body143, %sw.bb115.do.end163_crit_edge
  %chan164 = getelementptr i8, ptr %dev, i32 30362
  %80 = ptrtoint ptr %chan164 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %chan164, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %81)
  %cmp166 = icmp eq i16 %81, 14
  %bcck_in_ch14169 = getelementptr i8, ptr %dev, i32 35206
  %82 = ptrtoint ptr %bcck_in_ch14169 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bcck_in_ch14169, align 2, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool170.not = icmp eq i8 %83, 0
  br i1 %cmp166, label %land.lhs.true168, label %land.lhs.true180

land.lhs.true168:                                 ; preds = %do.end163
  br i1 %tobool170.not, label %if.then171, label %land.lhs.true168.if.else188_crit_edge

land.lhs.true168.if.else188_crit_edge:            ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else188

if.then171:                                       ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %bcck_in_ch14169 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %bcck_in_ch14169, align 2
  call void @dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %sw.epilog218

land.lhs.true180:                                 ; preds = %do.end163
  br i1 %tobool170.not, label %land.lhs.true180.if.else188_crit_edge, label %if.then184

land.lhs.true180.if.else188_crit_edge:            ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else188

if.then184:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %bcck_in_ch14169 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %bcck_in_ch14169, align 2
  call void @dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext false) #7
  br label %sw.epilog218

if.else188:                                       ; preds = %land.lhs.true180.if.else188_crit_edge, %land.lhs.true168.if.else188_crit_edge
  %bcck_in_ch14189 = getelementptr i8, ptr %dev, i32 35206
  %86 = ptrtoint ptr %bcck_in_ch14189 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bcck_in_ch14189, align 2, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool190 = icmp ne i8 %87, 0
  call void @dm_cck_txpower_adjust(ptr noundef %dev, i1 noundef zeroext %tobool190) #7
  br label %sw.epilog218

do.body194:                                       ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %88 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %tobool196.not = icmp sgt i32 %88, -1
  br i1 %tobool196.not, label %do.body194.sw.epilog218_crit_edge, label %do.body198

do.body194.sw.epilog218_crit_edge:                ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog218

do.body198:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SetBWModeWorkItem, %if.then210)) #7
          to label %sw.epilog218 [label %if.then210], !srcloc !190

if.then210:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %CurrentChannelBW14 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %CurrentChannelBW14, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.32, i32 noundef %90) #7
  br label %sw.epilog218

sw.epilog218:                                     ; preds = %if.then210, %do.body198, %do.body194.sw.epilog218_crit_edge, %if.else188, %if.then184, %if.then171, %if.else110, %if.then106, %if.then94
  %91 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rf_chip, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %92, label %do.body223 [
    i32 1, label %sw.epilog218.sw.epilog247_crit_edge
    i32 2, label %sw.bb220
    i32 3, label %sw.epilog218.sw.epilog247_crit_edge401
    i32 4, label %sw.epilog218.sw.epilog247_crit_edge402
  ]

sw.epilog218.sw.epilog247_crit_edge402:           ; preds = %sw.epilog218
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog247

sw.epilog218.sw.epilog247_crit_edge401:           ; preds = %sw.epilog218
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog247

sw.epilog218.sw.epilog247_crit_edge:              ; preds = %sw.epilog218
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog247

sw.bb220:                                         ; preds = %sw.epilog218
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %CurrentChannelBW14 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %CurrentChannelBW14, align 4
  call void @phy_set_rf8256_bandwidth(ptr noundef %dev, i32 noundef %95) #7
  br label %sw.epilog247

do.body223:                                       ; preds = %sw.epilog218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %96 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %tobool225.not = icmp sgt i32 %96, -1
  br i1 %tobool225.not, label %do.body223.sw.epilog247_crit_edge, label %do.body227

do.body223.sw.epilog247_crit_edge:                ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog247

do.body227:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SetBWModeWorkItem, %if.then239)) #7
          to label %sw.epilog247 [label %if.then239], !srcloc !190

if.then239:                                       ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rf_chip, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.35, i32 noundef %98) #7
  br label %sw.epilog247

sw.epilog247:                                     ; preds = %if.then239, %do.body227, %do.body223.sw.epilog247_crit_edge, %sw.bb220, %sw.epilog218.sw.epilog247_crit_edge, %sw.epilog218.sw.epilog247_crit_edge401, %sw.epilog218.sw.epilog247_crit_edge402
  %SetBWModeInProgress248 = getelementptr i8, ptr %dev, i32 34367
  %99 = ptrtoint ptr %SetBWModeInProgress248 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %SetBWModeInProgress248, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %100 = load i32, ptr @rt_global_debug_component, align 4
  %and250 = and i32 %100, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %sw.epilog247.cleanup_crit_edge, label %do.body253

sw.epilog247.cleanup_crit_edge:                   ; preds = %sw.epilog247
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body253:                                       ; preds = %sw.epilog247
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SetBWModeWorkItem, %if.then265)) #7
          to label %cleanup [label %if.then265], !srcloc !190

if.then265:                                       ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %101 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ieee80211, align 4
  %atm_swbw = getelementptr inbounds %struct.ieee80211_device, ptr %102, i32 0, i32 23
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %atm_swbw, i32 noundef 4) #7
  %103 = ptrtoint ptr %atm_swbw to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %atm_swbw, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.36, i32 noundef %104) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then265, %do.body253, %sw.epilog247.cleanup_crit_edge, %if.then11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regBwOpMode) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_nic_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_cck_txpower_adjust(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_rf8256_bandwidth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192_SetBWMode(ptr noundef %dev, i32 noundef %bandwidth, i32 noundef %offset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %SetBWModeInProgress = getelementptr i8, ptr %dev, i32 34367
  %0 = ptrtoint ptr %SetBWModeInProgress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %SetBWModeInProgress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %SetBWModeInProgress to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %SetBWModeInProgress, align 1
  %CurrentChannelBW = getelementptr i8, ptr %dev, i32 34368
  %3 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bandwidth, ptr %CurrentChannelBW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %offset)
  %switch.selectcmp = icmp eq i32 %offset, 1
  %switch.select = zext i1 %switch.selectcmp to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %switch.selectcmp17 = icmp eq i32 %offset, 3
  %switch.select18 = select i1 %switch.selectcmp17, i8 2, i8 %switch.select
  %nCur40MhzPrimeSC5 = getelementptr i8, ptr %dev, i32 34373
  %4 = ptrtoint ptr %nCur40MhzPrimeSC5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %switch.select18, ptr %nCur40MhzPrimeSC5, align 1
  tail call void @rtl8192_SetBWModeWorkItem(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @InitialGain819xUsb(ptr noundef %dev, i8 noundef zeroext %Operation) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %InitialGainOperateType = getelementptr i8, ptr %dev, i32 35394
  %0 = ptrtoint ptr %InitialGainOperateType to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %Operation, ptr %InitialGainOperateType, align 2
  %up = getelementptr i8, ptr %dev, i32 30368
  %1 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv_wq = getelementptr i8, ptr %dev, i32 36000
  %3 = ptrtoint ptr %priv_wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv_wq, align 4
  %initialgain_operate_wq = getelementptr i8, ptr %dev, i32 35900
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %initialgain_operate_wq, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @InitialGainOperateWorkItemCallBack(ptr nocapture noundef %work) local_unnamed_addr #2 align 64 {
entry:
  %reg.i553 = alloca i32, align 4
  %reg.i547 = alloca i32, align 4
  %reg.i542 = alloca i32, align 4
  %reg.i537 = alloca i32, align 4
  %reg.i532 = alloca i32, align 4
  %reg.i527 = alloca i32, align 4
  %reg.i522 = alloca i32, align 4
  %reg.i519 = alloca i32, align 4
  %reg.i516 = alloca i32, align 4
  %reg.i513 = alloca i32, align 4
  %reg.i510 = alloca i32, align 4
  %reg.i507 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %work, i32 -5744
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %InitialGainOperateType = getelementptr i8, ptr %work, i32 -506
  %4 = ptrtoint ptr %InitialGainOperateType to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %InitialGainOperateType, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %5, label %do.body389 [
    i8 0, label %do.body
    i8 1, label %do.body212
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %7 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end11_crit_edge, label %do.body2

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then8)) #7
          to label %do.end11 [label %if.then8], !srcloc !190

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.38) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body2, %do.body.do.end11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 1) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then13, label %do.end11.if.end14_crit_edge

do.end11.if.end14_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %reg.i, align 4, !annotation !188
  %call.i = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 792, ptr noundef nonnull %reg.i) #7
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %11, -65281
  %or.i = or i32 %and.i, 2048
  store i32 %or.i, ptr %reg.i, align 4
  %call1.i = call i32 @write_nic_dword(ptr noundef %3, i32 noundef 792, i32 noundef %or.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.end11.if.end14_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i507) #7
  %12 = ptrtoint ptr %reg.i507 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %reg.i507, align 4, !annotation !188
  %call.i508 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 3152, ptr noundef nonnull %reg.i507) #7
  %13 = ptrtoint ptr %reg.i507 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg.i507, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i507) #7
  %conv16 = trunc i32 %14 to i8
  %initgain_backup = getelementptr i8, ptr %work, i32 -690
  %15 = ptrtoint ptr %initgain_backup to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv16, ptr %initgain_backup, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i510) #7
  %16 = ptrtoint ptr %reg.i510 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %reg.i510, align 4, !annotation !188
  %call.i511 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 3160, ptr noundef nonnull %reg.i510) #7
  %17 = ptrtoint ptr %reg.i510 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg.i510, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i510) #7
  %conv18 = trunc i32 %18 to i8
  %xbagccore1 = getelementptr i8, ptr %work, i32 -689
  %19 = ptrtoint ptr %xbagccore1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv18, ptr %xbagccore1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i513) #7
  %20 = ptrtoint ptr %reg.i513 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %reg.i513, align 4, !annotation !188
  %call.i514 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 3168, ptr noundef nonnull %reg.i513) #7
  %21 = ptrtoint ptr %reg.i513 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg.i513, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i513) #7
  %conv21 = trunc i32 %22 to i8
  %xcagccore1 = getelementptr i8, ptr %work, i32 -688
  %23 = ptrtoint ptr %xcagccore1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv21, ptr %xcagccore1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i516) #7
  %24 = ptrtoint ptr %reg.i516 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %reg.i516, align 4, !annotation !188
  %call.i517 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 3176, ptr noundef nonnull %reg.i516) #7
  %25 = ptrtoint ptr %reg.i516 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg.i516, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i516) #7
  %conv24 = trunc i32 %26 to i8
  %xdagccore1 = getelementptr i8, ptr %work, i32 -687
  %27 = ptrtoint ptr %xdagccore1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv24, ptr %xdagccore1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i519) #7
  %28 = ptrtoint ptr %reg.i519 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %reg.i519, align 4, !annotation !188
  %call.i520 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 2568, ptr noundef nonnull %reg.i519) #7
  %29 = ptrtoint ptr %reg.i519 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg.i519, align 4
  %and.i521 = lshr i32 %30, 16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i519) #7
  %conv27 = trunc i32 %and.i521 to i8
  %cca = getelementptr i8, ptr %work, i32 -686
  %31 = ptrtoint ptr %cca to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv27, ptr %cca, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %32 = load i32, ptr @rt_global_debug_component, align 4
  %and30 = and i32 %32, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end14.do.body55_crit_edge, label %do.body33

if.end14.do.body55_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

do.body33:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then45)) #7
          to label %do.body55 [label %if.then45], !srcloc !190

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %initgain_backup to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %initgain_backup, align 2
  %conv48 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.39, i32 noundef %conv48) #7
  br label %do.body55

do.body55:                                        ; preds = %if.then45, %do.body33, %if.end14.do.body55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %35 = load i32, ptr @rt_global_debug_component, align 4
  %and56 = and i32 %35, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.do.body81_crit_edge, label %do.body59

do.body55.do.body81_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body81

do.body59:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then71)) #7
          to label %do.body81 [label %if.then71], !srcloc !190

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %xbagccore1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %xbagccore1, align 1
  %conv74 = zext i8 %37 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.40, i32 noundef %conv74) #7
  br label %do.body81

do.body81:                                        ; preds = %if.then71, %do.body59, %do.body55.do.body81_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %38 = load i32, ptr @rt_global_debug_component, align 4
  %and82 = and i32 %38, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %do.body81.do.body107_crit_edge, label %do.body85

do.body81.do.body107_crit_edge:                   ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body107

do.body85:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then97)) #7
          to label %do.body107 [label %if.then97], !srcloc !190

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %xcagccore1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %xcagccore1, align 2
  %conv100 = zext i8 %40 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.41, i32 noundef %conv100) #7
  br label %do.body107

do.body107:                                       ; preds = %if.then97, %do.body85, %do.body81.do.body107_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %41 = load i32, ptr @rt_global_debug_component, align 4
  %and108 = and i32 %41, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body107.do.body133_crit_edge, label %do.body111

do.body107.do.body133_crit_edge:                  ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body133

do.body111:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then123)) #7
          to label %do.body133 [label %if.then123], !srcloc !190

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %xdagccore1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %xdagccore1, align 1
  %conv126 = zext i8 %43 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.42, i32 noundef %conv126) #7
  br label %do.body133

do.body133:                                       ; preds = %if.then123, %do.body111, %do.body107.do.body133_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %44 = load i32, ptr @rt_global_debug_component, align 4
  %and134 = and i32 %44, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %do.body133.do.body159_crit_edge, label %do.body137

do.body133.do.body159_crit_edge:                  ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body159

do.body137:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then149)) #7
          to label %do.body159 [label %if.then149], !srcloc !190

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %cca to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %cca, align 2
  %conv152 = zext i8 %46 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.43, i32 noundef %conv152) #7
  br label %do.body159

do.body159:                                       ; preds = %if.then149, %do.body137, %do.body133.do.body159_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %47 = load i32, ptr @rt_global_debug_component, align 4
  %and160 = and i32 %47, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %do.body159.do.end182_crit_edge, label %do.body163

do.body159.do.end182_crit_edge:                   ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end182

do.body163:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then175)) #7
          to label %do.end182 [label %if.then175], !srcloc !190

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug390, ptr noundef nonnull @.str.44, i32 noundef 23) #7
  br label %do.end182

do.end182:                                        ; preds = %if.then175, %do.body163, %do.body159.do.end182_crit_edge
  %call183 = call i32 @write_nic_byte(ptr noundef %3, i32 noundef 3152, i8 noundef zeroext 23) #7
  %call184 = call i32 @write_nic_byte(ptr noundef %3, i32 noundef 3160, i8 noundef zeroext 23) #7
  %call185 = call i32 @write_nic_byte(ptr noundef %3, i32 noundef 3168, i8 noundef zeroext 23) #7
  %call186 = call i32 @write_nic_byte(ptr noundef %3, i32 noundef 3176, i8 noundef zeroext 23) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %48 = load i32, ptr @rt_global_debug_component, align 4
  %and188 = and i32 %48, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %do.end182.do.end209_crit_edge, label %do.body191

do.end182.do.end209_crit_edge:                    ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end209

do.body191:                                       ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then203)) #7
          to label %do.end209 [label %if.then203], !srcloc !190

if.then203:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug391, ptr noundef nonnull @.str.45, i32 noundef 8) #7
  br label %do.end209

do.end209:                                        ; preds = %if.then203, %do.body191, %do.end182.do.end209_crit_edge
  %call210 = call i32 @write_nic_byte(ptr noundef %3, i32 noundef 2570, i8 noundef zeroext 8) #7
  br label %sw.epilog

do.body212:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %49 = load i32, ptr @rt_global_debug_component, align 4
  %and213 = and i32 %49, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %do.body212.do.end234_crit_edge, label %do.body216

do.body212.do.end234_crit_edge:                   ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end234

do.body216:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then228)) #7
          to label %do.end234 [label %if.then228], !srcloc !190

if.then228:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.46) #7
  br label %do.end234

do.end234:                                        ; preds = %if.then228, %do.body216, %do.body212.do.end234_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 1) to i32))
  %50 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp235 = icmp eq i32 %50, 0
  br i1 %cmp235, label %if.then237, label %do.end234.if.end238_crit_edge

do.end234.if.end238_crit_edge:                    ; preds = %do.end234
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end238

if.then237:                                       ; preds = %do.end234
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i522) #7
  %51 = ptrtoint ptr %reg.i522 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %reg.i522, align 4, !annotation !188
  %call.i523 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 792, ptr noundef nonnull %reg.i522) #7
  %52 = ptrtoint ptr %reg.i522 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg.i522, align 4
  %and.i524 = and i32 %53, -65281
  %or.i525 = or i32 %and.i524, 2048
  store i32 %or.i525, ptr %reg.i522, align 4
  %call1.i526 = call i32 @write_nic_dword(ptr noundef %3, i32 noundef 792, i32 noundef %or.i525) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i522) #7
  br label %if.end238

if.end238:                                        ; preds = %if.then237, %do.end234.if.end238_crit_edge
  %initgain_backup239 = getelementptr i8, ptr %work, i32 -690
  %54 = ptrtoint ptr %initgain_backup239 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %initgain_backup239, align 2
  %conv241 = zext i8 %55 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i527) #7
  %56 = ptrtoint ptr %reg.i527 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %reg.i527, align 4, !annotation !188
  %call.i528 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 3152, ptr noundef nonnull %reg.i527) #7
  %57 = ptrtoint ptr %reg.i527 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reg.i527, align 4
  %and.i529 = and i32 %58, -128
  %or.i530 = or i32 %and.i529, %conv241
  store i32 %or.i530, ptr %reg.i527, align 4
  %call1.i531 = call i32 @write_nic_dword(ptr noundef %3, i32 noundef 3152, i32 noundef %or.i530) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i527) #7
  %xbagccore1243 = getelementptr i8, ptr %work, i32 -689
  %59 = ptrtoint ptr %xbagccore1243 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %xbagccore1243, align 1
  %conv244 = zext i8 %60 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i532) #7
  %61 = ptrtoint ptr %reg.i532 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %reg.i532, align 4, !annotation !188
  %call.i533 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 3160, ptr noundef nonnull %reg.i532) #7
  %62 = ptrtoint ptr %reg.i532 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reg.i532, align 4
  %and.i534 = and i32 %63, -128
  %or.i535 = or i32 %and.i534, %conv244
  store i32 %or.i535, ptr %reg.i532, align 4
  %call1.i536 = call i32 @write_nic_dword(ptr noundef %3, i32 noundef 3160, i32 noundef %or.i535) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i532) #7
  %xcagccore1246 = getelementptr i8, ptr %work, i32 -688
  %64 = ptrtoint ptr %xcagccore1246 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %xcagccore1246, align 2
  %conv247 = zext i8 %65 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i537) #7
  %66 = ptrtoint ptr %reg.i537 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %reg.i537, align 4, !annotation !188
  %call.i538 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 3168, ptr noundef nonnull %reg.i537) #7
  %67 = ptrtoint ptr %reg.i537 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reg.i537, align 4
  %and.i539 = and i32 %68, -128
  %or.i540 = or i32 %and.i539, %conv247
  store i32 %or.i540, ptr %reg.i537, align 4
  %call1.i541 = call i32 @write_nic_dword(ptr noundef %3, i32 noundef 3168, i32 noundef %or.i540) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i537) #7
  %xdagccore1249 = getelementptr i8, ptr %work, i32 -687
  %69 = ptrtoint ptr %xdagccore1249 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %xdagccore1249, align 1
  %conv250 = zext i8 %70 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i542) #7
  %71 = ptrtoint ptr %reg.i542 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %reg.i542, align 4, !annotation !188
  %call.i543 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 3176, ptr noundef nonnull %reg.i542) #7
  %72 = ptrtoint ptr %reg.i542 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg.i542, align 4
  %and.i544 = and i32 %73, -128
  %or.i545 = or i32 %and.i544, %conv250
  store i32 %or.i545, ptr %reg.i542, align 4
  %call1.i546 = call i32 @write_nic_dword(ptr noundef %3, i32 noundef 3176, i32 noundef %or.i545) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i542) #7
  %cca252 = getelementptr i8, ptr %work, i32 -686
  %74 = ptrtoint ptr %cca252 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %cca252, align 2
  %conv253 = zext i8 %75 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i547) #7
  %76 = ptrtoint ptr %reg.i547 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %reg.i547, align 4, !annotation !188
  %call.i548 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 2568, ptr noundef nonnull %reg.i547) #7
  %77 = ptrtoint ptr %reg.i547 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %reg.i547, align 4
  %and.i549 = and i32 %78, -16711681
  %shl.i = shl nuw nsw i32 %conv253, 16
  %or.i550 = or i32 %and.i549, %shl.i
  store i32 %or.i550, ptr %reg.i547, align 4
  %call1.i551 = call i32 @write_nic_dword(ptr noundef %3, i32 noundef 2568, i32 noundef %or.i550) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i547) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %79 = load i32, ptr @rt_global_debug_component, align 4
  %and255 = and i32 %79, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  br i1 %tobool256.not, label %if.end238.do.body280_crit_edge, label %do.body258

if.end238.do.body280_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body280

do.body258:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then270)) #7
          to label %do.body280 [label %if.then270], !srcloc !190

if.then270:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %initgain_backup239 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %initgain_backup239, align 2
  %conv273 = zext i8 %81 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.47, i32 noundef %conv273) #7
  br label %do.body280

do.body280:                                       ; preds = %if.then270, %do.body258, %if.end238.do.body280_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %82 = load i32, ptr @rt_global_debug_component, align 4
  %and281 = and i32 %82, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and281)
  %tobool282.not = icmp eq i32 %and281, 0
  br i1 %tobool282.not, label %do.body280.do.body306_crit_edge, label %do.body284

do.body280.do.body306_crit_edge:                  ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body306

do.body284:                                       ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then296)) #7
          to label %do.body306 [label %if.then296], !srcloc !190

if.then296:                                       ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %xbagccore1243 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %xbagccore1243, align 1
  %conv299 = zext i8 %84 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.48, i32 noundef %conv299) #7
  br label %do.body306

do.body306:                                       ; preds = %if.then296, %do.body284, %do.body280.do.body306_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %85 = load i32, ptr @rt_global_debug_component, align 4
  %and307 = and i32 %85, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307)
  %tobool308.not = icmp eq i32 %and307, 0
  br i1 %tobool308.not, label %do.body306.do.body332_crit_edge, label %do.body310

do.body306.do.body332_crit_edge:                  ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body332

do.body310:                                       ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then322)) #7
          to label %do.body332 [label %if.then322], !srcloc !190

if.then322:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %xcagccore1246 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %xcagccore1246, align 2
  %conv325 = zext i8 %87 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.49, i32 noundef %conv325) #7
  br label %do.body332

do.body332:                                       ; preds = %if.then322, %do.body310, %do.body306.do.body332_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %88 = load i32, ptr @rt_global_debug_component, align 4
  %and333 = and i32 %88, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and333)
  %tobool334.not = icmp eq i32 %and333, 0
  br i1 %tobool334.not, label %do.body332.do.body358_crit_edge, label %do.body336

do.body332.do.body358_crit_edge:                  ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body358

do.body336:                                       ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then348)) #7
          to label %do.body358 [label %if.then348], !srcloc !190

if.then348:                                       ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %xdagccore1249 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %xdagccore1249, align 1
  %conv351 = zext i8 %90 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.50, i32 noundef %conv351) #7
  br label %do.body358

do.body358:                                       ; preds = %if.then348, %do.body336, %do.body332.do.body358_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %91 = load i32, ptr @rt_global_debug_component, align 4
  %and359 = and i32 %91, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and359)
  %tobool360.not = icmp eq i32 %and359, 0
  br i1 %tobool360.not, label %do.body358.do.end383_crit_edge, label %do.body362

do.body358.do.end383_crit_edge:                   ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end383

do.body362:                                       ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then374)) #7
          to label %do.end383 [label %if.then374], !srcloc !190

if.then374:                                       ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %cca252 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %cca252, align 2
  %conv377 = zext i8 %93 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.51, i32 noundef %conv377) #7
  br label %do.end383

do.end383:                                        ; preds = %if.then374, %do.body362, %do.body358.do.end383_crit_edge
  %rf_chip.i = getelementptr i8, ptr %3, i32 30468
  %94 = ptrtoint ptr %rf_chip.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rf_chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cond.i = icmp eq i32 %95, 2
  br i1 %cond.i, label %sw.bb.i, label %do.body.i

sw.bb.i:                                          ; preds = %do.end383
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ieee80211, align 4
  %channel = getelementptr inbounds %struct.ieee80211_device, ptr %97, i32 0, i32 82, i32 1
  %98 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %channel, align 2
  %priv.i.i = getelementptr i8, ptr %3, i32 30120
  %conv.i = zext i8 %99 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx3.i = getelementptr %struct.r8192_priv, ptr %priv.i.i, i32 0, i32 85, i32 %sub.i
  %100 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx.i = getelementptr %struct.r8192_priv, ptr %priv.i.i, i32 0, i32 84, i32 %sub.i
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i, align 1
  call void @phy_set_rf8256_cck_tx_power(ptr noundef %3, i8 noundef zeroext %103) #7
  call void @phy_set_rf8256_ofdm_tx_power(ptr noundef %3, i8 noundef zeroext %101) #7
  br label %rtl8192_phy_setTxPower.exit

do.body.i:                                        ; preds = %do.end383
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %104 = load i32, ptr @rt_global_debug_component, align 4
  %and.i552 = and i32 %104, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i552)
  %tobool.not.i = icmp eq i32 %and.i552, 0
  br i1 %tobool.not.i, label %do.body.i.rtl8192_phy_setTxPower.exit_crit_edge, label %do.body4.i

do.body.i.rtl8192_phy_setTxPower.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8192_phy_setTxPower.exit

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_setTxPower.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then9.i)) #7
          to label %rtl8192_phy_setTxPower.exit [label %if.then9.i], !srcloc !190

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_setTxPower.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #7
  br label %rtl8192_phy_setTxPower.exit

rtl8192_phy_setTxPower.exit:                      ; preds = %if.then9.i, %do.body4.i, %do.body.i.rtl8192_phy_setTxPower.exit_crit_edge, %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 1) to i32))
  %105 = load i32, ptr getelementptr inbounds (%struct.dig, ptr @dm_digtable, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp385 = icmp eq i32 %105, 0
  br i1 %cmp385, label %if.then387, label %rtl8192_phy_setTxPower.exit.sw.epilog_crit_edge

rtl8192_phy_setTxPower.exit.sw.epilog_crit_edge:  ; preds = %rtl8192_phy_setTxPower.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then387:                                       ; preds = %rtl8192_phy_setTxPower.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i553) #7
  %106 = ptrtoint ptr %reg.i553 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %reg.i553, align 4, !annotation !188
  %call.i554 = call i32 @read_nic_dword(ptr noundef %3, i32 noundef 792, ptr noundef nonnull %reg.i553) #7
  %107 = ptrtoint ptr %reg.i553 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %reg.i553, align 4
  %and.i555 = and i32 %108, -65281
  %or.i556 = or i32 %and.i555, 256
  store i32 %or.i556, ptr %reg.i553, align 4
  %call1.i557 = call i32 @write_nic_dword(ptr noundef %3, i32 noundef 792, i32 noundef %or.i556) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i553) #7
  br label %sw.epilog

do.body389:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %109 = load i32, ptr @rt_global_debug_component, align 4
  %and390 = and i32 %109, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390)
  %tobool391.not = icmp eq i32 %and390, 0
  br i1 %tobool391.not, label %do.body389.sw.epilog_crit_edge, label %do.body393

do.body389.sw.epilog_crit_edge:                   ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body393:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@InitialGainOperateWorkItemCallBack, %if.then405)) #7
          to label %sw.epilog [label %if.then405], !srcloc !190

if.then405:                                       ; preds = %do.body393
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.52) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then405, %do.body393, %do.body389.sw.epilog_crit_edge, %if.then387, %rtl8192_phy_setTxPower.exit.sw.epilog_crit_edge, %do.end209
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_nic_byte_E(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @rtl8192_phy_SwChnlStepByStep(ptr noundef %dev, i8 noundef zeroext %channel, ptr nocapture noundef %stage, ptr nocapture noundef %step, ptr nocapture noundef writeonly %delay) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #10
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i294 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 256) #10
  %tobool3.not = icmp eq ptr %call7.i.i.i294, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i295 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #10
  %tobool7.not = icmp eq ptr %call7.i.i.i295, null
  br i1 %tobool7.not, label %if.then8, label %do.body

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i294) #7
  br label %cleanup

do.body:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %3 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.do.end23_crit_edge, label %do.body12

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

do.body12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_SwChnlStepByStep, %if.then17)) #7
          to label %do.end23 [label %if.then17], !srcloc !190

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %stage to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stage, align 1
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %step to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %step, align 1
  %conv18 = zext i8 %7 to i32
  %conv19 = zext i8 %channel to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef %conv, i32 noundef %conv18, i32 noundef %conv19) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %do.body12, %do.body.do.end23_crit_edge
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %8 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ieee80211, align 4
  %call24 = tail call i32 @is_legal_channel(ptr noundef %9, i8 noundef zeroext %channel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body27, label %rtl8192_phy_SetSwChnlCmdArray.exit315

do.body27:                                        ; preds = %do.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool29.not = icmp sgt i32 %10, -1
  br i1 %tobool29.not, label %do.body27.out_crit_edge, label %do.body31

do.body27.out_crit_edge:                          ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_SwChnlStepByStep, %if.then43)) #7
          to label %out [label %if.then43], !srcloc !190

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %conv44 = zext i8 %channel to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.63, i32 noundef %conv44) #7
  br label %out

rtl8192_phy_SetSwChnlCmdArray.exit315:            ; preds = %do.end23
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call7.i.i.i, align 8
  %para_1.i = getelementptr %struct.sw_chnl_cmd, ptr %call7.i.i.i, i32 0, i32 1
  %12 = call ptr @memset(ptr %para_1.i, i32 0, i32 28)
  %rf_chip = getelementptr i8, ptr %dev, i32 30468
  %13 = call ptr @memset(ptr %call7.i.i.i294, i32 0, i32 16)
  %14 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rf_chip, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %15, label %do.body131 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb92
    i32 3, label %rtl8192_phy_SetSwChnlCmdArray.exit315.do.body155.preheader_crit_edge
  ]

rtl8192_phy_SetSwChnlCmdArray.exit315.do.body155.preheader_crit_edge: ; preds = %rtl8192_phy_SetSwChnlCmdArray.exit315
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body155.preheader

sw.bb:                                            ; preds = %rtl8192_phy_SetSwChnlCmdArray.exit315
  %conv57 = zext i8 %channel to i32
  %17 = add i8 %channel, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %17)
  %18 = icmp ult i8 %17, 14
  br i1 %18, label %rtl8192_phy_SetSwChnlCmdArray.exit336, label %do.body63

do.body63:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %19 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool65.not = icmp sgt i32 %19, -1
  br i1 %tobool65.not, label %do.body63.out_crit_edge, label %do.body67

do.body63.out_crit_edge:                          ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body67:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_SwChnlStepByStep, %if.then79)) #7
          to label %out [label %if.then79], !srcloc !190

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.64, i32 noundef %conv57) #7
  br label %out

rtl8192_phy_SetSwChnlCmdArray.exit336:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [15 x i32], ptr @RF_CHANNEL_TABLE_ZEBRA, i32 0, i32 %conv57
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  br label %sw.epilog.sink.split

sw.bb92:                                          ; preds = %rtl8192_phy_SetSwChnlCmdArray.exit315
  %conv93 = zext i8 %channel to i32
  %22 = add i8 %channel, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %22)
  %23 = icmp ult i8 %22, 14
  br i1 %23, label %sw.bb92.sw.epilog.sink.split_crit_edge, label %do.body101

sw.bb92.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

do.body101:                                       ; preds = %sw.bb92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %24 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %tobool103.not = icmp sgt i32 %24, -1
  br i1 %tobool103.not, label %do.body101.out_crit_edge, label %do.body105

do.body101.out_crit_edge:                         ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body105:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_SwChnlStepByStep, %if.then117)) #7
          to label %out [label %if.then117], !srcloc !190

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.65, i32 noundef %conv93) #7
  br label %out

do.body131:                                       ; preds = %rtl8192_phy_SetSwChnlCmdArray.exit315
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %25 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool133.not = icmp sgt i32 %25, -1
  br i1 %tobool133.not, label %do.body131.out_crit_edge, label %do.body135

do.body131.out_crit_edge:                         ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body135:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_phy_SwChnlStepByStep, %if.then147)) #7
          to label %out [label %if.then147], !srcloc !190

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rf_chip, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.35, i32 noundef %27) #7
  br label %out

sw.epilog.sink.split:                             ; preds = %sw.bb92.sw.epilog.sink.split_crit_edge, %rtl8192_phy_SetSwChnlCmdArray.exit336
  %conv93.sink = phi i32 [ %21, %rtl8192_phy_SetSwChnlCmdArray.exit336 ], [ %conv93, %sw.bb92.sw.epilog.sink.split_crit_edge ]
  %28 = ptrtoint ptr %call7.i.i.i295 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %call7.i.i.i295, align 8
  %para_1.i342 = getelementptr %struct.sw_chnl_cmd, ptr %call7.i.i.i295, i32 0, i32 1
  %29 = ptrtoint ptr %para_1.i342 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %para_1.i342, align 4
  %para_2.i343 = getelementptr %struct.sw_chnl_cmd, ptr %call7.i.i.i295, i32 0, i32 2
  %30 = ptrtoint ptr %para_2.i343 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv93.sink, ptr %para_2.i343, align 8
  %ms_delay.i344 = getelementptr %struct.sw_chnl_cmd, ptr %call7.i.i.i295, i32 0, i32 3
  %31 = ptrtoint ptr %ms_delay.i344 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 10, ptr %ms_delay.i344, align 4
  %add.ptr.i352 = getelementptr %struct.sw_chnl_cmd, ptr %call7.i.i.i295, i32 1
  %32 = call ptr @memset(ptr %add.ptr.i352, i32 0, i32 16)
  br label %do.body155.preheader

do.body155.preheader:                             ; preds = %sw.epilog.sink.split, %rtl8192_phy_SetSwChnlCmdArray.exit315.do.body155.preheader_crit_edge
  br label %do.body155

do.body155:                                       ; preds = %if.end174, %do.body155.preheader
  %current_cmd.0 = phi ptr [ %current_cmd.1, %if.end174 ], [ null, %do.body155.preheader ]
  %33 = ptrtoint ptr %stage to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %stage, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %34, label %do.body155.sw.epilog166_crit_edge [
    i8 0, label %do.body155.sw.epilog166.sink.split_crit_edge
    i8 1, label %sw.bb160
    i8 2, label %sw.bb163
  ]

do.body155.sw.epilog166.sink.split_crit_edge:     ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog166.sink.split

do.body155.sw.epilog166_crit_edge:                ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog166

sw.bb160:                                         ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog166.sink.split

sw.bb163:                                         ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog166.sink.split

sw.epilog166.sink.split:                          ; preds = %sw.bb163, %sw.bb160, %do.body155.sw.epilog166.sink.split_crit_edge
  %call7.i.i.i294.sink = phi ptr [ %call7.i.i.i294, %sw.bb163 ], [ %call7.i.i.i295, %sw.bb160 ], [ %call7.i.i.i, %do.body155.sw.epilog166.sink.split_crit_edge ]
  %36 = ptrtoint ptr %step to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %step, align 1
  %idxprom164 = zext i8 %37 to i32
  %arrayidx165 = getelementptr %struct.sw_chnl_cmd, ptr %call7.i.i.i294.sink, i32 %idxprom164
  br label %sw.epilog166

sw.epilog166:                                     ; preds = %sw.epilog166.sink.split, %do.body155.sw.epilog166_crit_edge
  %current_cmd.1 = phi ptr [ %current_cmd.0, %do.body155.sw.epilog166_crit_edge ], [ %arrayidx165, %sw.epilog166.sink.split ]
  %38 = ptrtoint ptr %current_cmd.1 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %current_cmd.1, align 1
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %39, label %sw.epilog166.do.end206_crit_edge [
    i32 0, label %if.then169
    i32 1, label %sw.bb178
    i32 2, label %sw.bb183
    i32 3, label %sw.bb185
    i32 4, label %sw.bb190
    i32 5, label %for.cond.preheader
  ]

sw.epilog166.do.end206_crit_edge:                 ; preds = %sw.epilog166
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end206

for.cond.preheader:                               ; preds = %sw.epilog166
  call void @__sanitizer_cov_trace_pc() #9
  %para_1200 = getelementptr inbounds %struct.sw_chnl_cmd, ptr %current_cmd.1, i32 0, i32 1
  %para_2201 = getelementptr inbounds %struct.sw_chnl_cmd, ptr %current_cmd.1, i32 0, i32 2
  %41 = ptrtoint ptr %para_1200 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %para_1200, align 1
  %43 = ptrtoint ptr %para_2201 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %para_2201, align 1
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 0, i32 noundef %42, i32 noundef 3968, i32 noundef %44)
  %45 = ptrtoint ptr %para_1200 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %para_1200, align 1
  %47 = ptrtoint ptr %para_2201 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %para_2201, align 1
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 1, i32 noundef %46, i32 noundef 3968, i32 noundef %48)
  %49 = ptrtoint ptr %para_1200 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %para_1200, align 1
  %51 = ptrtoint ptr %para_2201 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %para_2201, align 1
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 2, i32 noundef %50, i32 noundef 3968, i32 noundef %52)
  %53 = ptrtoint ptr %para_1200 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %para_1200, align 1
  %55 = ptrtoint ptr %para_2201 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %para_2201, align 1
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef 3, i32 noundef %54, i32 noundef 3968, i32 noundef %56)
  br label %do.end206

if.then169:                                       ; preds = %sw.epilog166
  %cmp171 = icmp eq i8 %34, 2
  br i1 %cmp171, label %if.then173, label %if.end174

if.then173:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  %ms_delay = getelementptr inbounds %struct.sw_chnl_cmd, ptr %current_cmd.1, i32 0, i32 3
  %57 = ptrtoint ptr %ms_delay to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %ms_delay, align 1
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %delay, align 4
  br label %out

if.end174:                                        ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  %inc175 = add i8 %34, 1
  %60 = ptrtoint ptr %stage to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %inc175, ptr %stage, align 1
  %61 = ptrtoint ptr %step to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %step, align 1
  br label %do.body155

sw.bb178:                                         ; preds = %sw.epilog166
  %card_8192_version = getelementptr i8, ptr %dev, i32 30164
  %62 = ptrtoint ptr %card_8192_version to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %card_8192_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp179 = icmp eq i32 %63, 0
  br i1 %cmp179, label %if.then181, label %sw.bb178.do.end206_crit_edge

sw.bb178.do.end206_crit_edge:                     ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end206

if.then181:                                       ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rtl8192_SetTxPowerLevel(ptr noundef %dev, i8 noundef zeroext %channel)
  br label %do.end206

sw.bb183:                                         ; preds = %sw.epilog166
  call void @__sanitizer_cov_trace_pc() #9
  %para_1 = getelementptr inbounds %struct.sw_chnl_cmd, ptr %current_cmd.1, i32 0, i32 1
  %64 = ptrtoint ptr %para_1 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %para_1, align 1
  %para_2 = getelementptr inbounds %struct.sw_chnl_cmd, ptr %current_cmd.1, i32 0, i32 2
  %66 = ptrtoint ptr %para_2 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %para_2, align 1
  %call184 = tail call i32 @write_nic_dword(ptr noundef %dev, i32 noundef %65, i32 noundef %67) #7
  br label %do.end206

sw.bb185:                                         ; preds = %sw.epilog166
  call void @__sanitizer_cov_trace_pc() #9
  %para_1186 = getelementptr inbounds %struct.sw_chnl_cmd, ptr %current_cmd.1, i32 0, i32 1
  %68 = ptrtoint ptr %para_1186 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %para_1186, align 1
  %para_2187 = getelementptr inbounds %struct.sw_chnl_cmd, ptr %current_cmd.1, i32 0, i32 2
  %70 = ptrtoint ptr %para_2187 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %para_2187, align 1
  %conv188 = trunc i32 %71 to i16
  %call189 = tail call i32 @write_nic_word(ptr noundef %dev, i32 noundef %69, i16 noundef zeroext %conv188) #7
  br label %do.end206

sw.bb190:                                         ; preds = %sw.epilog166
  call void @__sanitizer_cov_trace_pc() #9
  %para_1191 = getelementptr inbounds %struct.sw_chnl_cmd, ptr %current_cmd.1, i32 0, i32 1
  %72 = ptrtoint ptr %para_1191 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %para_1191, align 1
  %para_2192 = getelementptr inbounds %struct.sw_chnl_cmd, ptr %current_cmd.1, i32 0, i32 2
  %74 = ptrtoint ptr %para_2192 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %para_2192, align 1
  %conv193 = trunc i32 %75 to i8
  %call194 = tail call i32 @write_nic_byte(ptr noundef %dev, i32 noundef %73, i8 noundef zeroext %conv193) #7
  br label %do.end206

do.end206:                                        ; preds = %sw.bb190, %sw.bb185, %sw.bb183, %if.then181, %sw.bb178.do.end206_crit_edge, %for.cond.preheader, %sw.epilog166.do.end206_crit_edge
  %ms_delay207 = getelementptr inbounds %struct.sw_chnl_cmd, ptr %current_cmd.1, i32 0, i32 3
  %76 = ptrtoint ptr %ms_delay207 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %ms_delay207, align 1
  %78 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %delay, align 4
  %79 = ptrtoint ptr %step to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %step, align 1
  %inc208 = add i8 %80, 1
  store i8 %inc208, ptr %step, align 1
  br label %out

out:                                              ; preds = %do.end206, %if.then173, %if.then147, %do.body135, %do.body131.out_crit_edge, %if.then117, %do.body105, %do.body101.out_crit_edge, %if.then79, %do.body67, %do.body63.out_crit_edge, %if.then43, %do.body31, %do.body27.out_crit_edge
  %ret.0.off0 = phi i1 [ true, %if.then173 ], [ false, %do.end206 ], [ true, %if.then43 ], [ true, %do.body27.out_crit_edge ], [ true, %if.then79 ], [ true, %do.body63.out_crit_edge ], [ true, %if.then117 ], [ true, %do.body101.out_crit_edge ], [ true, %if.then147 ], [ true, %do.body131.out_crit_edge ], [ true, %do.body31 ], [ true, %do.body67 ], [ true, %do.body105 ], [ true, %do.body135 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i294) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i295) #7
  %conv210 = zext i1 %ret.0.off0 to i8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv210, %out ], [ 0, %if.then8 ], [ 0, %if.then4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_legal_channel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8192_SetTxPowerLevel(ptr noundef %dev, i8 noundef zeroext %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_chip = getelementptr i8, ptr %dev, i32 30468
  %0 = ptrtoint ptr %rf_chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_chip, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %1, label %do.body [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb
    i32 3, label %entry.sw.epilog_crit_edge19
  ]

entry.sw.epilog_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr i8, ptr %dev, i32 30120
  %conv = zext i8 %channel to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx3 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 85, i32 %sub
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %arrayidx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 84, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  tail call void @phy_set_rf8256_cck_tx_power(ptr noundef %dev, i8 noundef zeroext %6) #7
  tail call void @phy_set_rf8256_ofdm_tx_power(ptr noundef %dev, i8 noundef zeroext %4) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %7 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.body4

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192_SetTxPowerLevel.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192_SetTxPowerLevel, %if.then9)) #7
          to label %sw.epilog [label %if.then9], !srcloc !190

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8192_SetTxPowerLevel.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then9, %do.body4, %do.body.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_nic_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !18, !19, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !83, !84, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !155, !157, !158, !160, !161, !163, !164, !166, !168, !169, !170, !172, !173, !175, !177, !178}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 477, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rtl8192_phy_configmac.__UNIQUE_ID_ddebug348, !1, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 482, i32 3}
!8 = !{ptr @rtl8192_phy_configmac.__UNIQUE_ID_ddebug349, !7, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 490, i32 3}
!11 = !{ptr @rtl8192_phy_configmac.__UNIQUE_ID_ddebug350, !10, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 694, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug353, !13, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 699, i32 4}
!18 = !{ptr @rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug354, !17, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 732, i32 4}
!21 = !{ptr @rtl8192_phy_checkBBAndRF.__UNIQUE_ID_ddebug355, !20, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 868, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtl8192_phy_getTxPower.__UNIQUE_ID_ddebug357, !23, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 877, i32 2}
!28 = !{ptr @rtl8192_phy_getTxPower.__UNIQUE_ID_ddebug358, !27, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 905, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rtl8192_phy_setTxPower.__UNIQUE_ID_ddebug359, !30, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 927, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rtl8192_phy_RFConfig.__UNIQUE_ID_ddebug360, !34, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1120, i32 4}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rtl8192_SetRFPowerState.__UNIQUE_ID_ddebug362, !38, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1126, i32 3}
!43 = !{ptr @rtl8192_SetRFPowerState.__UNIQUE_ID_ddebug363, !42, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1387, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug371, !45, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1392, i32 2}
!50 = !{ptr @rtl8192_SwChnl_WorkItem.__UNIQUE_ID_ddebug372, !49, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1407, i32 2}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug373, !52, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1419, i32 4}
!57 = !{ptr @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug374, !56, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1425, i32 4}
!60 = !{ptr @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug375, !59, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1432, i32 4}
!63 = !{ptr @rtl8192_phy_SwChnl.__UNIQUE_ID_ddebug376, !62, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1467, i32 2}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug377, !65, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!68 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1492, i32 3}
!72 = !{ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug378, !71, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1515, i32 3}
!75 = !{ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug379, !74, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1547, i32 3}
!78 = !{ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug380, !77, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!79 = !{ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug381, !80, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!80 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1562, i32 3}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1587, i32 3}
!83 = !{ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug382, !82, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1592, i32 2}
!86 = !{ptr @rtl8192_SetBWModeWorkItem.__UNIQUE_ID_ddebug383, !85, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1654, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug384, !88, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1672, i32 3}
!93 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug385, !92, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1674, i32 3}
!96 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug386, !95, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1676, i32 3}
!99 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug387, !98, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1678, i32 3}
!102 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug388, !101, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1680, i32 3}
!105 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug389, !104, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1683, i32 3}
!108 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug390, !107, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1689, i32 3}
!111 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug391, !110, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1694, i32 3}
!114 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug392, !113, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1712, i32 3}
!117 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug393, !116, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1714, i32 3}
!120 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug394, !119, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1716, i32 3}
!123 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug395, !122, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1718, i32 3}
!126 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug396, !125, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1720, i32 3}
!129 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug397, !128, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1730, i32 3}
!132 = !{ptr @InitialGainOperateWorkItemCallBack.__UNIQUE_ID_ddebug398, !131, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 160, i32 3}
!135 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @rtl8192_phy_RFSerialRead.__UNIQUE_ID_ddebug346, !134, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 236, i32 3}
!139 = !{ptr @rtl8192_phy_RFSerialWrite.__UNIQUE_ID_ddebug347, !138, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 777, i32 4}
!142 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @rtl8192_BB_Config_ParaFile.__UNIQUE_ID_ddebug356, !141, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 517, i32 4}
!146 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @rtl8192_phyConfigBB.__UNIQUE_ID_ddebug351, !145, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 526, i32 4}
!150 = !{ptr @rtl8192_phyConfigBB.__UNIQUE_ID_ddebug352, !149, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1215, i32 2}
!153 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug366, !152, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1218, i32 3}
!157 = !{ptr @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug367, !156, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1242, i32 4}
!160 = !{ptr @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug368, !159, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1262, i32 4}
!163 = !{ptr @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug369, !162, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!164 = !{ptr @rtl8192_phy_SwChnlStepByStep.__UNIQUE_ID_ddebug370, !165, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!165 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1281, i32 3}
!166 = distinct !{null, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1154, i32 3}
!168 = distinct !{null, !167, !"<string literal>", i1 false, i1 false}
!169 = distinct !{null, !167, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!170 = distinct !{null, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1158, i32 3}
!172 = distinct !{null, !171, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!173 = !{ptr @RF_CHANNEL_TABLE_ZEBRA, !174, !"RF_CHANNEL_TABLE_ZEBRA", i1 false, i1 false}
!174 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 13, i32 12}
!175 = !{ptr @.str.69, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/staging/rtl8192u/r819xU_phy.c", i32 1042, i32 3}
!177 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @rtl8192_SetTxPowerLevel.__UNIQUE_ID_ddebug361, !176, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"auto-init"}
!189 = !{i32 0, i32 33}
!190 = !{i64 2149039638, i64 2149039643, i64 2149039656, i64 2149039700, i64 2149039734, i64 2149039755}
!191 = !{i8 0, i8 2}
