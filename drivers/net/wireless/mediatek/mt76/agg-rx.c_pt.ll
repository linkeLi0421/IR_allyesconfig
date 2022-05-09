; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/agg-rx.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/agg-rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76_rx_aggr_start\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_rx_aggr_start\09\09\09\09"
module asm "\09.long\09__crc_mt76_rx_aggr_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_rx_aggr_start:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_rx_aggr_start\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_rx_aggr_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_rx_aggr_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_rx_aggr_stop\09\09\09\09"
module asm "\09.long\09__crc_mt76_rx_aggr_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_rx_aggr_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_rx_aggr_stop\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_rx_aggr_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ieee80211_bar = type { i16, i16, [6 x i8], [6 x i8], i16, i16 }
%struct.mt76_rx_tid = type { %struct.callback_head, ptr, %struct.spinlock, %struct.delayed_work, i16, i16, i16, i8, i8, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.135], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.134 }
%struct.anon.134 = type { [5 x i64], [5 x i64] }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.130, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.130 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.108 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.142 = type { ptr, i32 }
%union.anon.143 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mt76_rx_aggr_reorder.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/mediatek/mt76/agg-rx.c\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mt76_rx_aggr_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&tid->reorder_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@mt76_rx_aggr_start.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&tid->reorder_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@mt76_rx_aggr_start.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tid->lock\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_rx_aggr_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_rx_aggr_start = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_rx_aggr_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_rx_aggr_start to i32), ptr @__kstrtab_mt76_rx_aggr_start, ptr @__kstrtabns_mt76_rx_aggr_start }, section "___ksymtab_gpl+mt76_rx_aggr_start", align 4
@mt76_rx_aggr_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_rx_aggr_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_rx_aggr_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_rx_aggr_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_rx_aggr_stop to i32), ptr @__kstrtab_mt76_rx_aggr_stop, ptr @__kstrtabns_mt76_rx_aggr_stop }, section "___ksymtab_gpl+mt76_rx_aggr_stop", align 4
@mt76_rx_aggr_check_ctl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 7, i64 0, i64 96]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 176, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 257, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 258, i32 2 }
@___asan_gen_.36 = private constant [47 x i8] c"../drivers/net/wireless/mediatek/mt76/agg-rx.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 294, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 723, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_mt76_rx_aggr_start, ptr @__ksymtab_mt76_rx_aggr_stop, ptr @.str, ptr @.str.1, ptr @mt76_rx_aggr_start.__key, ptr @.str.2, ptr @mt76_rx_aggr_start.__key.3, ptr @.str.4, ptr @mt76_rx_aggr_start.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_rx_aggr_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_rx_aggr_start.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_rx_aggr_start.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_rx_aggr_reorder(ptr noundef %skb, ptr noundef %frames) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %qos_ctl = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 23
  %2 = ptrtoint ptr %qos_ctl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %qos_ctl, align 1
  %4 = and i8 %3, 15
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %frames, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %frames, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %8 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %skb, ptr %6, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %frames, i32 0, i32 1
  %10 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %sta.i = getelementptr inbounds %struct.mt76_wcid, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %sta.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %sta.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  %add.ptr.i = getelementptr i8, ptr %1, i32 -268
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %tobool1.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %aggr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %13 = ptrtoint ptr %aggr to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %aggr, align 2
  %14 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not = icmp eq i8 %14, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %flag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %15 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flag, align 4
  %and3 = and i32 %16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  %data1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data1.i.i, align 4
  %and.i.i = and i32 %16, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.idx.i.i = select i1 %tobool.not.i.i, i32 0, i32 12
  %spec.select.i.i = getelementptr i8, ptr %18, i32 %spec.select.idx.i.i
  %and6.i.i = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %data.1.idx.i.i = select i1 %tobool7.not.i.i, i32 0, i32 12
  %data.1.i.i = getelementptr i8, ptr %spec.select.i.i, i32 %data.1.idx.i.i
  %19 = ptrtoint ptr %data.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %data.1.i.i, align 1
  %21 = and i16 %20, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31744, i16 %21)
  %22 = icmp eq i16 %21, -31744
  br i1 %22, label %if.end6.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.then5
  %23 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cb, align 4
  %control.i = getelementptr inbounds %struct.ieee80211_bar, ptr %data.1.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %control.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %control.i, align 1
  %27 = trunc i16 %26 to i8
  %28 = lshr i8 %27, 4
  %29 = ptrtoint ptr %qos_ctl to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %qos_ctl, align 1
  %start_seq_num.i = getelementptr inbounds %struct.ieee80211_bar, ptr %data.1.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %start_seq_num.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %start_seq_num.i, align 1
  %32 = and i16 %31, -3841
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #8
  %34 = lshr exact i16 %33, 4
  %idxprom.i = zext i8 %28 to i32
  %arrayidx.i = getelementptr [16 x ptr], ptr %24, i32 0, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %arrayidx.i, align 4
  %call15.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i157 = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i157, label %land.lhs.true.i, label %if.end6.i.do.end23.i_crit_edge

if.end6.i.do.end23.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %call16.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i.do.end23.i_crit_edge, label %land.lhs.true18.i

land.lhs.true.i.do.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  %.b49.i = load i1, ptr @mt76_rx_aggr_check_ctl.__warned, align 1
  br i1 %.b49.i, label %land.lhs.true18.i.do.end23.i_crit_edge, label %if.then20.i

land.lhs.true18.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

if.then20.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mt76_rx_aggr_check_ctl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 136, ptr noundef nonnull @.str.1) #8
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.then20.i, %land.lhs.true18.i.do.end23.i_crit_edge, %land.lhs.true.i.do.end23.i_crit_edge, %if.end6.i.do.end23.i_crit_edge
  %tobool25.not.i = icmp eq ptr %36, null
  br i1 %tobool25.not.i, label %do.end23.i.cleanup_crit_edge, label %if.end27.i

do.end23.i.cleanup_crit_edge:                     ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27.i:                                       ; preds = %do.end23.i
  %lock.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %36, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %stopped.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i158 = load i8, ptr %stopped.i, align 1
  %38 = and i8 %bf.load.i158, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool28.not.i = icmp eq i8 %38, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end27.i.cleanup.sink.split_crit_edge

