; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_device = type { ptr, %struct.ieee80211_security, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, ptr, %struct.spinlock, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, i8, %struct.net_device_stats, %struct.ieee80211_stats, %struct.ieee80211_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, [6 x i8], i16, i16, %struct.list_head, [4 x ptr], i32, %struct.timer_list, i32, i32, [17 x [4 x %struct.ieee80211_frag_entry]], [17 x i32], i16, i16, [6 x i8], [6 x i8], %struct.ieee80211_network, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, ptr, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i16, i16, i32, i32, %struct.tasklet_struct, i32, i32, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i8, i32, i8, i8, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, [5 x ptr], i32, i32, i8, i32, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [4 x i32], i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, %struct.rt_power_save_control, %struct.tx_pending, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, ptr, [128 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.ieee80211_security = type { i16, i8, [4 x i8], [4 x [32 x i8]], i8, i16 }
%struct.atomic_t = type { i32 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.116, i32 }
%union.anon.116 = type { ptr }
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
%struct.ieee80211_rxb = type <{ i8, [64 x ptr], [6 x i8], [6 x i8] }>

@ieee80211_debug_level = external dso_local local_unnamed_addr global i32, align 4
@TSInitialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017ieee80211: ==========>%s()\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TSInitialize\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c\00", [44 x i8] zeroinitializer }, align 32
@TSInitialize._entry_ptr = internal global ptr @TSInitialize._entry, section ".printk_index", align 4
@TSInitialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(&pTxTS->ts_common_info.setup_timer)\00", [59 x i8] zeroinitializer }, align 32
@TSInitialize.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(&pTxTS->ts_common_info.inact_timer)\00", [59 x i8] zeroinitializer }, align 32
@TSInitialize.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&pTxTS->ts_add_ba_timer)\00", [38 x i8] zeroinitializer }, align 32
@TSInitialize.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(&pTxTS->tx_pending_ba_record.timer)\00", [59 x i8] zeroinitializer }, align 32
@TSInitialize.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(&pTxTS->tx_admitted_ba_record.timer)\00", [58 x i8] zeroinitializer }, align 32
@TSInitialize.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(&pRxTS->ts_common_info.setup_timer)\00", [59 x i8] zeroinitializer }, align 32
@TSInitialize.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(&pRxTS->ts_common_info.inact_timer)\00", [59 x i8] zeroinitializer }, align 32
@TSInitialize.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(&pRxTS->rx_admitted_ba_record.timer)\00", [58 x i8] zeroinitializer }, align 32
@TSInitialize.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(&pRxTS->rx_pkt_pending_timer)\00", [33 x i8] zeroinitializer }, align 32
@GetTs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017ieee80211: get TS for Broadcast or Multicast\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GetTs\00", [26 x i8] zeroinitializer }, align 32
@GetTs._entry_ptr = internal global ptr @GetTs._entry, section ".printk_index", align 4
@GetTs._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017ieee80211:  in %s(), TID(%d) is not valid\0A\00", [51 x i8] zeroinitializer }, align 32
@GetTs._entry_ptr.24 = internal global ptr @GetTs._entry.22, section ".printk_index", align 4
@GetTs._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017ieee80211: add new TS failed(tid:%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@GetTs._entry_ptr.27 = internal global ptr @GetTs._entry.25, section ".printk_index", align 4
@GetTs._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017ieee80211: to add Ts\0A\00", [40 x i8] zeroinitializer }, align 32
@GetTs._entry_ptr.30 = internal global ptr @GetTs._entry.28, section ".printk_index", align 4
@GetTs._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017ieee80211: to init current TS, UP:%d, Dir:%d, addr:%pM\0A\00", [38 x i8] zeroinitializer }, align 32
@GetTs._entry_ptr.33 = internal global ptr @GetTs._entry.31, section ".printk_index", align 4
@GetTs._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017ieee80211: in function %s() There is not enough TS record to be used!!\00", [55 x i8] zeroinitializer }, align 32
@GetTs._entry_ptr.36 = internal global ptr @GetTs._entry.34, section ".printk_index", align 4
@RemovePeerTS._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"===========>%s,%pM\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RemovePeerTS\00", [19 x i8] zeroinitializer }, align 32
@RemovePeerTS._entry_ptr = internal global ptr @RemovePeerTS._entry, section ".printk_index", align 4
@RemovePeerTS._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"====>remove Tx_TS_admin_list\0A\00", [34 x i8] zeroinitializer }, align 32
@RemovePeerTS._entry_ptr.41 = internal global ptr @RemovePeerTS._entry.39, section ".printk_index", align 4
@TsStartAddBaProcess._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017ieee80211: %s: Delayed Start ADDBA after 60 sec!!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TsStartAddBaProcess\00", [44 x i8] zeroinitializer }, align 32
@TsStartAddBaProcess._entry_ptr = internal global ptr @TsStartAddBaProcess._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@TsStartAddBaProcess._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017ieee80211: %s: Immediately Start ADDBA now!!\0A\00", [48 x i8] zeroinitializer }, align 32
@TsStartAddBaProcess._entry_ptr.46 = internal global ptr @TsStartAddBaProcess._entry.44, section ".printk_index", align 4
@TsStartAddBaProcess._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017ieee80211: %s()==>BA timer is already added\0A\00", [49 x i8] zeroinitializer }, align 32
@TsStartAddBaProcess._entry_ptr.49 = internal global ptr @TsStartAddBaProcess._entry.47, section ".printk_index", align 4
@TsAddBaProcess._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017ieee80211: %s: ADDBA Req is started!! \0A\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TsAddBaProcess\00", [17 x i8] zeroinitializer }, align 32
@TsAddBaProcess._entry_ptr = internal global ptr @TsAddBaProcess._entry, section ".printk_index", align 4
@RxPktPendingTimeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017ieee80211: ==================>%s()\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RxPktPendingTimeout\00", [44 x i8] zeroinitializer }, align 32
@RxPktPendingTimeout._entry_ptr = internal global ptr @RxPktPendingTimeout._entry, section ".printk_index", align 4
@RxPktPendingTimeout._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017ieee80211: %s: IndicateSeq: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@RxPktPendingTimeout._entry_ptr.56 = internal global ptr @RxPktPendingTimeout._entry.54, section ".printk_index", align 4
@RxPktPendingTimeout._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017ieee80211: RxReorderIndicatePacket(): Rx Reorder buffer full!! \0A\00", [61 x i8] zeroinitializer }, align 32
@RxPktPendingTimeout._entry_ptr.59 = internal global ptr @RxPktPendingTimeout._entry.57, section ".printk_index", align 4
@switch.table.GetTs = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 2, i32 0, i32 5, i32 5, i32 7, i32 7], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 138, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 149, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 151, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 153, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 154, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 156, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 170, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 172, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 174, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 176, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 302, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 311, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 347, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 370, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 382, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 401, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 455, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 466, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 524, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 528, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 532, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 100, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 39, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 54, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private constant [55 x i8] c"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 72, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"switch.table.GetTs\00", align 1
@llvm.compiler.used = appending global [74 x ptr] [ptr @GetTs._entry, ptr @GetTs._entry.22, ptr @GetTs._entry.25, ptr @GetTs._entry.28, ptr @GetTs._entry.31, ptr @GetTs._entry.34, ptr @GetTs._entry_ptr, ptr @GetTs._entry_ptr.24, ptr @GetTs._entry_ptr.27, ptr @GetTs._entry_ptr.30, ptr @GetTs._entry_ptr.33, ptr @GetTs._entry_ptr.36, ptr @RemovePeerTS._entry, ptr @RemovePeerTS._entry.39, ptr @RemovePeerTS._entry_ptr, ptr @RemovePeerTS._entry_ptr.41, ptr @RxPktPendingTimeout._entry, ptr @RxPktPendingTimeout._entry.54, ptr @RxPktPendingTimeout._entry.57, ptr @RxPktPendingTimeout._entry_ptr, ptr @RxPktPendingTimeout._entry_ptr.56, ptr @RxPktPendingTimeout._entry_ptr.59, ptr @TSInitialize._entry, ptr @TSInitialize._entry_ptr, ptr @TsAddBaProcess._entry, ptr @TsAddBaProcess._entry_ptr, ptr @TsStartAddBaProcess._entry, ptr @TsStartAddBaProcess._entry.44, ptr @TsStartAddBaProcess._entry.47, ptr @TsStartAddBaProcess._entry_ptr, ptr @TsStartAddBaProcess._entry_ptr.46, ptr @TsStartAddBaProcess._entry_ptr.49, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @TSInitialize.__key, ptr @.str.3, ptr @TSInitialize.__key.4, ptr @.str.5, ptr @TSInitialize.__key.6, ptr @.str.7, ptr @TSInitialize.__key.8, ptr @.str.9, ptr @TSInitialize.__key.10, ptr @.str.11, ptr @TSInitialize.__key.12, ptr @.str.13, ptr @TSInitialize.__key.14, ptr @.str.15, ptr @TSInitialize.__key.16, ptr @.str.17, ptr @TSInitialize.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @switch.table.GetTs], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GetTs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GetTs._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GetTs._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GetTs._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GetTs._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GetTs._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RemovePeerTS._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RemovePeerTS._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TsStartAddBaProcess._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TsStartAddBaProcess._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TsStartAddBaProcess._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TsAddBaProcess._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxPktPendingTimeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxPktPendingTimeout._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxPktPendingTimeout._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.GetTs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @TSInitialize(ptr noundef %ieee) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %TxTsRecord = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 27
  %RxTsRecord = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 31
  %RxReorderEntry = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %0 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %Tx_TS_Admit_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 24
  %1 = ptrtoint ptr %Tx_TS_Admit_List to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %Tx_TS_Admit_List, ptr %Tx_TS_Admit_List, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 24, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %Tx_TS_Admit_List, ptr %prev.i, align 4
  %Tx_TS_Pending_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 25
  %3 = ptrtoint ptr %Tx_TS_Pending_List to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %Tx_TS_Pending_List, ptr %Tx_TS_Pending_List, align 4
  %prev.i110 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 25, i32 1
  %4 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %Tx_TS_Pending_List, ptr %prev.i110, align 4
  %Tx_TS_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 26
  %5 = ptrtoint ptr %Tx_TS_Unused_List to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %Tx_TS_Unused_List, ptr %Tx_TS_Unused_List, align 4
  %prev.i111 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 26, i32 1
  %6 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %Tx_TS_Unused_List, ptr %prev.i111, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %do.end5
  %pTxTS.0131 = phi ptr [ %TxTsRecord, %do.end5 ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %count.0130 = phi i8 [ 0, %do.end5 ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %num = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0131, i32 0, i32 8
  %7 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %count.0130, ptr %num, align 4
  %setup_timer = getelementptr inbounds %struct.ts_common_info, ptr %pTxTS.0131, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %setup_timer, ptr noundef nonnull @TsSetupTimeOut, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @TSInitialize.__key) #5
  %inact_timer = getelementptr inbounds %struct.ts_common_info, ptr %pTxTS.0131, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %inact_timer, ptr noundef nonnull @TsInactTimeout, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @TSInitialize.__key.4) #5
  %ts_add_ba_timer = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0131, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %ts_add_ba_timer, ptr noundef nonnull @TsAddBaProcess, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @TSInitialize.__key.6) #5
  %tx_pending_ba_record = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0131, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %tx_pending_ba_record, ptr noundef nonnull @BaSetupTimeOut, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @TSInitialize.__key.8) #5
  %tx_admitted_ba_record = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0131, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %tx_admitted_ba_record, ptr noundef nonnull @TxBaInactTimeout, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @TSInitialize.__key.10) #5
  %addr.i.i = getelementptr inbounds %struct.ts_common_info, ptr %pTxTS.0131, i32 0, i32 3
  %8 = call ptr @memset(ptr %addr.i.i, i32 0, i32 6)
  %t_spec.i.i = getelementptr inbounds %struct.ts_common_info, ptr %pTxTS.0131, i32 0, i32 4
  %9 = call ptr @memset(ptr %t_spec.i.i, i32 0, i32 234)
  %tx_cur_seq.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0131, i32 0, i32 1
  %10 = ptrtoint ptr %tx_cur_seq.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %tx_cur_seq.i, align 4
  %add_ba_req_in_progress.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0131, i32 0, i32 4
  %11 = ptrtoint ptr %add_ba_req_in_progress.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %add_ba_req_in_progress.i, align 4
  %add_ba_req_delayed.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0131, i32 0, i32 5
  %12 = ptrtoint ptr %add_ba_req_delayed.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %add_ba_req_delayed.i, align 1
  %using_ba.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0131, i32 0, i32 6
  %13 = ptrtoint ptr %using_ba.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %using_ba.i, align 2
  tail call void @ResetBaEntry(ptr noundef %tx_admitted_ba_record) #5
  tail call void @ResetBaEntry(ptr noundef %tx_pending_ba_record) #5
  %14 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i111, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pTxTS.0131, ptr noundef %15, ptr noundef %Tx_TS_Unused_List) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pTxTS.0131, ptr %prev.i111, align 4
  %17 = ptrtoint ptr %pTxTS.0131 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %Tx_TS_Unused_List, ptr %pTxTS.0131, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %pTxTS.0131, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %pTxTS.0131, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.tx_ts_record, ptr %pTxTS.0131, i32 1
  %inc = add nuw nsw i8 %count.0130, 1
  %cmp = icmp ult i8 %count.0130, 15
  br i1 %cmp, label %list_add_tail.exit.for.body_crit_edge, label %for.end

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  %Rx_TS_Admit_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 28
  %20 = ptrtoint ptr %Rx_TS_Admit_List to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %Rx_TS_Admit_List, ptr %Rx_TS_Admit_List, align 4
  %prev.i113 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 28, i32 1
  %21 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %Rx_TS_Admit_List, ptr %prev.i113, align 4
  %Rx_TS_Pending_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 29
  %22 = ptrtoint ptr %Rx_TS_Pending_List to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %Rx_TS_Pending_List, ptr %Rx_TS_Pending_List, align 4
  %prev.i114 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 29, i32 1
  %23 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %Rx_TS_Pending_List, ptr %prev.i114, align 4
  %Rx_TS_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 30
  %24 = ptrtoint ptr %Rx_TS_Unused_List to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %Rx_TS_Unused_List, ptr %Rx_TS_Unused_List, align 4
  %prev.i115 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 30, i32 1
  %25 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %Rx_TS_Unused_List, ptr %prev.i115, align 4
  br label %for.body30

