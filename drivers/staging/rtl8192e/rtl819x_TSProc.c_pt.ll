; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl819x_TSProc.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl819x_TSProc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+RemovePeerTS\22, \22a\22\09"
module asm "\09.weak\09__crc_RemovePeerTS\09\09\09\09"
module asm "\09.long\09__crc_RemovePeerTS\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_RemovePeerTS:\09\09\09\09\09"
module asm "\09.asciz \09\22RemovePeerTS\22\09\09\09\09\09"
module asm "__kstrtabns_RemovePeerTS:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rtllib_device = type { ptr, ptr, %struct.rtllib_security, i8, i32, i8, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, ptr, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, %struct.net_device_stats, %struct.rtllib_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i8, %struct.rt_intel_promisc_mode, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, [6 x i8], i16, i16, %struct.lib80211_crypt_info, [32 x %struct.sw_cam_table], [16 x %struct.rt_pmkid_list], [17 x [4 x %struct.rtllib_frag_entry]], [17 x i32], i16, i16, [6 x i8], %struct.rtllib_network, i32, i32, i32, i32, i16, i16, ptr, i8, [162 x i8], i8, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i8, i16, i16, i32, i32, %struct.tasklet_struct, i64, i8, i16, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i32, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, i8, i8, [5 x ptr], i32, i32, i8, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, i8, %struct.rt_pwr_save_ctrl, %struct.tx_pending, %struct.timer_list, %struct.timer_list, i8, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %union.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.rtllib_security = type <{ i16, [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %union.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%union.tspec_body = type { %struct.anon.114 }
%struct.anon.114 = type { %union.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.qos_tsinfo = type { %struct.anon.115 }
%struct.anon.115 = type { i8, i8, i8, i8 }
%union.qos_tclas = type { %struct._TYPE1_IPV6 }
%struct._TYPE1_IPV6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtllib_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rt_intel_promisc_mode = type { i8, i8 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.sw_cam_table = type { [6 x i8], i8, [16 x i8], i16, i8, i8 }
%struct.rt_pmkid_list = type { [6 x i8], [16 x i8], [33 x i8], i8 }
%struct.rtllib_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.rtllib_network = type { [6 x i8], i8, [33 x i8], i8, [33 x i8], i8, %struct.rtllib_qos_data, i8, i8, i8, [2 x i8], i8, i8, [6 x i8], i8, i8, %struct.rtllib_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, [256 x i8], i32, %struct.rtllib_tim_parameters, i8, i8, i64, i8, [4 x %struct.rtllib_wmm_ac_param], i8, i16, [255 x i8], %struct.bss_ht, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head }
%struct.rtllib_qos_data = type { %struct.rtllib_qos_parameters, i32, i32, i32, i8, i8 }
%struct.rtllib_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.rtllib_rx_stats = type { i64, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, i16, i16, i16, i16, i8, i8, i16 }
%struct.rtllib_tim_parameters = type { i8, i8 }
%struct.rtllib_wmm_ac_param = type { i8, i8, i16 }
%struct.bss_ht = type { i8, [32 x i8], i16, [32 x i8], i16, i32, i32, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.118, i32 }
%union.anon.118 = type { ptr }
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
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i32, i8, i8, i8 }
%struct.rt_pwr_save_ctrl = type { i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.rt_hi_throughput = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capab_ele, %struct.ht_info_ele, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8 }>
%struct.ht_capab_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct.ht_info_ele = type { i8, [5 x i8], [16 x i8] }
%struct.rtllib_rxb = type <{ i8, [64 x ptr], [6 x i8], [6 x i8] }>

@TSInitialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(&pTxTS->TsCommonInfo.SetupTimer)\00", [62 x i8] zeroinitializer }, align 32
@TSInitialize.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(&pTxTS->TsCommonInfo.InactTimer)\00", [62 x i8] zeroinitializer }, align 32
@TSInitialize.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&pTxTS->TsAddBaTimer)\00", [41 x i8] zeroinitializer }, align 32
@TSInitialize.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(&pTxTS->TxPendingBARecord.timer)\00", [62 x i8] zeroinitializer }, align 32
@TSInitialize.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(&pTxTS->TxAdmittedBARecord.timer)\00", [61 x i8] zeroinitializer }, align 32
@TSInitialize.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(&pRxTS->ts_common_info.SetupTimer)\00", [60 x i8] zeroinitializer }, align 32
@TSInitialize.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(&pRxTS->ts_common_info.InactTimer)\00", [60 x i8] zeroinitializer }, align 32
@TSInitialize.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(&pRxTS->rx_admitted_ba_record.timer)\00", [58 x i8] zeroinitializer }, align 32
@TSInitialize.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(&pRxTS->rx_pkt_pending_timer)\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Get TS for Broadcast or Multicast\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): TID(%d) is not valid\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.GetTs = private unnamed_addr constant [6 x i8] c"GetTs\00", align 1
@GetTs.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @__func__.GetTs, ptr @.str.20, ptr @.str.21, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtllib\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/rtl8192e/rtl819x_TSProc.c\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"add new TS failed(tid:%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@GetTs.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @__func__.GetTs, ptr @.str.20, ptr @.str.22, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"to init current TS, UP:%d, Dir:%d, addr: %pM ppTs=%p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"There is not enough dir=%d(0=up down=1) TS record to be used!\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"===========>%s, %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.RemovePeerTS = private unnamed_addr constant [13 x i8] c"RemovePeerTS\00", align 1
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"====>remove Tx_TS_admin_list\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_RemovePeerTS = external dso_local constant [0 x i8], align 1
@__kstrtabns_RemovePeerTS = external dso_local constant [0 x i8], align 1
@__ksymtab_RemovePeerTS = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @RemovePeerTS to i32), ptr @__kstrtab_RemovePeerTS, ptr @__kstrtabns_RemovePeerTS }, section "___ksymtab+RemovePeerTS", align 4
@TsStartAddBaProcess.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.26, ptr @.str.20, ptr @.str.27, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TsStartAddBaProcess\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Start ADDBA after 60 sec!!\0A\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@TsStartAddBaProcess.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.26, ptr @.str.20, ptr @.str.28, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Immediately Start ADDBA\0A\00", [39 x i8] zeroinitializer }, align 32
@TsStartAddBaProcess.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.26, ptr @.str.20, ptr @.str.29, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BA timer is already added\0A\00", [37 x i8] zeroinitializer }, align 32
@TsAddBaProcess.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.30, ptr @.str.20, ptr @.str.31, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TsAddBaProcess\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): ADDBA Req is started\0A\00", [36 x i8] zeroinitializer }, align 32
@RxPktPendingTimeout.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.32, ptr @.str.20, ptr @.str.33, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RxPktPendingTimeout\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): Indicate SeqNum: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): Rx Reorder struct buffer full\0A\00", [59 x i8] zeroinitializer }, align 32
@RemoveTsEntry.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.35, ptr @.str.20, ptr @.str.36, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RemoveTsEntry\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): Delete SeqNum %d!\0A\00", [39 x i8] zeroinitializer }, align 32
@switch.table.GetTs = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\02\00\05\05\07\07", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 145, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 148, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 151, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 153, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 155, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 171, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 174, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 177, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 180, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 299, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 323, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 334, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 368, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 389, i32 7 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 440, i32 25 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 453, i32 9 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 513, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 517, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 521, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 100, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 52, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 73, i32 9 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [45 x i8] c"../drivers/staging/rtl8192e/rtl819x_TSProc.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 412, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [19 x i8] c"switch.table.GetTs\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @__ksymtab_RemovePeerTS, ptr @TSInitialize.__key, ptr @.str, ptr @TSInitialize.__key.1, ptr @.str.2, ptr @TSInitialize.__key.3, ptr @.str.4, ptr @TSInitialize.__key.5, ptr @.str.6, ptr @TSInitialize.__key.7, ptr @.str.8, ptr @TSInitialize.__key.9, ptr @.str.10, ptr @TSInitialize.__key.11, ptr @.str.12, ptr @TSInitialize.__key.13, ptr @.str.14, ptr @TSInitialize.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.GetTs], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSInitialize.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.GetTs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @TSInitialize(ptr noundef %ieee) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %TxTsRecord = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 42
  %RxTsRecord = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 46
  %Tx_TS_Admit_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 39
  %0 = ptrtoint ptr %Tx_TS_Admit_List to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %Tx_TS_Admit_List, ptr %Tx_TS_Admit_List, align 4
  %prev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 39, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %Tx_TS_Admit_List, ptr %prev.i, align 4
  %Tx_TS_Pending_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 40
  %2 = ptrtoint ptr %Tx_TS_Pending_List to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %Tx_TS_Pending_List, ptr %Tx_TS_Pending_List, align 4
  %prev.i102 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 40, i32 1
  %3 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %Tx_TS_Pending_List, ptr %prev.i102, align 4
  %Tx_TS_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 41
  %4 = ptrtoint ptr %Tx_TS_Unused_List to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %Tx_TS_Unused_List, ptr %Tx_TS_Unused_List, align 4
  %prev.i103 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 41, i32 1
  %5 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %Tx_TS_Unused_List, ptr %prev.i103, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %entry
  %count.0124 = phi i8 [ 0, %entry ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %pTxTS.0122 = phi ptr [ %TxTsRecord, %entry ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %num = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0122, i32 0, i32 9
  %6 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %count.0124, ptr %num, align 4
  %SetupTimer = getelementptr inbounds %struct.ts_common_info, ptr %pTxTS.0122, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %SetupTimer, ptr noundef nonnull @TsSetupTimeOut, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @TSInitialize.__key) #5
  %InactTimer = getelementptr inbounds %struct.ts_common_info, ptr %pTxTS.0122, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %InactTimer, ptr noundef nonnull @TsInactTimeout, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @TSInitialize.__key.1) #5
  %TsAddBaTimer = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0122, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %TsAddBaTimer, ptr noundef nonnull @TsAddBaProcess, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @TSInitialize.__key.3) #5
  %TxPendingBARecord = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0122, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %TxPendingBARecord, ptr noundef nonnull @BaSetupTimeOut, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @TSInitialize.__key.5) #5
  %TxAdmittedBARecord = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0122, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %TxAdmittedBARecord, ptr noundef nonnull @TxBaInactTimeout, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @TSInitialize.__key.7) #5
  %Addr.i.i = getelementptr inbounds %struct.ts_common_info, ptr %pTxTS.0122, i32 0, i32 3
  %7 = call ptr @memset(ptr %Addr.i.i, i32 0, i32 6)
  %TSpec.i.i = getelementptr inbounds %struct.ts_common_info, ptr %pTxTS.0122, i32 0, i32 4
  %8 = call ptr @memset(ptr %TSpec.i.i, i32 0, i32 234)
  %TxCurSeq.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0122, i32 0, i32 1
  %9 = ptrtoint ptr %TxCurSeq.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %TxCurSeq.i, align 4
  %bAddBaReqInProgress.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS.0122, i32 0, i32 4
  %10 = ptrtoint ptr %bAddBaReqInProgress.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bAddBaReqInProgress.i, align 4
  tail call void @ResetBaEntry(ptr noundef %TxAdmittedBARecord) #5
  tail call void @ResetBaEntry(ptr noundef %TxPendingBARecord) #5
  %11 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i103, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pTxTS.0122, ptr noundef %12, ptr noundef %Tx_TS_Unused_List) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pTxTS.0122, ptr %prev.i103, align 4
  %14 = ptrtoint ptr %pTxTS.0122 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %Tx_TS_Unused_List, ptr %pTxTS.0122, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %pTxTS.0122, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %pTxTS.0122, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.tx_ts_record, ptr %pTxTS.0122, i32 1
  %inc = add nuw nsw i8 %count.0124, 1
  %cmp = icmp ult i8 %count.0124, 15
  br i1 %cmp, label %list_add_tail.exit.for.body_crit_edge, label %for.end

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  %Rx_TS_Admit_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 43
  %17 = ptrtoint ptr %Rx_TS_Admit_List to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %Rx_TS_Admit_List, ptr %Rx_TS_Admit_List, align 4
  %prev.i105 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 43, i32 1
  %18 = ptrtoint ptr %prev.i105 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %Rx_TS_Admit_List, ptr %prev.i105, align 4
  %Rx_TS_Pending_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 44
  %19 = ptrtoint ptr %Rx_TS_Pending_List to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %Rx_TS_Pending_List, ptr %Rx_TS_Pending_List, align 4
  %prev.i106 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 44, i32 1
  %20 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %Rx_TS_Pending_List, ptr %prev.i106, align 4
  %Rx_TS_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 45
  %21 = ptrtoint ptr %Rx_TS_Unused_List to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %Rx_TS_Unused_List, ptr %Rx_TS_Unused_List, align 4
  %prev.i107 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 45, i32 1
  %22 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %Rx_TS_Unused_List, ptr %prev.i107, align 4
  br label %for.body24