if.end27.i.cleanup.sink.split_crit_edge:          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then29.i:                                      ; preds = %if.end27.i
  %head1.i.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %36, i32 0, i32 4
  %conv1.i.i.i = zext i16 %34 to i32
  %39 = ptrtoint ptr %head1.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %head1.i.i, align 4
  %conv.i7.i.i = zext i16 %40 to i32
  %sub.i8.i.i = sub nsw i32 %conv.i7.i.i, %conv1.i.i.i
  %and.i9.i.i = and i32 %sub.i8.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i9.i.i)
  %cmp.i10.i.i = icmp ugt i32 %and.i9.i.i, 2048
  br i1 %cmp.i10.i.i, label %while.body.lr.ph.i.i, label %if.then29.i.mt76_rx_aggr_release_frames.exit.i_crit_edge

if.then29.i.mt76_rx_aggr_release_frames.exit.i_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_rx_aggr_release_frames.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then29.i
  %size.i.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %36, i32 0, i32 5
  %nframes.i.i.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %36, i32 0, i32 6
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %mt76_aggr_release.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %41 = phi i16 [ %40, %while.body.lr.ph.i.i ], [ %61, %mt76_aggr_release.exit.i.i.while.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %size.i.i, align 2
  %44 = urem i16 %41, %43
  %rem.i.i = zext i16 %44 to i32
  %45 = add i16 %41, 1
  %46 = and i16 %45, 4095
  %47 = ptrtoint ptr %head1.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %head1.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mt76_rx_tid, ptr %36, i32 0, i32 9, i32 %rem.i.i
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i.i, label %while.body.i.i.mt76_aggr_release.exit.i.i_crit_edge, label %if.end.i.i.i

while.body.i.i.mt76_aggr_release.exit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_aggr_release.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  %51 = ptrtoint ptr %nframes.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %nframes.i.i.i, align 4
  %dec.i.i.i = add i16 %52, -1
  store i16 %dec.i.i.i, ptr %nframes.i.i.i, align 4
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %frames, ptr %49, align 8
  %prev10.i.i.i.i.i.i = getelementptr inbounds %struct.anon, ptr %49, i32 0, i32 1
  %56 = ptrtoint ptr %prev10.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %prev10.i.i.i.i.i.i, align 4
  store volatile ptr %49, ptr %prev.i.i, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %49, ptr %54, align 4
  %58 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %59, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %qlen.i.i.i, align 4
  br label %mt76_aggr_release.exit.i.i

mt76_aggr_release.exit.i.i:                       ; preds = %if.end.i.i.i, %while.body.i.i.mt76_aggr_release.exit.i.i_crit_edge
  %60 = ptrtoint ptr %head1.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %head1.i.i, align 4
  %conv.i.i.i = zext i16 %61 to i32
  %sub.i.i.i = sub nsw i32 %conv.i.i.i, %conv1.i.i.i
  %and.i.i.i = and i32 %sub.i.i.i, 4095
  %cmp.i.i.i = icmp ugt i32 %and.i.i.i, 2048
  br i1 %cmp.i.i.i, label %mt76_aggr_release.exit.i.i.while.body.i.i_crit_edge, label %mt76_aggr_release.exit.i.i.mt76_rx_aggr_release_frames.exit.i_crit_edge

mt76_aggr_release.exit.i.i.mt76_rx_aggr_release_frames.exit.i_crit_edge: ; preds = %mt76_aggr_release.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_rx_aggr_release_frames.exit.i

mt76_aggr_release.exit.i.i.while.body.i.i_crit_edge: ; preds = %mt76_aggr_release.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

mt76_rx_aggr_release_frames.exit.i:               ; preds = %mt76_aggr_release.exit.i.i.mt76_rx_aggr_release_frames.exit.i_crit_edge, %if.then29.i.mt76_rx_aggr_release_frames.exit.i_crit_edge
  %62 = ptrtoint ptr %head1.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %head1.i.i, align 4
  %size.i51.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %36, i32 0, i32 5
  %64 = ptrtoint ptr %size.i51.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %size.i51.i, align 2
  %66 = urem i16 %63, %65
  %idx.013.i.i = zext i16 %66 to i32
  %arrayidx14.i.i = getelementptr %struct.mt76_rx_tid, ptr %36, i32 0, i32 9, i32 %idx.013.i.i
  %67 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx14.i.i, align 4
  %tobool.not15.i.i = icmp eq ptr %68, null
  br i1 %tobool.not15.i.i, label %mt76_rx_aggr_release_frames.exit.i.cleanup.sink.split_crit_edge, label %mt76_aggr_release.exit.lr.ph.i.i

mt76_rx_aggr_release_frames.exit.i.cleanup.sink.split_crit_edge: ; preds = %mt76_rx_aggr_release_frames.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

mt76_aggr_release.exit.lr.ph.i.i:                 ; preds = %mt76_rx_aggr_release_frames.exit.i
  %nframes.i.i52.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %36, i32 0, i32 6
  br label %mt76_aggr_release.exit.i59.i

mt76_aggr_release.exit.i59.i:                     ; preds = %mt76_aggr_release.exit.i59.i.mt76_aggr_release.exit.i59.i_crit_edge, %mt76_aggr_release.exit.lr.ph.i.i
  %69 = phi ptr [ %68, %mt76_aggr_release.exit.lr.ph.i.i ], [ %89, %mt76_aggr_release.exit.i59.i.mt76_aggr_release.exit.i59.i_crit_edge ]
  %arrayidx16.i.i = phi ptr [ %arrayidx14.i.i, %mt76_aggr_release.exit.lr.ph.i.i ], [ %arrayidx.i.i, %mt76_aggr_release.exit.i59.i.mt76_aggr_release.exit.i59.i_crit_edge ]
  %70 = ptrtoint ptr %head1.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %head1.i.i, align 4
  %72 = add i16 %71, 1
  %73 = and i16 %72, 4095
  store i16 %73, ptr %head1.i.i, align 4
  %74 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arrayidx16.i.i, align 4
  %75 = ptrtoint ptr %nframes.i.i52.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %nframes.i.i52.i, align 4
  %dec.i.i55.i = add i16 %76, -1
  store i16 %dec.i.i55.i, ptr %nframes.i.i52.i, align 4
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i, align 4
  %79 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %frames, ptr %69, align 8
  %prev10.i.i.i.i.i56.i = getelementptr inbounds %struct.anon, ptr %69, i32 0, i32 1
  %80 = ptrtoint ptr %prev10.i.i.i.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %prev10.i.i.i.i.i56.i, align 4
  store volatile ptr %69, ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %69, ptr %78, align 4
  %82 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i.i.i57.i = add i32 %83, 1
  store volatile i32 %add.i.i.i.i.i57.i, ptr %qlen.i.i.i, align 4
  %84 = load i16, ptr %head1.i.i, align 4
  %85 = ptrtoint ptr %size.i51.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %size.i51.i, align 2
  %87 = urem i16 %84, %86
  %idx.0.i.i = zext i16 %87 to i32
  %arrayidx.i.i = getelementptr %struct.mt76_rx_tid, ptr %36, i32 0, i32 9, i32 %idx.0.i.i
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i58.i = icmp eq ptr %89, null
  br i1 %tobool.not.i58.i, label %mt76_aggr_release.exit.i59.i.cleanup.sink.split_crit_edge, label %mt76_aggr_release.exit.i59.i.mt76_aggr_release.exit.i59.i_crit_edge

mt76_aggr_release.exit.i59.i.mt76_aggr_release.exit.i59.i_crit_edge: ; preds = %mt76_aggr_release.exit.i59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_aggr_release.exit.i59.i

mt76_aggr_release.exit.i59.i.cleanup.sink.split_crit_edge: ; preds = %mt76_aggr_release.exit.i59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %90 = ptrtoint ptr %qos_ctl to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %qos_ctl, align 1
  %92 = trunc i8 %91 to i7
  %trunc = and i7 %92, -32
  %93 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values)
  switch i7 %trunc, label %if.end6.cleanup_crit_edge [
    i7 -32, label %if.end6.if.end18_crit_edge
    i7 0, label %if.end6.if.end18_crit_edge174
  ]

