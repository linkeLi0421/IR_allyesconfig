; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76_connac_mac.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76_connac_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76_connac_pm_wake\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_connac_pm_wake\09\09\09\09"
module asm "\09.long\09__crc_mt76_connac_pm_wake\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_connac_pm_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_connac_pm_wake\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_connac_pm_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_connac_power_save_sched\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_connac_power_save_sched\09\09\09\09"
module asm "\09.long\09__crc_mt76_connac_power_save_sched\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_connac_power_save_sched:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_connac_power_save_sched\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_connac_power_save_sched:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_connac_free_pending_tx_skbs\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_connac_free_pending_tx_skbs\09\09\09\09"
module asm "\09.long\09__crc_mt76_connac_free_pending_tx_skbs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_connac_free_pending_tx_skbs:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_connac_free_pending_tx_skbs\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_connac_free_pending_tx_skbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_connac_pm_queue_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_connac_pm_queue_skb\09\09\09\09"
module asm "\09.long\09__crc_mt76_connac_pm_queue_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_connac_pm_queue_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_connac_pm_queue_skb\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_connac_pm_queue_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_connac_pm_dequeue_skbs\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_connac_pm_dequeue_skbs\09\09\09\09"
module asm "\09.long\09__crc_mt76_connac_pm_dequeue_skbs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_connac_pm_dequeue_skbs:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_connac_pm_dequeue_skbs\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_connac_pm_dequeue_skbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.134], ptr }
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
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.133 }
%struct.anon.133 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.145], %struct.work_struct, %struct.wait_queue_head, %struct.anon.146, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.147 }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { %struct.spinlock, i32 }
%struct.anon.147 = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.130 = type { i32, i16 }

@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/mediatek/mt76/mt76_connac_mac.c\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_connac_pm_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_connac_pm_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_connac_pm_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_connac_pm_wake to i32), ptr @__kstrtab_mt76_connac_pm_wake, ptr @__kstrtabns_mt76_connac_pm_wake }, section "___ksymtab_gpl+mt76_connac_pm_wake", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_mt76_connac_power_save_sched = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_connac_power_save_sched = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_connac_power_save_sched = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_connac_power_save_sched to i32), ptr @__kstrtab_mt76_connac_power_save_sched, ptr @__kstrtabns_mt76_connac_power_save_sched }, section "___ksymtab_gpl+mt76_connac_power_save_sched", align 4
@__kstrtab_mt76_connac_free_pending_tx_skbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_connac_free_pending_tx_skbs = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_connac_free_pending_tx_skbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_connac_free_pending_tx_skbs to i32), ptr @__kstrtab_mt76_connac_free_pending_tx_skbs, ptr @__kstrtabns_mt76_connac_free_pending_tx_skbs }, section "___ksymtab_gpl+mt76_connac_free_pending_tx_skbs", align 4
@__kstrtab_mt76_connac_pm_queue_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_connac_pm_queue_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_connac_pm_queue_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_connac_pm_queue_skb to i32), ptr @__kstrtab_mt76_connac_pm_queue_skb, ptr @__kstrtabns_mt76_connac_pm_queue_skb }, section "___ksymtab_gpl+mt76_connac_pm_queue_skb", align 4
@__kstrtab_mt76_connac_pm_dequeue_skbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_connac_pm_dequeue_skbs = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_connac_pm_dequeue_skbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_connac_pm_dequeue_skbs to i32), ptr @__kstrtab_mt76_connac_pm_dequeue_skbs, ptr @__kstrtabns_mt76_connac_pm_dequeue_skbs }, section "___ksymtab_gpl+mt76_connac_pm_dequeue_skbs", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76_connac_mac.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 21, i32 7 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_mt76_connac_free_pending_tx_skbs, ptr @__ksymtab_mt76_connac_pm_dequeue_skbs, ptr @__ksymtab_mt76_connac_pm_queue_skb, ptr @__ksymtab_mt76_connac_pm_wake, ptr @__ksymtab_mt76_connac_power_save_sched, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_connac_pm_wake(ptr noundef %phy, ptr noundef %pm) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.cleanup55_crit_edge, label %if.end

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup55

if.end:                                           ; preds = %entry
  %ps_work = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ps_work) #3
  %state = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.cleanup55_crit_edge, label %if.end4

if.end.cleanup55_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup55

if.end4:                                          ; preds = %if.end
  %suspended = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 2
  %9 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %suspended, align 2, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup55_crit_edge

if.end4.cleanup55_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup55

if.end7:                                          ; preds = %if.end4
  %wq = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 58
  %11 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wq, align 32
  %wake_work = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 5
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %wake_work) #3
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 23) #3
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state, align 4
  %15 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %if.end7.cleanup55_crit_edge, label %if.then23