for.body24:                                       ; preds = %list_add_tail.exit115.for.body24_crit_edge, %for.end
  %count.1127 = phi i8 [ 0, %for.end ], [ %inc47, %list_add_tail.exit115.for.body24_crit_edge ]
  %pRxTS.0125 = phi ptr [ %RxTsRecord, %for.end ], [ %incdec.ptr45, %list_add_tail.exit115.for.body24_crit_edge ]
  %num25 = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0125, i32 0, i32 8
  %23 = ptrtoint ptr %num25 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %count.1127, ptr %num25, align 1
  %rx_pending_pkt_list = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0125, i32 0, i32 3
  %24 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %rx_pending_pkt_list, ptr %rx_pending_pkt_list, align 4
  %prev.i108 = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0125, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %prev.i108 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rx_pending_pkt_list, ptr %prev.i108, align 4
  %SetupTimer27 = getelementptr inbounds %struct.ts_common_info, ptr %pRxTS.0125, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %SetupTimer27, ptr noundef nonnull @TsSetupTimeOut, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @TSInitialize.__key.9) #5
  %InactTimer32 = getelementptr inbounds %struct.ts_common_info, ptr %pRxTS.0125, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %InactTimer32, ptr noundef nonnull @TsInactTimeout, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @TSInitialize.__key.11) #5
  %rx_admitted_ba_record = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0125, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %rx_admitted_ba_record, ptr noundef nonnull @RxBaInactTimeout, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @TSInitialize.__key.13) #5
  %rx_pkt_pending_timer = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0125, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %rx_pkt_pending_timer, ptr noundef nonnull @RxPktPendingTimeout, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @TSInitialize.__key.15) #5
  %Addr.i.i109 = getelementptr inbounds %struct.ts_common_info, ptr %pRxTS.0125, i32 0, i32 3
  %26 = call ptr @memset(ptr %Addr.i.i109, i32 0, i32 6)
  %TSpec.i.i110 = getelementptr inbounds %struct.ts_common_info, ptr %pRxTS.0125, i32 0, i32 4
  %27 = call ptr @memset(ptr %TSpec.i.i110, i32 0, i32 234)
  %rx_indicate_seq.i = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0125, i32 0, i32 1
  %28 = ptrtoint ptr %rx_indicate_seq.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %rx_indicate_seq.i, align 4
  %rx_timeout_indicate_seq.i = getelementptr inbounds %struct.rx_ts_record, ptr %pRxTS.0125, i32 0, i32 2
  %29 = ptrtoint ptr %rx_timeout_indicate_seq.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %rx_timeout_indicate_seq.i, align 2
  tail call void @ResetBaEntry(ptr noundef %rx_admitted_ba_record) #5
  %30 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i107, align 4
  %call.i.i112 = tail call zeroext i1 @__list_add_valid(ptr noundef %pRxTS.0125, ptr noundef %31, ptr noundef %Rx_TS_Unused_List) #5
  br i1 %call.i.i112, label %if.end.i.i114, label %for.body24.list_add_tail.exit115_crit_edge

for.body24.list_add_tail.exit115_crit_edge:       ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit115

if.end.i.i114:                                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pRxTS.0125, ptr %prev.i107, align 4
  %33 = ptrtoint ptr %pRxTS.0125 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %Rx_TS_Unused_List, ptr %pRxTS.0125, align 4
  %prev3.i.i113 = getelementptr inbounds %struct.list_head, ptr %pRxTS.0125, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i113 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i113, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %pRxTS.0125, ptr %31, align 4
  br label %list_add_tail.exit115

list_add_tail.exit115:                            ; preds = %if.end.i.i114, %for.body24.list_add_tail.exit115_crit_edge
  %incdec.ptr45 = getelementptr %struct.rx_ts_record, ptr %pRxTS.0125, i32 1
  %inc47 = add nuw nsw i8 %count.1127, 1
  %cmp22 = icmp ult i8 %count.1127, 15
  br i1 %cmp22, label %list_add_tail.exit115.for.body24_crit_edge, label %for.end48

list_add_tail.exit115.for.body24_crit_edge:       ; preds = %list_add_tail.exit115
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body24

for.end48:                                        ; preds = %list_add_tail.exit115
  %RxReorderEntry = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 47
  %RxReorder_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 48
  %36 = ptrtoint ptr %RxReorder_Unused_List to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %RxReorder_Unused_List, ptr %RxReorder_Unused_List, align 4
  %prev.i116 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 48, i32 1
  %37 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %RxReorder_Unused_List, ptr %prev.i116, align 4
  br label %for.body53

for.body53:                                       ; preds = %if.end, %for.end48
  %indvars.iv = phi i32 [ 0, %for.end48 ], [ %indvars.iv.next, %if.end ]
  %pRxReorderEntry.0 = phi ptr [ %RxReorderEntry, %for.end48 ], [ %arrayidx, %if.end ]
  %38 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i116, align 4
  %call.i.i118 = tail call zeroext i1 @__list_add_valid(ptr noundef %pRxReorderEntry.0, ptr noundef %39, ptr noundef %RxReorder_Unused_List) #5
  br i1 %call.i.i118, label %if.end.i.i120, label %for.body53.list_add_tail.exit121_crit_edge

for.body53.list_add_tail.exit121_crit_edge:       ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit121

if.end.i.i120:                                    ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %pRxReorderEntry.0, ptr %prev.i116, align 4
  %41 = ptrtoint ptr %pRxReorderEntry.0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %RxReorder_Unused_List, ptr %pRxReorderEntry.0, align 4
  %prev3.i.i119 = getelementptr inbounds %struct.list_head, ptr %pRxReorderEntry.0, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i119 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i119, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %pRxReorderEntry.0, ptr %39, align 4
  br label %list_add_tail.exit121

list_add_tail.exit121:                            ; preds = %if.end.i.i120, %for.body53.list_add_tail.exit121_crit_edge
  %cmp57 = icmp eq i32 %indvars.iv, 127
  br i1 %cmp57, label %for.end63, label %if.end

if.end:                                           ; preds = %list_add_tail.exit121
  call void @__sanitizer_cov_trace_pc() #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %arrayidx = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 47, i32 %indvars.iv.next
  br label %for.body53

for.end63:                                        ; preds = %list_add_tail.exit121
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @TsSetupTimeOut(ptr nocapture noundef %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @TsInactTimeout(ptr nocapture noundef %unused) #2 align 64 {
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
  %idx.neg = add nsw i32 %.neg, -348
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  tail call void @TsInitAddBA(ptr noundef %add.ptr4, ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @TsAddBaProcess.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@TsAddBaProcess, %if.then)) #5
          to label %do.end10 [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %add.ptr4, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @TsAddBaProcess.__UNIQUE_ID_ddebug340, ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @BaSetupTimeOut(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @TxBaInactTimeout(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @RxBaInactTimeout(ptr noundef) #1

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
  %idx.neg = add nsw i32 %.neg, -8692
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %reorder_spinlock = getelementptr inbounds %struct.rtllib_device, ptr %add.ptr3, i32 0, i32 28
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reorder_spinlock) #5
  %rx_timeout_indicate_seq = getelementptr i8, ptr %t, i32 -10
  %2 = ptrtoint ptr %rx_timeout_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_timeout_indicate_seq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp11.not = icmp eq i16 %3, -1
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %rx_pending_pkt_list = getelementptr i8, ptr %t, i32 -8
  %4 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i.not146 = icmp eq ptr %5, %rx_pending_pkt_list
  br i1 %cmp.i.not146, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %prev = getelementptr i8, ptr %t, i32 -4
  %rx_indicate_seq = getelementptr i8, ptr %t, i32 -12
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %add.ptr3, i32 0, i32 1
  %6 = getelementptr inbounds %struct.rtllib_device, ptr %add.ptr3, i32 0, i32 173
  %RxReorder_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %add.ptr3, i32 0, i32 48
  %prev.i = getelementptr inbounds %struct.list_head, ptr %RxReorder_Unused_List, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %index.0147 = phi i8 [ 0, %while.body.lr.ph ], [ %inc, %list_add_tail.exit.while.body_crit_edge ]
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev, align 4
  %conv18 = zext i8 %index.0147 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index.0147)
  %cmp19 = icmp eq i8 %index.0147, 0
  br i1 %cmp19, label %if.then21, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %SeqNum = getelementptr inbounds %struct.rx_reorder_entry, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %SeqNum to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %SeqNum, align 4
  %11 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %rx_indicate_seq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then21, %while.body.if.end_crit_edge
  %SeqNum22 = getelementptr inbounds %struct.rx_reorder_entry, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %SeqNum22 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %SeqNum22, align 4
  %conv23 = zext i16 %13 to i32
  %14 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rx_indicate_seq, align 4
  %conv25 = zext i16 %15 to i32
  %sub = sub nsw i32 %conv23, %conv25
  %and = and i32 %sub, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp26.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp32 = icmp eq i16 %13, %15
  %or.cond = select i1 %cmp26.not, i1 true, i1 %cmp32
  br i1 %or.cond, label %if.then34, label %if.end.if.end65_crit_edge

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then34:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.list_del_init.exit_crit_edge

if.then34.list_del_init.exit_crit_edge:           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then34
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

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then34.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %8, ptr %prev.i3.i, align 4
  %24 = ptrtoint ptr %SeqNum22 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %SeqNum22, align 4
  %26 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rx_indicate_seq, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp39 = icmp eq i16 %25, %27
  br i1 %cmp39, label %if.then41, label %list_del_init.exit.do.body48_crit_edge

list_del_init.exit.do.body48_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

if.then41:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %28 = add i16 %25, 1
  %29 = and i16 %28, 4095
  %30 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %rx_indicate_seq, align 4
  br label %do.body48

do.body48:                                        ; preds = %if.then41, %list_del_init.exit.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @RxPktPendingTimeout.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RxPktPendingTimeout, %if.then55)) #5
          to label %do.end62 [label %if.then55], !srcloc !84

