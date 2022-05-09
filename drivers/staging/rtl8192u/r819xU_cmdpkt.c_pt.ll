; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/r819xU_cmdpkt.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/r819xU_cmdpkt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct._RT_HIGH_THROUGHPUT = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capability_ele, %struct._HT_INFORMATION_ELE, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32 }>
%struct.ht_capability_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct._HT_INFORMATION_ELE = type { i8, [5 x i8], [16 x i8] }
%struct.tag_tx_rate_history = type { i8, i8, i16, [4 x i16], [8 x i16], [4 x [16 x i16]] }
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

@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@SendTxCommandPacket.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192u_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SendTxCommandPacket\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/rtl8192u/r819xU_cmdpkt.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RTL8192U: === NULL packet ======> tx full!\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@cmpk_message_handle_rx.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cmpk_message_handle_rx\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RTL8192U: ---->%s():unknown CMD Element\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 16, i64 32]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 54, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [44 x i8] c"../drivers/staging/rtl8192u/r819xU_cmdpkt.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 499, i32 4 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @SendTxCommandPacket(ptr noundef %dev, ptr nocapture noundef readonly %pData, i32 noundef %DataLen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add1 = add i32 %DataLen, 28
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add1, i32 noundef 2592) #3
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %cb, align 8
  %add.ptr = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %queue_index = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 13
  %1 = ptrtoint ptr %queue_index to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 5, ptr %queue_index, align 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.set = and i8 %bf.load, 63
  %bf.clear6 = or i8 %bf.set, 64
  store i8 %bf.clear6, ptr %add.ptr, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 24
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %6, i32 24
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %DataLen) #3
  %7 = call ptr @memcpy(ptr %call.i, ptr %pData, i32 %DataLen)
  %conv = trunc i32 %DataLen to i16
  %txbuf_size = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 14
  %8 = ptrtoint ptr %txbuf_size to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %txbuf_size, align 2
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %9 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ieee80211, align 4
  %check_nic_enough_desc = getelementptr inbounds %struct.ieee80211_device, ptr %10, i32 0, i32 192
  %11 = ptrtoint ptr %check_nic_enough_desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %check_nic_enough_desc, align 8
  %13 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %queue_index, align 1
  %conv10 = zext i8 %14 to i32
  %call11 = tail call signext i16 %12(ptr noundef %dev, i32 noundef %conv10) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call11)
  %tobool12.not = icmp eq i16 %call11, 0
  br i1 %tobool12.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ieee80211, align 4
  %17 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %queue_index, align 1
  %idxprom = zext i8 %18 to i32
  %arrayidx = getelementptr %struct.ieee80211_device, ptr %16, i32 0, i32 135, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %20, %arrayidx
  br i1 %cmp.i.not, label %lor.lhs.false17, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %queue_stop = getelementptr inbounds %struct.ieee80211_device, ptr %16, i32 0, i32 111
  %21 = ptrtoint ptr %queue_stop to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %queue_stop, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool20.not = icmp eq i16 %22, 0
  br i1 %tobool20.not, label %if.else, label %lor.lhs.false17.do.body_crit_edge

lor.lhs.false17.do.body_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false17.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %23 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %do.body.do.end33_crit_edge, label %do.body24

do.body.do.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end33