if.end6.if.end18_crit_edge174:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end6.if.end18_crit_edge, %if.end6.if.end18_crit_edge174
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr [16 x ptr], ptr %1, i32 0, i32 %idxprom
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %arrayidx, align 4
  %call21 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %if.end18.do.end31_crit_edge

if.end18.do.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

land.lhs.true23:                                  ; preds = %if.end18
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true23.do.end31_crit_edge, label %land.lhs.true26

land.lhs.true23.do.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %.b156 = load i1, ptr @mt76_rx_aggr_reorder.__warned, align 1
  br i1 %.b156, label %land.lhs.true26.do.end31_crit_edge, label %if.then28

land.lhs.true26.do.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mt76_rx_aggr_reorder.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 176, ptr noundef nonnull @.str.1) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.lhs.true26.do.end31_crit_edge, %land.lhs.true23.do.end31_crit_edge, %if.end18.do.end31_crit_edge
  %tobool33.not = icmp eq ptr %95, null
  br i1 %tobool33.not, label %do.end31.cleanup_crit_edge, label %if.end35

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %do.end31
  %flag36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %96 = ptrtoint ptr %flag36 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flag36, align 4
  %or = or i32 %97, 2048
  store i32 %or, ptr %flag36, align 4
  %lock = getelementptr inbounds %struct.mt76_rx_tid, ptr %95, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %stopped = getelementptr inbounds %struct.mt76_rx_tid, ptr %95, i32 0, i32 8
  %98 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load37 = load i8, ptr %stopped, align 1
  %99 = and i8 %bf.load37, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool40.not = icmp eq i8 %99, 0
  br i1 %tobool40.not, label %if.end42, label %if.end35.cleanup.sink.split_crit_edge

if.end35.cleanup.sink.split_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end42:                                         ; preds = %if.end35
  %head43 = getelementptr inbounds %struct.mt76_rx_tid, ptr %95, i32 0, i32 4
  %100 = ptrtoint ptr %head43 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %head43, align 4
  %seqno44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %102 = ptrtoint ptr %seqno44 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %seqno44, align 4
  %size45 = getelementptr inbounds %struct.mt76_rx_tid, ptr %95, i32 0, i32 5
  %104 = ptrtoint ptr %size45 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %size45, align 2
  %conv.i = zext i16 %103 to i32
  %conv1.i = zext i16 %101 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %and.i = and i32 %sub.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 2048
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load37)
  %tobool49.not = icmp sgt i8 %bf.load37, -1
  br i1 %tobool49.not, label %if.then50, label %if.end57

if.then50:                                        ; preds = %if.end42
  br i1 %cmp.i, label %if.then50.cleanup.sink.split_crit_edge, label %if.end53

if.then50.cleanup.sink.split_crit_edge:           ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end53:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set = or i8 %bf.load37, -128
  %106 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %bf.set, ptr %stopped, align 1
  br label %if.end60

if.end57:                                         ; preds = %if.end42
  br i1 %cmp.i, label %if.then59, label %if.end57.if.end60_crit_edge

if.end57.if.end60_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i159 = add i32 %108, -1
  store volatile i32 %sub.i159, ptr %qlen.i.i.i, align 4
  %109 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %skb, align 8
  %111 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prev10.i.i.i, align 4
  store ptr null, ptr %prev10.i.i.i, align 4
  store ptr null, ptr %skb, align 8
  %prev17.i = getelementptr inbounds %struct.anon, ptr %110, i32 0, i32 1
  %113 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %112, ptr %prev17.i, align 4
  %114 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %110, ptr %112, align 8
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup.sink.split

if.end60:                                         ; preds = %if.end57.if.end60_crit_edge, %if.end53
  call void @__sanitizer_cov_trace_cmp2(i16 %103, i16 %101)
  %cmp63 = icmp eq i16 %103, %101
  br i1 %cmp63, label %if.then65, label %if.end71

if.then65:                                        ; preds = %if.end60
  %115 = add i16 %101, 1
  %116 = and i16 %115, 4095
  %117 = ptrtoint ptr %head43 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %head43, align 4
  %nframes = getelementptr inbounds %struct.mt76_rx_tid, ptr %95, i32 0, i32 6
  %118 = ptrtoint ptr %nframes to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %nframes, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool68.not = icmp eq i16 %119, 0
  br i1 %tobool68.not, label %if.then65.cleanup.sink.split_crit_edge, label %if.then69

if.then65.cleanup.sink.split_crit_edge:           ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then69:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mt76_rx_aggr_release_head(ptr noundef nonnull %95, ptr noundef %frames)
  br label %cleanup.sink.split