if.then55:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %SeqNum22 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %SeqNum22, align 4
  %conv57 = zext i16 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @RxPktPendingTimeout.__UNIQUE_ID_ddebug339, ptr noundef %32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %conv57) #5
  br label %do.end62

do.end62:                                         ; preds = %if.then55, %do.body48
  %prxb = getelementptr inbounds %struct.rx_reorder_entry, ptr %8, i32 0, i32 2
  %35 = ptrtoint ptr %prxb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prxb, align 4
  %arrayidx = getelementptr [128 x ptr], ptr %6, i32 0, i32 %conv18
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %arrayidx, align 4
  %inc = add i8 %index.0147, 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i, align 4
  %call.i.i137 = tail call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %39, ptr noundef %RxReorder_Unused_List) #5
  br i1 %call.i.i137, label %if.end.i.i138, label %do.end62.list_add_tail.exit_crit_edge

do.end62.list_add_tail.exit_crit_edge:            ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i138:                                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %8, ptr %prev.i, align 4
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %RxReorder_Unused_List, ptr %8, align 4
  %42 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev.i3.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %8, ptr %39, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i138, %do.end62.list_add_tail.exit_crit_edge
  %44 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i.not = icmp eq ptr %45, %rx_pending_pkt_list
  br i1 %cmp.i.not, label %list_add_tail.exit.if.end65_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_add_tail.exit.if.end65_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.end65:                                         ; preds = %list_add_tail.exit.if.end65_crit_edge, %if.end.if.end65_crit_edge
  %index.0.lcssa = phi i8 [ %inc, %list_add_tail.exit.if.end65_crit_edge ], [ %index.0147, %if.end.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index.0.lcssa)
  %cmp67.not = icmp eq i8 %index.0.lcssa, 0
  br i1 %cmp67.not, label %if.end78, label %if.then69

if.then69:                                        ; preds = %if.end65
  %46 = ptrtoint ptr %rx_timeout_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %rx_timeout_indicate_seq, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %index.0.lcssa)
  %cmp72 = icmp ugt i8 %index.0.lcssa, -128
  br i1 %cmp72, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  %dev75 = getelementptr inbounds %struct.rtllib_device, ptr %add.ptr3, i32 0, i32 1
  %47 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev75, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %48, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32) #8
  br label %cleanup

if.end77:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  %49 = getelementptr inbounds %struct.rtllib_device, ptr %add.ptr3, i32 0, i32 173
  tail call void @rtllib_indicate_packets(ptr noundef %add.ptr3, ptr noundef %49, i8 noundef zeroext %index.0.lcssa) #5
  br label %cleanup

if.end78:                                         ; preds = %if.end65
  br i1 %or.cond, label %if.end78.cleanup_crit_edge, label %land.lhs.true

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end78
  %50 = ptrtoint ptr %rx_timeout_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %rx_timeout_indicate_seq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %51)
  %cmp83 = icmp eq i16 %51, -1
  br i1 %cmp83, label %if.then85, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then85:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %rx_indicate_seq86 = getelementptr i8, ptr %t, i32 -12
  %52 = ptrtoint ptr %rx_indicate_seq86 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %rx_indicate_seq86, align 4
  %54 = ptrtoint ptr %rx_timeout_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %rx_timeout_indicate_seq, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %add.ptr3, i32 0, i32 27
  %56 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pHTInfo, align 8
  %RxReorderPendingTime = getelementptr inbounds %struct.rt_hi_throughput, ptr %57, i32 0, i32 47
  %58 = ptrtoint ptr %RxReorderPendingTime to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %RxReorderPendingTime, align 1
  %conv88 = zext i8 %59 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv88) #5
  %add90 = add i32 %call2.i, %55
  %call91 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add90) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %land.lhs.true.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end77, %if.then74, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
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
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %supported = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 6, i32 3
  %5 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.end.if.end7_crit_edge, label %if.else

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %TID)
  %7 = icmp ult i8 %TID, 8
  br i1 %7, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %TID to i32
  %dev5 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.GetTs, i32 noundef %conv) #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %10 = sext i8 %TID to i32
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.GetTs, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %11)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end7

if.end7:                                          ; preds = %switch.lookup, %if.end.if.end7_crit_edge
  %UP.0 = phi i8 [ 0, %if.end.if.end7_crit_edge ], [ %switch.load, %switch.lookup ]
  %iw_mode.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 56
  %12 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iw_mode.i, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.else16.i [
    i32 3, label %if.then.i
    i32 1, label %if.then9.i
  ]

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp1.i = icmp eq i32 %TxRxSelect, 0
  br i1 %cmp1.i, label %if.then.i.for.cond38.preheader.1.i_crit_edge, label %if.then.i.for.cond38.preheader.i_crit_edge

if.then.i.for.cond38.preheader.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader.i

if.then.i.for.cond38.preheader.1.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader.1.i

if.then9.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp10.i = icmp eq i32 %TxRxSelect, 0
  br i1 %cmp10.i, label %if.then9.i.for.cond38.preheader.i_crit_edge, label %if.then9.i.for.cond38.preheader.1.i_crit_edge

if.then9.i.for.cond38.preheader.1.i_crit_edge:    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader.1.i

if.then9.i.for.cond38.preheader.i_crit_edge:      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader.i

if.else16.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp17.i = icmp eq i32 %TxRxSelect, 0
  br i1 %cmp17.i, label %for.cond38.preheader.thread.i, label %if.else16.i.for.cond38.preheader.1.i_crit_edge

if.else16.i.for.cond38.preheader.1.i_crit_edge:   ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader.1.i

for.cond38.preheader.i:                           ; preds = %if.then9.i.for.cond38.preheader.i_crit_edge, %if.then.i.for.cond38.preheader.i_crit_edge
  %tobool.not.3.i = phi i1 [ true, %if.then9.i.for.cond38.preheader.i_crit_edge ], [ false, %if.then.i.for.cond38.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp29.i = icmp eq i32 %TxRxSelect, 0
  %Tx_TS_Admit_List.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 39
  %Rx_TS_Admit_List.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 43
  %psearch_list.0.i = select i1 %cmp29.i, ptr %Tx_TS_Admit_List.i, ptr %Rx_TS_Admit_List.i
  %15 = ptrtoint ptr %psearch_list.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %pRet.1107.i = load ptr, ptr %psearch_list.0.i, align 4
  %cmp39.not108.i = icmp eq ptr %pRet.1107.i, %psearch_list.0.i
  br i1 %cmp39.not108.i, label %for.cond38.preheader.i.for.inc71.2.i_crit_edge, label %for.cond38.preheader.i.for.body41.preheader.i_crit_edge

for.cond38.preheader.i.for.body41.preheader.i_crit_edge: ; preds = %for.cond38.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.preheader.i

for.cond38.preheader.i.for.inc71.2.i_crit_edge:   ; preds = %for.cond38.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71.2.i

for.cond38.preheader.thread.i:                    ; preds = %if.else16.i
  %Tx_TS_Admit_List163.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 39
  %16 = ptrtoint ptr %Tx_TS_Admit_List163.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %pRet.1107166.i = load ptr, ptr %Tx_TS_Admit_List163.i, align 4
  %cmp39.not108167.i = icmp eq ptr %pRet.1107166.i, %Tx_TS_Admit_List163.i
  br i1 %cmp39.not108167.i, label %for.cond38.preheader.thread.i.for.cond38.preheader.2.i_crit_edge, label %for.cond38.preheader.thread.i.for.body41.preheader.i_crit_edge

for.cond38.preheader.thread.i.for.body41.preheader.i_crit_edge: ; preds = %for.cond38.preheader.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.preheader.i

for.cond38.preheader.thread.i.for.cond38.preheader.2.i_crit_edge: ; preds = %for.cond38.preheader.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader.2.i

for.body41.preheader.i:                           ; preds = %for.cond38.preheader.thread.i.for.body41.preheader.i_crit_edge, %for.cond38.preheader.i.for.body41.preheader.i_crit_edge
  %pRet.1107175.i = phi ptr [ %pRet.1107166.i, %for.cond38.preheader.thread.i.for.body41.preheader.i_crit_edge ], [ %pRet.1107.i, %for.cond38.preheader.i.for.body41.preheader.i_crit_edge ]
  %psearch_list.0173.i = phi ptr [ %Tx_TS_Admit_List163.i, %for.cond38.preheader.thread.i.for.body41.preheader.i_crit_edge ], [ %psearch_list.0.i, %for.cond38.preheader.i.for.body41.preheader.i_crit_edge ]
  %tobool.not.2170.i = phi i1 [ false, %for.cond38.preheader.thread.i.for.body41.preheader.i_crit_edge ], [ true, %for.cond38.preheader.i.for.body41.preheader.i_crit_edge ]
  %tobool.not.3168.i = phi i1 [ false, %for.cond38.preheader.thread.i.for.body41.preheader.i_crit_edge ], [ %tobool.not.3.i, %for.cond38.preheader.i.for.body41.preheader.i_crit_edge ]
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.inc.i.for.body41.i_crit_edge, %for.body41.preheader.i
  %pRet.1109.i = phi ptr [ %pRet.1.i, %for.inc.i.for.body41.i_crit_edge ], [ %pRet.1107175.i, %for.body41.preheader.i ]
  %Addr42.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1109.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Addr42.i, ptr noundef dereferenceable(6) %Addr, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp43.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp43.i, label %land.lhs.true.i, label %for.body41.i.for.inc.i_crit_edge

for.body41.i.for.inc.i_crit_edge:                 ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body41.i
  %TSpec.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1109.i, i32 0, i32 4
  %17 = ptrtoint ptr %TSpec.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %TSpec.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 3
  %bf.clear.i = and i8 %bf.lshr.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear.i, i8 %UP.0)
  %cmp47.i = icmp eq i8 %bf.clear.i, %UP.0
  %18 = and i8 %bf.load.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp57.i = icmp eq i8 %18, 0
  %or.cond.i = select i1 %cmp47.i, i1 %cmp57.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.SearchAdmitTRStream.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i.SearchAdmitTRStream.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body41.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %pRet.1109.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %pRet.1.i = load ptr, ptr %pRet.1109.i, align 4
  %cmp39.not.i = icmp eq ptr %pRet.1.i, %psearch_list.0173.i
  br i1 %cmp39.not.i, label %for.inc.i.for.inc71.1.i_crit_edge, label %for.inc.i.for.body41.i_crit_edge