do.body24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @SendTxCommandPacket.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@SendTxCommandPacket, %if.then29)) #3
          to label %do.end33 [label %if.then29], !srcloc !19

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @SendTxCommandPacket.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.3) #3
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.body24, %do.body.do.end33_crit_edge
  %24 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ieee80211, align 4
  %26 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %queue_index, align 1
  %idxprom37 = zext i8 %27 to i32
  %arrayidx38 = getelementptr %struct.ieee80211_device, ptr %25, i32 0, i32 135, i32 %idxprom37
  tail call void @skb_queue_tail(ptr noundef %arrayidx38, ptr noundef nonnull %call.i.i) #3
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #5
  %softmac_hard_start_xmit = getelementptr inbounds %struct.ieee80211_device, ptr %16, i32 0, i32 175
  %28 = ptrtoint ptr %softmac_hard_start_xmit to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %softmac_hard_start_xmit, align 4
  %call40 = tail call i32 %29(ptr noundef nonnull %call.i.i, ptr noundef %dev) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %do.end33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cmpk_message_handle_rx(ptr noundef %dev, ptr noundef readonly %pstats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pstats, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %Length = getelementptr inbounds %struct.ieee80211_rx_stats, ptr %pstats, i32 0, i32 13
  %0 = ptrtoint ptr %Length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %Length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp58.not = icmp eq i16 %1, 0
  br i1 %cmp58.not, label %if.end.cleanup_crit_edge, label %land.rhs.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end
  %conv = zext i16 %1 to i32
  %virtual_address = getelementptr inbounds %struct.ieee80211_rx_stats, ptr %pstats, i32 0, i32 37
  %2 = ptrtoint ptr %virtual_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtual_address, align 8
  %priv.i.i = getelementptr i8, ptr %dev, i32 30120
  %txrate.i = getelementptr i8, ptr %dev, i32 32408
  %txfeedbackok.i.i44 = getelementptr i8, ptr %dev, i32 31476
  %txoktotal.i.i46 = getelementptr i8, ptr %dev, i32 31480
  %txfeedbackfail.i.i47 = getelementptr i8, ptr %dev, i32 31524
  %txerrtotal.i.i48 = getelementptr i8, ptr %dev, i32 31528
  %txretrycount.i.i49 = getelementptr i8, ptr %dev, i32 31548
  %txfeedbackretry.i.i50 = getelementptr i8, ptr %dev, i32 31552
  %txmulticast.i.i51 = getelementptr i8, ptr %dev, i32 31492
  %txbroadcast.i.i52 = getelementptr i8, ptr %dev, i32 31500
  %txunicast.i.i53 = getelementptr i8, ptr %dev, i32 31508
  %txerrmulticast.i.i54 = getelementptr i8, ptr %dev, i32 31536
  %txerrbroadcast.i.i = getelementptr i8, ptr %dev, i32 31540
  %txerrunicast.i.i = getelementptr i8, ptr %dev, i32 31544
  %txbytesmulticast.i.i = getelementptr i8, ptr %dev, i32 31496
  %txbytesbroadcast.i.i = getelementptr i8, ptr %dev, i32 31504
  %txbytesunicast.i.i = getelementptr i8, ptr %dev, i32 31512
  %last_packet_rate.i.i = getelementptr i8, ptr %dev, i32 31556
  %ieee80211.i = getelementptr i8, ptr %dev, i32 30156
  %txfeedback.i = getelementptr i8, ptr %dev, i32 31472
  %txokbytestotal.i.i = getelementptr i8, ptr %dev, i32 31484
  %txokinperiod.i.i = getelementptr i8, ptr %dev, i32 31488
  %txerrbytestotal.i.i = getelementptr i8, ptr %dev, i32 31532
  br label %land.rhs

land.rhs:                                         ; preds = %sw.epilog.land.rhs_crit_edge, %land.rhs.lr.ph
  %total_length.062 = phi i32 [ %conv, %land.rhs.lr.ph ], [ %sub, %sw.epilog.land.rhs_crit_edge ]
  %pcmd_buff.060 = phi ptr [ %3, %land.rhs.lr.ph ], [ %add.ptr, %sw.epilog.land.rhs_crit_edge ]
  %exe_cnt.059 = phi i8 [ 0, %land.rhs.lr.ph ], [ %inc, %sw.epilog.land.rhs_crit_edge ]
  %inc = add nuw nsw i8 %exe_cnt.059, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %exe_cnt.059)
  %cmp3 = icmp ult i8 %exe_cnt.059, 100
  br i1 %cmp3, label %while.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %4 = ptrtoint ptr %pcmd_buff.060 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pcmd_buff.060, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.body [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 3, label %while.body.sw.epilog_crit_edge
    i8 4, label %sw.bb9
    i8 6, label %sw.bb10
    i8 7, label %while.body.for.body.i_crit_edge
  ]

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %7 = ptrtoint ptr %txfeedback.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %txfeedback.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %txfeedback.i, align 4
  %rx_tx_fb.sroa.5.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 2
  %9 = ptrtoint ptr %rx_tx_fb.sroa.5.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %rx_tx_fb.sroa.5.0.copyload.i = load i16, ptr %rx_tx_fb.sroa.5.0.pmsg.sroa_idx.i, align 1
  %rx_tx_fb.sroa.10.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 5
  %10 = ptrtoint ptr %rx_tx_fb.sroa.10.0.pmsg.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %rx_tx_fb.sroa.10.0.copyload.i = load i8, ptr %rx_tx_fb.sroa.10.0.pmsg.sroa_idx.i, align 1
  %rx_tx_fb.sroa.19.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 14
  %11 = ptrtoint ptr %rx_tx_fb.sroa.19.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %rx_tx_fb.sroa.19.0.copyload.i = load i16, ptr %rx_tx_fb.sroa.19.0.pmsg.sroa_idx.i, align 1
  %12 = and i16 %rx_tx_fb.sroa.5.0.copyload.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i.i, label %if.else42.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb
  %13 = ptrtoint ptr %txfeedbackok.i.i44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %txfeedbackok.i.i44, align 4
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr %txfeedbackok.i.i44, align 4
  %15 = ptrtoint ptr %txoktotal.i.i46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txoktotal.i.i46, align 4
  %inc2.i.i = add i32 %16, 1
  store i32 %inc2.i.i, ptr %txoktotal.i.i46, align 4
  %conv.i.i = zext i16 %rx_tx_fb.sroa.19.0.copyload.i to i32
  %17 = ptrtoint ptr %txokbytestotal.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %txokbytestotal.i.i, align 4
  %add.i.i = add i32 %18, %conv.i.i
  store i32 %add.i.i, ptr %txokbytestotal.i.i, align 4
  %19 = ptrtoint ptr %txokinperiod.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %txokinperiod.i.i, align 4
  %inc5.i.i = add i32 %20, 1
  store i32 %inc5.i.i, ptr %txokinperiod.i.i, align 4
  %21 = lshr i16 %rx_tx_fb.sroa.5.0.copyload.i, 2
  %trunc.i.i = trunc i16 %21 to i2
  %22 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.6)
  switch i2 %trunc.i.i, label %if.else34.i.i [
    i2 -2, label %if.then12.i.i
    i2 1, label %if.then27.i.i
  ]