if.end7.cleanup55_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup55

if.then23:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #3
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #3
  %wait = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 6
  %call2583 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #3
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state, align 4
  %19 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool29.not84 = icmp eq i32 %19, 0
  br i1 %tobool29.not84, label %if.end50.thread, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  br label %cleanup

if.end50.thread:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #3
  br label %cleanup55

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then23.cleanup_crit_edge
  %__ret24.185 = phi i32 [ %__ret24.1, %cleanup.cleanup_crit_edge ], [ 300, %if.then23.cleanup_crit_edge ]
  %call47 = call i32 @schedule_timeout(i32 noundef %__ret24.185) #3
  %call25 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #3
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state, align 4
  %22 = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool29.not = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool34.not = icmp eq i32 %call47, 0
  %23 = select i1 %tobool29.not, i1 %tobool34.not, i1 false
  %__ret24.1 = select i1 %23, i32 1, i32 %call47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret24.1)
  %tobool40.not = icmp eq i32 %__ret24.1, 0
  %24 = select i1 %tobool29.not, i1 true, i1 %tobool40.not
  br i1 %24, label %if.end50, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end50:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret24.1)
  %phi.cmp = icmp eq i32 %__ret24.1, 0
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #3
  br i1 %phi.cmp, label %if.then53, label %if.end50.cleanup55_crit_edge

if.end50.cleanup55_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup55

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy, align 8
  call void @ieee80211_wake_queues(ptr noundef %26) #3
  br label %cleanup55

cleanup55:                                        ; preds = %if.then53, %if.end50.cleanup55_crit_edge, %if.end50.thread, %if.end7.cleanup55_crit_edge, %if.end4.cleanup55_crit_edge, %if.end.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %retval.0 = phi i32 [ -110, %if.then53 ], [ 0, %entry.cleanup55_crit_edge ], [ 0, %if.end.cleanup55_crit_edge ], [ 0, %if.end4.cleanup55_crit_edge ], [ 0, %if.end50.cleanup55_crit_edge ], [ 0, %if.end7.cleanup55_crit_edge ], [ 0, %if.end50.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_connac_power_save_sched(ptr noundef %phy, ptr noundef %pm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %suspended = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 2
  %8 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %suspended, align 2, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %last_activity = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 10
  %11 = ptrtoint ptr %last_activity to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_activity, align 4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 3
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state, align 4
  %14 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 18
  %call9 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %mac_work) #3
  %wq = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 58
  %15 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wq, align 32
  %ps_work = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 9
  %idle_timeout = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 11
  %17 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idle_timeout, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %ps_work, i32 noundef %18) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_connac_free_pending_tx_skbs(ptr noundef %pm, ptr noundef readnone %wcid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %txq_lock = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %txq_lock) #3
  %tobool.not = icmp eq ptr %wcid, null
  br i1 %tobool.not, label %for.inc.2.thread25, label %land.lhs.true

for.inc.2.thread25:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %skb22 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %skb22 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb22, align 4
  tail call void @consume_skb(ptr noundef %1) #3
  %2 = ptrtoint ptr %skb22 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %skb22, align 4
  %skb.124 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 1, i32 1
  %3 = ptrtoint ptr %skb.124 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb.124, align 4
  tail call void @consume_skb(ptr noundef %4) #3
  %5 = ptrtoint ptr %skb.124 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %skb.124, align 4
  %skb.226 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 2, i32 1
  %6 = ptrtoint ptr %skb.226 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb.226, align 4
  tail call void @consume_skb(ptr noundef %7) #3
  %8 = ptrtoint ptr %skb.226 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %skb.226, align 4
  br label %if.end.3

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %cmp2.not = icmp eq ptr %10, %wcid
  br i1 %cmp2.not, label %for.inc, label %land.lhs.true.land.lhs.true.1_crit_edge

land.lhs.true.land.lhs.true.1_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.1

for.inc:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %skb = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %12) #3
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %skb, align 4
  br label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %for.inc, %land.lhs.true.land.lhs.true.1_crit_edge
  %arrayidx.1 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %cmp2.not.1 = icmp eq ptr %15, %wcid
  br i1 %cmp2.not.1, label %for.inc.1, label %land.lhs.true.1.land.lhs.true.2_crit_edge

land.lhs.true.1.land.lhs.true.2_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.2