for.inc.i.for.body41.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.i

for.inc.i.for.inc71.1.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71.1.i

for.cond38.preheader.1.i:                         ; preds = %if.else16.i.for.cond38.preheader.1.i_crit_edge, %if.then9.i.for.cond38.preheader.1.i_crit_edge, %if.then.i.for.cond38.preheader.1.i_crit_edge
  %tobool.not.3.ph.i = phi i1 [ false, %if.then.i.for.cond38.preheader.1.i_crit_edge ], [ true, %if.then9.i.for.cond38.preheader.1.i_crit_edge ], [ false, %if.else16.i.for.cond38.preheader.1.i_crit_edge ]
  %tobool.not.2.ph.i = phi i1 [ true, %if.then.i.for.cond38.preheader.1.i_crit_edge ], [ true, %if.then9.i.for.cond38.preheader.1.i_crit_edge ], [ false, %if.else16.i.for.cond38.preheader.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp29127.i = icmp eq i32 %TxRxSelect, 0
  %Tx_TS_Admit_List128.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 39
  %Rx_TS_Admit_List129.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 43
  %psearch_list.0130.i = select i1 %cmp29127.i, ptr %Tx_TS_Admit_List128.i, ptr %Rx_TS_Admit_List129.i
  %20 = ptrtoint ptr %psearch_list.0130.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %pRet.1107.1.i = load ptr, ptr %psearch_list.0130.i, align 4
  %cmp39.not108.1.i = icmp eq ptr %pRet.1107.1.i, %psearch_list.0130.i
  br i1 %cmp39.not108.1.i, label %for.cond38.preheader.1.i.for.inc71.1.i_crit_edge, label %for.cond38.preheader.1.i.for.body41.1.i_crit_edge

for.cond38.preheader.1.i.for.body41.1.i_crit_edge: ; preds = %for.cond38.preheader.1.i
  br label %for.body41.1.i

for.cond38.preheader.1.i.for.inc71.1.i_crit_edge: ; preds = %for.cond38.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71.1.i

for.body41.1.i:                                   ; preds = %for.inc.1.i.for.body41.1.i_crit_edge, %for.cond38.preheader.1.i.for.body41.1.i_crit_edge
  %pRet.1109.1.i = phi ptr [ %pRet.1.1.i, %for.inc.1.i.for.body41.1.i_crit_edge ], [ %pRet.1107.1.i, %for.cond38.preheader.1.i.for.body41.1.i_crit_edge ]
  %Addr42.1.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1109.1.i, i32 0, i32 3
  %bcmp.1.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Addr42.1.i, ptr noundef dereferenceable(6) %Addr, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1.i)
  %cmp43.1.i = icmp eq i32 %bcmp.1.i, 0
  br i1 %cmp43.1.i, label %land.lhs.true.1.i, label %for.body41.1.i.for.inc.1.i_crit_edge

for.body41.1.i.for.inc.1.i_crit_edge:             ; preds = %for.body41.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.body41.1.i
  %TSpec.1.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1109.1.i, i32 0, i32 4
  %21 = ptrtoint ptr %TSpec.1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.1.i = load i8, ptr %TSpec.1.i, align 4
  %bf.lshr.1.i = lshr i8 %bf.load.1.i, 3
  %bf.clear.1.i = and i8 %bf.lshr.1.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear.1.i, i8 %UP.0)
  %cmp47.1.i = icmp eq i8 %bf.clear.1.i, %UP.0
  %22 = and i8 %bf.load.1.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp57.1.i = icmp eq i8 %22, 2
  %or.cond.1.i = select i1 %cmp47.1.i, i1 %cmp57.1.i, i1 false
  br i1 %or.cond.1.i, label %land.lhs.true.1.i.SearchAdmitTRStream.exit_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

land.lhs.true.1.i.SearchAdmitTRStream.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.body41.1.i.for.inc.1.i_crit_edge
  %23 = ptrtoint ptr %pRet.1109.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %pRet.1.1.i = load ptr, ptr %pRet.1109.1.i, align 4
  %cmp39.not.1.i = icmp eq ptr %pRet.1.1.i, %psearch_list.0130.i
  br i1 %cmp39.not.1.i, label %for.inc.1.i.for.inc71.1.i_crit_edge, label %for.inc.1.i.for.body41.1.i_crit_edge

for.inc.1.i.for.body41.1.i_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.1.i

for.inc.1.i.for.inc71.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71.1.i

for.inc71.1.i:                                    ; preds = %for.inc.1.i.for.inc71.1.i_crit_edge, %for.cond38.preheader.1.i.for.inc71.1.i_crit_edge, %for.inc.i.for.inc71.1.i_crit_edge
  %tobool.not.3131146.i = phi i1 [ %tobool.not.3.ph.i, %for.cond38.preheader.1.i.for.inc71.1.i_crit_edge ], [ %tobool.not.3168.i, %for.inc.i.for.inc71.1.i_crit_edge ], [ %tobool.not.3.ph.i, %for.inc.1.i.for.inc71.1.i_crit_edge ]
  %tobool.not.2132145.i = phi i1 [ %tobool.not.2.ph.i, %for.cond38.preheader.1.i.for.inc71.1.i_crit_edge ], [ %tobool.not.2170.i, %for.inc.i.for.inc71.1.i_crit_edge ], [ %tobool.not.2.ph.i, %for.inc.1.i.for.inc71.1.i_crit_edge ]
  %psearch_list.0136142.i = phi ptr [ %psearch_list.0130.i, %for.cond38.preheader.1.i.for.inc71.1.i_crit_edge ], [ %psearch_list.0173.i, %for.inc.i.for.inc71.1.i_crit_edge ], [ %psearch_list.0130.i, %for.inc.1.i.for.inc71.1.i_crit_edge ]
  br i1 %tobool.not.2132145.i, label %for.inc71.1.i.for.inc71.2.i_crit_edge, label %for.inc71.1.i.for.cond38.preheader.2.i_crit_edge

for.inc71.1.i.for.cond38.preheader.2.i_crit_edge: ; preds = %for.inc71.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader.2.i

for.inc71.1.i.for.inc71.2.i_crit_edge:            ; preds = %for.inc71.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71.2.i

for.cond38.preheader.2.i:                         ; preds = %for.inc71.1.i.for.cond38.preheader.2.i_crit_edge, %for.cond38.preheader.thread.i.for.cond38.preheader.2.i_crit_edge
  %psearch_list.0136142158.i = phi ptr [ %psearch_list.0136142.i, %for.inc71.1.i.for.cond38.preheader.2.i_crit_edge ], [ %Tx_TS_Admit_List163.i, %for.cond38.preheader.thread.i.for.cond38.preheader.2.i_crit_edge ]
  %tobool.not.3131146156.i = phi i1 [ %tobool.not.3131146.i, %for.inc71.1.i.for.cond38.preheader.2.i_crit_edge ], [ false, %for.cond38.preheader.thread.i.for.cond38.preheader.2.i_crit_edge ]
  %24 = ptrtoint ptr %psearch_list.0136142158.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %pRet.1107.2.i = load ptr, ptr %psearch_list.0136142158.i, align 4
  %cmp39.not108.2.i = icmp eq ptr %pRet.1107.2.i, %psearch_list.0136142158.i
  br i1 %cmp39.not108.2.i, label %for.cond38.preheader.2.i.for.inc71.2.i_crit_edge, label %for.cond38.preheader.2.i.for.body41.2.i_crit_edge

for.cond38.preheader.2.i.for.body41.2.i_crit_edge: ; preds = %for.cond38.preheader.2.i
  br label %for.body41.2.i

for.cond38.preheader.2.i.for.inc71.2.i_crit_edge: ; preds = %for.cond38.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71.2.i

for.body41.2.i:                                   ; preds = %for.inc.2.i.for.body41.2.i_crit_edge, %for.cond38.preheader.2.i.for.body41.2.i_crit_edge
  %pRet.1109.2.i = phi ptr [ %pRet.1.2.i, %for.inc.2.i.for.body41.2.i_crit_edge ], [ %pRet.1107.2.i, %for.cond38.preheader.2.i.for.body41.2.i_crit_edge ]
  %Addr42.2.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1109.2.i, i32 0, i32 3
  %bcmp.2.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Addr42.2.i, ptr noundef dereferenceable(6) %Addr, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2.i)
  %cmp43.2.i = icmp eq i32 %bcmp.2.i, 0
  br i1 %cmp43.2.i, label %land.lhs.true.2.i, label %for.body41.2.i.for.inc.2.i_crit_edge

for.body41.2.i.for.inc.2.i_crit_edge:             ; preds = %for.body41.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.body41.2.i
  %TSpec.2.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1109.2.i, i32 0, i32 4
  %25 = ptrtoint ptr %TSpec.2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.2.i = load i8, ptr %TSpec.2.i, align 4
  %bf.lshr.2.i = lshr i8 %bf.load.2.i, 3
  %bf.clear.2.i = and i8 %bf.lshr.2.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear.2.i, i8 %UP.0)
  %cmp47.2.i = icmp eq i8 %bf.clear.2.i, %UP.0
  %26 = and i8 %bf.load.2.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp57.2.i = icmp eq i8 %26, 4
  %or.cond.2.i = select i1 %cmp47.2.i, i1 %cmp57.2.i, i1 false
  br i1 %or.cond.2.i, label %land.lhs.true.2.i.SearchAdmitTRStream.exit_crit_edge, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

land.lhs.true.2.i.SearchAdmitTRStream.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.body41.2.i.for.inc.2.i_crit_edge
  %27 = ptrtoint ptr %pRet.1109.2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %pRet.1.2.i = load ptr, ptr %pRet.1109.2.i, align 4
  %cmp39.not.2.i = icmp eq ptr %pRet.1.2.i, %psearch_list.0136142158.i
  br i1 %cmp39.not.2.i, label %for.inc.2.i.for.inc71.2.i_crit_edge, label %for.inc.2.i.for.body41.2.i_crit_edge