if.then12.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %txmulticast.i.i51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %txmulticast.i.i51, align 4
  %inc14.i.i = add i32 %24, 1
  store i32 %inc14.i.i, ptr %txmulticast.i.i51, align 4
  br label %cmpk_handle_tx_feedback.exit

if.then27.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %txbroadcast.i.i52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %txbroadcast.i.i52, align 4
  %inc29.i.i = add i32 %26, 1
  store i32 %inc29.i.i, ptr %txbroadcast.i.i52, align 4
  br label %cmpk_handle_tx_feedback.exit

if.else34.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %txunicast.i.i53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %txunicast.i.i53, align 4
  %inc36.i.i = add i32 %28, 1
  store i32 %inc36.i.i, ptr %txunicast.i.i53, align 4
  br label %cmpk_handle_tx_feedback.exit

if.else42.i.i:                                    ; preds = %sw.bb
  %29 = ptrtoint ptr %txfeedbackfail.i.i47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %txfeedbackfail.i.i47, align 4
  %inc44.i.i = add i32 %30, 1
  store i32 %inc44.i.i, ptr %txfeedbackfail.i.i47, align 4
  %31 = ptrtoint ptr %txerrtotal.i.i48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txerrtotal.i.i48, align 4
  %inc46.i.i = add i32 %32, 1
  store i32 %inc46.i.i, ptr %txerrtotal.i.i48, align 4
  %conv48.i.i = zext i16 %rx_tx_fb.sroa.19.0.copyload.i to i32
  %33 = ptrtoint ptr %txerrbytestotal.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %txerrbytestotal.i.i, align 4
  %add50.i.i = add i32 %34, %conv48.i.i
  store i32 %add50.i.i, ptr %txerrbytestotal.i.i, align 4
  %35 = lshr i16 %rx_tx_fb.sroa.5.0.copyload.i, 2
  %trunc116.i.i = trunc i16 %35 to i2
  %36 = zext i2 %trunc116.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.7)
  switch i2 %trunc116.i.i, label %if.else74.i.i [
    i2 -2, label %if.else42.i.i.cmpk_handle_tx_feedback.exit_crit_edge
    i2 1, label %if.then71.i.i
  ]

if.else42.i.i.cmpk_handle_tx_feedback.exit_crit_edge: ; preds = %if.else42.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cmpk_handle_tx_feedback.exit

if.then71.i.i:                                    ; preds = %if.else42.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cmpk_handle_tx_feedback.exit

if.else74.i.i:                                    ; preds = %if.else42.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cmpk_handle_tx_feedback.exit