if.end71:                                         ; preds = %if.end60
  %120 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i161 = add i32 %121, -1
  store volatile i32 %sub.i161, ptr %qlen.i.i.i, align 4
  %122 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %skb, align 8
  %124 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev10.i.i.i, align 4
  store ptr null, ptr %prev10.i.i.i, align 4
  store ptr null, ptr %skb, align 8
  %prev17.i163 = getelementptr inbounds %struct.anon, ptr %123, i32 0, i32 1
  %126 = ptrtoint ptr %prev17.i163 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %125, ptr %prev17.i163, align 4
  %127 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %123, ptr %125, align 8
  %add = add i16 %105, %101
  %conv1.i165 = zext i16 %add to i32
  %sub.i166 = sub nsw i32 %conv.i, %conv1.i165
  %and.i167 = and i32 %sub.i166, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i167)
  %cmp.i168 = icmp ugt i32 %and.i167, 2048
  br i1 %cmp.i168, label %if.end71.if.end79_crit_edge, label %if.then76

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i169 = add i16 %103, 1
  %128 = sub i16 %sub.i169, %105
  %129 = and i16 %128, 4095
  tail call fastcc void @mt76_rx_aggr_release_frames(ptr noundef nonnull %95, ptr noundef %frames, i16 noundef zeroext %129)
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end71.if.end79_crit_edge
  %130 = urem i16 %103, %105
  %idxprom83 = zext i16 %130 to i32
  %arrayidx84 = getelementptr %struct.mt76_rx_tid, ptr %95, i32 0, i32 9, i32 %idxprom83
  %131 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx84, align 4
  %tobool85.not = icmp eq ptr %132, null
  br i1 %tobool85.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup.sink.split