for.inc.2.i.for.body41.2.i_crit_edge:             ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.2.i

for.inc.2.i.for.inc71.2.i_crit_edge:              ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71.2.i

for.inc71.2.i:                                    ; preds = %for.inc.2.i.for.inc71.2.i_crit_edge, %for.cond38.preheader.2.i.for.inc71.2.i_crit_edge, %for.inc71.1.i.for.inc71.2.i_crit_edge, %for.cond38.preheader.i.for.inc71.2.i_crit_edge
  %tobool.not.3131146157.i = phi i1 [ %tobool.not.3131146.i, %for.inc71.1.i.for.inc71.2.i_crit_edge ], [ %tobool.not.3131146156.i, %for.cond38.preheader.2.i.for.inc71.2.i_crit_edge ], [ %tobool.not.3.i, %for.cond38.preheader.i.for.inc71.2.i_crit_edge ], [ %tobool.not.3131146156.i, %for.inc.2.i.for.inc71.2.i_crit_edge ]
  %psearch_list.0136143.i = phi ptr [ %psearch_list.0136142.i, %for.inc71.1.i.for.inc71.2.i_crit_edge ], [ %psearch_list.0136142158.i, %for.cond38.preheader.2.i.for.inc71.2.i_crit_edge ], [ %psearch_list.0.i, %for.cond38.preheader.i.for.inc71.2.i_crit_edge ], [ %psearch_list.0136142158.i, %for.inc.2.i.for.inc71.2.i_crit_edge ]
  br i1 %tobool.not.3131146157.i, label %for.inc71.2.i.SearchAdmitTRStream.exit_crit_edge, label %for.cond38.preheader.3.i

for.inc71.2.i.SearchAdmitTRStream.exit_crit_edge: ; preds = %for.inc71.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.cond38.preheader.3.i:                         ; preds = %for.inc71.2.i
  %28 = ptrtoint ptr %psearch_list.0136143.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %pRet.1107.3.i = load ptr, ptr %psearch_list.0136143.i, align 4
  %cmp39.not108.3.i = icmp eq ptr %pRet.1107.3.i, %psearch_list.0136143.i
  br i1 %cmp39.not108.3.i, label %for.cond38.preheader.3.i.SearchAdmitTRStream.exit_crit_edge, label %for.cond38.preheader.3.i.for.body41.3.i_crit_edge

for.cond38.preheader.3.i.for.body41.3.i_crit_edge: ; preds = %for.cond38.preheader.3.i
  br label %for.body41.3.i

for.cond38.preheader.3.i.SearchAdmitTRStream.exit_crit_edge: ; preds = %for.cond38.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.body41.3.i:                                   ; preds = %for.inc.3.i.for.body41.3.i_crit_edge, %for.cond38.preheader.3.i.for.body41.3.i_crit_edge
  %pRet.1109.3.i = phi ptr [ %pRet.1.3.i, %for.inc.3.i.for.body41.3.i_crit_edge ], [ %pRet.1107.3.i, %for.cond38.preheader.3.i.for.body41.3.i_crit_edge ]
  %Addr42.3.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1109.3.i, i32 0, i32 3
  %bcmp.3.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Addr42.3.i, ptr noundef dereferenceable(6) %Addr, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3.i)
  %cmp43.3.i = icmp eq i32 %bcmp.3.i, 0
  br i1 %cmp43.3.i, label %land.lhs.true.3.i, label %for.body41.3.i.for.inc.3.i_crit_edge

for.body41.3.i.for.inc.3.i_crit_edge:             ; preds = %for.body41.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.body41.3.i
  %TSpec.3.i = getelementptr inbounds %struct.ts_common_info, ptr %pRet.1109.3.i, i32 0, i32 4
  %29 = ptrtoint ptr %TSpec.3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.3.i = load i8, ptr %TSpec.3.i, align 4
  %bf.lshr.3.i = lshr i8 %bf.load.3.i, 3
  %bf.clear.3.i = and i8 %bf.lshr.3.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear.3.i, i8 %UP.0)
  %cmp47.3.i = icmp eq i8 %bf.clear.3.i, %UP.0
  %30 = and i8 %bf.load.3.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %30)
  %cmp57.3.i = icmp eq i8 %30, 6
  %or.cond.3.i = select i1 %cmp47.3.i, i1 %cmp57.3.i, i1 false
  br i1 %or.cond.3.i, label %land.lhs.true.3.i.SearchAdmitTRStream.exit_crit_edge, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

land.lhs.true.3.i.SearchAdmitTRStream.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.body41.3.i.for.inc.3.i_crit_edge
  %31 = ptrtoint ptr %pRet.1109.3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %pRet.1.3.i = load ptr, ptr %pRet.1109.3.i, align 4
  %cmp39.not.3.i = icmp eq ptr %pRet.1.3.i, %psearch_list.0136143.i
  br i1 %cmp39.not.3.i, label %for.inc.3.i.SearchAdmitTRStream.exit_crit_edge, label %for.inc.3.i.for.body41.3.i_crit_edge

for.inc.3.i.for.body41.3.i_crit_edge:             ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.3.i

for.inc.3.i.SearchAdmitTRStream.exit_crit_edge:   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %SearchAdmitTRStream.exit

SearchAdmitTRStream.exit:                         ; preds = %for.inc.3.i.SearchAdmitTRStream.exit_crit_edge, %land.lhs.true.3.i.SearchAdmitTRStream.exit_crit_edge, %for.cond38.preheader.3.i.SearchAdmitTRStream.exit_crit_edge, %for.inc71.2.i.SearchAdmitTRStream.exit_crit_edge, %land.lhs.true.2.i.SearchAdmitTRStream.exit_crit_edge, %land.lhs.true.1.i.SearchAdmitTRStream.exit_crit_edge, %land.lhs.true.i.SearchAdmitTRStream.exit_crit_edge
  %psearch_list.0134.i = phi ptr [ %psearch_list.0136143.i, %for.inc71.2.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0136143.i, %for.cond38.preheader.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0136143.i, %for.inc.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0136143.i, %land.lhs.true.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0136142158.i, %land.lhs.true.2.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0173.i, %land.lhs.true.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0130.i, %land.lhs.true.1.i.SearchAdmitTRStream.exit_crit_edge ]
  %pRet.3.i = phi ptr [ %psearch_list.0136143.i, %for.inc71.2.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0136143.i, %for.cond38.preheader.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %pRet.1109.3.i, %land.lhs.true.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %psearch_list.0136143.i, %for.inc.3.i.SearchAdmitTRStream.exit_crit_edge ], [ %pRet.1109.2.i, %land.lhs.true.2.i.SearchAdmitTRStream.exit_crit_edge ], [ %pRet.1109.i, %land.lhs.true.i.SearchAdmitTRStream.exit_crit_edge ], [ %pRet.1109.1.i, %land.lhs.true.1.i.SearchAdmitTRStream.exit_crit_edge ]
  %tobool73.not.i = icmp eq ptr %pRet.3.i, null
  %cmp76.not.i = icmp eq ptr %pRet.3.i, %psearch_list.0134.i
  %or.cond103.i = or i1 %tobool73.not.i, %cmp76.not.i
  %retval.0.i169 = select i1 %or.cond103.i, ptr null, ptr %pRet.3.i
  %32 = ptrtoint ptr %ppTS to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i169, ptr %ppTS, align 4
  %tobool.not = icmp eq ptr %retval.0.i169, null
  br i1 %tobool.not, label %if.end10, label %SearchAdmitTRStream.exit.cleanup_crit_edge

SearchAdmitTRStream.exit.cleanup_crit_edge:       ; preds = %SearchAdmitTRStream.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %SearchAdmitTRStream.exit
  br i1 %bAddNewTs, label %if.end25, label %do.body13

do.body13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @GetTs.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@GetTs, %if.then19)) #5
          to label %cleanup [label %if.then19], !srcloc !84

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %dev20 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %33 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev20, align 4
  %conv21 = zext i8 %UP.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @GetTs.__UNIQUE_ID_ddebug341, ptr noundef %34, ptr noundef nonnull @.str.21, i32 noundef %conv21) #5
  br label %cleanup

if.end25:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp26 = icmp eq i32 %TxRxSelect, 0
  %Tx_TS_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 41
  %Rx_TS_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 45
  %cond = select i1 %cmp26, ptr %Tx_TS_Unused_List, ptr %Rx_TS_Unused_List
  %Tx_TS_Admit_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 39
  %Rx_TS_Admit_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 43
  %cond33 = select i1 %cmp26, ptr %Tx_TS_Admit_List, ptr %Rx_TS_Admit_List
  %35 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iw_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp34 = icmp ne i32 %36, 3
  %spec.select = xor i1 %cmp26, %cmp34
  %cond45 = zext i1 %spec.select to i32
  %37 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %cond, align 4
  %cmp.i.not = icmp eq ptr %38, %cond
  br i1 %cmp.i.not, label %if.end114, label %if.then48

if.then48:                                        ; preds = %if.end25
  %39 = ptrtoint ptr %ppTS to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %ppTS, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %38) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then48.list_del_init.exit_crit_edge

if.then48.list_del_init.exit_crit_edge:           ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %38, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then48.list_del_init.exit_crit_edge
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %38, ptr %38, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %38, ptr %prev.i3.i, align 4
  %48 = ptrtoint ptr %ppTS to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ppTS, align 4
  %Addr.i.i = getelementptr inbounds %struct.ts_common_info, ptr %49, i32 0, i32 3
  %50 = call ptr @memset(ptr %Addr.i.i, i32 0, i32 6)
  %TSpec.i.i = getelementptr inbounds %struct.ts_common_info, ptr %49, i32 0, i32 4
  %51 = call ptr @memset(ptr %TSpec.i.i, i32 0, i32 234)
  br i1 %cmp26, label %if.then52, label %if.else57

if.then52:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %TxCurSeq.i = getelementptr inbounds %struct.tx_ts_record, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %TxCurSeq.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %TxCurSeq.i, align 4
  %bAddBaReqInProgress.i = getelementptr inbounds %struct.tx_ts_record, ptr %49, i32 0, i32 4
  %TxAdmittedBARecord.i = getelementptr inbounds %struct.tx_ts_record, ptr %49, i32 0, i32 3
  %53 = ptrtoint ptr %bAddBaReqInProgress.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %bAddBaReqInProgress.i, align 4
  tail call void @ResetBaEntry(ptr noundef %TxAdmittedBARecord.i) #5
  %TxPendingBARecord.i = getelementptr inbounds %struct.tx_ts_record, ptr %49, i32 0, i32 2
  br label %do.body64