for.body30:                                       ; preds = %list_add_tail.exit123.for.body30_crit_edge, %for.end
  %count.1135 = phi i8 [ 0, %for.end ], [ %inc54, %list_add_tail.exit123.for.body30_crit_edge ]
  %pRxTS.0133 = phi ptr [ %RxTsRecord, %for.end ], [ %incdec.ptr52, %list_add_tail.exit123.for.body30_crit_edge ]
  %num31 = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0133, i32 0, i32 8
  %26 = ptrtoint ptr %num31 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %count.1135, ptr %num31, align 1
  %rx_pending_pkt_list = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0133, i32 0, i32 3
  %27 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %rx_pending_pkt_list, ptr %rx_pending_pkt_list, align 4
  %prev.i116 = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0133, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rx_pending_pkt_list, ptr %prev.i116, align 4
  %setup_timer34 = getelementptr inbounds %struct.ts_common_info, ptr %pRxTS.0133, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %setup_timer34, ptr noundef nonnull @TsSetupTimeOut, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @TSInitialize.__key.12) #5
  %inact_timer39 = getelementptr inbounds %struct.ts_common_info, ptr %pRxTS.0133, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %inact_timer39, ptr noundef nonnull @TsInactTimeout, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @TSInitialize.__key.14) #5
  %rx_admitted_ba_record = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0133, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %rx_admitted_ba_record, ptr noundef nonnull @RxBaInactTimeout, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @TSInitialize.__key.16) #5
  %rx_pkt_pending_timer = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0133, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %rx_pkt_pending_timer, ptr noundef nonnull @RxPktPendingTimeout, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @TSInitialize.__key.18) #5
  %addr.i.i117 = getelementptr inbounds %struct.ts_common_info, ptr %pRxTS.0133, i32 0, i32 3
  %29 = call ptr @memset(ptr %addr.i.i117, i32 0, i32 6)
  %t_spec.i.i118 = getelementptr inbounds %struct.ts_common_info, ptr %pRxTS.0133, i32 0, i32 4
  %30 = call ptr @memset(ptr %t_spec.i.i118, i32 0, i32 234)
  %rx_indicate_seq.i = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0133, i32 0, i32 1
  %31 = ptrtoint ptr %rx_indicate_seq.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %rx_indicate_seq.i, align 4
  %rx_timeout_indicate_seq.i = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0133, i32 0, i32 2
  %32 = ptrtoint ptr %rx_timeout_indicate_seq.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %rx_timeout_indicate_seq.i, align 2
  tail call void @ResetBaEntry(ptr noundef %rx_admitted_ba_record) #5
  %33 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i115, align 4
  %call.i.i120 = tail call zeroext i1 @__list_add_valid(ptr noundef %pRxTS.0133, ptr noundef %34, ptr noundef %Rx_TS_Unused_List) #5
  br i1 %call.i.i120, label %if.end.i.i122, label %for.body30.list_add_tail.exit123_crit_edge

for.body30.list_add_tail.exit123_crit_edge:       ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit123

if.end.i.i122:                                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %pRxTS.0133, ptr %prev.i115, align 4
  %36 = ptrtoint ptr %pRxTS.0133 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %Rx_TS_Unused_List, ptr %pRxTS.0133, align 4
  %prev3.i.i121 = getelementptr inbounds %struct.list_head, ptr %pRxTS.0133, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i121 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i121, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %pRxTS.0133, ptr %34, align 4
  br label %list_add_tail.exit123

list_add_tail.exit123:                            ; preds = %if.end.i.i122, %for.body30.list_add_tail.exit123_crit_edge
  %incdec.ptr52 = getelementptr %struct.rx_ts_record, ptr %pRxTS.0133, i32 1
  %inc54 = add nuw nsw i8 %count.1135, 1
  %cmp28 = icmp ult i8 %count.1135, 15
  br i1 %cmp28, label %list_add_tail.exit123.for.body30_crit_edge, label %for.end55

list_add_tail.exit123.for.body30_crit_edge:       ; preds = %list_add_tail.exit123
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30

for.end55:                                        ; preds = %list_add_tail.exit123
  %RxReorder_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 33
  %39 = ptrtoint ptr %RxReorder_Unused_List to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %RxReorder_Unused_List, ptr %RxReorder_Unused_List, align 4
  %prev.i124 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 33, i32 1
  %40 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %RxReorder_Unused_List, ptr %prev.i124, align 4
  br label %for.body60

for.body60:                                       ; preds = %if.end66, %for.end55
  %indvars.iv = phi i32 [ 0, %for.end55 ], [ %indvars.iv.next, %if.end66 ]
  %pRxReorderEntry.0 = phi ptr [ %RxReorderEntry, %for.end55 ], [ %arrayidx, %if.end66 ]
  %41 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i124, align 4
  %call.i.i126 = tail call zeroext i1 @__list_add_valid(ptr noundef %pRxReorderEntry.0, ptr noundef %42, ptr noundef %RxReorder_Unused_List) #5
  br i1 %call.i.i126, label %if.end.i.i128, label %for.body60.list_add_tail.exit129_crit_edge

for.body60.list_add_tail.exit129_crit_edge:       ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit129

if.end.i.i128:                                    ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %pRxReorderEntry.0, ptr %prev.i124, align 4
  %44 = ptrtoint ptr %pRxReorderEntry.0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %RxReorder_Unused_List, ptr %pRxReorderEntry.0, align 4
  %prev3.i.i127 = getelementptr inbounds %struct.list_head, ptr %pRxReorderEntry.0, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i127 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i127, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %pRxReorderEntry.0, ptr %42, align 4
  br label %list_add_tail.exit129

list_add_tail.exit129:                            ; preds = %if.end.i.i128, %for.body60.list_add_tail.exit129_crit_edge
  %cmp63 = icmp eq i32 %indvars.iv, 127
  br i1 %cmp63, label %for.end71, label %if.end66

if.end66:                                         ; preds = %list_add_tail.exit129
  call void @__sanitizer_cov_trace_pc() #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %arrayidx = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 32, i32 %indvars.iv.next
  br label %for.body60