if.end87:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %133 = load volatile i32, ptr @jiffies, align 128
  %reorder_time = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %134 = ptrtoint ptr %reorder_time to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %reorder_time, align 4
  %135 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %skb, ptr %arrayidx84, align 4
  %nframes91 = getelementptr inbounds %struct.mt76_rx_tid, ptr %95, i32 0, i32 6
  %136 = ptrtoint ptr %nframes91 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %nframes91, align 4
  %inc = add i16 %137, 1
  store i16 %inc, ptr %nframes91, align 4
  tail call fastcc void @mt76_rx_aggr_release_head(ptr noundef nonnull %95, ptr noundef %frames)
  %dev = getelementptr inbounds %struct.mt76_rx_tid, ptr %95, i32 0, i32 1
  %138 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev, align 4
  %hw = getelementptr inbounds %struct.mt76_dev, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw, align 4
  %reorder_work = getelementptr inbounds %struct.mt76_rx_tid, ptr %95, i32 0, i32 3
  %num = getelementptr inbounds %struct.mt76_rx_tid, ptr %95, i32 0, i32 7
  %142 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %143)
  %cmp.i171 = icmp ugt i8 %143, 3
  %div.i = select i1 %cmp.i171, i32 4, i32 10
  tail call void @ieee80211_queue_delayed_work(ptr noundef %141, ptr noundef %reorder_work, i32 noundef %div.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end87, %if.then86, %if.then69, %if.then65.cleanup.sink.split_crit_edge, %if.then59, %if.then50.cleanup.sink.split_crit_edge, %if.end35.cleanup.sink.split_crit_edge, %mt76_aggr_release.exit.i59.i.cleanup.sink.split_crit_edge, %mt76_rx_aggr_release_frames.exit.i.cleanup.sink.split_crit_edge, %if.end27.i.cleanup.sink.split_crit_edge
  %lock.i.sink = phi ptr [ %lock.i, %mt76_rx_aggr_release_frames.exit.i.cleanup.sink.split_crit_edge ], [ %lock.i, %if.end27.i.cleanup.sink.split_crit_edge ], [ %lock, %if.then65.cleanup.sink.split_crit_edge ], [ %lock, %if.then69 ], [ %lock, %if.then50.cleanup.sink.split_crit_edge ], [ %lock, %if.end35.cleanup.sink.split_crit_edge ], [ %lock, %if.end87 ], [ %lock, %if.then86 ], [ %lock, %if.then59 ], [ %lock.i, %mt76_aggr_release.exit.i59.i.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end31.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end23.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76_rx_aggr_release_head(ptr nocapture noundef %tid, ptr noundef %frames) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.mt76_rx_tid, ptr %tid, i32 0, i32 4
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %head, align 4
  %size = getelementptr inbounds %struct.mt76_rx_tid, ptr %tid, i32 0, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size, align 2
  %4 = urem i16 %1, %3
  %idx.013 = zext i16 %4 to i32
  %arrayidx14 = getelementptr %struct.mt76_rx_tid, ptr %tid, i32 0, i32 9, i32 %idx.013
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx14, align 4
  %tobool.not15 = icmp eq ptr %6, null
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %mt76_aggr_release.exit.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

mt76_aggr_release.exit.lr.ph:                     ; preds = %entry
  %nframes.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %tid, i32 0, i32 6
  %prev.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %frames, i32 0, i32 1
  %qlen.i.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %frames, i32 0, i32 1
  br label %mt76_aggr_release.exit

mt76_aggr_release.exit:                           ; preds = %mt76_aggr_release.exit.mt76_aggr_release.exit_crit_edge, %mt76_aggr_release.exit.lr.ph
  %7 = phi ptr [ %6, %mt76_aggr_release.exit.lr.ph ], [ %27, %mt76_aggr_release.exit.mt76_aggr_release.exit_crit_edge ]
  %arrayidx16 = phi ptr [ %arrayidx14, %mt76_aggr_release.exit.lr.ph ], [ %arrayidx, %mt76_aggr_release.exit.mt76_aggr_release.exit_crit_edge ]
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %head, align 4
  %10 = add i16 %9, 1
  %11 = and i16 %10, 4095
  store i16 %11, ptr %head, align 4
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx16, align 4
  %13 = ptrtoint ptr %nframes.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nframes.i, align 4
  %dec.i = add i16 %14, -1
  store i16 %dec.i, ptr %nframes.i, align 4
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %frames, ptr %7, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %7, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %7, ptr %16, align 4
  %20 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %22 = load i16, ptr %head, align 4
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size, align 2
  %25 = urem i16 %22, %24
  %idx.0 = zext i16 %25 to i32
  %arrayidx = getelementptr %struct.mt76_rx_tid, ptr %tid, i32 0, i32 9, i32 %idx.0
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %mt76_aggr_release.exit.while.end_crit_edge, label %mt76_aggr_release.exit.mt76_aggr_release.exit_crit_edge

mt76_aggr_release.exit.mt76_aggr_release.exit_crit_edge: ; preds = %mt76_aggr_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_aggr_release.exit

mt76_aggr_release.exit.while.end_crit_edge:       ; preds = %mt76_aggr_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %mt76_aggr_release.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76_rx_aggr_release_frames(ptr nocapture noundef %tid, ptr noundef %frames, i16 noundef zeroext %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head1 = getelementptr inbounds %struct.mt76_rx_tid, ptr %tid, i32 0, i32 4
  %conv1.i = zext i16 %head to i32
  %0 = ptrtoint ptr %head1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %head1, align 4
  %conv.i7 = zext i16 %1 to i32
  %sub.i8 = sub nsw i32 %conv.i7, %conv1.i
  %and.i9 = and i32 %sub.i8, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i9)
  %cmp.i10 = icmp ugt i32 %and.i9, 2048
  br i1 %cmp.i10, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %size = getelementptr inbounds %struct.mt76_rx_tid, ptr %tid, i32 0, i32 5
  %nframes.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %tid, i32 0, i32 6
  %prev.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %frames, i32 0, i32 1
  %qlen.i.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %frames, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %mt76_aggr_release.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i16 [ %1, %while.body.lr.ph ], [ %22, %mt76_aggr_release.exit.while.body_crit_edge ]
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %size, align 2
  %5 = urem i16 %2, %4
  %rem = zext i16 %5 to i32
  %6 = add i16 %2, 1
  %7 = and i16 %6, 4095
  %8 = ptrtoint ptr %head1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %head1, align 4
  %arrayidx.i = getelementptr %struct.mt76_rx_tid, ptr %tid, i32 0, i32 9, i32 %rem
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %while.body.mt76_aggr_release.exit_crit_edge, label %if.end.i

while.body.mt76_aggr_release.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_aggr_release.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %nframes.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nframes.i, align 4
  %dec.i = add i16 %13, -1
  store i16 %dec.i, ptr %nframes.i, align 4
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %frames, ptr %10, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %10, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %10, ptr %15, align 4
  %19 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  br label %mt76_aggr_release.exit

mt76_aggr_release.exit:                           ; preds = %if.end.i, %while.body.mt76_aggr_release.exit_crit_edge
  %21 = ptrtoint ptr %head1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %head1, align 4
  %conv.i = zext i16 %22 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %and.i = and i32 %sub.i, 4095
  %cmp.i = icmp ugt i32 %and.i, 2048
  br i1 %cmp.i, label %mt76_aggr_release.exit.while.body_crit_edge, label %mt76_aggr_release.exit.while.end_crit_edge

mt76_aggr_release.exit.while.end_crit_edge:       ; preds = %mt76_aggr_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

mt76_aggr_release.exit.while.body_crit_edge:      ; preds = %mt76_aggr_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %mt76_aggr_release.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_rx_aggr_start(ptr noundef %dev, ptr noundef %wcid, i8 noundef zeroext %tidno, i16 noundef zeroext %ssn, i16 noundef zeroext %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt76_rx_aggr_stop(ptr noundef %dev, ptr noundef %wcid, i8 noundef zeroext %tidno)
  %conv = zext i16 %size to i32
  %0 = shl nuw nsw i32 %conv, 2
  %spec.select.i80 = add nuw nsw i32 %0, 164
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i80, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2 = getelementptr inbounds %struct.mt76_rx_tid, ptr %call9.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2, align 8
  %head = getelementptr inbounds %struct.mt76_rx_tid, ptr %call9.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %ssn, ptr %head, align 4
  %size3 = getelementptr inbounds %struct.mt76_rx_tid, ptr %call9.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %size3 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %size, ptr %size3, align 2
  %num = getelementptr inbounds %struct.mt76_rx_tid, ptr %call9.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %tidno, ptr %num, align 2
  %reorder_work = getelementptr inbounds %struct.mt76_rx_tid, ptr %call9.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %reorder_work, i32 noundef 0) #8
  %5 = ptrtoint ptr %reorder_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %reorder_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mt76_rx_tid, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @mt76_rx_aggr_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry11 = getelementptr inbounds %struct.mt76_rx_tid, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry11, ptr %prev.i, align 64
  %func = getelementptr inbounds %struct.mt76_rx_tid, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mt76_rx_aggr_reorder_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mt76_rx_tid, ptr %call9.i.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @mt76_rx_aggr_start.__key.3) #8
  %lock = getelementptr inbounds %struct.mt76_rx_tid, ptr %call9.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mt76_rx_aggr_start.__key.5, i16 noundef signext 3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  %idxprom50 = zext i8 %tidno to i32
  %arrayidx51 = getelementptr [16 x ptr], ptr %wcid, i32 0, i32 %idxprom50
  %9 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call9.i.i, ptr %arrayidx51, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_rx_aggr_stop(ptr noundef %dev, ptr noundef %wcid, i8 noundef zeroext %tidno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 9, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b67 = load i1, ptr @mt76_rx_aggr_stop.__warned, align 1
  br i1 %.b67, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mt76_rx_aggr_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 295, ptr noundef nonnull @.str.7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %idxprom = zext i8 %tidno to i32
  %arrayidx = getelementptr [16 x ptr], ptr %wcid, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %arrayidx, align 4
  %tobool48.not = icmp eq ptr %1, null
  br i1 %tobool48.not, label %do.end.if.end59_crit_edge, label %if.then49

do.end.if.end59_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then49:                                        ; preds = %do.end
  %size1.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %size1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %size1.i, align 2
  %lock.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %stopped.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %stopped.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %stopped.i, align 1
  %nframes.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %1, i32 0, i32 6
  %conv2.i = zext i16 %4 to i32
  %6 = ptrtoint ptr %nframes.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nframes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not1.i = icmp ne i16 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp2.i = icmp ne i16 %4, 0
  %or.cond3.i = select i1 %tobool.not1.i, i1 %cmp2.i, i1 false
  br i1 %or.cond3.i, label %if.then49.for.body.i_crit_edge, label %if.then49.mt76_rx_aggr_shutdown.exit_crit_edge

if.then49.mt76_rx_aggr_shutdown.exit_crit_edge:   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_rx_aggr_shutdown.exit

if.then49.for.body.i_crit_edge:                   ; preds = %if.then49
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then49.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.then49.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mt76_rx_tid, ptr %1, i32 0, i32 9, i32 %i.04.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %nframes.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nframes.i, align 4
  %dec.i = add i16 %12, -1
  store i16 %dec.i, ptr %nframes.i, align 4
  tail call void @consume_skb(ptr noundef nonnull %9) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %13 = ptrtoint ptr %nframes.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nframes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp ne i16 %14, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv2.i)
  %cmp.i = icmp ult i32 %inc.i, %conv2.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.mt76_rx_aggr_shutdown.exit_crit_edge

cleanup.i.mt76_rx_aggr_shutdown.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_rx_aggr_shutdown.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mt76_rx_aggr_shutdown.exit:                       ; preds = %cleanup.i.mt76_rx_aggr_shutdown.exit_crit_edge, %if.then49.mt76_rx_aggr_shutdown.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  %reorder_work.i = getelementptr inbounds %struct.mt76_rx_tid, ptr %1, i32 0, i32 3
  %call.i68 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %reorder_work.i) #8
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #8
  br label %if.end59