if.else57:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %rx_indicate_seq.i = getelementptr inbounds %struct.rx_ts_record, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %rx_indicate_seq.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %rx_indicate_seq.i, align 4
  %rx_timeout_indicate_seq.i = getelementptr inbounds %struct.rx_ts_record, ptr %49, i32 0, i32 2
  %55 = ptrtoint ptr %rx_timeout_indicate_seq.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -1, ptr %rx_timeout_indicate_seq.i, align 2
  %rx_admitted_ba_record.i = getelementptr inbounds %struct.rx_ts_record, ptr %49, i32 0, i32 5
  br label %do.body64

do.body64:                                        ; preds = %if.else57, %if.then52
  %rx_admitted_ba_record.i.sink = phi ptr [ %rx_admitted_ba_record.i, %if.else57 ], [ %TxPendingBARecord.i, %if.then52 ]
  tail call void @ResetBaEntry(ptr noundef %rx_admitted_ba_record.i.sink) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @GetTs.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@GetTs, %if.then76)) #5
          to label %do.end83 [label %if.then76], !srcloc !84

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  %dev77 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %56 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev77, align 4
  %conv78 = zext i8 %UP.0 to i32
  %58 = ptrtoint ptr %ppTS to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ppTS, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @GetTs.__UNIQUE_ID_ddebug342, ptr noundef %57, ptr noundef nonnull @.str.22, i32 noundef %conv78, i32 noundef %cond45, ptr noundef %Addr, ptr noundef %59) #5
  br label %do.end83

do.end83:                                         ; preds = %if.then76, %do.body64
  %60 = ptrtoint ptr %ppTS to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ppTS, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %do.end83.MakeTSEntry.exit_crit_edge, label %if.end.i

do.end83.MakeTSEntry.exit_crit_edge:              ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %MakeTSEntry.exit

if.end.i:                                         ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #7
  %bf.shl104 = shl nuw nsw i8 %UP.0, 1
  %bf.set106 = or i8 %bf.shl104, 65
  %bf.shl90 = select i1 %spec.select, i8 2, i8 0
  %bf.shl = shl nuw nsw i8 %UP.0, 3
  %bf.set86 = or i8 %bf.shl90, %bf.shl
  %bf.set92 = or i8 %bf.set86, 1
  %Addr1.i = getelementptr inbounds %struct.ts_common_info, ptr %61, i32 0, i32 3
  %62 = call ptr @memcpy(ptr %Addr1.i, ptr %Addr, i32 6)
  %TSpec.i172 = getelementptr inbounds %struct.ts_common_info, ptr %61, i32 0, i32 4
  %63 = ptrtoint ptr %TSpec.i172 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %bf.set92, ptr %TSpec.i172, align 4
  %TSpec.sroa.6.0.TSpec.i172.sroa_idx = getelementptr inbounds %struct.ts_common_info, ptr %61, i32 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %64 = ptrtoint ptr %TSpec.sroa.6.0.TSpec.i172.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %bf.set106, ptr %TSpec.sroa.6.0.TSpec.i172.sroa_idx, align 1
  %TSpec.sroa.8.0.TSpec.i172.sroa_idx = getelementptr inbounds %struct.ts_common_info, ptr %61, i32 0, i32 4, i32 0, i32 0, i32 0, i32 2
  %65 = ptrtoint ptr %TSpec.sroa.8.0.TSpec.i172.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 31, ptr %TSpec.sroa.8.0.TSpec.i172.sroa_idx, align 2
  %TSpec.sroa.10.0.TSpec.i172.sroa_idx = getelementptr inbounds %struct.ts_common_info, ptr %61, i32 0, i32 4, i32 0, i32 0, i32 0, i32 3
  %66 = call ptr @memset(ptr %TSpec.sroa.10.0.TSpec.i172.sroa_idx, i32 255, i32 53)
  %TClasProc.i = getelementptr inbounds %struct.ts_common_info, ptr %61, i32 0, i32 6
  %67 = ptrtoint ptr %TClasProc.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %TClasProc.i, align 4
  %TClasNum.i = getelementptr inbounds %struct.ts_common_info, ptr %61, i32 0, i32 7
  %68 = ptrtoint ptr %TClasNum.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %TClasNum.i, align 1
  br label %MakeTSEntry.exit

MakeTSEntry.exit:                                 ; preds = %if.end.i, %do.end83.MakeTSEntry.exit_crit_edge
  %69 = ptrtoint ptr %ppTS to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ppTS, align 4
  %SetupTimer.i = getelementptr inbounds %struct.ts_common_info, ptr %70, i32 0, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %SetupTimer.i) #5
  %InactTimer.i = getelementptr inbounds %struct.ts_common_info, ptr %70, i32 0, i32 2
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %InactTimer.i) #5
  %71 = ptrtoint ptr %ppTS to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ppTS, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cond33, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i, align 4
  %call.i.i173 = tail call zeroext i1 @__list_add_valid(ptr noundef %72, ptr noundef %74, ptr noundef %cond33) #5
  br i1 %call.i.i173, label %if.end.i.i174, label %MakeTSEntry.exit.cleanup_crit_edge

MakeTSEntry.exit.cleanup_crit_edge:               ; preds = %MakeTSEntry.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i174:                                    ; preds = %MakeTSEntry.exit
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %cond33, ptr %72, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %77 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %72, ptr %74, align 4
  br label %cleanup

if.end114:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %dev115 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %79 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev115, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %80, ptr noundef nonnull @.str.23, i32 noundef %cond45) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end114, %if.end.i.i174, %MakeTSEntry.exit.cleanup_crit_edge, %if.then19, %do.body13, %SearchAdmitTRStream.exit.cleanup_crit_edge, %sw.default, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.end114 ], [ false, %sw.default ], [ true, %SearchAdmitTRStream.exit.cleanup_crit_edge ], [ false, %if.then19 ], [ false, %do.body13 ], [ true, %MakeTSEntry.exit.cleanup_crit_edge ], [ true, %if.end.i.i174 ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @RemovePeerTS(ptr noundef %ieee, ptr noundef %Addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.RemovePeerTS, ptr noundef %Addr) #8
  %Tx_TS_Pending_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 40
  %2 = ptrtoint ptr %Tx_TS_Pending_List to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Tx_TS_Pending_List, align 4
  %cmp.not205 = icmp eq ptr %3, %Tx_TS_Pending_List
  br i1 %cmp.not205, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %Tx_TS_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 41
  %prev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 41, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pTS.0206 = phi ptr [ %3, %for.body.lr.ph ], [ %pTmpTS.0207, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %pTS.0206 to i32
  call void @__asan_load4_noabort(i32 %4)
  %pTmpTS.0207 = load ptr, ptr %pTS.0206, align 4
  %Addr7 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.0206, i32 0, i32 3
  %bcmp162 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Addr7, ptr noundef dereferenceable(6) %Addr, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp162)
  %cmp8 = icmp eq i32 %bcmp162, 0
  br i1 %cmp8, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  %SetupTimer.i = getelementptr inbounds %struct.ts_common_info, ptr %pTS.0206, i32 0, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %SetupTimer.i) #5
  %InactTimer.i = getelementptr inbounds %struct.ts_common_info, ptr %pTS.0206, i32 0, i32 2
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %InactTimer.i) #5
  tail call void @TsInitDelBA(ptr noundef %ieee, ptr noundef %pTS.0206, i32 noundef 0) #5
  %TsAddBaTimer.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTS.0206, i32 0, i32 8
  %call41.i = tail call i32 @del_timer_sync(ptr noundef %TsAddBaTimer.i) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.0206) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pTS.0206, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %pTS.0206 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pTS.0206, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %pTS.0206 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pTS.0206, ptr %pTS.0206, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pTS.0206, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pTS.0206, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i163 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.0206, ptr noundef %14, ptr noundef %Tx_TS_Unused_List) #5
  br i1 %call.i.i163, label %if.end.i.i164, label %list_del_init.exit.for.inc_crit_edge

list_del_init.exit.for.inc_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i.i164:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pTS.0206, ptr %prev.i, align 4
  %16 = ptrtoint ptr %pTS.0206 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %Tx_TS_Unused_List, ptr %pTS.0206, align 4
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %pTS.0206, ptr %14, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i164, %list_del_init.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %pTmpTS.0207, %Tx_TS_Pending_List
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %Tx_TS_Admit_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 39
  %19 = ptrtoint ptr %Tx_TS_Admit_List to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %Tx_TS_Admit_List, align 4
  %cmp28.not209 = icmp eq ptr %20, %Tx_TS_Admit_List
  br i1 %cmp28.not209, label %for.end.for.end47_crit_edge, label %for.body30.lr.ph

for.end.for.end47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end47

for.body30.lr.ph:                                 ; preds = %for.end
  %Tx_TS_Unused_List39 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 41
  %prev.i177 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 41, i32 1
  br label %for.body30

for.body30:                                       ; preds = %for.inc41.for.body30_crit_edge, %for.body30.lr.ph
  %pTS.1210 = phi ptr [ %20, %for.body30.lr.ph ], [ %pTmpTS.1211, %for.inc41.for.body30_crit_edge ]
  %21 = ptrtoint ptr %pTS.1210 to i32
  call void @__asan_load4_noabort(i32 %21)
  %pTmpTS.1211 = load ptr, ptr %pTS.1210, align 4
  %Addr31 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.1210, i32 0, i32 3
  %bcmp161 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Addr31, ptr noundef dereferenceable(6) %Addr, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp161)
  %cmp34 = icmp eq i32 %bcmp161, 0
  br i1 %cmp34, label %if.then35, label %for.body30.for.inc41_crit_edge

for.body30.for.inc41_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc41

if.then35:                                        ; preds = %for.body30
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.25) #8
  %SetupTimer.i165 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.1210, i32 0, i32 1
  %call.i166 = tail call i32 @del_timer_sync(ptr noundef %SetupTimer.i165) #5
  %InactTimer.i167 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.1210, i32 0, i32 2
  %call1.i168 = tail call i32 @del_timer_sync(ptr noundef %InactTimer.i167) #5
  tail call void @TsInitDelBA(ptr noundef %ieee, ptr noundef %pTS.1210, i32 noundef 0) #5
  %TsAddBaTimer.i169 = getelementptr inbounds %struct.tx_ts_record, ptr %pTS.1210, i32 0, i32 8
  %call41.i170 = tail call i32 @del_timer_sync(ptr noundef %TsAddBaTimer.i169) #5
  %call.i.i171 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.1210) #5
  br i1 %call.i.i171, label %if.end.i.i174, label %if.then35.list_del_init.exit176_crit_edge

if.then35.list_del_init.exit176_crit_edge:        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit176

if.end.i.i174:                                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i172 = getelementptr inbounds %struct.list_head, ptr %pTS.1210, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i172 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i172, align 4
  %26 = ptrtoint ptr %pTS.1210 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pTS.1210, align 4
  %prev1.i.i.i173 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i173, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit176