cmpk_handle_tx_feedback.exit:                     ; preds = %if.else74.i.i, %if.then71.i.i, %if.else42.i.i.cmpk_handle_tx_feedback.exit_crit_edge, %if.else34.i.i, %if.then27.i.i, %if.then12.i.i
  %.sink.i.i = phi i32 [ 31544, %if.else74.i.i ], [ 31540, %if.then71.i.i ], [ 31496, %if.then12.i.i ], [ 31512, %if.else34.i.i ], [ 31504, %if.then27.i.i ], [ 31536, %if.else42.i.i.cmpk_handle_tx_feedback.exit_crit_edge ]
  %.sink117.shrunk.i.i = phi i16 [ 1, %if.else74.i.i ], [ 1, %if.then71.i.i ], [ %rx_tx_fb.sroa.19.0.copyload.i, %if.then12.i.i ], [ %rx_tx_fb.sroa.19.0.copyload.i, %if.else34.i.i ], [ %rx_tx_fb.sroa.19.0.copyload.i, %if.then27.i.i ], [ 1, %if.else42.i.i.cmpk_handle_tx_feedback.exit_crit_edge ]
  %.sink117.i.i = zext i16 %.sink117.shrunk.i.i to i32
  %txerrmulticast.i.i = getelementptr i8, ptr %dev, i32 %.sink.i.i
  %37 = ptrtoint ptr %txerrmulticast.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %txerrmulticast.i.i, align 4
  %inc61.i.i = add i32 %38, %.sink117.i.i
  store i32 %inc61.i.i, ptr %txerrmulticast.i.i, align 4
  %conv80.i.i = zext i8 %rx_tx_fb.sroa.10.0.copyload.i to i32
  %39 = ptrtoint ptr %txretrycount.i.i49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %txretrycount.i.i49, align 4
  %add82.i.i = add i32 %40, %conv80.i.i
  store i32 %add82.i.i, ptr %txretrycount.i.i49, align 4
  %41 = ptrtoint ptr %txfeedbackretry.i.i50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %txfeedbackretry.i.i50, align 4
  %add86.i.i = add i32 %42, %conv80.i.i
  store i32 %add86.i.i, ptr %txfeedbackretry.i.i50, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %arrayidx.i = getelementptr i8, ptr %pcmd_buff.060, i32 1
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %44)
  %cmp.not.i = icmp eq i8 %44, 6
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb7
  %45 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ieee80211.i, align 4
  %iw_mode.i = getelementptr inbounds %struct.ieee80211_device, ptr %46, i32 0, i32 43
  %47 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iw_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp4.i = icmp eq i32 %48, 1
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then6.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %pcmd_buff.060, i32 4
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %50, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.i.if.end20.sink.split.i_crit_edge

if.then6.i.if.end20.sink.split.i_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20.sink.split.i

if.else.i:                                        ; preds = %if.then6.i
  %and12.i = and i32 %50, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else.i.if.end20.i_crit_edge, label %if.else.i.if.end20.sink.split.i_crit_edge

if.else.i.if.end20.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20.sink.split.i

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20.i

if.end20.sink.split.i:                            ; preds = %if.else.i.if.end20.sink.split.i_crit_edge, %if.then6.i.if.end20.sink.split.i_crit_edge
  %.sink38.i = phi i8 [ 1, %if.then6.i.if.end20.sink.split.i_crit_edge ], [ 0, %if.else.i.if.end20.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 31444, %if.then6.i.if.end20.sink.split.i_crit_edge ], [ 31452, %if.else.i.if.end20.sink.split.i_crit_edge ]
  %bibsscoordinator.i = getelementptr inbounds %struct.ieee80211_device, ptr %46, i32 0, i32 141
  %51 = ptrtoint ptr %bibsscoordinator.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink38.i, ptr %bibsscoordinator.i, align 2
  %txbeaconokint.i = getelementptr i8, ptr %dev, i32 %.sink.i
  %52 = ptrtoint ptr %txbeaconokint.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %txbeaconokint.i, align 4
  %inc18.i = add i32 %53, 1
  store i32 %inc18.i, ptr %txbeaconokint.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.sink.split.i, %if.else.i.if.end20.i_crit_edge
  %and22.i = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.sw.epilog_crit_edge, label %if.then24.i

if.end20.i.sw.epilog_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then24.i:                                      ; preds = %if.end20.i
  %54 = ptrtoint ptr %ieee80211.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ieee80211.i, align 4
  %mode.i.i = getelementptr inbounds %struct.ieee80211_device, ptr %55, i32 0, i32 82, i32 24
  %56 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mode.i.i, align 4
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %57, label %if.then24.i.if.else.i.i_crit_edge [
    i8 1, label %if.then24.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge
    i8 32, label %if.then24.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge63
    i8 16, label %land.lhs.true.i.i
  ]

if.then24.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge63: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cmdpkt_beacontimerinterrupt_819xusb.exit.i