for.end71:                                        ; preds = %list_add_tail.exit129
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @TsSetupTimeOut(ptr nocapture noundef %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @TsInactTimeout(ptr nocapture noundef %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @TsAddBaProcess(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -468
  %num1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %num1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num1, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -520
  %idx.neg = add nsw i32 %.neg, -344
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  tail call void @TsInitAddBA(ptr noundef %add.ptr4, ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %2 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @BaSetupTimeOut(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @TxBaInactTimeout(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ResetTxTsEntry(ptr noundef %pTS) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr inbounds %struct.ts_common_info, ptr %pTS, i32 0, i32 3
  %0 = call ptr @memset(ptr %addr.i, i32 0, i32 6)
  %t_spec.i = getelementptr inbounds %struct.ts_common_info, ptr %pTS, i32 0, i32 4
  %1 = call ptr @memset(ptr %t_spec.i, i32 0, i32 234)
  %tx_cur_seq = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 1
  %2 = ptrtoint ptr %tx_cur_seq to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %tx_cur_seq, align 4
  %add_ba_req_in_progress = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 4
  %3 = ptrtoint ptr %add_ba_req_in_progress to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %add_ba_req_in_progress, align 4
  %add_ba_req_delayed = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 5
  %4 = ptrtoint ptr %add_ba_req_delayed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %add_ba_req_delayed, align 1
  %using_ba = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 6
  %5 = ptrtoint ptr %using_ba to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %using_ba, align 2
  %tx_admitted_ba_record = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 3
  tail call void @ResetBaEntry(ptr noundef %tx_admitted_ba_record) #5
  %tx_pending_ba_record = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2
  tail call void @ResetBaEntry(ptr noundef %tx_pending_ba_record) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @RxBaInactTimeout(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @RxPktPendingTimeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -360
  %num = getelementptr i8, ptr %t, i32 107
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 1
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -468
  %idx.neg = add nsw i32 %.neg, -8688
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %reorder_spinlock = getelementptr inbounds %struct.ieee80211_device, ptr %add.ptr3, i32 0, i32 14
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reorder_spinlock) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %2 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end17_crit_edge, label %do.end13

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #8
  br label %do.end17

do.end17:                                         ; preds = %do.end13, %entry.do.end17_crit_edge
  %rx_timeout_indicate_seq = getelementptr i8, ptr %t, i32 -10
  %3 = ptrtoint ptr %rx_timeout_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rx_timeout_indicate_seq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp19.not = icmp eq i16 %4, -1
  br i1 %cmp19.not, label %do.end17.cleanup_crit_edge, label %while.cond.preheader

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end17
  %rx_pending_pkt_list = getelementptr i8, ptr %t, i32 -8
  %5 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i.not164 = icmp eq ptr %6, %rx_pending_pkt_list
  br i1 %cmp.i.not164, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %prev = getelementptr i8, ptr %t, i32 -4
  %rx_indicate_seq = getelementptr i8, ptr %t, i32 -12
  %stats_IndicateArray = getelementptr inbounds %struct.ieee80211_device, ptr %add.ptr3, i32 0, i32 168
  %RxReorder_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %add.ptr3, i32 0, i32 33
  %prev.i = getelementptr inbounds %struct.list_head, ptr %RxReorder_Unused_List, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %index.0165 = phi i8 [ 0, %while.body.lr.ph ], [ %inc, %list_add_tail.exit.while.body_crit_edge ]
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev, align 4
  %conv28 = zext i8 %index.0165 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index.0165)
  %cmp29 = icmp eq i8 %index.0165, 0
  br i1 %cmp29, label %if.then31, label %while.body.if.end32_crit_edge

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then31:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %SeqNum = getelementptr inbounds %struct.rx_reorder_entry, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %SeqNum to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %SeqNum, align 4
  %11 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %rx_indicate_seq, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %while.body.if.end32_crit_edge
  %SeqNum33 = getelementptr inbounds %struct.rx_reorder_entry, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %SeqNum33 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %SeqNum33, align 4
  %conv34 = zext i16 %13 to i32
  %14 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rx_indicate_seq, align 4
  %conv36 = zext i16 %15 to i32
  %sub = sub nsw i32 %conv34, %conv36
  %and37 = and i32 %sub, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38.not = icmp ne i32 %and37, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp44 = icmp eq i16 %13, %15
  %or.cond = select i1 %cmp38.not, i1 true, i1 %cmp44
  br i1 %or.cond, label %if.then46, label %if.end32.if.end75_crit_edge

if.end32.if.end75_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then46:                                        ; preds = %if.end32
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then46.list_del_init.exit_crit_edge

if.then46.list_del_init.exit_crit_edge:           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then46.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %8, ptr %prev.i3.i, align 4
  %24 = ptrtoint ptr %SeqNum33 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %SeqNum33, align 4
  %26 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rx_indicate_seq, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp51 = icmp eq i16 %25, %27
  br i1 %cmp51, label %if.then53, label %list_del_init.exit.do.body59_crit_edge

list_del_init.exit.do.body59_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body59

if.then53:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %28 = add i16 %25, 1
  %29 = and i16 %28, 4095
  %30 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %rx_indicate_seq, align 4
  br label %do.body59

do.body59:                                        ; preds = %if.then53, %list_del_init.exit.do.body59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %31 = load i32, ptr @ieee80211_debug_level, align 4
  %and60 = and i32 %31, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.do.end72_crit_edge, label %do.end65

do.body59.do.end72_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72

do.end65:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %SeqNum33 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %SeqNum33, align 4
  %conv68 = zext i16 %33 to i32
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %conv68) #8
  br label %do.end72

do.end72:                                         ; preds = %do.end65, %do.body59.do.end72_crit_edge
  %prxb = getelementptr inbounds %struct.rx_reorder_entry, ptr %8, i32 0, i32 2
  %34 = ptrtoint ptr %prxb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prxb, align 4
  %arrayidx = getelementptr [128 x ptr], ptr %stats_IndicateArray, i32 0, i32 %conv28
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %arrayidx, align 4
  %inc = add i8 %index.0165, 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %call.i.i156 = tail call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %38, ptr noundef %RxReorder_Unused_List) #5
  br i1 %call.i.i156, label %if.end.i.i157, label %do.end72.list_add_tail.exit_crit_edge

do.end72.list_add_tail.exit_crit_edge:            ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i157:                                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %8, ptr %prev.i, align 4
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %RxReorder_Unused_List, ptr %8, align 4
  %41 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i3.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %8, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i157, %do.end72.list_add_tail.exit_crit_edge
  %43 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i.not = icmp eq ptr %44, %rx_pending_pkt_list
  br i1 %cmp.i.not, label %list_add_tail.exit.if.end75_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_add_tail.exit.if.end75_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.end75:                                         ; preds = %list_add_tail.exit.if.end75_crit_edge, %if.end32.if.end75_crit_edge
  %index.0.lcssa = phi i8 [ %inc, %list_add_tail.exit.if.end75_crit_edge ], [ %index.0165, %if.end32.if.end75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index.0.lcssa)
  %cmp77.not = icmp eq i8 %index.0.lcssa, 0
  br i1 %cmp77.not, label %if.end100, label %if.then79

if.then79:                                        ; preds = %if.end75
  %45 = ptrtoint ptr %rx_timeout_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %rx_timeout_indicate_seq, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %index.0.lcssa)
  %cmp82 = icmp ugt i8 %index.0.lcssa, -128
  br i1 %cmp82, label %do.body85, label %if.end98

do.body85:                                        ; preds = %if.then79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %46 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %tobool87.not = icmp sgt i32 %46, -1
  br i1 %tobool87.not, label %do.body85.cleanup_crit_edge, label %do.end91

do.body85.cleanup_crit_edge:                      ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end91:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #8
  br label %cleanup

if.end98:                                         ; preds = %if.then79
  %stats_IndicateArray99 = getelementptr inbounds %struct.ieee80211_device, ptr %add.ptr3, i32 0, i32 168
  tail call void @ieee80211_indicate_packets(ptr noundef %add.ptr3, ptr noundef %stats_IndicateArray99, i8 noundef zeroext %index.0.lcssa) #5
  br i1 %or.cond, label %if.end98.cleanup_crit_edge, label %if.end98.land.lhs.true_crit_edge

if.end98.land.lhs.true_crit_edge:                 ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end100:                                        ; preds = %if.end75
  br i1 %or.cond, label %if.end100.cleanup_crit_edge, label %if.end100.land.lhs.true_crit_edge

if.end100.land.lhs.true_crit_edge:                ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end100.land.lhs.true_crit_edge, %if.end98.land.lhs.true_crit_edge
  %47 = ptrtoint ptr %rx_timeout_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rx_timeout_indicate_seq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %48)
  %cmp105 = icmp eq i16 %48, -1
  br i1 %cmp105, label %if.then107, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then107:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %rx_indicate_seq108 = getelementptr i8, ptr %t, i32 -12
  %49 = ptrtoint ptr %rx_indicate_seq108 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %rx_indicate_seq108, align 4
  %51 = ptrtoint ptr %rx_timeout_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %rx_timeout_indicate_seq, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %pHTInfo = getelementptr inbounds %struct.ieee80211_device, ptr %add.ptr3, i32 0, i32 12
  %53 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pHTInfo, align 8
  %RxReorderPendingTime = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %54, i32 0, i32 46
  %55 = ptrtoint ptr %RxReorderPendingTime to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %RxReorderPendingTime, align 1
  %conv110 = zext i8 %56 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv110) #5
  %add112 = add i32 %call2.i, %52
  %call113 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add112) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %land.lhs.true.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %do.end91, %do.body85.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %do.end17.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reorder_spinlock, i32 noundef %call7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @GetTs(ptr noundef %ieee, ptr nocapture noundef %ppTS, ptr noundef %Addr, i8 noundef zeroext %TID, i32 noundef %TxRxSelect, i1 noundef zeroext %bAddNewTs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %Addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %Addr, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %3 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %do.body.cleanup166_crit_edge, label %do.end

do.body.cleanup166_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup166

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #8
  br label %cleanup166

if.end6:                                          ; preds = %entry
  %supported = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 8, i32 2
  %4 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end6.if.end29_crit_edge, label %if.else

if.end6.if.end29_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.else:                                          ; preds = %if.end6
  %conv = zext i8 %TID to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %TID)
  %cmp8 = icmp ult i8 %TID, 8
  br i1 %cmp8, label %if.end24, label %do.body11

do.body11:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %6 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool13.not = icmp sgt i32 %6, -1
  br i1 %tobool13.not, label %do.body11.cleanup166_crit_edge, label %do.end17

do.body11.cleanup166_crit_edge:                   ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup166

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %conv) #8
  br label %cleanup166

if.end24:                                         ; preds = %if.else
  %switch.tableidx = add i8 %TID, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 7
  br i1 %7, label %switch.lookup, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

switch.lookup:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.GetTs, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end29

if.end29:                                         ; preds = %switch.lookup, %if.end24.if.end29_crit_edge, %if.end6.if.end29_crit_edge
  %UP.0 = phi i32 [ 0, %if.end6.if.end29_crit_edge ], [ 0, %if.end24.if.end29_crit_edge ], [ %switch.load, %switch.lookup ]
  %iw_mode.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 43
  %10 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iw_mode.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.else16.i [
    i32 3, label %if.then.i
    i32 1, label %if.then9.i
  ]

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp1.i = icmp eq i32 %TxRxSelect, 0
  br i1 %cmp1.i, label %if.then.i.for.inc74.thread150.i_crit_edge, label %if.then.i.for.cond38.preheader.i_crit_edge

if.then.i.for.cond38.preheader.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader.i

if.then.i.for.inc74.thread150.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74.thread150.i

if.then9.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp10.i = icmp eq i32 %TxRxSelect, 0
  br i1 %cmp10.i, label %if.then9.i.for.cond38.preheader.i_crit_edge, label %if.then9.i.for.inc74.thread150.i_crit_edge

if.then9.i.for.inc74.thread150.i_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74.thread150.i

if.then9.i.for.cond38.preheader.i_crit_edge:      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader.i

if.else16.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp17.i = icmp eq i32 %TxRxSelect, 0
  br i1 %cmp17.i, label %for.cond38.preheader.i.thread, label %if.else16.i.for.inc74.thread150.i_crit_edge

if.else16.i.for.inc74.thread150.i_crit_edge:      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74.thread150.i

for.inc74.thread150.i:                            ; preds = %if.else16.i.for.inc74.thread150.i_crit_edge, %if.then9.i.for.inc74.thread150.i_crit_edge, %if.then.i.for.inc74.thread150.i_crit_edge
  %tobool.not.3.ph.i = phi i1 [ false, %if.then.i.for.inc74.thread150.i_crit_edge ], [ true, %if.then9.i.for.inc74.thread150.i_crit_edge ], [ false, %if.else16.i.for.inc74.thread150.i_crit_edge ]
  %tobool.not.2.ph.i = phi i1 [ true, %if.then.i.for.inc74.thread150.i_crit_edge ], [ true, %if.then9.i.for.inc74.thread150.i_crit_edge ], [ false, %if.else16.i.for.inc74.thread150.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp29125.i = icmp eq i32 %TxRxSelect, 0
  %Tx_TS_Admit_List126.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 24
  %Rx_TS_Admit_List127.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 28
  %psearch_list.0128.i = select i1 %cmp29125.i, ptr %Tx_TS_Admit_List126.i, ptr %Rx_TS_Admit_List127.i
  %13 = ptrtoint ptr %psearch_list.0128.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %pRet.1106.1.i = load ptr, ptr %psearch_list.0128.i, align 4
  %cmp39.not107.1.i = icmp eq ptr %pRet.1106.1.i, %psearch_list.0128.i
  br i1 %cmp39.not107.1.i, label %for.inc74.thread150.i.for.inc74.1.i_crit_edge, label %for.inc74.thread150.i.for.body41.1.i_crit_edge

for.inc74.thread150.i.for.body41.1.i_crit_edge:   ; preds = %for.inc74.thread150.i
  br label %for.body41.1.i

for.inc74.thread150.i.for.inc74.1.i_crit_edge:    ; preds = %for.inc74.thread150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74.1.i

for.cond38.preheader.i:                           ; preds = %if.then9.i.for.cond38.preheader.i_crit_edge, %if.then.i.for.cond38.preheader.i_crit_edge
  %tobool.not.3.i = phi i1 [ true, %if.then9.i.for.cond38.preheader.i_crit_edge ], [ false, %if.then.i.for.cond38.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp29.i = icmp eq i32 %TxRxSelect, 0
  %Tx_TS_Admit_List.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 24
  %Rx_TS_Admit_List.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 28
  %psearch_list.0.i = select i1 %cmp29.i, ptr %Tx_TS_Admit_List.i, ptr %Rx_TS_Admit_List.i
  %14 = ptrtoint ptr %psearch_list.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %pRet.1106.i = load ptr, ptr %psearch_list.0.i, align 4
  %cmp39.not107.i = icmp eq ptr %pRet.1106.i, %psearch_list.0.i
  br i1 %cmp39.not107.i, label %for.cond38.preheader.i.for.inc74.2.i_crit_edge, label %for.cond38.preheader.i.for.body41.i.preheader_crit_edge

for.cond38.preheader.i.for.body41.i.preheader_crit_edge: ; preds = %for.cond38.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.i.preheader

for.cond38.preheader.i.for.inc74.2.i_crit_edge:   ; preds = %for.cond38.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74.2.i

for.cond38.preheader.i.thread:                    ; preds = %if.else16.i
  %Tx_TS_Admit_List.i229 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 24
  %15 = ptrtoint ptr %Tx_TS_Admit_List.i229 to i32
  call void @__asan_load4_noabort(i32 %15)
  %pRet.1106.i232 = load ptr, ptr %Tx_TS_Admit_List.i229, align 4
  %cmp39.not107.i233 = icmp eq ptr %pRet.1106.i232, %Tx_TS_Admit_List.i229
  br i1 %cmp39.not107.i233, label %for.cond38.preheader.i.thread.for.cond38.preheader.2.i_crit_edge, label %for.cond38.preheader.i.thread.for.body41.i.preheader_crit_edge

for.cond38.preheader.i.thread.for.body41.i.preheader_crit_edge: ; preds = %for.cond38.preheader.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.i.preheader

for.cond38.preheader.i.thread.for.cond38.preheader.2.i_crit_edge: ; preds = %for.cond38.preheader.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader.2.i

for.body41.i.preheader:                           ; preds = %for.cond38.preheader.i.thread.for.body41.i.preheader_crit_edge, %for.cond38.preheader.i.for.body41.i.preheader_crit_edge
  %pRet.1106.i240 = phi ptr [ %pRet.1106.i232, %for.cond38.preheader.i.thread.for.body41.i.preheader_crit_edge ], [ %pRet.1106.i, %for.cond38.preheader.i.for.body41.i.preheader_crit_edge ]
  %psearch_list.0.i238 = phi ptr [ %Tx_TS_Admit_List.i229, %for.cond38.preheader.i.thread.for.body41.i.preheader_crit_edge ], [ %psearch_list.0.i, %for.cond38.preheader.i.for.body41.i.preheader_crit_edge ]
  %tobool.not.2.i237 = phi i1 [ false, %for.cond38.preheader.i.thread.for.body41.i.preheader_crit_edge ], [ true, %for.cond38.preheader.i.for.body41.i.preheader_crit_edge ]
  %tobool.not.3.i235 = phi i1 [ false, %for.cond38.preheader.i.thread.for.body41.i.preheader_crit_edge ], [ %tobool.not.3.i, %for.cond38.preheader.i.for.body41.i.preheader_crit_edge ]
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.inc.i.for.body41.i_crit_edge, %for.body41.i.preheader
  %pRet.1108.i = phi ptr [ %pRet.1.i, %for.inc.i.for.body41.i_crit_edge ], [ %pRet.1106.i240, %for.body41.i.preheader ]
  %addr.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1108.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr.i, ptr noundef dereferenceable(6) %Addr, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp42.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp42.i, label %if.then44.i, label %for.body41.i.for.inc.i_crit_edge

for.body41.i.for.inc.i_crit_edge:                 ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then44.i:                                      ; preds = %for.body41.i
  %t_spec.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1108.i, i32 0, i32 4
  %16 = ptrtoint ptr %t_spec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %t_spec.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 27
  %bf.cast.i = and i32 %bf.lshr.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast.i, i32 %UP.0)
  %cmp47.i = icmp eq i32 %bf.cast.i, %UP.0
  %17 = and i32 %bf.load.i, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp58.i = icmp eq i32 %17, 0
  %or.cond.i = select i1 %cmp47.i, i1 %cmp58.i, i1 false
  br i1 %or.cond.i, label %if.then44.i.SearchAdmitTRStream.exit_crit_edge, label %if.then44.i.for.inc.i_crit_edge

if.then44.i.for.inc.i_crit_edge:                  ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then44.i.SearchAdmitTRStream.exit_crit_edge:   ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.inc.i:                                        ; preds = %if.then44.i.for.inc.i_crit_edge, %for.body41.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %pRet.1108.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %pRet.1.i = load ptr, ptr %pRet.1108.i, align 4
  %cmp39.not.i = icmp eq ptr %pRet.1.i, %psearch_list.0.i238
  br i1 %cmp39.not.i, label %for.inc.i.for.inc74.1.i_crit_edge, label %for.inc.i.for.body41.i_crit_edge

for.inc.i.for.body41.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.i

for.inc.i.for.inc74.1.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74.1.i

for.body41.1.i:                                   ; preds = %for.inc.1.i.for.body41.1.i_crit_edge, %for.inc74.thread150.i.for.body41.1.i_crit_edge
  %pRet.1108.1.i = phi ptr [ %pRet.1.1.i, %for.inc.1.i.for.body41.1.i_crit_edge ], [ %pRet.1106.1.i, %for.inc74.thread150.i.for.body41.1.i_crit_edge ]
  %addr.1.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1108.1.i, i32 0, i32 3
  %bcmp.1.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr.1.i, ptr noundef dereferenceable(6) %Addr, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1.i)
  %cmp42.1.i = icmp eq i32 %bcmp.1.i, 0
  br i1 %cmp42.1.i, label %if.then44.1.i, label %for.body41.1.i.for.inc.1.i_crit_edge