list_del_init.exit176:                            ; preds = %if.end.i.i174, %if.then35.list_del_init.exit176_crit_edge
  %30 = ptrtoint ptr %pTS.1210 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %pTS.1210, ptr %pTS.1210, align 4
  %prev.i3.i175 = getelementptr inbounds %struct.list_head, ptr %pTS.1210, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i3.i175 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pTS.1210, ptr %prev.i3.i175, align 4
  %32 = ptrtoint ptr %prev.i177 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i177, align 4
  %call.i.i178 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.1210, ptr noundef %33, ptr noundef %Tx_TS_Unused_List39) #5
  br i1 %call.i.i178, label %if.end.i.i180, label %list_del_init.exit176.for.inc41_crit_edge

list_del_init.exit176.for.inc41_crit_edge:        ; preds = %list_del_init.exit176
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc41

if.end.i.i180:                                    ; preds = %list_del_init.exit176
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %prev.i177 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pTS.1210, ptr %prev.i177, align 4
  %35 = ptrtoint ptr %pTS.1210 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %Tx_TS_Unused_List39, ptr %pTS.1210, align 4
  %36 = ptrtoint ptr %prev.i3.i175 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev.i3.i175, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %pTS.1210, ptr %33, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %if.end.i.i180, %list_del_init.exit176.for.inc41_crit_edge, %for.body30.for.inc41_crit_edge
  %cmp28.not = icmp eq ptr %pTmpTS.1211, %Tx_TS_Admit_List
  br i1 %cmp28.not, label %for.inc41.for.end47_crit_edge, label %for.inc41.for.body30_crit_edge

for.inc41.for.body30_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30

for.inc41.for.end47_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end47

for.end47:                                        ; preds = %for.inc41.for.end47_crit_edge, %for.end.for.end47_crit_edge
  %Rx_TS_Pending_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 44
  %38 = ptrtoint ptr %Rx_TS_Pending_List to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %Rx_TS_Pending_List, align 4
  %cmp60.not213 = icmp eq ptr %39, %Rx_TS_Pending_List
  br i1 %cmp60.not213, label %for.end47.for.end77_crit_edge, label %for.body62.lr.ph

for.end47.for.end77_crit_edge:                    ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end77

for.body62.lr.ph:                                 ; preds = %for.end47
  %Rx_TS_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 45
  %prev.i188 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 45, i32 1
  br label %for.body62

for.body62:                                       ; preds = %for.inc71.for.body62_crit_edge, %for.body62.lr.ph
  %pTS.2214 = phi ptr [ %39, %for.body62.lr.ph ], [ %pTmpTS.2215, %for.inc71.for.body62_crit_edge ]
  %40 = ptrtoint ptr %pTS.2214 to i32
  call void @__asan_load4_noabort(i32 %40)
  %pTmpTS.2215 = load ptr, ptr %pTS.2214, align 4
  %Addr63 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.2214, i32 0, i32 3
  %bcmp160 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Addr63, ptr noundef dereferenceable(6) %Addr, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp160)
  %cmp66 = icmp eq i32 %bcmp160, 0
  br i1 %cmp66, label %if.then67, label %for.body62.for.inc71_crit_edge

for.body62.for.inc71_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71

if.then67:                                        ; preds = %for.body62
  tail call fastcc void @RemoveTsEntry(ptr noundef %ieee, ptr noundef %pTS.2214, i32 noundef 1)
  %call.i.i182 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.2214) #5
  br i1 %call.i.i182, label %if.end.i.i185, label %if.then67.list_del_init.exit187_crit_edge

if.then67.list_del_init.exit187_crit_edge:        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit187

if.end.i.i185:                                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i183 = getelementptr inbounds %struct.list_head, ptr %pTS.2214, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i183 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i183, align 4
  %43 = ptrtoint ptr %pTS.2214 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pTS.2214, align 4
  %prev1.i.i.i184 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i184 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i184, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit187

list_del_init.exit187:                            ; preds = %if.end.i.i185, %if.then67.list_del_init.exit187_crit_edge
  %47 = ptrtoint ptr %pTS.2214 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %pTS.2214, ptr %pTS.2214, align 4
  %prev.i3.i186 = getelementptr inbounds %struct.list_head, ptr %pTS.2214, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i3.i186 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %pTS.2214, ptr %prev.i3.i186, align 4
  %49 = ptrtoint ptr %prev.i188 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i188, align 4
  %call.i.i189 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.2214, ptr noundef %50, ptr noundef %Rx_TS_Unused_List) #5
  br i1 %call.i.i189, label %if.end.i.i191, label %list_del_init.exit187.for.inc71_crit_edge

list_del_init.exit187.for.inc71_crit_edge:        ; preds = %list_del_init.exit187
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71

if.end.i.i191:                                    ; preds = %list_del_init.exit187
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %prev.i188 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %pTS.2214, ptr %prev.i188, align 4
  %52 = ptrtoint ptr %pTS.2214 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %Rx_TS_Unused_List, ptr %pTS.2214, align 4
  %53 = ptrtoint ptr %prev.i3.i186 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev.i3.i186, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %pTS.2214, ptr %50, align 4
  br label %for.inc71

for.inc71:                                        ; preds = %if.end.i.i191, %list_del_init.exit187.for.inc71_crit_edge, %for.body62.for.inc71_crit_edge
  %cmp60.not = icmp eq ptr %pTmpTS.2215, %Rx_TS_Pending_List
  br i1 %cmp60.not, label %for.inc71.for.end77_crit_edge, label %for.inc71.for.body62_crit_edge

for.inc71.for.body62_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body62

for.inc71.for.end77_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end77

for.end77:                                        ; preds = %for.inc71.for.end77_crit_edge, %for.end47.for.end77_crit_edge
  %Rx_TS_Admit_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 43
  %55 = ptrtoint ptr %Rx_TS_Admit_List to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %Rx_TS_Admit_List, align 4
  %cmp90.not217 = icmp eq ptr %56, %Rx_TS_Admit_List
  br i1 %cmp90.not217, label %for.end77.for.end108_crit_edge, label %for.body92.lr.ph

for.end77.for.end108_crit_edge:                   ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end108

for.body92.lr.ph:                                 ; preds = %for.end77
  %Rx_TS_Unused_List100 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 45
  %prev.i199 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 45, i32 1
  br label %for.body92

for.body92:                                       ; preds = %for.inc102.for.body92_crit_edge, %for.body92.lr.ph
  %pTS.3218 = phi ptr [ %56, %for.body92.lr.ph ], [ %pTmpTS.3219, %for.inc102.for.body92_crit_edge ]
  %57 = ptrtoint ptr %pTS.3218 to i32
  call void @__asan_load4_noabort(i32 %57)
  %pTmpTS.3219 = load ptr, ptr %pTS.3218, align 4
  %Addr93 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.3218, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Addr93, ptr noundef dereferenceable(6) %Addr, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp96 = icmp eq i32 %bcmp, 0
  br i1 %cmp96, label %if.then97, label %for.body92.for.inc102_crit_edge

for.body92.for.inc102_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc102

if.then97:                                        ; preds = %for.body92
  tail call fastcc void @RemoveTsEntry(ptr noundef %ieee, ptr noundef %pTS.3218, i32 noundef 1)
  %call.i.i193 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pTS.3218) #5
  br i1 %call.i.i193, label %if.end.i.i196, label %if.then97.list_del_init.exit198_crit_edge

if.then97.list_del_init.exit198_crit_edge:        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit198

if.end.i.i196:                                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i194 = getelementptr inbounds %struct.list_head, ptr %pTS.3218, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i194 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i194, align 4
  %60 = ptrtoint ptr %pTS.3218 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pTS.3218, align 4
  %prev1.i.i.i195 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i195 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i195, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %list_del_init.exit198

list_del_init.exit198:                            ; preds = %if.end.i.i196, %if.then97.list_del_init.exit198_crit_edge
  %64 = ptrtoint ptr %pTS.3218 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %pTS.3218, ptr %pTS.3218, align 4
  %prev.i3.i197 = getelementptr inbounds %struct.list_head, ptr %pTS.3218, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i3.i197 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %pTS.3218, ptr %prev.i3.i197, align 4
  %66 = ptrtoint ptr %prev.i199 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i199, align 4
  %call.i.i200 = tail call zeroext i1 @__list_add_valid(ptr noundef %pTS.3218, ptr noundef %67, ptr noundef %Rx_TS_Unused_List100) #5
  br i1 %call.i.i200, label %if.end.i.i202, label %list_del_init.exit198.for.inc102_crit_edge

list_del_init.exit198.for.inc102_crit_edge:       ; preds = %list_del_init.exit198
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc102

if.end.i.i202:                                    ; preds = %list_del_init.exit198
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %prev.i199 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %pTS.3218, ptr %prev.i199, align 4
  %69 = ptrtoint ptr %pTS.3218 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %Rx_TS_Unused_List100, ptr %pTS.3218, align 4
  %70 = ptrtoint ptr %prev.i3.i197 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev.i3.i197, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %pTS.3218, ptr %67, align 4
  br label %for.inc102

for.inc102:                                       ; preds = %if.end.i.i202, %list_del_init.exit198.for.inc102_crit_edge, %for.body92.for.inc102_crit_edge
  %cmp90.not = icmp eq ptr %pTmpTS.3219, %Rx_TS_Admit_List
  br i1 %cmp90.not, label %for.inc102.for.end108_crit_edge, label %for.inc102.for.body92_crit_edge

for.inc102.for.body92_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body92

for.inc102.for.end108_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end108

for.end108:                                       ; preds = %for.inc102.for.end108_crit_edge, %for.end77.for.end108_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @RemoveTsEntry(ptr noundef %ieee, ptr noundef %pTs, i32 noundef %TxRxSelect) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %SetupTimer = getelementptr inbounds %struct.ts_common_info, ptr %pTs, i32 0, i32 1
  %call = tail call i32 @del_timer_sync(ptr noundef %SetupTimer) #5
  %InactTimer = getelementptr inbounds %struct.ts_common_info, ptr %pTs, i32 0, i32 2
  %call1 = tail call i32 @del_timer_sync(ptr noundef %InactTimer) #5
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
  br i1 %cmp.i.not67, label %if.end.if.end42_crit_edge, label %while.body.lr.ph

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

while.body.lr.ph:                                 ; preds = %if.end
  %prev = getelementptr inbounds %struct.rx_ts_record, ptr %pTs, i32 0, i32 3, i32 1
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %RxReorder_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 48
  %prev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 48, i32 1
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @RemoveTsEntry.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RemoveTsEntry, %if.then16)) #5
          to label %do.end19 [label %if.then16], !srcloc !84

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %SeqNum = getelementptr inbounds %struct.rx_reorder_entry, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %SeqNum to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %SeqNum, align 4
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @RemoveTsEntry.__UNIQUE_ID_ddebug343, ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %conv) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %while.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.end19.list_del_init.exit_crit_edge