if.then24.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cmdpkt_beacontimerinterrupt_819xusb.exit.i

if.then24.i.if.else.i.i_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.then24.i
  %pHTInfo.i.i = getelementptr inbounds %struct.ieee80211_device, ptr %55, i32 0, i32 12
  %59 = ptrtoint ptr %pHTInfo.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pHTInfo.i.i, align 8
  %bCurSuppCCK.i.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %bCurSuppCCK.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bCurSuppCCK.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i42 = icmp eq i8 %62, 0
  br i1 %tobool.not.i.i42, label %land.lhs.true.i.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i.i

land.lhs.true.i.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cmdpkt_beacontimerinterrupt_819xusb.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.then24.i.if.else.i.i_crit_edge
  br label %cmdpkt_beacontimerinterrupt_819xusb.exit.i

cmdpkt_beacontimerinterrupt_819xusb.exit.i:       ; preds = %if.else.i.i, %land.lhs.true.i.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge, %if.then24.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge, %if.then24.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge63
  %tx_rate.0.i.i = phi i16 [ 10, %if.else.i.i ], [ 60, %if.then24.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge ], [ 60, %if.then24.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge63 ], [ 60, %land.lhs.true.i.i.cmdpkt_beacontimerinterrupt_819xusb.exit.i_crit_edge ]
  tail call void @rtl819xusb_beacon_tx(ptr noundef %dev, i16 noundef zeroext %tx_rate.0.i.i) #3
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %rx_tx_sts.sroa.4.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 4
  %63 = ptrtoint ptr %rx_tx_sts.sroa.4.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %rx_tx_sts.sroa.4.0.copyload.i = load i16, ptr %rx_tx_sts.sroa.4.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.6.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 6
  %64 = ptrtoint ptr %rx_tx_sts.sroa.6.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %rx_tx_sts.sroa.6.0.copyload.i = load i16, ptr %rx_tx_sts.sroa.6.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.8.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 8
  %65 = ptrtoint ptr %rx_tx_sts.sroa.8.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %rx_tx_sts.sroa.8.0.copyload.i = load i16, ptr %rx_tx_sts.sroa.8.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.9.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 10
  %66 = ptrtoint ptr %rx_tx_sts.sroa.9.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %rx_tx_sts.sroa.9.0.copyload.i = load i16, ptr %rx_tx_sts.sroa.9.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.11.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 12
  %67 = ptrtoint ptr %rx_tx_sts.sroa.11.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %rx_tx_sts.sroa.11.0.copyload.i = load i16, ptr %rx_tx_sts.sroa.11.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.12.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 14
  %68 = ptrtoint ptr %rx_tx_sts.sroa.12.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %rx_tx_sts.sroa.12.0.copyload.i = load i16, ptr %rx_tx_sts.sroa.12.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.13.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 16
  %69 = ptrtoint ptr %rx_tx_sts.sroa.13.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %rx_tx_sts.sroa.13.0.copyload.i = load i16, ptr %rx_tx_sts.sroa.13.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.14.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 18
  %70 = ptrtoint ptr %rx_tx_sts.sroa.14.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %rx_tx_sts.sroa.14.0.copyload.i = load i16, ptr %rx_tx_sts.sroa.14.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.154.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 22
  %71 = ptrtoint ptr %rx_tx_sts.sroa.154.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %rx_tx_sts.sroa.154.0.copyload.i = load i16, ptr %rx_tx_sts.sroa.154.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.16.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 24
  %72 = ptrtoint ptr %rx_tx_sts.sroa.16.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %rx_tx_sts.sroa.16.0.copyload.i = load i32, ptr %rx_tx_sts.sroa.16.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.17.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 28
  %73 = ptrtoint ptr %rx_tx_sts.sroa.17.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %rx_tx_sts.sroa.17.0.copyload.i = load i32, ptr %rx_tx_sts.sroa.17.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.18.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 32
  %74 = ptrtoint ptr %rx_tx_sts.sroa.18.0.pmsg.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %rx_tx_sts.sroa.18.0.copyload.i = load i32, ptr %rx_tx_sts.sroa.18.0.pmsg.sroa_idx.i, align 1
  %rx_tx_sts.sroa.195.0.pmsg.sroa_idx.i = getelementptr inbounds i8, ptr %pcmd_buff.060, i32 39
  %75 = ptrtoint ptr %rx_tx_sts.sroa.195.0.pmsg.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %rx_tx_sts.sroa.195.0.copyload.i = load i8, ptr %rx_tx_sts.sroa.195.0.pmsg.sroa_idx.i, align 1
  %conv.i.i43 = zext i16 %rx_tx_sts.sroa.6.0.copyload.i to i32
  %76 = ptrtoint ptr %txfeedbackok.i.i44 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %txfeedbackok.i.i44, align 4
  %add.i.i45 = add i32 %77, %conv.i.i43
  store i32 %add.i.i45, ptr %txfeedbackok.i.i44, align 4
  %78 = ptrtoint ptr %txoktotal.i.i46 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %txoktotal.i.i46, align 4
  %add4.i.i = add i32 %79, %conv.i.i43
  store i32 %add4.i.i, ptr %txoktotal.i.i46, align 4
  %conv5.i.i = zext i16 %rx_tx_sts.sroa.4.0.copyload.i to i32
  %80 = ptrtoint ptr %txfeedbackfail.i.i47 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %txfeedbackfail.i.i47, align 4
  %add7.i.i = add i32 %81, %conv5.i.i
  store i32 %add7.i.i, ptr %txfeedbackfail.i.i47, align 4
  %82 = ptrtoint ptr %txerrtotal.i.i48 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %txerrtotal.i.i48, align 4
  %add11.i.i = add i32 %83, %conv5.i.i
  store i32 %add11.i.i, ptr %txerrtotal.i.i48, align 4
  %conv12.i.i = zext i16 %rx_tx_sts.sroa.9.0.copyload.i to i32
  %84 = ptrtoint ptr %txretrycount.i.i49 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %txretrycount.i.i49, align 4
  %add14.i.i = add i32 %85, %conv12.i.i
  store i32 %add14.i.i, ptr %txretrycount.i.i49, align 4
  %86 = ptrtoint ptr %txfeedbackretry.i.i50 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %txfeedbackretry.i.i50, align 4
  %add18.i.i = add i32 %87, %conv12.i.i
  store i32 %add18.i.i, ptr %txfeedbackretry.i.i50, align 4
  %conv19.i.i = zext i16 %rx_tx_sts.sroa.8.0.copyload.i to i32
  %88 = ptrtoint ptr %txmulticast.i.i51 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %txmulticast.i.i51, align 4
  %add21.i.i = add i32 %89, %conv19.i.i
  store i32 %add21.i.i, ptr %txmulticast.i.i51, align 4
  %conv22.i.i = zext i16 %rx_tx_sts.sroa.12.0.copyload.i to i32
  %90 = ptrtoint ptr %txbroadcast.i.i52 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %txbroadcast.i.i52, align 4
  %add24.i.i = add i32 %91, %conv22.i.i
  store i32 %add24.i.i, ptr %txbroadcast.i.i52, align 4
  %conv25.i.i = zext i16 %rx_tx_sts.sroa.11.0.copyload.i to i32
  %92 = ptrtoint ptr %txunicast.i.i53 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %txunicast.i.i53, align 4
  %add27.i.i = add i32 %93, %conv25.i.i
  store i32 %add27.i.i, ptr %txunicast.i.i53, align 4
  %conv28.i.i = zext i16 %rx_tx_sts.sroa.14.0.copyload.i to i32
  %94 = ptrtoint ptr %txerrmulticast.i.i54 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %txerrmulticast.i.i54, align 4
  %add30.i.i = add i32 %95, %conv28.i.i
  store i32 %add30.i.i, ptr %txerrmulticast.i.i54, align 4
  %conv31.i.i = zext i16 %rx_tx_sts.sroa.13.0.copyload.i to i32
  %96 = ptrtoint ptr %txerrbroadcast.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %txerrbroadcast.i.i, align 4
  %add33.i.i = add i32 %97, %conv31.i.i
  store i32 %add33.i.i, ptr %txerrbroadcast.i.i, align 4
  %conv34.i.i = zext i16 %rx_tx_sts.sroa.154.0.copyload.i to i32
  %98 = ptrtoint ptr %txerrunicast.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %txerrunicast.i.i, align 4
  %add36.i.i = add i32 %99, %conv34.i.i
  store i32 %add36.i.i, ptr %txerrunicast.i.i, align 4
  %100 = ptrtoint ptr %txbytesmulticast.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %txbytesmulticast.i.i, align 4
  %add38.i.i = add i32 %101, %rx_tx_sts.sroa.16.0.copyload.i
  store i32 %add38.i.i, ptr %txbytesmulticast.i.i, align 4
  %102 = ptrtoint ptr %txbytesbroadcast.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %txbytesbroadcast.i.i, align 4
  %add40.i.i = add i32 %103, %rx_tx_sts.sroa.17.0.copyload.i
  store i32 %add40.i.i, ptr %txbytesbroadcast.i.i, align 4
  %104 = ptrtoint ptr %txbytesunicast.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %txbytesunicast.i.i, align 4
  %add42.i.i = add i32 %105, %rx_tx_sts.sroa.18.0.copyload.i
  store i32 %add42.i.i, ptr %txbytesunicast.i.i, align 4
  %106 = ptrtoint ptr %last_packet_rate.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %rx_tx_sts.sroa.195.0.copyload.i, ptr %last_packet_rate.i.i, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %while.body.for.body.i_crit_edge ]
  %arrayidx.i55 = getelementptr i32, ptr %pcmd_buff.060, i32 %indvars.iv.i
  %107 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i55, align 4
  %or.i = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 16) #3
  %109 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or.i, ptr %arrayidx.i55, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 39
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i56 = icmp eq ptr %pcmd_buff.060, null
  br i1 %tobool.not.i56, label %for.end.i.sw.epilog_crit_edge, label %for.end.i.for.body15.i_crit_edge