for.body41.1.i.for.inc.1.i_crit_edge:             ; preds = %for.body41.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then44.1.i:                                    ; preds = %for.body41.1.i
  %t_spec.1.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1108.1.i, i32 0, i32 4
  %19 = ptrtoint ptr %t_spec.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.1.i = load i32, ptr %t_spec.1.i, align 4
  %bf.lshr.1.i = lshr i32 %bf.load.1.i, 27
  %bf.cast.1.i = and i32 %bf.lshr.1.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast.1.i, i32 %UP.0)
  %cmp47.1.i = icmp eq i32 %bf.cast.1.i, %UP.0
  %20 = and i32 %bf.load.1.i, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %20)
  %cmp58.1.i = icmp eq i32 %20, 33554432
  %or.cond.1.i = select i1 %cmp47.1.i, i1 %cmp58.1.i, i1 false
  br i1 %or.cond.1.i, label %if.then44.1.i.SearchAdmitTRStream.exit_crit_edge, label %if.then44.1.i.for.inc.1.i_crit_edge

if.then44.1.i.for.inc.1.i_crit_edge:              ; preds = %if.then44.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then44.1.i.SearchAdmitTRStream.exit_crit_edge: ; preds = %if.then44.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.inc.1.i:                                      ; preds = %if.then44.1.i.for.inc.1.i_crit_edge, %for.body41.1.i.for.inc.1.i_crit_edge
  %21 = ptrtoint ptr %pRet.1108.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %pRet.1.1.i = load ptr, ptr %pRet.1108.1.i, align 4
  %cmp39.not.1.i = icmp eq ptr %pRet.1.1.i, %psearch_list.0128.i
  br i1 %cmp39.not.1.i, label %for.inc.1.i.for.inc74.1.i_crit_edge, label %for.inc.1.i.for.body41.1.i_crit_edge

for.inc.1.i.for.body41.1.i_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.1.i

for.inc.1.i.for.inc74.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74.1.i

for.inc74.1.i:                                    ; preds = %for.inc.1.i.for.inc74.1.i_crit_edge, %for.inc.i.for.inc74.1.i_crit_edge, %for.inc74.thread150.i.for.inc74.1.i_crit_edge
  %tobool.not.3130149.i = phi i1 [ %tobool.not.3.ph.i, %for.inc74.thread150.i.for.inc74.1.i_crit_edge ], [ %tobool.not.3.i235, %for.inc.i.for.inc74.1.i_crit_edge ], [ %tobool.not.3.ph.i, %for.inc.1.i.for.inc74.1.i_crit_edge ]
  %tobool.not.2131148.i = phi i1 [ %tobool.not.2.ph.i, %for.inc74.thread150.i.for.inc74.1.i_crit_edge ], [ %tobool.not.2.i237, %for.inc.i.for.inc74.1.i_crit_edge ], [ %tobool.not.2.ph.i, %for.inc.1.i.for.inc74.1.i_crit_edge ]
  %psearch_list.0135145.i = phi ptr [ %psearch_list.0128.i, %for.inc74.thread150.i.for.inc74.1.i_crit_edge ], [ %psearch_list.0.i238, %for.inc.i.for.inc74.1.i_crit_edge ], [ %psearch_list.0128.i, %for.inc.1.i.for.inc74.1.i_crit_edge ]
  br i1 %tobool.not.2131148.i, label %for.inc74.1.i.for.inc74.2.i_crit_edge, label %for.inc74.1.i.for.cond38.preheader.2.i_crit_edge

for.inc74.1.i.for.cond38.preheader.2.i_crit_edge: ; preds = %for.inc74.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader.2.i

for.inc74.1.i.for.inc74.2.i_crit_edge:            ; preds = %for.inc74.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74.2.i

for.cond38.preheader.2.i:                         ; preds = %for.inc74.1.i.for.cond38.preheader.2.i_crit_edge, %for.cond38.preheader.i.thread.for.cond38.preheader.2.i_crit_edge
  %psearch_list.0135145163.i = phi ptr [ %psearch_list.0135145.i, %for.inc74.1.i.for.cond38.preheader.2.i_crit_edge ], [ %Tx_TS_Admit_List.i229, %for.cond38.preheader.i.thread.for.cond38.preheader.2.i_crit_edge ]
  %tobool.not.3130149161.i = phi i1 [ %tobool.not.3130149.i, %for.inc74.1.i.for.cond38.preheader.2.i_crit_edge ], [ false, %for.cond38.preheader.i.thread.for.cond38.preheader.2.i_crit_edge ]
  %22 = ptrtoint ptr %psearch_list.0135145163.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %pRet.1106.2.i = load ptr, ptr %psearch_list.0135145163.i, align 4
  %cmp39.not107.2.i = icmp eq ptr %pRet.1106.2.i, %psearch_list.0135145163.i
  br i1 %cmp39.not107.2.i, label %for.cond38.preheader.2.i.for.inc74.2.i_crit_edge, label %for.cond38.preheader.2.i.for.body41.2.i_crit_edge

for.cond38.preheader.2.i.for.body41.2.i_crit_edge: ; preds = %for.cond38.preheader.2.i
  br label %for.body41.2.i

for.cond38.preheader.2.i.for.inc74.2.i_crit_edge: ; preds = %for.cond38.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74.2.i

for.body41.2.i:                                   ; preds = %for.inc.2.i.for.body41.2.i_crit_edge, %for.cond38.preheader.2.i.for.body41.2.i_crit_edge
  %pRet.1108.2.i = phi ptr [ %pRet.1.2.i, %for.inc.2.i.for.body41.2.i_crit_edge ], [ %pRet.1106.2.i, %for.cond38.preheader.2.i.for.body41.2.i_crit_edge ]
  %addr.2.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1108.2.i, i32 0, i32 3
  %bcmp.2.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr.2.i, ptr noundef dereferenceable(6) %Addr, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2.i)
  %cmp42.2.i = icmp eq i32 %bcmp.2.i, 0
  br i1 %cmp42.2.i, label %if.then44.2.i, label %for.body41.2.i.for.inc.2.i_crit_edge

for.body41.2.i.for.inc.2.i_crit_edge:             ; preds = %for.body41.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.then44.2.i:                                    ; preds = %for.body41.2.i
  %t_spec.2.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1108.2.i, i32 0, i32 4
  %23 = ptrtoint ptr %t_spec.2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.2.i = load i32, ptr %t_spec.2.i, align 4
  %bf.lshr.2.i = lshr i32 %bf.load.2.i, 27
  %bf.cast.2.i = and i32 %bf.lshr.2.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast.2.i, i32 %UP.0)
  %cmp47.2.i = icmp eq i32 %bf.cast.2.i, %UP.0
  %24 = and i32 %bf.load.2.i, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %24)
  %cmp58.2.i = icmp eq i32 %24, 67108864
  %or.cond.2.i = select i1 %cmp47.2.i, i1 %cmp58.2.i, i1 false
  br i1 %or.cond.2.i, label %if.then44.2.i.SearchAdmitTRStream.exit_crit_edge, label %if.then44.2.i.for.inc.2.i_crit_edge

if.then44.2.i.for.inc.2.i_crit_edge:              ; preds = %if.then44.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.then44.2.i.SearchAdmitTRStream.exit_crit_edge: ; preds = %if.then44.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.inc.2.i:                                      ; preds = %if.then44.2.i.for.inc.2.i_crit_edge, %for.body41.2.i.for.inc.2.i_crit_edge
  %25 = ptrtoint ptr %pRet.1108.2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %pRet.1.2.i = load ptr, ptr %pRet.1108.2.i, align 4
  %cmp39.not.2.i = icmp eq ptr %pRet.1.2.i, %psearch_list.0135145163.i
  br i1 %cmp39.not.2.i, label %for.inc.2.i.for.inc74.2.i_crit_edge, label %for.inc.2.i.for.body41.2.i_crit_edge

for.inc.2.i.for.body41.2.i_crit_edge:             ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.2.i

for.inc.2.i.for.inc74.2.i_crit_edge:              ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74.2.i

for.inc74.2.i:                                    ; preds = %for.inc.2.i.for.inc74.2.i_crit_edge, %for.cond38.preheader.2.i.for.inc74.2.i_crit_edge, %for.inc74.1.i.for.inc74.2.i_crit_edge, %for.cond38.preheader.i.for.inc74.2.i_crit_edge
  %tobool.not.3130149162.i = phi i1 [ %tobool.not.3130149.i, %for.inc74.1.i.for.inc74.2.i_crit_edge ], [ %tobool.not.3130149161.i, %for.cond38.preheader.2.i.for.inc74.2.i_crit_edge ], [ %tobool.not.3.i, %for.cond38.preheader.i.for.inc74.2.i_crit_edge ], [ %tobool.not.3130149161.i, %for.inc.2.i.for.inc74.2.i_crit_edge ]
  %psearch_list.0135146.i = phi ptr [ %psearch_list.0135145.i, %for.inc74.1.i.for.inc74.2.i_crit_edge ], [ %psearch_list.0135145163.i, %for.cond38.preheader.2.i.for.inc74.2.i_crit_edge ], [ %psearch_list.0.i, %for.cond38.preheader.i.for.inc74.2.i_crit_edge ], [ %psearch_list.0135145163.i, %for.inc.2.i.for.inc74.2.i_crit_edge ]
  br i1 %tobool.not.3130149162.i, label %for.inc74.2.i.SearchAdmitTRStream.exit_crit_edge, label %for.cond38.preheader.3.i