do.end19.list_del_init.exit_crit_edge:            ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end19.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %5, ptr %prev.i3.i, align 4
  %prxb20 = getelementptr inbounds %struct.rx_reorder_entry, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %prxb20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prxb20, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %list_del_init.exit.if.end42_crit_edge, label %for.cond.preheader, !prof !85

list_del_init.exit.if.end42_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

for.cond.preheader:                               ; preds = %list_del_init.exit
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp3365.not = icmp eq i8 %21, 0
  br i1 %cmp3365.not, label %for.cond.preheader.cleanup.cont_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup.cont_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rtllib_rxb, ptr %19, i32 0, i32 1, i32 %i.066
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load ptr, ptr %arrayidx, align 1
  tail call void @consume_skb(ptr noundef %23) #5
  %inc = add nuw nsw i32 %i.066, 1
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %19, align 1
  %conv32 = zext i8 %25 to i32
  %cmp33 = icmp ult i32 %inc, %conv32
  br i1 %cmp33, label %for.body.for.body_crit_edge, label %for.body.cleanup.cont_crit_edge

for.body.cleanup.cont_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.cont:                                     ; preds = %for.body.cleanup.cont_crit_edge, %for.cond.preheader.cleanup.cont_crit_edge
  tail call void @kfree(ptr noundef nonnull %19) #5
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i61 = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %27, ptr noundef %RxReorder_Unused_List) #5
  br i1 %call.i.i61, label %if.end.i.i62, label %cleanup.cont.list_add_tail.exit_crit_edge

cleanup.cont.list_add_tail.exit_crit_edge:        ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i62:                                     ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %5, ptr %prev.i, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %RxReorder_Unused_List, ptr %5, align 4
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev.i3.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %5, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i62, %cleanup.cont.list_add_tail.exit_crit_edge
  %32 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i.not = icmp eq ptr %33, %rx_pending_pkt_list
  br i1 %cmp.i.not, label %list_add_tail.exit.if.end42_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_add_tail.exit.if.end42_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %TsAddBaTimer = getelementptr inbounds %struct.tx_ts_record, ptr %pTs, i32 0, i32 8
  %call41 = tail call i32 @del_timer_sync(ptr noundef %TsAddBaTimer) #5
  br label %if.end42

if.end42:                                         ; preds = %if.else, %list_add_tail.exit.if.end42_crit_edge, %list_del_init.exit.if.end42_crit_edge, %if.end.if.end42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @RemoveAllTS(ptr noundef %ieee) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %Tx_TS_Pending_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 40
  %0 = ptrtoint ptr %Tx_TS_Pending_List to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Tx_TS_Pending_List, align 4
  %cmp.not170 = icmp eq ptr %1, %Tx_TS_Pending_List
  br i1 %cmp.not170, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %Tx_TS_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 41
  %prev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 41, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %pTS.0171 = phi ptr [ %1, %for.body.lr.ph ], [ %pTmpTS.0, %list_add_tail.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %pTS.0171 to i32
  call void @__asan_load4_noabort(i32 %2)
  %pTmpTS.0 = load ptr, ptr %pTS.0171, align 4
  %SetupTimer.i = getelementptr inbounds %struct.ts_common_info, ptr %pTS.0171, i32 0, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %SetupTimer.i) #5
  %InactTimer.i = getelementptr inbounds %struct.ts_common_info, ptr %pTS.0171, i32 0, i32 2
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %InactTimer.i) #5
  tail call void @TsInitDelBA(ptr noundef %ieee, ptr noundef %pTS.0171, i32 noundef 0) #5
  %TsAddBaTimer.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTS.0171, i32 0, i32 8
  %call41.i = tail call i32 @del_timer_sync(ptr noundef %TsAddBaTimer.i) #5
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
  %Tx_TS_Admit_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 39
  %17 = ptrtoint ptr %Tx_TS_Admit_List to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %Tx_TS_Admit_List, align 4
  %cmp26.not172 = icmp eq ptr %18, %Tx_TS_Admit_List
  br i1 %cmp26.not172, label %for.end.for.end38_crit_edge, label %for.body28.lr.ph

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.body28.lr.ph:                                 ; preds = %for.end
  %Tx_TS_Unused_List31 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 41
  %prev.i143 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 41, i32 1
  br label %for.body28

for.body28:                                       ; preds = %list_add_tail.exit147.for.body28_crit_edge, %for.body28.lr.ph
  %pTS.1173 = phi ptr [ %18, %for.body28.lr.ph ], [ %pTmpTS.1, %list_add_tail.exit147.for.body28_crit_edge ]
  %19 = ptrtoint ptr %pTS.1173 to i32
  call void @__asan_load4_noabort(i32 %19)
  %pTmpTS.1 = load ptr, ptr %pTS.1173, align 4
  %SetupTimer.i131 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.1173, i32 0, i32 1
  %call.i132 = tail call i32 @del_timer_sync(ptr noundef %SetupTimer.i131) #5
  %InactTimer.i133 = getelementptr inbounds %struct.ts_common_info, ptr %pTS.1173, i32 0, i32 2
  %call1.i134 = tail call i32 @del_timer_sync(ptr noundef %InactTimer.i133) #5
  tail call void @TsInitDelBA(ptr noundef %ieee, ptr noundef %pTS.1173, i32 noundef 0) #5
  %TsAddBaTimer.i135 = getelementptr inbounds %struct.tx_ts_record, ptr %pTS.1173, i32 0, i32 8
  %call41.i136 = tail call i32 @del_timer_sync(ptr noundef %TsAddBaTimer.i135) #5
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
  %Rx_TS_Pending_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 44
  %34 = ptrtoint ptr %Rx_TS_Pending_List to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %Rx_TS_Pending_List, align 4
  %cmp51.not174 = icmp eq ptr %35, %Rx_TS_Pending_List
  br i1 %cmp51.not174, label %for.end38.for.end62_crit_edge, label %for.body53.lr.ph

for.end38.for.end62_crit_edge:                    ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end62

for.body53.lr.ph:                                 ; preds = %for.end38
  %Rx_TS_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 45
  %prev.i154 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 45, i32 1
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
  %Rx_TS_Admit_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 43
  %51 = ptrtoint ptr %Rx_TS_Admit_List to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %Rx_TS_Admit_List, align 4
  %cmp75.not176 = icmp eq ptr %52, %Rx_TS_Admit_List
  br i1 %cmp75.not176, label %for.end62.for.end87_crit_edge, label %for.body77.lr.ph

for.end62.for.end87_crit_edge:                    ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end87

for.body77.lr.ph:                                 ; preds = %for.end62
  %Rx_TS_Unused_List80 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 45
  %prev.i165 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 45, i32 1
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
define dso_local void @TsStartAddBaProcess(ptr nocapture noundef readonly %ieee, ptr noundef %pTxTS) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bAddBaReqInProgress = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS, i32 0, i32 4
  %0 = ptrtoint ptr %bAddBaReqInProgress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bAddBaReqInProgress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %do.body36

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %bAddBaReqInProgress to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %bAddBaReqInProgress, align 4
  %bAddBaReqDelayed = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS, i32 0, i32 5
  %3 = ptrtoint ptr %bAddBaReqDelayed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bAddBaReqDelayed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body13, label %do.body4

do.body4:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @TsStartAddBaProcess.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@TsStartAddBaProcess, %if.then8)) #5
          to label %do.end9 [label %if.then8], !srcloc !84

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @TsStartAddBaProcess.__UNIQUE_ID_ddebug344, ptr noundef %6, ptr noundef nonnull @.str.27) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then8, %do.body4
  %TsAddBaTimer = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 6
  %call11 = tail call i32 @mod_timer(ptr noundef %TsAddBaTimer, i32 noundef %add) #5
  br label %if.end53

do.body13:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @TsStartAddBaProcess.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@TsStartAddBaProcess, %if.then25)) #5
          to label %do.end29 [label %if.then25], !srcloc !84

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %dev26 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %8 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @TsStartAddBaProcess.__UNIQUE_ID_ddebug345, ptr noundef %9, ptr noundef nonnull @.str.28) #5
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %TsAddBaTimer30 = getelementptr inbounds %struct.tx_ts_record, ptr %pTxTS, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add31 = add i32 %10, 10
  %call32 = tail call i32 @mod_timer(ptr noundef %TsAddBaTimer30, i32 noundef %add31) #5
  br label %if.end53

do.body36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @TsStartAddBaProcess.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@TsStartAddBaProcess, %if.then48)) #5
          to label %if.end53 [label %if.then48], !srcloc !84

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  %dev49 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %11 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @TsStartAddBaProcess.__UNIQUE_ID_ddebug346, ptr noundef %12, ptr noundef nonnull @.str.29) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %do.body36, %do.end29, %do.end9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @TsInitAddBA(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ResetBaEntry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_indicate_packets(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @TsInitDelBA(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @TSInitialize.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 145, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @TSInitialize.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 148, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @TSInitialize.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 151, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @TSInitialize.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 153, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @TSInitialize.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 155, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @TSInitialize.__key.9, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 171, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @TSInitialize.__key.11, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 174, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @TSInitialize.__key.13, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 177, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @TSInitialize.__key.15, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 180, i32 3}
!26 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 299, i32 26}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 323, i32 27}
!31 = !{ptr @__func__.GetTs, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 324, i32 9}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 334, i32 3}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @GetTs.__UNIQUE_ID_ddebug341, !34, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 368, i32 3}
!40 = !{ptr @GetTs.__UNIQUE_ID_ddebug342, !39, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 389, i32 7}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 440, i32 25}
!45 = !{ptr @__func__.RemovePeerTS, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 440, i32 50}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 453, i32 9}
!49 = !{ptr @__ksymtab_RemovePeerTS, !50, !"__ksymtab_RemovePeerTS", i1 false, i1 false}
!50 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 476, i32 1}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 513, i32 4}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @TsStartAddBaProcess.__UNIQUE_ID_ddebug344, !52, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 517, i32 4}
!57 = !{ptr @TsStartAddBaProcess.__UNIQUE_ID_ddebug345, !56, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 521, i32 3}
!60 = !{ptr @TsStartAddBaProcess.__UNIQUE_ID_ddebug346, !59, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 100, i32 2}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @TsAddBaProcess.__UNIQUE_ID_ddebug340, !62, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 52, i32 5}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @RxPktPendingTimeout.__UNIQUE_ID_ddebug339, !66, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 73, i32 9}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/rtl8192e/rtl819x_TSProc.c", i32 412, i32 4}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @RemoveTsEntry.__UNIQUE_ID_ddebug343, !72, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148899819, i64 2148899824, i64 2148899837, i64 2148899881, i64 2148899915, i64 2148899936}
!85 = !{!"branch_weights", i32 1, i32 2000}