for.end.i.for.body15.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body15.i

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body15.i:                                     ; preds = %if.end40.i.for.body15.i_crit_edge, %for.end.i.for.body15.i_crit_edge
  %indvars.iv107.i = phi i32 [ %indvars.iv.next108.i, %if.end40.i.for.body15.i_crit_edge ], [ 0, %for.end.i.for.body15.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv107.i)
  %cmp17.i = icmp ult i32 %indvars.iv107.i, 4
  br i1 %cmp17.i, label %if.end26.thread.i, label %if.end26.i

if.end26.thread.i:                                ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx21.i = getelementptr %struct.tag_tx_rate_history, ptr %pcmd_buff.060, i32 0, i32 3, i32 %indvars.iv107.i
  %110 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %arrayidx21.i, align 1
  %conv22.i = zext i16 %111 to i32
  %arrayidx25.i = getelementptr [4 x i32], ptr %txrate.i, i32 0, i32 %indvars.iv107.i
  %112 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx25.i, align 4
  %add.i = add i32 %113, %conv22.i
  store i32 %add.i, ptr %arrayidx25.i, align 4
  br label %if.then30.i

if.end26.i:                                       ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv107.i)
  %cmp28.i = icmp ult i32 %indvars.iv107.i, 8
  br i1 %cmp28.i, label %if.end26.i.if.then30.i_crit_edge, label %if.end26.i.if.end40.i_crit_edge