for.inc74.2.i.SearchAdmitTRStream.exit_crit_edge: ; preds = %for.inc74.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.cond38.preheader.3.i:                         ; preds = %for.inc74.2.i
  %26 = ptrtoint ptr %psearch_list.0135146.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %pRet.1106.3.i = load ptr, ptr %psearch_list.0135146.i, align 4
  %cmp39.not107.3.i = icmp eq ptr %pRet.1106.3.i, %psearch_list.0135146.i
  br i1 %cmp39.not107.3.i, label %for.cond38.preheader.3.i.SearchAdmitTRStream.exit_crit_edge, label %for.cond38.preheader.3.i.for.body41.3.i_crit_edge

for.cond38.preheader.3.i.for.body41.3.i_crit_edge: ; preds = %for.cond38.preheader.3.i
  br label %for.body41.3.i

for.cond38.preheader.3.i.SearchAdmitTRStream.exit_crit_edge: ; preds = %for.cond38.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.body41.3.i:                                   ; preds = %for.inc.3.i.for.body41.3.i_crit_edge, %for.cond38.preheader.3.i.for.body41.3.i_crit_edge
  %pRet.1108.3.i = phi ptr [ %pRet.1.3.i, %for.inc.3.i.for.body41.3.i_crit_edge ], [ %pRet.1106.3.i, %for.cond38.preheader.3.i.for.body41.3.i_crit_edge ]
  %addr.3.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1108.3.i, i32 0, i32 3
  %bcmp.3.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr.3.i, ptr noundef dereferenceable(6) %Addr, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3.i)
  %cmp42.3.i = icmp eq i32 %bcmp.3.i, 0
  br i1 %cmp42.3.i, label %if.then44.3.i, label %for.body41.3.i.for.inc.3.i_crit_edge

for.body41.3.i.for.inc.3.i_crit_edge:             ; preds = %for.body41.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.then44.3.i:                                    ; preds = %for.body41.3.i
  %t_spec.3.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1108.3.i, i32 0, i32 4
  %27 = ptrtoint ptr %t_spec.3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.3.i = load i32, ptr %t_spec.3.i, align 4
  %bf.lshr.3.i = lshr i32 %bf.load.3.i, 27
  %bf.cast.3.i = and i32 %bf.lshr.3.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast.3.i, i32 %UP.0)
  %cmp47.3.i = icmp eq i32 %bf.cast.3.i, %UP.0
  %28 = and i32 %bf.load.3.i, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %28)
  %cmp58.3.i = icmp eq i32 %28, 100663296
  %or.cond.3.i = select i1 %cmp47.3.i, i1 %cmp58.3.i, i1 false
  br i1 %or.cond.3.i, label %if.then44.3.i.SearchAdmitTRStream.exit_crit_edge, label %if.then44.3.i.for.inc.3.i_crit_edge

if.then44.3.i.for.inc.3.i_crit_edge:              ; preds = %if.then44.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.then44.3.i.SearchAdmitTRStream.exit_crit_edge: ; preds = %if.then44.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.inc.3.i:                                      ; preds = %if.then44.3.i.for.inc.3.i_crit_edge, %for.body41.3.i.for.inc.3.i_crit_edge
  %29 = ptrtoint ptr %pRet.1108.3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %pRet.1.3.i = load ptr, ptr %pRet.1108.3.i, align 4
  %cmp39.not.3.i = icmp eq ptr %pRet.1.3.i, %psearch_list.0135146.i
  br i1 %cmp39.not.3.i, label %for.inc.3.i.SearchAdmitTRStream.exit_crit_edge, label %for.inc.3.i.for.body41.3.i_crit_edge

for.inc.3.i.for.body41.3.i_crit_edge:             ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.3.i

for.inc.3.i.SearchAdmitTRStream.exit_crit_edge:   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

SearchAdmitTRStream.exit:                         ; preds = %for.inc.3.i.SearchAdmitTRStream.exit_crit_edge, %if.then44.3.i.SearchAdmitTRStream.exit_crit_edge, %for.cond38.preheader.3.i.SearchAdmitTRStream.exit_crit_edge, %for.inc74.2.i.SearchAdmitTRStream.exit_crit_edge, %if.then44.2.i.SearchAdmitTRStream.exit_crit_edge, %if.then44.1.i.SearchAdmitTRStream.exit_crit_edge, %if.then44.i.SearchAdmitTRStream.exit_crit_edge
  %psearch_list.0133.i = phi ptr [ %psearch_list.0135146.i, %for.inc74.2.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0135146.i, %for.cond38.preheader.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0135146.i, %for.inc.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0135146.i, %if.then44.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0135145163.i, %if.then44.2.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0.i238, %if.then44.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0128.i, %if.then44.1.i.SearchAdmitTRStream.exit_crit_edge ]
  %pRet.3.i = phi ptr [ %psearch_list.0135146.i, %for.inc74.2.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0135146.i, %for.cond38.preheader.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %pRet.1108.3.i, %if.then44.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0135146.i, %for.inc.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %pRet.1108.2.i, %if.then44.2.i.SearchAdmitTRStream.exit_crit_edge ], [ %pRet.1108.i, %if.then44.i.SearchAdmitTRStream.exit_crit_edge ], [ %pRet.1108.1.i, %if.then44.1.i.SearchAdmitTRStream.exit_crit_edge ]
  %cmp77.not.i = icmp eq ptr %pRet.3.i, %psearch_list.0133.i
  %.pRet.3.i = select i1 %cmp77.not.i, ptr null, ptr %pRet.3.i
  %30 = ptrtoint ptr %ppTS to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.pRet.3.i, ptr %ppTS, align 4
  %cmp31.not = icmp eq ptr %.pRet.3.i, null
  br i1 %cmp31.not, label %if.else34, label %SearchAdmitTRStream.exit.cleanup166_crit_edge

SearchAdmitTRStream.exit.cleanup166_crit_edge:    ; preds = %SearchAdmitTRStream.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup166

if.else34:                                        ; preds = %SearchAdmitTRStream.exit
  br i1 %bAddNewTs, label %if.else50, label %do.body37

do.body37:                                        ; preds = %if.else34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %31 = load i32, ptr @ieee80211_debug_level, align 4
  %and38 = and i32 %31, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.cleanup166_crit_edge, label %do.end43

do.body37.cleanup166_crit_edge:                   ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup166

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %UP.0) #8
  br label %cleanup166

if.else50:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp51 = icmp eq i32 %TxRxSelect, 0
  %Tx_TS_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 26
  %Rx_TS_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 30
  %cond = select i1 %cmp51, ptr %Tx_TS_Unused_List, ptr %Rx_TS_Unused_List
  %Tx_TS_Admit_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 24
  %Rx_TS_Admit_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 28
  %cond60 = select i1 %cmp51, ptr %Tx_TS_Admit_List, ptr %Rx_TS_Admit_List
  %32 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iw_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp61 = icmp ne i32 %33, 3
  %spec.select = xor i1 %cmp51, %cmp61
  %cond72 = zext i1 %spec.select to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %34 = load i32, ptr @ieee80211_debug_level, align 4
  %and74 = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else50.do.end84_crit_edge, label %do.end79

if.else50.do.end84_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end84

do.end79:                                         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #7
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #8
  br label %do.end84

do.end84:                                         ; preds = %do.end79, %if.else50.do.end84_crit_edge
  %35 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %cond, align 4
  %cmp.i = icmp ne ptr %36, %cond
  br i1 %cmp.i, label %if.then87, label %do.body150

if.then87:                                        ; preds = %do.end84
  %37 = ptrtoint ptr %ppTS to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %ppTS, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %36) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then87.list_del_init.exit_crit_edge

if.then87.list_del_init.exit_crit_edge:           ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %36, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then87.list_del_init.exit_crit_edge
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %36, ptr %36, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %36, ptr %prev.i3.i, align 4
  %46 = ptrtoint ptr %ppTS to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ppTS, align 4
  br i1 %cmp51, label %if.then91, label %if.else96

if.then91:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ResetTxTsEntry(ptr noundef %47)
  br label %do.body102

if.else96:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %addr.i.i = getelementptr inbounds %struct.ts_common_info, ptr %47, i32 0, i32 3
  %48 = call ptr @memset(ptr %addr.i.i, i32 0, i32 6)
  %t_spec.i.i = getelementptr inbounds %struct.ts_common_info, ptr %47, i32 0, i32 4
  %49 = call ptr @memset(ptr %t_spec.i.i, i32 0, i32 234)
  %rx_indicate_seq.i = getelementptr inbounds %struct.rx_ts_record, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %rx_indicate_seq.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %rx_indicate_seq.i, align 4
  %rx_timeout_indicate_seq.i = getelementptr inbounds %struct.rx_ts_record, ptr %47, i32 0, i32 2
  %51 = ptrtoint ptr %rx_timeout_indicate_seq.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %rx_timeout_indicate_seq.i, align 2
  %rx_admitted_ba_record.i = getelementptr inbounds %struct.rx_ts_record, ptr %47, i32 0, i32 5
  tail call void @ResetBaEntry(ptr noundef %rx_admitted_ba_record.i) #5
  br label %do.body102

do.body102:                                       ; preds = %if.else96, %if.then91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %52 = load i32, ptr @ieee80211_debug_level, align 4
  %and103 = and i32 %52, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body102.do.end114_crit_edge, label %do.end108

do.body102.do.end114_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end114

do.end108:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %UP.0, i32 noundef %cond72, ptr noundef %Addr) #8
  br label %do.end114

do.end114:                                        ; preds = %do.end108, %do.body102.do.end114_crit_edge
  %53 = ptrtoint ptr %ppTS to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ppTS, align 4
  %cmp.i206 = icmp eq ptr %54, null
  br i1 %cmp.i206, label %do.end114.MakeTSEntry.exit_crit_edge, label %if.end.i

do.end114.MakeTSEntry.exit_crit_edge:             ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %MakeTSEntry.exit

if.end.i:                                         ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #7
  %bf.shl = shl nuw nsw i32 %UP.0, 27
  %bf.shl122 = select i1 %spec.select, i32 33554432, i32 0
  %bf.set118 = or i32 %bf.shl122, %bf.shl
  %bf.shl138 = shl nuw nsw i32 %UP.0, 18
  %bf.set124 = or i32 %bf.set118, %bf.shl138
  %bf.set140 = or i32 %bf.set124, 8421375
  %addr.i207 = getelementptr inbounds %struct.ts_common_info, ptr %54, i32 0, i32 3
  %55 = call ptr @memcpy(ptr %addr.i207, ptr %Addr, i32 6)
  %t_spec.i208 = getelementptr inbounds %struct.ts_common_info, ptr %54, i32 0, i32 4
  %56 = ptrtoint ptr %t_spec.i208 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %bf.set140, ptr %t_spec.i208, align 4
  %TSpec.sroa.6.0.t_spec.i208.sroa_idx = getelementptr inbounds %struct.ts_common_info, ptr %54, i32 0, i32 4, i32 1
  %57 = call ptr @memset(ptr %TSpec.sroa.6.0.t_spec.i208.sroa_idx, i32 255, i32 52)
  %t_clas_proc.i = getelementptr inbounds %struct.ts_common_info, ptr %54, i32 0, i32 6
  %58 = ptrtoint ptr %t_clas_proc.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %t_clas_proc.i, align 4
  %t_clas_num.i = getelementptr inbounds %struct.ts_common_info, ptr %54, i32 0, i32 7
  %59 = ptrtoint ptr %t_clas_num.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %t_clas_num.i, align 1
  br label %MakeTSEntry.exit

MakeTSEntry.exit:                                 ; preds = %if.end.i, %do.end114.MakeTSEntry.exit_crit_edge
  %60 = ptrtoint ptr %ppTS to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ppTS, align 4
  %setup_timer.i = getelementptr inbounds %struct.ts_common_info, ptr %61, i32 0, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %setup_timer.i) #5
  %inact_timer.i = getelementptr inbounds %struct.ts_common_info, ptr %61, i32 0, i32 2
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %inact_timer.i) #5
  %62 = ptrtoint ptr %ppTS to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ppTS, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cond60, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i, align 4
  %call.i.i209 = tail call zeroext i1 @__list_add_valid(ptr noundef %63, ptr noundef %65, ptr noundef %cond60) #5
  br i1 %call.i.i209, label %if.end.i.i210, label %MakeTSEntry.exit.cleanup166_crit_edge

MakeTSEntry.exit.cleanup166_crit_edge:            ; preds = %MakeTSEntry.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup166

if.end.i.i210:                                    ; preds = %MakeTSEntry.exit
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %cond60, ptr %63, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %63, ptr %65, align 4
  br label %cleanup166

do.body150:                                       ; preds = %do.end84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %70 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %tobool152.not = icmp sgt i32 %70, -1
  br i1 %tobool152.not, label %do.body150.cleanup166_crit_edge, label %do.end156