if.end59:                                         ; preds = %mt76_rx_aggr_shutdown.exit, %do.end.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76_rx_aggr_reorder_work(ptr noundef %work) #0 align 64 {
entry:
  %frames = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  %dev1 = getelementptr i8, ptr %work, i32 -48
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %frames) #8
  %2 = getelementptr inbounds i8, ptr %frames, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  %4 = ptrtoint ptr %frames to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %frames, ptr %frames, align 4
  %prev.i = getelementptr inbounds %struct.anon.54, ptr %frames, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %frames, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %frames, i32 0, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i, align 4
  call fastcc void @local_bh_disable()
  %7 = call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !40
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lock = getelementptr i8, ptr %work, i32 -44
  call void @_raw_spin_lock(ptr noundef %lock) #8
  %nframes1.i = getelementptr i8, ptr %work, i32 104
  %11 = ptrtoint ptr %nframes1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nframes1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i12 = icmp eq i16 %12, 0
  br i1 %tobool.not.i12, label %mt76_rx_aggr_check_release.exit.thread, label %if.end.i

mt76_rx_aggr_check_release.exit.thread:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %if.end

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %head.i.i = getelementptr i8, ptr %work, i32 100
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %head.i.i, align 4
  %size.i.i = getelementptr i8, ptr %work, i32 102
  %15 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %size.i.i, align 2
  %17 = urem i16 %14, %16
  %idx.013.i.i = zext i16 %17 to i32
  %arrayidx14.i.i = getelementptr %struct.mt76_rx_tid, ptr %add.ptr, i32 0, i32 9, i32 %idx.013.i.i
  %18 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx14.i.i, align 4
  %tobool.not15.i.i = icmp eq ptr %19, null
  br i1 %tobool.not15.i.i, label %if.end.i.mt76_rx_aggr_release_head.exit.i_crit_edge, label %if.end.i.mt76_aggr_release.exit.i.i_crit_edge

if.end.i.mt76_aggr_release.exit.i.i_crit_edge:    ; preds = %if.end.i
  br label %mt76_aggr_release.exit.i.i

if.end.i.mt76_rx_aggr_release_head.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_rx_aggr_release_head.exit.i

mt76_aggr_release.exit.i.i:                       ; preds = %mt76_aggr_release.exit.i.i.mt76_aggr_release.exit.i.i_crit_edge, %if.end.i.mt76_aggr_release.exit.i.i_crit_edge
  %20 = phi ptr [ %40, %mt76_aggr_release.exit.i.i.mt76_aggr_release.exit.i.i_crit_edge ], [ %19, %if.end.i.mt76_aggr_release.exit.i.i_crit_edge ]
  %arrayidx16.i.i = phi ptr [ %arrayidx.i.i, %mt76_aggr_release.exit.i.i.mt76_aggr_release.exit.i.i_crit_edge ], [ %arrayidx14.i.i, %if.end.i.mt76_aggr_release.exit.i.i_crit_edge ]
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %head.i.i, align 4
  %23 = add i16 %22, 1
  %24 = and i16 %23, 4095
  store i16 %24, ptr %head.i.i, align 4
  %25 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx16.i.i, align 4
  %26 = ptrtoint ptr %nframes1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nframes1.i, align 4
  %dec.i.i.i = add i16 %27, -1
  store i16 %dec.i.i.i, ptr %nframes1.i, align 4
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %frames, ptr %20, align 8
  %prev10.i.i.i.i.i.i = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 1
  %31 = ptrtoint ptr %prev10.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %prev10.i.i.i.i.i.i, align 4
  store volatile ptr %20, ptr %prev.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %20, ptr %29, align 4
  %33 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i, align 4
  %add.i.i.i.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %qlen.i, align 4
  %35 = load i16, ptr %head.i.i, align 4
  %36 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %size.i.i, align 2
  %38 = urem i16 %35, %37
  %idx.0.i.i = zext i16 %38 to i32
  %arrayidx.i.i = getelementptr %struct.mt76_rx_tid, ptr %add.ptr, i32 0, i32 9, i32 %idx.0.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %mt76_aggr_release.exit.i.i.mt76_rx_aggr_release_head.exit.i_crit_edge, label %mt76_aggr_release.exit.i.i.mt76_aggr_release.exit.i.i_crit_edge

mt76_aggr_release.exit.i.i.mt76_aggr_release.exit.i.i_crit_edge: ; preds = %mt76_aggr_release.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_aggr_release.exit.i.i

mt76_aggr_release.exit.i.i.mt76_rx_aggr_release_head.exit.i_crit_edge: ; preds = %mt76_aggr_release.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_rx_aggr_release_head.exit.i

mt76_rx_aggr_release_head.exit.i:                 ; preds = %mt76_aggr_release.exit.i.i.mt76_rx_aggr_release_head.exit.i_crit_edge, %if.end.i.mt76_rx_aggr_release_head.exit.i_crit_edge
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head.i.i, align 4
  %conv.i = zext i16 %42 to i32
  %43 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %size.i.i, align 2
  %conv2.i = zext i16 %44 to i32
  %rem72.i = urem i16 %42, %44
  %rem.zext.i = zext i16 %rem72.i to i32
  %45 = ptrtoint ptr %nframes1.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %nframes1.i, align 4
  %add.i = add nuw nsw i32 %conv.i, 1
  %rem9.i = urem i32 %add.i, %conv2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem9.i, i32 %rem.zext.i)
  %cmp.not73.i = icmp eq i32 %rem9.i, %rem.zext.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool11.not74.i = icmp eq i16 %46, 0
  %or.cond75.i = select i1 %cmp.not73.i, i1 true, i1 %tobool11.not74.i
  br i1 %or.cond75.i, label %mt76_rx_aggr_release_head.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