for.inc.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #5
  %skb.1 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %skb.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb.1, align 4
  tail call void @consume_skb(ptr noundef %17) #3
  %18 = ptrtoint ptr %skb.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %skb.1, align 4
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %for.inc.1, %land.lhs.true.1.land.lhs.true.2_crit_edge
  %arrayidx.2 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.2, align 4
  %cmp2.not.2 = icmp eq ptr %20, %wcid
  br i1 %cmp2.not.2, label %for.inc.2, label %land.lhs.true.2.land.lhs.true.3_crit_edge

land.lhs.true.2.land.lhs.true.3_crit_edge:        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.3

for.inc.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #5
  %skb.2 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 2, i32 1
  %21 = ptrtoint ptr %skb.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb.2, align 4
  tail call void @consume_skb(ptr noundef %22) #3
  %23 = ptrtoint ptr %skb.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %skb.2, align 4
  br label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %for.inc.2, %land.lhs.true.2.land.lhs.true.3_crit_edge
  %arrayidx.3 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3, align 4
  %cmp2.not.3 = icmp eq ptr %25, %wcid
  br i1 %cmp2.not.3, label %land.lhs.true.3.if.end.3_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3

land.lhs.true.3.if.end.3_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.3

if.end.3:                                         ; preds = %land.lhs.true.3.if.end.3_crit_edge, %for.inc.2.thread25
  %skb.3 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 3, i32 1
  %26 = ptrtoint ptr %skb.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb.3, align 4
  tail call void @consume_skb(ptr noundef %27) #3
  %28 = ptrtoint ptr %skb.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %skb.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %land.lhs.true.3.for.inc.3_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %txq_lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_connac_pm_queue_skb(ptr noundef %hw, ptr noundef %pm, ptr noundef %wcid, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %1 to i32
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %txq_lock = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %txq_lock) #3
  %skb1 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 %conv, i32 1
  %4 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 %conv
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %wcid, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %skb1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %skb1, align 4
  %dev = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %wq = getelementptr inbounds %struct.mt76_dev, ptr %9, i32 0, i32 58
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq, align 32
  %wake_work = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 5
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %wake_work) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @consume_skb(ptr noundef %skb) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %txq_lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_connac_pm_dequeue_skbs(ptr noundef %phy, ptr noundef %pm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %txq_lock = getelementptr inbounds %struct.mt76_connac_pm, ptr %pm, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %txq_lock) #3
  %arrayidx = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %skb = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %sta5 = getelementptr inbounds %struct.mt76_wcid, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %sta5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %sta5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  %add.ptr = getelementptr i8, ptr %1, i32 -268
  %spec.select = select i1 %tobool6.not, ptr null, ptr %add.ptr
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.end.if.end8_crit_edge
  %sta.0 = phi ptr [ null, %if.end.if.end8_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @mt76_tx(ptr noundef %phy, ptr noundef %sta.0, ptr noundef %1, ptr noundef nonnull %3) #3
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %skb.1 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 1, i32 1
  %8 = ptrtoint ptr %skb.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  %tobool4.not.1 = icmp eq ptr %7, null
  br i1 %tobool4.not.1, label %if.end.1.if.end8.1_crit_edge, label %land.lhs.true.1

if.end.1.if.end8.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.1

land.lhs.true.1:                                  ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  %sta5.1 = getelementptr inbounds %struct.mt76_wcid, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %sta5.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.1 = load i8, ptr %sta5.1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %tobool6.not.1 = icmp sgt i8 %bf.load.1, -1
  %add.ptr.1 = getelementptr i8, ptr %7, i32 -268
  %spec.select.1 = select i1 %tobool6.not.1, ptr null, ptr %add.ptr.1
  br label %if.end8.1

if.end8.1:                                        ; preds = %land.lhs.true.1, %if.end.1.if.end8.1_crit_edge
  %sta.0.1 = phi ptr [ null, %if.end.1.if.end8.1_crit_edge ], [ %spec.select.1, %land.lhs.true.1 ]
  tail call void @mt76_tx(ptr noundef %phy, ptr noundef %sta.0.1, ptr noundef %7, ptr noundef nonnull %9) #3
  %11 = ptrtoint ptr %skb.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %skb.1, align 4
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end8.1, %cleanup.cleanup.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %skb.2 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 2, i32 1
  %14 = ptrtoint ptr %skb.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb.2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  %tobool4.not.2 = icmp eq ptr %13, null
  br i1 %tobool4.not.2, label %if.end.2.if.end8.2_crit_edge, label %land.lhs.true.2

if.end.2.if.end8.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.2

land.lhs.true.2:                                  ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #5
  %sta5.2 = getelementptr inbounds %struct.mt76_wcid, ptr %13, i32 0, i32 9
  %16 = ptrtoint ptr %sta5.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.2 = load i8, ptr %sta5.2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.2)
  %tobool6.not.2 = icmp sgt i8 %bf.load.2, -1
  %add.ptr.2 = getelementptr i8, ptr %13, i32 -268
  %spec.select.2 = select i1 %tobool6.not.2, ptr null, ptr %add.ptr.2
  br label %if.end8.2