if.end26.i.if.end40.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40.i

if.end26.i.if.then30.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then30.i

if.then30.i:                                      ; preds = %if.end26.i.if.then30.i_crit_edge, %if.end26.thread.i
  %arrayidx32.i = getelementptr %struct.tag_tx_rate_history, ptr %pcmd_buff.060, i32 0, i32 4, i32 %indvars.iv107.i
  %114 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %arrayidx32.i, align 1
  %conv33.i = zext i16 %115 to i32
  %arrayidx38.i = getelementptr %struct.r8192_priv, ptr %priv.i.i, i32 0, i32 34, i32 76, i32 1, i32 %indvars.iv107.i
  %116 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %117, %conv33.i
  store i32 %add39.i, ptr %arrayidx38.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then30.i, %if.end26.i.if.end40.i_crit_edge
  %arrayidx49.i = getelementptr %struct.tag_tx_rate_history, ptr %pcmd_buff.060, i32 0, i32 5, i32 0, i32 %indvars.iv107.i
  %118 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %arrayidx49.i, align 1
  %conv50.i = zext i16 %119 to i32
  %arrayidx57.i = getelementptr %struct.r8192_priv, ptr %priv.i.i, i32 0, i32 34, i32 76, i32 2, i32 0, i32 %indvars.iv107.i
  %120 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx57.i, align 4
  %add58.i = add i32 %121, %conv50.i
  store i32 %add58.i, ptr %arrayidx57.i, align 4
  %arrayidx49.1.i = getelementptr %struct.tag_tx_rate_history, ptr %pcmd_buff.060, i32 0, i32 5, i32 1, i32 %indvars.iv107.i
  %122 = ptrtoint ptr %arrayidx49.1.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %arrayidx49.1.i, align 1
  %conv50.1.i = zext i16 %123 to i32
  %arrayidx57.1.i = getelementptr %struct.r8192_priv, ptr %priv.i.i, i32 0, i32 34, i32 76, i32 2, i32 1, i32 %indvars.iv107.i
  %124 = ptrtoint ptr %arrayidx57.1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx57.1.i, align 4
  %add58.1.i = add i32 %125, %conv50.1.i
  store i32 %add58.1.i, ptr %arrayidx57.1.i, align 4
  %arrayidx49.2.i = getelementptr %struct.tag_tx_rate_history, ptr %pcmd_buff.060, i32 0, i32 5, i32 2, i32 %indvars.iv107.i
  %126 = ptrtoint ptr %arrayidx49.2.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %arrayidx49.2.i, align 1
  %conv50.2.i = zext i16 %127 to i32
  %arrayidx57.2.i = getelementptr %struct.r8192_priv, ptr %priv.i.i, i32 0, i32 34, i32 76, i32 2, i32 2, i32 %indvars.iv107.i
  %128 = ptrtoint ptr %arrayidx57.2.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx57.2.i, align 4
  %add58.2.i = add i32 %129, %conv50.2.i
  store i32 %add58.2.i, ptr %arrayidx57.2.i, align 4
  %arrayidx49.3.i = getelementptr %struct.tag_tx_rate_history, ptr %pcmd_buff.060, i32 0, i32 5, i32 3, i32 %indvars.iv107.i
  %130 = ptrtoint ptr %arrayidx49.3.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %131 = load i16, ptr %arrayidx49.3.i, align 1
  %conv50.3.i = zext i16 %131 to i32
  %arrayidx57.3.i = getelementptr %struct.r8192_priv, ptr %priv.i.i, i32 0, i32 34, i32 76, i32 2, i32 3, i32 %indvars.iv107.i
  %132 = ptrtoint ptr %arrayidx57.3.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx57.3.i, align 4
  %add58.3.i = add i32 %133, %conv50.3.i
  store i32 %add58.3.i, ptr %arrayidx57.3.i, align 4
  %indvars.iv.next108.i = add nuw nsw i32 %indvars.iv107.i, 1
  %exitcond109.not.i = icmp eq i32 %indvars.iv.next108.i, 16
  br i1 %exitcond109.not.i, label %if.end40.i.sw.epilog_crit_edge, label %if.end40.i.for.body15.i_crit_edge