mt76_rx_aggr_release_head.exit.i.for.end.i_crit_edge: ; preds = %mt76_rx_aggr_release_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %mt76_rx_aggr_release_head.exit.i
  %conv4.i = zext i16 %46 to i32
  %num.i = getelementptr i8, ptr %work, i32 106
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nframes.077.i = phi i32 [ %conv4.i, %for.body.lr.ph.i ], [ %nframes.1.i, %for.inc.i.for.body.i_crit_edge ]
  %idx.076.i = phi i32 [ %rem9.i, %for.body.lr.ph.i ], [ %rem23.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mt76_rx_tid, ptr %add.ptr, i32 0, i32 9, i32 %idx.076.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %48, null
  br i1 %tobool12.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end14.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  %dec.i = add i32 %nframes.077.i, -1
  %reorder_time.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 3, i32 4
  %49 = ptrtoint ptr %reorder_time.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reorder_time.i, align 4
  %51 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp.i.i = icmp ugt i8 %52, 3
  %div.i.i = select i1 %cmp.i.i, i32 4, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add15.i = sub i32 %50, %53
  %sub.i = add i32 %add15.i, %div.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp16.i = icmp slt i32 %sub.i, 0
  br i1 %cmp16.i, label %if.end19.i, label %if.end14.i.for.inc.i_crit_edge

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end19.i:                                       ; preds = %if.end14.i
  %seqno.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 3, i32 24
  %54 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %seqno.i, align 4
  %conv1.i.i.i = zext i16 %55 to i32
  %56 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %head.i.i, align 4
  %conv.i7.i.i = zext i16 %57 to i32
  %sub.i8.i.i = sub nsw i32 %conv.i7.i.i, %conv1.i.i.i
  %and.i9.i.i = and i32 %sub.i8.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i9.i.i)
  %cmp.i10.i.i = icmp ugt i32 %and.i9.i.i, 2048
  br i1 %cmp.i10.i.i, label %if.end19.i.while.body.i.i_crit_edge, label %if.end19.i.for.inc.i_crit_edge

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end19.i.while.body.i.i_crit_edge:              ; preds = %if.end19.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %mt76_aggr_release.exit.i53.i.while.body.i.i_crit_edge, %if.end19.i.while.body.i.i_crit_edge
  %58 = phi i16 [ %78, %mt76_aggr_release.exit.i53.i.while.body.i.i_crit_edge ], [ %57, %if.end19.i.while.body.i.i_crit_edge ]
  %59 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %size.i.i, align 2
  %61 = urem i16 %58, %60
  %rem.i.i = zext i16 %61 to i32
  %62 = add i16 %58, 1
  %63 = and i16 %62, 4095
  %64 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %head.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mt76_rx_tid, ptr %add.ptr, i32 0, i32 9, i32 %rem.i.i
  %65 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i.i, label %while.body.i.i.mt76_aggr_release.exit.i53.i_crit_edge, label %if.end.i.i.i

while.body.i.i.mt76_aggr_release.exit.i53.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_aggr_release.exit.i53.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  %68 = ptrtoint ptr %nframes1.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %nframes1.i, align 4
  %dec.i.i50.i = add i16 %69, -1
  store i16 %dec.i.i50.i, ptr %nframes1.i, align 4
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i, align 4
  %72 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %frames, ptr %66, align 8
  %prev10.i.i.i.i.i51.i = getelementptr inbounds %struct.anon, ptr %66, i32 0, i32 1
  %73 = ptrtoint ptr %prev10.i.i.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %prev10.i.i.i.i.i51.i, align 4
  store volatile ptr %66, ptr %prev.i, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %66, ptr %71, align 4
  %75 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %qlen.i, align 4
  %add.i.i.i.i.i52.i = add i32 %76, 1
  store volatile i32 %add.i.i.i.i.i52.i, ptr %qlen.i, align 4
  br label %mt76_aggr_release.exit.i53.i

mt76_aggr_release.exit.i53.i:                     ; preds = %if.end.i.i.i, %while.body.i.i.mt76_aggr_release.exit.i53.i_crit_edge
  %77 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %head.i.i, align 4
  %conv.i.i.i = zext i16 %78 to i32
  %sub.i.i.i = sub nsw i32 %conv.i.i.i, %conv1.i.i.i
  %and.i.i.i = and i32 %sub.i.i.i, 4095
  %cmp.i.i.i = icmp ugt i32 %and.i.i.i, 2048
  br i1 %cmp.i.i.i, label %mt76_aggr_release.exit.i53.i.while.body.i.i_crit_edge, label %mt76_aggr_release.exit.i53.i.for.inc.i_crit_edge

mt76_aggr_release.exit.i53.i.for.inc.i_crit_edge: ; preds = %mt76_aggr_release.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

mt76_aggr_release.exit.i53.i.while.body.i.i_crit_edge: ; preds = %mt76_aggr_release.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

for.inc.i:                                        ; preds = %mt76_aggr_release.exit.i53.i.for.inc.i_crit_edge, %if.end19.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %nframes.1.i = phi i32 [ %dec.i, %if.end14.i.for.inc.i_crit_edge ], [ %nframes.077.i, %for.body.i.for.inc.i_crit_edge ], [ %dec.i, %if.end19.i.for.inc.i_crit_edge ], [ %dec.i, %mt76_aggr_release.exit.i53.i.for.inc.i_crit_edge ]
  %add20.i = add i32 %idx.076.i, 1
  %79 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %size.i.i, align 2
  %conv22.i = zext i16 %80 to i32
  %rem23.i = srem i32 %add20.i, %conv22.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem23.i, i32 %rem.zext.i)
  %cmp.not.i = icmp eq i32 %rem23.i, %rem.zext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nframes.1.i)
  %tobool11.not.i = icmp eq i32 %nframes.1.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %mt76_rx_aggr_release_head.exit.i.for.end.i_crit_edge
  %81 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %head.i.i, align 4
  %83 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %size.i.i, align 2
  %85 = urem i16 %82, %84
  %idx.013.i56.i = zext i16 %85 to i32
  %arrayidx14.i57.i = getelementptr %struct.mt76_rx_tid, ptr %add.ptr, i32 0, i32 9, i32 %idx.013.i56.i
  %86 = ptrtoint ptr %arrayidx14.i57.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx14.i57.i, align 4
  %tobool.not15.i58.i = icmp eq ptr %87, null
  br i1 %tobool.not15.i58.i, label %for.end.i.mt76_rx_aggr_check_release.exit_crit_edge, label %for.end.i.mt76_aggr_release.exit.i70.i_crit_edge