if.end8.2:                                        ; preds = %land.lhs.true.2, %if.end.2.if.end8.2_crit_edge
  %sta.0.2 = phi ptr [ null, %if.end.2.if.end8.2_crit_edge ], [ %spec.select.2, %land.lhs.true.2 ]
  tail call void @mt76_tx(ptr noundef %phy, ptr noundef %sta.0.2, ptr noundef %13, ptr noundef nonnull %15) #3
  %17 = ptrtoint ptr %skb.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %skb.2, align 4
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end8.2, %cleanup.1.cleanup.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %skb.3 = getelementptr %struct.mt76_connac_pm, ptr %pm, i32 0, i32 4, i32 3, i32 1
  %20 = ptrtoint ptr %skb.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb.3, align 4
  %tobool.not.3 = icmp eq ptr %21, null
  br i1 %tobool.not.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  %tobool4.not.3 = icmp eq ptr %19, null
  br i1 %tobool4.not.3, label %if.end.3.if.end8.3_crit_edge, label %land.lhs.true.3

if.end.3.if.end8.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.3

land.lhs.true.3:                                  ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #5
  %sta5.3 = getelementptr inbounds %struct.mt76_wcid, ptr %19, i32 0, i32 9
  %22 = ptrtoint ptr %sta5.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.3 = load i8, ptr %sta5.3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.3)
  %tobool6.not.3 = icmp sgt i8 %bf.load.3, -1
  %add.ptr.3 = getelementptr i8, ptr %19, i32 -268
  %spec.select.3 = select i1 %tobool6.not.3, ptr null, ptr %add.ptr.3
  br label %if.end8.3

if.end8.3:                                        ; preds = %land.lhs.true.3, %if.end.3.if.end8.3_crit_edge
  %sta.0.3 = phi ptr [ null, %if.end.3.if.end8.3_crit_edge ], [ %spec.select.3, %land.lhs.true.3 ]
  tail call void @mt76_tx(ptr noundef %phy, ptr noundef %sta.0.3, ptr noundef %19, ptr noundef nonnull %21) #3
  %23 = ptrtoint ptr %skb.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %skb.3, align 4
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end8.3, %cleanup.2.cleanup.3_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %txq_lock) #3
  %dev = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %25, i32 0, i32 26
  %26 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %cleanup.3.mt76_worker_schedule.exit_crit_edge, label %if.end.i

cleanup.3.mt76_worker_schedule.exit_crit_edge:    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt76_worker_schedule.exit

if.end.i:                                         ; preds = %cleanup.3
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %25, i32 0, i32 26, i32 2
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i.mt76_worker_schedule.exit_crit_edge

if.end.i.mt76_worker_schedule.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt76_worker_schedule.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool4.not.i = icmp eq i32 %30, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.mt76_worker_schedule.exit_crit_edge

land.lhs.true.i.mt76_worker_schedule.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt76_worker_schedule.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_worker, align 4
  %call7.i = tail call i32 @wake_up_process(ptr noundef %32) #3
  br label %mt76_worker_schedule.exit

mt76_worker_schedule.exit:                        ; preds = %if.then5.i, %land.lhs.true.i.mt76_worker_schedule.exit_crit_edge, %if.end.i.mt76_worker_schedule.exit_crit_edge, %cleanup.3.mt76_worker_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76_connac_mac.c", i32 21, i32 7}
!2 = !{ptr @__ksymtab_mt76_connac_pm_wake, !3, !"__ksymtab_mt76_connac_pm_wake", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76_connac_mac.c", i32 30, i32 1}
!4 = !{ptr @__ksymtab_mt76_connac_power_save_sched, !5, !"__ksymtab_mt76_connac_power_save_sched", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt76_connac_mac.c", i32 53, i32 1}
!6 = !{ptr @__ksymtab_mt76_connac_free_pending_tx_skbs, !7, !"__ksymtab_mt76_connac_free_pending_tx_skbs", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt76_connac_mac.c", i32 70, i32 1}
!8 = !{ptr @__ksymtab_mt76_connac_pm_queue_skb, !9, !"__ksymtab_mt76_connac_pm_queue_skb", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt76_connac_mac.c", i32 91, i32 1}
!10 = !{ptr @__ksymtab_mt76_connac_pm_dequeue_skbs, !11, !"__ksymtab_mt76_connac_pm_dequeue_skbs", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt76_connac_mac.c", i32 117, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i8 0, i8 2}