do.body150.cleanup166_crit_edge:                  ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup166

do.end156:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.21) #8
  br label %cleanup166

cleanup166:                                       ; preds = %do.end156, %do.body150.cleanup166_crit_edge, %if.end.i.i210, %MakeTSEntry.exit.cleanup166_crit_edge, %do.end43, %do.body37.cleanup166_crit_edge, %SearchAdmitTRStream.exit.cleanup166_crit_edge, %do.end17, %do.body11.cleanup166_crit_edge, %do.end, %do.body.cleanup166_crit_edge
  %retval.1 = phi i1 [ false, %do.end ], [ false, %do.body.cleanup166_crit_edge ], [ false, %do.end17 ], [ false, %do.body11.cleanup166_crit_edge ], [ true, %SearchAdmitTRStream.exit.cleanup166_crit_edge ], [ false, %do.end43 ], [ false, %do.body37.cleanup166_crit_edge ], [ %cmp.i, %if.end.i.i210 ], [ %cmp.i, %MakeTSEntry.exit.cleanup166_crit_edge ], [ %cmp.i, %do.body150.cleanup166_crit_edge ], [ %cmp.i, %do.end156 ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @RemovePeerTS(ptr noundef %ieee, ptr noundef %Addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef %Addr) #8
  %Tx_TS_Pending_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 25
  %0 = ptrtoint ptr %Tx_TS_Pending_List to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Tx_TS_Pending_List, align 8
  %cmp.not208 = icmp eq ptr %1, %Tx_TS_Pending_List
  br i1 %cmp.not208, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %Tx_TS_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 26
  %prev.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 26, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pTS.0209 = phi ptr [ %1, %for.body.lr.ph ], [ %pTmpTS.0210, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %pTS.0209 to i32
  call void @__asan_load4_noabort(i32 %2)
  %pTmpTS.0210 = load ptr, ptr %pTS.0209, align 4
  %addr = getelementptr inbounds %struct.ts_common_info, ptr %pTS.0209, i32 0, i32 3
  %bcmp165 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %Addr, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp165)
  %cmp9 = icmp eq i32 %bcmp165, 0
  br i1 %cmp9, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  %setup_timer.i = getelementptr inbounds %struct.ts_common_info, ptr %pTS.0209, i32 0, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %setup_timer.i) #5
  %inact_timer.i = getelementptr inbounds %struct.ts_common_info, ptr %pTS.0209, i32 0, i32 2
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %inact_timer.i) #5
  tail call void @TsInitDelBA(ptr noundef %ieee, ptr noundef %pTS.0209, i32 noundef 0) #5
  %ts_add_ba_timer.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTS.0209, i32 0, i32 7
  %call35.i = tail call i32 @del_timer_sync(ptr noundef %ts_add_ba_timer.i) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.0209) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pTS.0209, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %pTS.0209 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pTS.0209, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %pTS.0209 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %pTS.0209, ptr %pTS.0209, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pTS.0209, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pTS.0209, ptr %prev.i3.i, align 4
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i166 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.0209, ptr noundef %12, ptr noundef %Tx_TS_Unused_List) #5
  br i1 %call.i.i166, label %if.end.i.i167, label %list_del_init.exit.for.inc_crit_edge

list_del_init.exit.for.inc_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i.i167:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pTS.0209, ptr %prev.i, align 4
  %14 = ptrtoint ptr %pTS.0209 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %Tx_TS_Unused_List, ptr %pTS.0209, align 4
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev.i3.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %pTS.0209, ptr %12, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i167, %list_del_init.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %pTmpTS.0210, %Tx_TS_Pending_List
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %Tx_TS_Admit_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 24
  %17 = ptrtoint ptr %Tx_TS_Admit_List to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %Tx_TS_Admit_List, align 8
  %cmp29.not212 = icmp eq ptr %18, %Tx_TS_Admit_List
  br i1 %cmp29.not212, label %for.end.for.end52_crit_edge, label %for.body31.lr.ph

for.end.for.end52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end52

for.body31.lr.ph:                                 ; preds = %for.end
  %Tx_TS_Unused_List44 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 26
  %prev.i180 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 26, i32 1
  br label %for.body31

for.body31:                                       ; preds = %for.inc46.for.body31_crit_edge, %for.body31.lr.ph
  %pTS.1213 = phi ptr [ %18, %for.body31.lr.ph ], [ %pTmpTS.1214, %for.inc46.for.body31_crit_edge ]
  %19 = ptrtoint ptr %pTS.1213 to i32
  call void @__asan_load4_noabort(i32 %19)
  %pTmpTS.1214 = load ptr, ptr %pTS.1213, align 4
  %addr32 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.1213, i32 0, i32 3
  %bcmp164 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr32, ptr noundef dereferenceable(6) %Addr, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp164)
  %cmp35 = icmp eq i32 %bcmp164, 0
  br i1 %cmp35, label %do.end39, label %for.body31.for.inc46_crit_edge

for.body31.for.inc46_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc46

do.end39:                                         ; preds = %for.body31
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #8
  %setup_timer.i168 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.1213, i32 0, i32 1
  %call.i169 = tail call i32 @del_timer_sync(ptr noundef %setup_timer.i168) #5
  %inact_timer.i170 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.1213, i32 0, i32 2
  %call1.i171 = tail call i32 @del_timer_sync(ptr noundef %inact_timer.i170) #5
  tail call void @TsInitDelBA(ptr noundef %ieee, ptr noundef %pTS.1213, i32 noundef 0) #5
  %ts_add_ba_timer.i172 = getelementptr inbounds %struct.tx_ts_record, ptr %pTS.1213, i32 0, i32 7
  %call35.i173 = tail call i32 @del_timer_sync(ptr noundef %ts_add_ba_timer.i172) #5
  %call.i.i174 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.1213) #5
  br i1 %call.i.i174, label %if.end.i.i177, label %do.end39.list_del_init.exit179_crit_edge

do.end39.list_del_init.exit179_crit_edge:         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit179

if.end.i.i177:                                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i175 = getelementptr inbounds %struct.list_head, ptr %pTS.1213, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i175 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i175, align 4
  %22 = ptrtoint ptr %pTS.1213 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pTS.1213, align 4
  %prev1.i.i.i176 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i176 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i176, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit179

list_del_init.exit179:                            ; preds = %if.end.i.i177, %do.end39.list_del_init.exit179_crit_edge
  %26 = ptrtoint ptr %pTS.1213 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %pTS.1213, ptr %pTS.1213, align 4
  %prev.i3.i178 = getelementptr inbounds %struct.list_head, ptr %pTS.1213, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i178 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pTS.1213, ptr %prev.i3.i178, align 4
  %28 = ptrtoint ptr %prev.i180 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i180, align 4
  %call.i.i181 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.1213, ptr noundef %29, ptr noundef %Tx_TS_Unused_List44) #5
  br i1 %call.i.i181, label %if.end.i.i183, label %list_del_init.exit179.for.inc46_crit_edge

list_del_init.exit179.for.inc46_crit_edge:        ; preds = %list_del_init.exit179
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc46

if.end.i.i183:                                    ; preds = %list_del_init.exit179
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %prev.i180 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pTS.1213, ptr %prev.i180, align 4
  %31 = ptrtoint ptr %pTS.1213 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %Tx_TS_Unused_List44, ptr %pTS.1213, align 4
  %32 = ptrtoint ptr %prev.i3.i178 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev.i3.i178, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %pTS.1213, ptr %29, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %if.end.i.i183, %list_del_init.exit179.for.inc46_crit_edge, %for.body31.for.inc46_crit_edge
  %cmp29.not = icmp eq ptr %pTmpTS.1214, %Tx_TS_Admit_List
  br i1 %cmp29.not, label %for.inc46.for.end52_crit_edge, label %for.inc46.for.body31_crit_edge

for.inc46.for.body31_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body31

for.inc46.for.end52_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end52

for.end52:                                        ; preds = %for.inc46.for.end52_crit_edge, %for.end.for.end52_crit_edge
  %Rx_TS_Pending_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 29
  %34 = ptrtoint ptr %Rx_TS_Pending_List to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %Rx_TS_Pending_List, align 8
  %cmp65.not216 = icmp eq ptr %35, %Rx_TS_Pending_List
  br i1 %cmp65.not216, label %for.end52.for.end82_crit_edge, label %for.body67.lr.ph

for.end52.for.end82_crit_edge:                    ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end82

for.body67.lr.ph:                                 ; preds = %for.end52
  %Rx_TS_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 30
  %prev.i191 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 30, i32 1
  br label %for.body67

for.body67:                                       ; preds = %for.inc76.for.body67_crit_edge, %for.body67.lr.ph
  %pTS.2217 = phi ptr [ %35, %for.body67.lr.ph ], [ %pTmpTS.2218, %for.inc76.for.body67_crit_edge ]
  %36 = ptrtoint ptr %pTS.2217 to i32
  call void @__asan_load4_noabort(i32 %36)
  %pTmpTS.2218 = load ptr, ptr %pTS.2217, align 4
  %addr68 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.2217, i32 0, i32 3
  %bcmp163 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr68, ptr noundef dereferenceable(6) %Addr, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp163)
  %cmp71 = icmp eq i32 %bcmp163, 0
  br i1 %cmp71, label %if.then72, label %for.body67.for.inc76_crit_edge

for.body67.for.inc76_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc76

if.then72:                                        ; preds = %for.body67
  tail call fastcc void @RemoveTsEntry(ptr noundef %ieee, ptr noundef %pTS.2217, i32 noundef 1)
  %call.i.i185 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.2217) #5
  br i1 %call.i.i185, label %if.end.i.i188, label %if.then72.list_del_init.exit190_crit_edge

if.then72.list_del_init.exit190_crit_edge:        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit190

if.end.i.i188:                                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i186 = getelementptr inbounds %struct.list_head, ptr %pTS.2217, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i186 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i186, align 4
  %39 = ptrtoint ptr %pTS.2217 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pTS.2217, align 4
  %prev1.i.i.i187 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i187, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit190

list_del_init.exit190:                            ; preds = %if.end.i.i188, %if.then72.list_del_init.exit190_crit_edge
  %43 = ptrtoint ptr %pTS.2217 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %pTS.2217, ptr %pTS.2217, align 4
  %prev.i3.i189 = getelementptr inbounds %struct.list_head, ptr %pTS.2217, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i3.i189 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %pTS.2217, ptr %prev.i3.i189, align 4
  %45 = ptrtoint ptr %prev.i191 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i191, align 4
  %call.i.i192 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.2217, ptr noundef %46, ptr noundef %Rx_TS_Unused_List) #5
  br i1 %call.i.i192, label %if.end.i.i194, label %list_del_init.exit190.for.inc76_crit_edge

list_del_init.exit190.for.inc76_crit_edge:        ; preds = %list_del_init.exit190
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc76

if.end.i.i194:                                    ; preds = %list_del_init.exit190
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %prev.i191 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %pTS.2217, ptr %prev.i191, align 4
  %48 = ptrtoint ptr %pTS.2217 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %Rx_TS_Unused_List, ptr %pTS.2217, align 4
  %49 = ptrtoint ptr %prev.i3.i189 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev.i3.i189, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %pTS.2217, ptr %46, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %if.end.i.i194, %list_del_init.exit190.for.inc76_crit_edge, %for.body67.for.inc76_crit_edge
  %cmp65.not = icmp eq ptr %pTmpTS.2218, %Rx_TS_Pending_List
  br i1 %cmp65.not, label %for.inc76.for.end82_crit_edge, label %for.inc76.for.body67_crit_edge

for.inc76.for.body67_crit_edge:                   ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body67

for.inc76.for.end82_crit_edge:                    ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end82

for.end82:                                        ; preds = %for.inc76.for.end82_crit_edge, %for.end52.for.end82_crit_edge
  %Rx_TS_Admit_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 28
  %51 = ptrtoint ptr %Rx_TS_Admit_List to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %Rx_TS_Admit_List, align 8
  %cmp95.not220 = icmp eq ptr %52, %Rx_TS_Admit_List
  br i1 %cmp95.not220, label %for.end82.for.end113_crit_edge, label %for.body97.lr.ph

for.end82.for.end113_crit_edge:                   ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end113

for.body97.lr.ph:                                 ; preds = %for.end82
  %Rx_TS_Unused_List105 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 30
  %prev.i202 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 30, i32 1
  br label %for.body97