if.end40.i.for.body15.i_crit_edge:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body15.i

if.end40.i.sw.epilog_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %134 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %134)
  %tobool12.not = icmp sgt i32 %134, -1
  br i1 %tobool12.not, label %do.body.cleanup_crit_edge, label %do.body14

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmpk_message_handle_rx.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmpk_message_handle_rx, %if.then18)) #3
          to label %cleanup [label %if.then18], !srcloc !19

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmpk_message_handle_rx.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #3
  br label %cleanup

sw.epilog:                                        ; preds = %if.end40.i.sw.epilog_crit_edge, %for.end.i.sw.epilog_crit_edge, %sw.bb10, %sw.bb9, %cmdpkt_beacontimerinterrupt_819xusb.exit.i, %if.end20.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %cmpk_handle_tx_feedback.exit, %while.body.sw.epilog_crit_edge
  %cmd_length.0 = phi i32 [ 20, %sw.bb10 ], [ 40, %sw.bb9 ], [ 20, %cmpk_handle_tx_feedback.exit ], [ 16, %while.body.sw.epilog_crit_edge ], [ 8, %sw.bb7.sw.epilog_crit_edge ], [ 8, %if.end.i.sw.epilog_crit_edge ], [ 8, %if.end20.i.sw.epilog_crit_edge ], [ 8, %cmdpkt_beacontimerinterrupt_819xusb.exit.i ], [ 156, %for.end.i.sw.epilog_crit_edge ], [ 156, %if.end40.i.sw.epilog_crit_edge ]
  %sub = sub i32 %total_length.062, %cmd_length.0
  %add.ptr = getelementptr i8, ptr %pcmd_buff.060, i32 %cmd_length.0
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %sw.epilog.land.rhs_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.epilog.land.rhs_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %if.then18, %do.body14, %do.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then18 ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %do.body14 ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %land.rhs.cleanup_crit_edge ], [ 1, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl819xusb_beacon_tx(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/r819xU_cmdpkt.c", i32 54, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @SendTxCommandPacket.__UNIQUE_ID_ddebug346, !1, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/r819xU_cmdpkt.c", i32 499, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cmpk_message_handle_rx.__UNIQUE_ID_ddebug347, !7, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2148998146, i64 2148998151, i64 2148998164, i64 2148998208, i64 2148998242, i64 2148998263}