for.end.i.mt76_aggr_release.exit.i70.i_crit_edge: ; preds = %for.end.i
  br label %mt76_aggr_release.exit.i70.i

for.end.i.mt76_rx_aggr_check_release.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_rx_aggr_check_release.exit

mt76_aggr_release.exit.i70.i:                     ; preds = %mt76_aggr_release.exit.i70.i.mt76_aggr_release.exit.i70.i_crit_edge, %for.end.i.mt76_aggr_release.exit.i70.i_crit_edge
  %88 = phi ptr [ %108, %mt76_aggr_release.exit.i70.i.mt76_aggr_release.exit.i70.i_crit_edge ], [ %87, %for.end.i.mt76_aggr_release.exit.i70.i_crit_edge ]
  %arrayidx16.i63.i = phi ptr [ %arrayidx.i68.i, %mt76_aggr_release.exit.i70.i.mt76_aggr_release.exit.i70.i_crit_edge ], [ %arrayidx14.i57.i, %for.end.i.mt76_aggr_release.exit.i70.i_crit_edge ]
  %89 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %head.i.i, align 4
  %91 = add i16 %90, 1
  %92 = and i16 %91, 4095
  store i16 %92, ptr %head.i.i, align 4
  %93 = ptrtoint ptr %arrayidx16.i63.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %arrayidx16.i63.i, align 4
  %94 = ptrtoint ptr %nframes1.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %nframes1.i, align 4
  %dec.i.i64.i = add i16 %95, -1
  store i16 %dec.i.i64.i, ptr %nframes1.i, align 4
  %96 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i, align 4
  %98 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %frames, ptr %88, align 8
  %prev10.i.i.i.i.i65.i = getelementptr inbounds %struct.anon, ptr %88, i32 0, i32 1
  %99 = ptrtoint ptr %prev10.i.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %97, ptr %prev10.i.i.i.i.i65.i, align 4
  store volatile ptr %88, ptr %prev.i, align 4
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %88, ptr %97, align 4
  %101 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %qlen.i, align 4
  %add.i.i.i.i.i66.i = add i32 %102, 1
  store volatile i32 %add.i.i.i.i.i66.i, ptr %qlen.i, align 4
  %103 = load i16, ptr %head.i.i, align 4
  %104 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %size.i.i, align 2
  %106 = urem i16 %103, %105
  %idx.0.i67.i = zext i16 %106 to i32
  %arrayidx.i68.i = getelementptr %struct.mt76_rx_tid, ptr %add.ptr, i32 0, i32 9, i32 %idx.0.i67.i
  %107 = ptrtoint ptr %arrayidx.i68.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i68.i, align 4
  %tobool.not.i69.i = icmp eq ptr %108, null
  br i1 %tobool.not.i69.i, label %mt76_aggr_release.exit.i70.i.mt76_rx_aggr_check_release.exit_crit_edge, label %mt76_aggr_release.exit.i70.i.mt76_aggr_release.exit.i70.i_crit_edge

mt76_aggr_release.exit.i70.i.mt76_aggr_release.exit.i70.i_crit_edge: ; preds = %mt76_aggr_release.exit.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_aggr_release.exit.i70.i

mt76_aggr_release.exit.i70.i.mt76_rx_aggr_check_release.exit_crit_edge: ; preds = %mt76_aggr_release.exit.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_rx_aggr_check_release.exit

mt76_rx_aggr_check_release.exit:                  ; preds = %mt76_aggr_release.exit.i70.i.mt76_rx_aggr_check_release.exit_crit_edge, %for.end.i.mt76_rx_aggr_check_release.exit_crit_edge
  %109 = ptrtoint ptr %nframes1.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %.pr = load i16, ptr %nframes1.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool.not = icmp eq i16 %.pr, 0
  br i1 %tobool.not, label %mt76_rx_aggr_check_release.exit.if.end_crit_edge, label %if.then

mt76_rx_aggr_check_release.exit.if.end_crit_edge: ; preds = %mt76_rx_aggr_check_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %mt76_rx_aggr_check_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev1, align 4
  %hw = getelementptr inbounds %struct.mt76_dev, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw, align 4
  %num = getelementptr i8, ptr %work, i32 106
  %114 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %115)
  %cmp.i = icmp ugt i8 %115, 3
  %div.i = select i1 %cmp.i, i32 4, i32 10
  call void @ieee80211_queue_delayed_work(ptr noundef %113, ptr noundef %work, i32 noundef %div.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %mt76_rx_aggr_check_release.exit.if.end_crit_edge, %mt76_rx_aggr_check_release.exit.thread
  call void @mt76_rx_complete(ptr noundef %1, ptr noundef nonnull %frames, ptr noundef null) #8
  %call.i13 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i13, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %if.end
  %call1.i14 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !41
  %116 = call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i.i20 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i22 = add i32 %119, -1
  store volatile i32 %sub.i.i.i22, ptr %preempt_count.i.i.i.i21, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call fastcc void @local_bh_enable()
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %frames) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_rx_complete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !14, !16, !17, !19, !21, !23, !24, !25, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/agg-rx.c", i32 176, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mt76_rx_aggr_start.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/agg-rx.c", i32 257, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mt76_rx_aggr_start.__key.3, !5, !"__key", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mt76_rx_aggr_start.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/mediatek/mt76/agg-rx.c", i32 258, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_mt76_rx_aggr_start, !13, !"__ksymtab_mt76_rx_aggr_start", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/agg-rx.c", i32 264, i32 1}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/agg-rx.c", i32 294, i32 8}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_mt76_rx_aggr_stop, !18, !"__ksymtab_mt76_rx_aggr_stop", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/mediatek/mt76/agg-rx.c", i32 301, i32 1}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt76/agg-rx.c", i32 136, i32 8}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2157741223}
!39 = !{i64 2157752057}
!40 = !{i64 2149352404}
!41 = !{i64 2149352670}