for.body97:                                       ; preds = %for.inc107.for.body97_crit_edge, %for.body97.lr.ph
  %pTS.3221 = phi ptr [ %52, %for.body97.lr.ph ], [ %pTmpTS.3222, %for.inc107.for.body97_crit_edge ]
  %53 = ptrtoint ptr %pTS.3221 to i32
  call void @__asan_load4_noabort(i32 %53)
  %pTmpTS.3222 = load ptr, ptr %pTS.3221, align 4
  %addr98 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.3221, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr98, ptr noundef dereferenceable(6) %Addr, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp101 = icmp eq i32 %bcmp, 0
  br i1 %cmp101, label %if.then102, label %for.body97.for.inc107_crit_edge

for.body97.for.inc107_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc107

if.then102:                                       ; preds = %for.body97
  tail call fastcc void @RemoveTsEntry(ptr noundef %ieee, ptr noundef %pTS.3221, i32 noundef 1)
  %call.i.i196 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.3221) #5
  br i1 %call.i.i196, label %if.end.i.i199, label %if.then102.list_del_init.exit201_crit_edge

if.then102.list_del_init.exit201_crit_edge:       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit201

if.end.i.i199:                                    ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i197 = getelementptr inbounds %struct.list_head, ptr %pTS.3221, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i197 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i197, align 4
  %56 = ptrtoint ptr %pTS.3221 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pTS.3221, align 4
  %prev1.i.i.i198 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i198 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i198, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del_init.exit201

list_del_init.exit201:                            ; preds = %if.end.i.i199, %if.then102.list_del_init.exit201_crit_edge
  %60 = ptrtoint ptr %pTS.3221 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %pTS.3221, ptr %pTS.3221, align 4
  %prev.i3.i200 = getelementptr inbounds %struct.list_head, ptr %pTS.3221, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i3.i200 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %pTS.3221, ptr %prev.i3.i200, align 4
  %62 = ptrtoint ptr %prev.i202 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i202, align 4
  %call.i.i203 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.3221, ptr noundef %63, ptr noundef %Rx_TS_Unused_List105) #5
  br i1 %call.i.i203, label %if.end.i.i205, label %list_del_init.exit201.for.inc107_crit_edge

list_del_init.exit201.for.inc107_crit_edge:       ; preds = %list_del_init.exit201
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc107

if.end.i.i205:                                    ; preds = %list_del_init.exit201
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %prev.i202 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %pTS.3221, ptr %prev.i202, align 4
  %65 = ptrtoint ptr %pTS.3221 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %Rx_TS_Unused_List105, ptr %pTS.3221, align 4
  %66 = ptrtoint ptr %prev.i3.i200 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev.i3.i200, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %pTS.3221, ptr %63, align 4
  br label %for.inc107

for.inc107:                                       ; preds = %if.end.i.i205, %list_del_init.exit201.for.inc107_crit_edge, %for.body97.for.inc107_crit_edge
  %cmp95.not = icmp eq ptr %pTmpTS.3222, %Rx_TS_Admit_List
  br i1 %cmp95.not, label %for.inc107.for.end113_crit_edge, label %for.inc107.for.body97_crit_edge

for.inc107.for.body97_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body97

for.inc107.for.end113_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end113

for.end113:                                       ; preds = %for.inc107.for.end113_crit_edge, %for.end82.for.end113_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @RemoveTsEntry(ptr noundef %ieee, ptr noundef %pTs, i32 noundef %TxRxSelect) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_timer = getelementptr inbounds %struct.ts_common_info, ptr %pTs, i32 0, i32 1
  %call = tail call i32 @del_timer_sync(ptr noundef %setup_timer) #5
  %inact_timer = getelementptr inbounds %struct.ts_common_info, ptr %pTs, i32 0, i32 2
  %call1 = tail call i32 @del_timer_sync(ptr noundef %inact_timer) #5
  tail call void @TsInitDelBA(ptr noundef %ieee, ptr noundef %pTs, i32 noundef %TxRxSelect) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %TxRxSelect)
  %cmp = icmp eq i32 %TxRxSelect, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pprev.i.i = getelementptr inbounds %struct.rx_ts_record, ptr %pTs, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %rx_pkt_pending_timer = getelementptr inbounds %struct.rx_ts_record, ptr %pTs, i32 0, i32 4
  %call5 = tail call i32 @del_timer_sync(ptr noundef %rx_pkt_pending_timer) #5
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %rx_pending_pkt_list = getelementptr inbounds %struct.rx_ts_record, ptr %pTs, i32 0, i32 3
  %2 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i.not67 = icmp eq ptr %3, %rx_pending_pkt_list
  br i1 %cmp.i.not67, label %if.end.cleanup37_crit_edge, label %do.body8.lr.ph

if.end.cleanup37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

do.body8.lr.ph:                                   ; preds = %if.end
  %reorder_spinlock = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 14
  %prev = getelementptr inbounds %struct.rx_ts_record, ptr %pTs, i32 0, i32 3, i32 1
  %RxReorder_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 33
  %prev.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 33, i32 1
  br label %do.body8

do.body8:                                         ; preds = %list_add_tail.exit.do.body8_crit_edge, %do.body8.lr.ph
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reorder_spinlock) #5
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.body8.list_del_init.exit_crit_edge

do.body8.list_del_init.exit_crit_edge:            ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body8.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i, align 4
  %prxb16 = getelementptr inbounds %struct.rx_reorder_entry, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %prxb16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prxb16, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.then22, label %for.cond.preheader, !prof !107

for.cond.preheader:                               ; preds = %list_del_init.exit
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp2665.not = icmp eq i8 %17, 0
  br i1 %cmp2665.not, label %for.cond.preheader.cleanup.cont_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup.cont_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

if.then22:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reorder_spinlock, i32 noundef %call11) #5
  br label %cleanup37

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ieee80211_rxb, ptr %15, i32 0, i32 1, i32 %i.066
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load ptr, ptr %arrayidx, align 1
  tail call void @consume_skb(ptr noundef %19) #5
  %inc = add nuw nsw i32 %i.066, 1
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %15, align 1
  %conv25 = zext i8 %21 to i32
  %cmp26 = icmp ult i32 %inc, %conv25
  br i1 %cmp26, label %for.body.for.body_crit_edge, label %for.body.cleanup.cont_crit_edge

for.body.cleanup.cont_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.cont:                                     ; preds = %for.body.cleanup.cont_crit_edge, %for.cond.preheader.cleanup.cont_crit_edge
  tail call void @kfree(ptr noundef nonnull %15) #5
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i62 = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %23, ptr noundef %RxReorder_Unused_List) #5
  br i1 %call.i.i62, label %if.end.i.i63, label %cleanup.cont.list_add_tail.exit_crit_edge

cleanup.cont.list_add_tail.exit_crit_edge:        ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i63:                                     ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %5, ptr %prev.i, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %RxReorder_Unused_List, ptr %5, align 4
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i3.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %5, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i63, %cleanup.cont.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reorder_spinlock, i32 noundef %call11) #5
  %28 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i.not = icmp eq ptr %29, %rx_pending_pkt_list
  br i1 %cmp.i.not, label %list_add_tail.exit.cleanup37_crit_edge, label %list_add_tail.exit.do.body8_crit_edge

list_add_tail.exit.do.body8_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

list_add_tail.exit.cleanup37_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ts_add_ba_timer = getelementptr inbounds %struct.tx_ts_record, ptr %pTs, i32 0, i32 7
  %call35 = tail call i32 @del_timer_sync(ptr noundef %ts_add_ba_timer) #5
  br label %cleanup37

cleanup37:                                        ; preds = %if.else, %list_add_tail.exit.cleanup37_crit_edge, %if.then22, %if.end.cleanup37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @RemoveAllTS(ptr noundef %ieee) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %Tx_TS_Pending_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 25
  %0 = ptrtoint ptr %Tx_TS_Pending_List to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Tx_TS_Pending_List, align 8
  %cmp.not170 = icmp eq ptr %1, %Tx_TS_Pending_List
  br i1 %cmp.not170, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %Tx_TS_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 26
  %prev.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 26, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %pTS.0171 = phi ptr [ %1, %for.body.lr.ph ], [ %pTmpTS.0, %list_add_tail.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %pTS.0171 to i32
  call void @__asan_load4_noabort(i32 %2)
  %pTmpTS.0 = load ptr, ptr %pTS.0171, align 4
  %setup_timer.i = getelementptr inbounds %struct.ts_common_info, ptr %pTS.0171, i32 0, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %setup_timer.i) #5
  %inact_timer.i = getelementptr inbounds %struct.ts_common_info, ptr %pTS.0171, i32 0, i32 2
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %inact_timer.i) #5
  tail call void @TsInitDelBA(ptr noundef %ieee, ptr noundef %pTS.0171, i32 noundef 0) #5
  %ts_add_ba_timer.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTS.0171, i32 0, i32 7
  %call35.i = tail call i32 @del_timer_sync(ptr noundef %ts_add_ba_timer.i) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.0171) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pTS.0171, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %pTS.0171 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pTS.0171, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %pTS.0171 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %pTS.0171, ptr %pTS.0171, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pTS.0171, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pTS.0171, ptr %prev.i3.i, align 4
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i129 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.0171, ptr noundef %12, ptr noundef %Tx_TS_Unused_List) #5
  br i1 %call.i.i129, label %if.end.i.i130, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i130:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pTS.0171, ptr %prev.i, align 4
  %14 = ptrtoint ptr %pTS.0171 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %Tx_TS_Unused_List, ptr %pTS.0171, align 4
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev.i3.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %pTS.0171, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i130, %list_del_init.exit.list_add_tail.exit_crit_edge
  %cmp.not = icmp eq ptr %pTmpTS.0, %Tx_TS_Pending_List
  br i1 %cmp.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %Tx_TS_Admit_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 24
  %17 = ptrtoint ptr %Tx_TS_Admit_List to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %Tx_TS_Admit_List, align 8
  %cmp26.not172 = icmp eq ptr %18, %Tx_TS_Admit_List
  br i1 %cmp26.not172, label %for.end.for.end38_crit_edge, label %for.body28.lr.ph

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.body28.lr.ph:                                 ; preds = %for.end
  %Tx_TS_Unused_List31 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 26
  %prev.i143 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 26, i32 1
  br label %for.body28

for.body28:                                       ; preds = %list_add_tail.exit147.for.body28_crit_edge, %for.body28.lr.ph
  %pTS.1173 = phi ptr [ %18, %for.body28.lr.ph ], [ %pTmpTS.1, %list_add_tail.exit147.for.body28_crit_edge ]
  %19 = ptrtoint ptr %pTS.1173 to i32
  call void @__asan_load4_noabort(i32 %19)
  %pTmpTS.1 = load ptr, ptr %pTS.1173, align 4
  %setup_timer.i131 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.1173, i32 0, i32 1
  %call.i132 = tail call i32 @del_timer_sync(ptr noundef %setup_timer.i131) #5
  %inact_timer.i133 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.1173, i32 0, i32 2
  %call1.i134 = tail call i32 @del_timer_sync(ptr noundef %inact_timer.i133) #5
  tail call void @TsInitDelBA(ptr noundef %ieee, ptr noundef %pTS.1173, i32 noundef 0) #5
  %ts_add_ba_timer.i135 = getelementptr inbounds %struct.tx_ts_record, ptr %pTS.1173, i32 0, i32 7
  %call35.i136 = tail call i32 @del_timer_sync(ptr noundef %ts_add_ba_timer.i135) #5
  %call.i.i137 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.1173) #5
  br i1 %call.i.i137, label %if.end.i.i140, label %for.body28.list_del_init.exit142_crit_edge

for.body28.list_del_init.exit142_crit_edge:       ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit142

if.end.i.i140:                                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i138 = getelementptr inbounds %struct.list_head, ptr %pTS.1173, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i138 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i138, align 4
  %22 = ptrtoint ptr %pTS.1173 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pTS.1173, align 4
  %prev1.i.i.i139 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i139, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit142

list_del_init.exit142:                            ; preds = %if.end.i.i140, %for.body28.list_del_init.exit142_crit_edge
  %26 = ptrtoint ptr %pTS.1173 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %pTS.1173, ptr %pTS.1173, align 4
  %prev.i3.i141 = getelementptr inbounds %struct.list_head, ptr %pTS.1173, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i141 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pTS.1173, ptr %prev.i3.i141, align 4
  %28 = ptrtoint ptr %prev.i143 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i143, align 4
  %call.i.i144 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.1173, ptr noundef %29, ptr noundef %Tx_TS_Unused_List31) #5
  br i1 %call.i.i144, label %if.end.i.i146, label %list_del_init.exit142.list_add_tail.exit147_crit_edge

list_del_init.exit142.list_add_tail.exit147_crit_edge: ; preds = %list_del_init.exit142
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit147

if.end.i.i146:                                    ; preds = %list_del_init.exit142
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %prev.i143 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pTS.1173, ptr %prev.i143, align 4
  %31 = ptrtoint ptr %pTS.1173 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %Tx_TS_Unused_List31, ptr %pTS.1173, align 4
  %32 = ptrtoint ptr %prev.i3.i141 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev.i3.i141, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %pTS.1173, ptr %29, align 4
  br label %list_add_tail.exit147

list_add_tail.exit147:                            ; preds = %if.end.i.i146, %list_del_init.exit142.list_add_tail.exit147_crit_edge
  %cmp26.not = icmp eq ptr %pTmpTS.1, %Tx_TS_Admit_List
  br i1 %cmp26.not, label %list_add_tail.exit147.for.end38_crit_edge, label %list_add_tail.exit147.for.body28_crit_edge

list_add_tail.exit147.for.body28_crit_edge:       ; preds = %list_add_tail.exit147
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body28

list_add_tail.exit147.for.end38_crit_edge:        ; preds = %list_add_tail.exit147
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.end38:                                        ; preds = %list_add_tail.exit147.for.end38_crit_edge, %for.end.for.end38_crit_edge
  %Rx_TS_Pending_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 29
  %34 = ptrtoint ptr %Rx_TS_Pending_List to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %Rx_TS_Pending_List, align 8
  %cmp51.not174 = icmp eq ptr %35, %Rx_TS_Pending_List
  br i1 %cmp51.not174, label %for.end38.for.end62_crit_edge, label %for.body53.lr.ph

for.end38.for.end62_crit_edge:                    ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end62

for.body53.lr.ph:                                 ; preds = %for.end38
  %Rx_TS_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 30
  %prev.i154 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 30, i32 1
  br label %for.body53

for.body53:                                       ; preds = %list_add_tail.exit158.for.body53_crit_edge, %for.body53.lr.ph
  %pTS.2175 = phi ptr [ %35, %for.body53.lr.ph ], [ %pTmpTS.2, %list_add_tail.exit158.for.body53_crit_edge ]
  %36 = ptrtoint ptr %pTS.2175 to i32
  call void @__asan_load4_noabort(i32 %36)
  %pTmpTS.2 = load ptr, ptr %pTS.2175, align 4
  tail call fastcc void @RemoveTsEntry(ptr noundef %ieee, ptr noundef %pTS.2175, i32 noundef 1)
  %call.i.i148 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.2175) #5
  br i1 %call.i.i148, label %if.end.i.i151, label %for.body53.list_del_init.exit153_crit_edge

for.body53.list_del_init.exit153_crit_edge:       ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit153

if.end.i.i151:                                    ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i149 = getelementptr inbounds %struct.list_head, ptr %pTS.2175, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i149 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i149, align 4
  %39 = ptrtoint ptr %pTS.2175 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pTS.2175, align 4
  %prev1.i.i.i150 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i150, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit153

list_del_init.exit153:                            ; preds = %if.end.i.i151, %for.body53.list_del_init.exit153_crit_edge
  %43 = ptrtoint ptr %pTS.2175 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %pTS.2175, ptr %pTS.2175, align 4
  %prev.i3.i152 = getelementptr inbounds %struct.list_head, ptr %pTS.2175, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i3.i152 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %pTS.2175, ptr %prev.i3.i152, align 4
  %45 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i154, align 4
  %call.i.i155 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.2175, ptr noundef %46, ptr noundef %Rx_TS_Unused_List) #5
  br i1 %call.i.i155, label %if.end.i.i157, label %list_del_init.exit153.list_add_tail.exit158_crit_edge

list_del_init.exit153.list_add_tail.exit158_crit_edge: ; preds = %list_del_init.exit153
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit158

if.end.i.i157:                                    ; preds = %list_del_init.exit153
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %pTS.2175, ptr %prev.i154, align 4
  %48 = ptrtoint ptr %pTS.2175 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %Rx_TS_Unused_List, ptr %pTS.2175, align 4
  %49 = ptrtoint ptr %prev.i3.i152 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev.i3.i152, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %pTS.2175, ptr %46, align 4
  br label %list_add_tail.exit158

list_add_tail.exit158:                            ; preds = %if.end.i.i157, %list_del_init.exit153.list_add_tail.exit158_crit_edge
  %cmp51.not = icmp eq ptr %pTmpTS.2, %Rx_TS_Pending_List
  br i1 %cmp51.not, label %list_add_tail.exit158.for.end62_crit_edge, label %list_add_tail.exit158.for.body53_crit_edge

list_add_tail.exit158.for.body53_crit_edge:       ; preds = %list_add_tail.exit158
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body53

list_add_tail.exit158.for.end62_crit_edge:        ; preds = %list_add_tail.exit158
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end62

for.end62:                                        ; preds = %list_add_tail.exit158.for.end62_crit_edge, %for.end38.for.end62_crit_edge
  %Rx_TS_Admit_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 28
  %51 = ptrtoint ptr %Rx_TS_Admit_List to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %Rx_TS_Admit_List, align 8
  %cmp75.not176 = icmp eq ptr %52, %Rx_TS_Admit_List
  br i1 %cmp75.not176, label %for.end62.for.end87_crit_edge, label %for.body77.lr.ph

for.end62.for.end87_crit_edge:                    ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end87

for.body77.lr.ph:                                 ; preds = %for.end62
  %Rx_TS_Unused_List80 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 30
  %prev.i165 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 30, i32 1
  br label %for.body77

for.body77:                                       ; preds = %list_add_tail.exit169.for.body77_crit_edge, %for.body77.lr.ph
  %pTS.3177 = phi ptr [ %52, %for.body77.lr.ph ], [ %pTmpTS.3, %list_add_tail.exit169.for.body77_crit_edge ]
  %53 = ptrtoint ptr %pTS.3177 to i32
  call void @__asan_load4_noabort(i32 %53)
  %pTmpTS.3 = load ptr, ptr %pTS.3177, align 4
  tail call fastcc void @RemoveTsEntry(ptr noundef %ieee, ptr noundef %pTS.3177, i32 noundef 1)
  %call.i.i159 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.3177) #5
  br i1 %call.i.i159, label %if.end.i.i162, label %for.body77.list_del_init.exit164_crit_edge

for.body77.list_del_init.exit164_crit_edge:       ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit164

if.end.i.i162:                                    ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i160 = getelementptr inbounds %struct.list_head, ptr %pTS.3177, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i160 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i160, align 4
  %56 = ptrtoint ptr %pTS.3177 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pTS.3177, align 4
  %prev1.i.i.i161 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i161 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i161, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del_init.exit164

list_del_init.exit164:                            ; preds = %if.end.i.i162, %for.body77.list_del_init.exit164_crit_edge
  %60 = ptrtoint ptr %pTS.3177 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %pTS.3177, ptr %pTS.3177, align 4
  %prev.i3.i163 = getelementptr inbounds %struct.list_head, ptr %pTS.3177, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i3.i163 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %pTS.3177, ptr %prev.i3.i163, align 4
  %62 = ptrtoint ptr %prev.i165 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i165, align 4
  %call.i.i166 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.3177, ptr noundef %63, ptr noundef %Rx_TS_Unused_List80) #5
  br i1 %call.i.i166, label %if.end.i.i168, label %list_del_init.exit164.list_add_tail.exit169_crit_edge

list_del_init.exit164.list_add_tail.exit169_crit_edge: ; preds = %list_del_init.exit164
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit169

if.end.i.i168:                                    ; preds = %list_del_init.exit164
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %prev.i165 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %pTS.3177, ptr %prev.i165, align 4
  %65 = ptrtoint ptr %pTS.3177 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %Rx_TS_Unused_List80, ptr %pTS.3177, align 4
  %66 = ptrtoint ptr %prev.i3.i163 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev.i3.i163, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %pTS.3177, ptr %63, align 4
  br label %list_add_tail.exit169

list_add_tail.exit169:                            ; preds = %if.end.i.i168, %list_del_init.exit164.list_add_tail.exit169_crit_edge
  %cmp75.not = icmp eq ptr %pTmpTS.3, %Rx_TS_Admit_List
  br i1 %cmp75.not, label %list_add_tail.exit169.for.end87_crit_edge, label %list_add_tail.exit169.for.body77_crit_edge

list_add_tail.exit169.for.body77_crit_edge:       ; preds = %list_add_tail.exit169
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body77

list_add_tail.exit169.for.end87_crit_edge:        ; preds = %list_add_tail.exit169
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end87

for.end87:                                        ; preds = %list_add_tail.exit169.for.end87_crit_edge, %for.end62.for.end87_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @TsStartAddBaProcess(ptr nocapture noundef readnone %ieee, ptr noundef %pTxTS) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add_ba_req_in_progress = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS, i32 0, i32 4
  %0 = ptrtoint ptr %add_ba_req_in_progress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add_ba_req_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %do.body25

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %add_ba_req_in_progress to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %add_ba_req_in_progress, align 4
  %add_ba_req_delayed = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS, i32 0, i32 5
  %3 = ptrtoint ptr %add_ba_req_delayed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add_ba_req_delayed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %5 = load i32, ptr @ieee80211_debug_level, align 4
  %and11 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool2.not, label %do.body10, label %do.body

do.body:                                          ; preds = %if.then
  br i1 %tobool12.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #8
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %ts_add_ba_timer = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 6
  %call9 = tail call i32 @mod_timer(ptr noundef %ts_add_ba_timer, i32 noundef %add) #5
  br label %if.end35

do.body10:                                        ; preds = %if.then
  br i1 %tobool12.not, label %do.body10.do.end19_crit_edge, label %do.end15

do.body10.do.end19_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #8
  br label %do.end19

do.end19:                                         ; preds = %do.end15, %do.body10.do.end19_crit_edge
  %ts_add_ba_timer20 = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add21 = add i32 %7, 10
  %call22 = tail call i32 @mod_timer(ptr noundef %ts_add_ba_timer20, i32 noundef %add21) #5
  br label %if.end35

do.body25:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %8 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool27.not = icmp sgt i32 %8, -1
  br i1 %tobool27.not, label %do.body25.if.end35_crit_edge, label %do.end30

do.body25.if.end35_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end30:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.43) #8
  br label %if.end35

if.end35:                                         ; preds = %do.end30, %do.body25.if.end35_crit_edge, %do.end19, %do.end7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @TsInitAddBA(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ResetBaEntry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_indicate_packets(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @TsInitDelBA(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 138, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @TSInitialize._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @TSInitialize._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @TSInitialize.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 149, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @TSInitialize.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 151, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @TSInitialize.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 153, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @TSInitialize.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 154, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @TSInitialize.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 156, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @TSInitialize.__key.12, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 170, i32 3}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @TSInitialize.__key.14, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 172, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @TSInitialize.__key.16, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 174, i32 3}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @TSInitialize.__key.18, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 176, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 302, i32 3}
!35 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @GetTs._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @GetTs._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 311, i32 4}
!40 = !{ptr @GetTs._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @GetTs._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 347, i32 4}
!44 = !{ptr @GetTs._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @GetTs._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 370, i32 4}
!48 = !{ptr @GetTs._entry.28, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @GetTs._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 382, i32 5}
!52 = !{ptr @GetTs._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @GetTs._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 401, i32 5}
!56 = !{ptr @GetTs._entry.34, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @GetTs._entry_ptr.36, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 455, i32 2}
!60 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @RemovePeerTS._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @RemovePeerTS._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 466, i32 4}
!65 = !{ptr @RemovePeerTS._entry.39, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @RemovePeerTS._entry_ptr.41, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 524, i32 4}
!69 = !{ptr @.str.43, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @TsStartAddBaProcess._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @TsStartAddBaProcess._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 528, i32 4}
!74 = !{ptr @TsStartAddBaProcess._entry.44, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @TsStartAddBaProcess._entry_ptr.46, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.48, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 532, i32 3}
!78 = !{ptr @TsStartAddBaProcess._entry.47, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @TsStartAddBaProcess._entry_ptr.49, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.50, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 100, i32 2}
!82 = !{ptr @.str.51, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @TsAddBaProcess._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @TsAddBaProcess._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 39, i32 2}
!87 = !{ptr @.str.53, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @RxPktPendingTimeout._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @RxPktPendingTimeout._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.55, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 54, i32 5}
!92 = !{ptr @RxPktPendingTimeout._entry.54, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @RxPktPendingTimeout._entry_ptr.56, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.58, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c", i32 72, i32 4}
!96 = !{ptr @RxPktPendingTimeout._entry.57, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @RxPktPendingTimeout._entry_ptr.59, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"branch_weights", i32 1, i32 2000}
