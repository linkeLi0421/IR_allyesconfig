; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/sdio_txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/sdio_txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76s_txrx_worker\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76s_txrx_worker\09\09\09\09"
module asm "\09.long\09__crc_mt76s_txrx_worker\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76s_txrx_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76s_txrx_worker\22\09\09\09\09\09"
module asm "__kstrtabns_mt76s_txrx_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76s_sdio_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76s_sdio_irq\09\09\09\09"
module asm "\09.long\09__crc_mt76s_sdio_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76s_sdio_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76s_sdio_irq\22\09\09\09\09\09"
module asm "__kstrtabns_mt76s_sdio_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76s_txqs_empty\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76s_txqs_empty\09\09\09\09"
module asm "\09.long\09__crc_mt76s_txqs_empty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76s_txqs_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76s_txqs_empty\22\09\09\09\09\09"
module asm "__kstrtabns_mt76s_txqs_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mt76s_intr = type { i32, ptr, %struct.anon.128, %struct.anon.129 }
%struct.anon.128 = type { ptr }
%struct.anon.129 = type { [2 x ptr], ptr }
%struct.mt76_sdio = type { %struct.mt76_worker, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x ptr], ptr, ptr, i8, %struct.wait_queue_head, %struct.anon.127, ptr }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.127 = type { i32, i32, i32, i32, i32 }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.105, i32, %struct.spinlock }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.55, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.101, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.55 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.101 = type { ptr }
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
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.mt76_queue_entry = type { %union.anon.131, %union.anon.132, [2 x i32], [2 x i16], i16, i8 }
%union.anon.131 = type { ptr }
%union.anon.132 = type { ptr }
%struct.sk_buff = type { %union.anon.56, %union.anon.59, %union.anon.60, [48 x i8], %union.anon.61, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.63, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, ptr, %union.anon.58 }
%union.anon.58 = type { ptr }
%union.anon.59 = type { ptr }
%union.anon.60 = type { i64 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { i32, ptr }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.65, i32, i32, i32, i16, i16, %union.anon.67, i32, %union.anon.68, %union.anon.69, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.65 = type { i32 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i16 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.49, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.49 = type { %struct.atomic_t }

@__kstrtab_mt76s_txrx_worker = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76s_txrx_worker = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76s_txrx_worker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76s_txrx_worker to i32), ptr @__kstrtab_mt76s_txrx_worker, ptr @__kstrtabns_mt76s_txrx_worker }, section "___ksymtab_gpl+mt76s_txrx_worker", align 4
@__kstrtab_mt76s_sdio_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76s_sdio_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76s_sdio_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76s_sdio_irq to i32), ptr @__kstrtab_mt76s_sdio_irq, ptr @__kstrtabns_mt76s_sdio_irq }, section "___ksymtab_gpl+mt76s_sdio_irq", align 4
@__kstrtab_mt76s_txqs_empty = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76s_txqs_empty = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76s_txqs_empty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76s_txqs_empty to i32), ptr @__kstrtab_mt76s_txqs_empty, ptr @__kstrtabns_mt76s_txqs_empty }, section "___ksymtab_gpl+mt76s_txqs_empty", align 4
@__mt76s_xmit_queue._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 219, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sdio write failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__mt76s_xmit_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/mediatek/mt76/sdio_txrx.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__mt76s_xmit_queue._entry_ptr = internal global ptr @__mt76s_xmit_queue._entry, section ".printk_index", align 4
@__tracepoint_dev_irq = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/mediatek/mt76/trace.h\00", [53 x i8] zeroinitializer }, align 32
@trace_dev_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mt76s_rx_run_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdio read data failed:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt76s_rx_run_queue\00", [45 x i8] zeroinitializer }, align 32
@mt76s_rx_run_queue._entry_ptr = internal global ptr @mt76s_rx_run_queue._entry, section ".printk_index", align 4
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 219, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [46 x i8] c"../drivers/net/wireless/mediatek/mt76/trace.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 59, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 108, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private constant [50 x i8] c"../drivers/net/wireless/mediatek/mt76/sdio_txrx.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 107, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 717, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 1160, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_mt76s_sdio_irq, ptr @__ksymtab_mt76s_txqs_empty, ptr @__ksymtab_mt76s_txrx_worker, ptr @__mt76s_xmit_queue._entry, ptr @__mt76s_xmit_queue._entry_ptr, ptr @mt76s_rx_run_queue._entry, ptr @mt76s_rx_run_queue._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76s_rx_run_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76s_txrx_worker(ptr noundef %sdio) #0 align 64 {
entry:
  %intr.i = alloca %struct.mt76s_intr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sdio, i32 -10788
  %func = getelementptr inbounds %struct.mt76_sdio, ptr %sdio, i32 0, i32 5
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #9
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  tail call void @sdio_writel(ptr noundef %3, i32 noundef 2, i32 noundef 4, ptr noundef null) #9
  %q_tx = getelementptr i8, ptr %sdio, i32 -10772
  %q_mcu = getelementptr i8, ptr %sdio, i32 -3444
  %4 = getelementptr inbounds %struct.mt76s_intr, ptr %intr.i, i32 0, i32 2
  %parse_irq.i = getelementptr i8, ptr %sdio, i32 188
  %net_worker.i = getelementptr i8, ptr %sdio, i32 24
  %state.i.i = getelementptr i8, ptr %sdio, i32 32
  %sched.i.i = getelementptr i8, ptr %sdio, i32 168
  %pse_mcu_quota177.i.i = getelementptr i8, ptr %sdio, i32 176
  %ple_data_quota183.i.i = getelementptr i8, ptr %sdio, i32 172
  %state = getelementptr i8, ptr %sdio, i32 -10776
  %arrayidx.1.i = getelementptr i8, ptr %sdio, i32 -10768
  %arrayidx.2.i = getelementptr i8, ptr %sdio, i32 -10764
  %arrayidx.3.i = getelementptr i8, ptr %sdio, i32 -10760
  %arrayidx.4.i = getelementptr i8, ptr %sdio, i32 -10756
  %wait = getelementptr inbounds %struct.mt76_sdio, ptr %sdio, i32 0, i32 8
  %arrayidx.1 = getelementptr i8, ptr %sdio, i32 -10768
  %arrayidx.2 = getelementptr i8, ptr %sdio, i32 -10764
  %arrayidx.3 = getelementptr i8, ptr %sdio, i32 -10760
  %arrayidx.4 = getelementptr i8, ptr %sdio, i32 -10756
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %5 = ptrtoint ptr %q_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q_tx, align 4
  %call = call fastcc i32 @mt76s_tx_run_queue(ptr noundef %add.ptr, ptr noundef %6)
  %7 = call i32 @llvm.smax.i32(i32 %call, i32 0)
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %call.1 = call fastcc i32 @mt76s_tx_run_queue(ptr noundef %add.ptr, ptr noundef %9)
  %10 = call i32 @llvm.smax.i32(i32 %call.1, i32 0)
  %spec.select.1 = add nuw i32 %10, %7
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2, align 4
  %call.2 = call fastcc i32 @mt76s_tx_run_queue(ptr noundef %add.ptr, ptr noundef %12)
  %13 = call i32 @llvm.smax.i32(i32 %call.2, i32 0)
  %spec.select.2 = add i32 %13, %spec.select.1
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  %call.3 = call fastcc i32 @mt76s_tx_run_queue(ptr noundef %add.ptr, ptr noundef %15)
  %16 = call i32 @llvm.smax.i32(i32 %call.3, i32 0)
  %spec.select.3 = add i32 %16, %spec.select.2
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.4, align 4
  %call.4 = call fastcc i32 @mt76s_tx_run_queue(ptr noundef %add.ptr, ptr noundef %18)
  %19 = call i32 @llvm.smax.i32(i32 %call.4, i32 0)
  %spec.select.4 = add i32 %19, %spec.select.3
  %20 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %q_mcu, align 16
  %call4 = call fastcc i32 @mt76s_tx_run_queue(ptr noundef %add.ptr, ptr noundef %21)
  %22 = call i32 @llvm.smax.i32(i32 %call4, i32 0)
  %spec.select50 = add i32 %22, %spec.select.4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %intr.i) #9
  %23 = call ptr @memset(ptr %intr.i, i32 255, i32 24)
  %24 = ptrtoint ptr %parse_irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parse_irq.i, align 4
  %call.i = call i32 %25(ptr noundef %add.ptr, ptr noundef nonnull %intr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.mt76s_rx_handler.exit_crit_edge

do.body.mt76s_rx_handler.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt76s_rx_handler.exit

if.end.i:                                         ; preds = %do.body
  %26 = ptrtoint ptr %intr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %intr.i, align 4
  call fastcc void @trace_dev_irq(ptr noundef %add.ptr, i32 noundef %27) #9
  %28 = ptrtoint ptr %intr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %intr.i, align 4
  %and.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = call fastcc i32 @mt76s_rx_run_queue(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %intr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp sgt i32 %call4.i, 0
  br i1 %cmp.i, label %if.then5.i, label %if.then3.i.if.end7.i_crit_edge

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then3.i
  %30 = ptrtoint ptr %net_worker.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_worker.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.then5.i.if.end7.i_crit_edge, label %if.end.i.i

if.then5.i.if.end7.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.end.i.i:                                       ; preds = %if.then5.i
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end7.i_crit_edge

if.end.i.i.if.end7.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %32 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i.i, align 4
  %34 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool4.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.if.end7.i_crit_edge

land.lhs.true.i.i.if.end7.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %net_worker.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net_worker.i, align 4
  %call7.i.i = call i32 @wake_up_process(ptr noundef %36) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i.i, %land.lhs.true.i.i.if.end7.i_crit_edge, %if.end.i.i.if.end7.i_crit_edge, %if.then5.i.if.end7.i_crit_edge, %if.then3.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %nframes.0.i = phi i32 [ 0, %if.then3.i.if.end7.i_crit_edge ], [ 0, %if.end.i.if.end7.i_crit_edge ], [ %call4.i, %if.then5.i.if.end7.i_crit_edge ], [ %call4.i, %if.end.i.i.if.end7.i_crit_edge ], [ %call4.i, %land.lhs.true.i.i.if.end7.i_crit_edge ], [ %call4.i, %if.then5.i.i ]
  %37 = ptrtoint ptr %intr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %intr.i, align 4
  %and9.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.if.end18.i_crit_edge, label %if.then11.i

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then11.i:                                      ; preds = %if.end7.i
  %call12.i = call fastcc i32 @mt76s_rx_run_queue(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %intr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp sgt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.then11.i.if.end18.i_crit_edge

if.then11.i.if.end18.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.then11.i
  %39 = ptrtoint ptr %net_worker.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_worker.i, align 4
  %tobool.not.i41.i = icmp eq ptr %40, null
  br i1 %tobool.not.i41.i, label %if.then14.i.mt76_worker_schedule.exit50.i_crit_edge, label %if.end.i45.i

if.then14.i.mt76_worker_schedule.exit50.i_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt76_worker_schedule.exit50.i

if.end.i45.i:                                     ; preds = %if.then14.i
  %call.i43.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool1.not.i44.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool1.not.i44.i, label %land.lhs.true.i47.i, label %if.end.i45.i.mt76_worker_schedule.exit50.i_crit_edge

if.end.i45.i.mt76_worker_schedule.exit50.i_crit_edge: ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt76_worker_schedule.exit50.i

land.lhs.true.i47.i:                              ; preds = %if.end.i45.i
  %41 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %state.i.i, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool4.not.i46.i = icmp eq i32 %43, 0
  br i1 %tobool4.not.i46.i, label %if.then5.i49.i, label %land.lhs.true.i47.i.mt76_worker_schedule.exit50.i_crit_edge

land.lhs.true.i47.i.mt76_worker_schedule.exit50.i_crit_edge: ; preds = %land.lhs.true.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt76_worker_schedule.exit50.i

if.then5.i49.i:                                   ; preds = %land.lhs.true.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %net_worker.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net_worker.i, align 4
  %call7.i48.i = call i32 @wake_up_process(ptr noundef %45) #9
  br label %mt76_worker_schedule.exit50.i

mt76_worker_schedule.exit50.i:                    ; preds = %if.then5.i49.i, %land.lhs.true.i47.i.mt76_worker_schedule.exit50.i_crit_edge, %if.end.i45.i.mt76_worker_schedule.exit50.i_crit_edge, %if.then14.i.mt76_worker_schedule.exit50.i_crit_edge
  %add16.i = add nuw i32 %call12.i, %nframes.0.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %mt76_worker_schedule.exit50.i, %if.then11.i.if.end18.i_crit_edge, %if.end7.i.if.end18.i_crit_edge
  %nframes.1.i = phi i32 [ %add16.i, %mt76_worker_schedule.exit50.i ], [ %nframes.0.i, %if.then11.i.if.end18.i_crit_edge ], [ %nframes.0.i, %if.end7.i.if.end18.i_crit_edge ]
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %4, align 4
  %arrayidx.i.i = getelementptr i32, ptr %47, i32 4
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %49, 65535
  %arrayidx29.i.i = getelementptr i32, ptr %47, i32 3
  %50 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx29.i.i, align 4
  %shr31.i.i = lshr i32 %51, 16
  %and50.i.i = and i32 %51, 65535
  %arrayidx69.i.i = getelementptr i32, ptr %47, i32 2
  %52 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx69.i.i, align 4
  %shr71.i.i = lshr i32 %53, 16
  %arrayidx89.i.i = getelementptr i32, ptr %47, i32 1
  %54 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx89.i.i, align 4
  %shr91.i.i = lshr i32 %55, 16
  %and110.i.i = and i32 %55, 65535
  %56 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %47, align 4
  %shr131.i.i = lshr i32 %57, 16
  %and150.i.i = and i32 %57, 65535
  %add.1.i.i = add nuw nsw i32 %and110.i.i, %shr91.i.i
  %add173.1.i.i = add nuw nsw i32 %shr31.i.i, %and.i.i
  %add.2.i.i = add nuw nsw i32 %add.1.i.i, %shr131.i.i
  %add173.2.i.i = add nuw nsw i32 %add173.1.i.i, %and50.i.i
  %add.3.i.i = add nuw nsw i32 %add.2.i.i, %and150.i.i
  %add173.3.i.i = add nuw nsw i32 %add173.2.i.i, %shr71.i.i
  %and169.i.i = and i32 %53, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.3.i.i)
  %tobool.not.i51.i = icmp eq i32 %add.3.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add173.3.i.i)
  %tobool174.not.i.i = icmp eq i32 %add173.3.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i51.i, i1 %tobool174.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169.i.i)
  %tobool176.not.i.i = icmp eq i32 %and169.i.i, 0
  %or.cond214.i.i = select i1 %or.cond.i.i, i1 %tobool176.not.i.i, i1 false
  br i1 %or.cond214.i.i, label %if.end18.i.mt76s_refill_sched_quota.exit.i_crit_edge, label %if.end.i52.i

if.end18.i.mt76s_refill_sched_quota.exit.i_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt76s_refill_sched_quota.exit.i

if.end.i52.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %pse_mcu_quota177.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pse_mcu_quota177.i.i, align 4
  %add178.i.i = add i32 %59, %and169.i.i
  store i32 %add178.i.i, ptr %pse_mcu_quota177.i.i, align 4
  %60 = ptrtoint ptr %sched.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sched.i.i, align 4
  %add181.i.i = add i32 %61, %add.3.i.i
  store i32 %add181.i.i, ptr %sched.i.i, align 4
  %62 = ptrtoint ptr %ple_data_quota183.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ple_data_quota183.i.i, align 4
  %add184.i.i = add i32 %63, %add173.3.i.i
  store i32 %add184.i.i, ptr %ple_data_quota183.i.i, align 4
  %add185.i.i = add nuw nsw i32 %add.3.i.i, %and169.i.i
  %add186.i.i = sub nsw i32 0, %add173.3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add185.i.i, i32 %add186.i.i)
  %phi.cmp.i = icmp ne i32 %add185.i.i, %add186.i.i
  %phi.cast.i = zext i1 %phi.cmp.i to i32
  br label %mt76s_refill_sched_quota.exit.i

mt76s_refill_sched_quota.exit.i:                  ; preds = %if.end.i52.i, %if.end18.i.mt76s_refill_sched_quota.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.cast.i, %if.end.i52.i ], [ 0, %if.end18.i.mt76s_refill_sched_quota.exit.i_crit_edge ]
  %add22.i = add nuw i32 %retval.0.i.i, %nframes.1.i
  br label %mt76s_rx_handler.exit

mt76s_rx_handler.exit:                            ; preds = %mt76s_refill_sched_quota.exit.i, %do.body.mt76s_rx_handler.exit_crit_edge
  %retval.0.i = phi i32 [ %add22.i, %mt76s_refill_sched_quota.exit.i ], [ %call.i, %do.body.mt76s_rx_handler.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %intr.i) #9
  %64 = call i32 @llvm.smax.i32(i32 %retval.0.i, i32 0)
  %nframes.3 = add i32 %spec.select50, %64
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state, align 4
  %67 = and i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not = icmp eq i32 %67, 0
  br i1 %tobool.not, label %lor.lhs.false, label %mt76s_rx_handler.exit.if.then20_crit_edge

mt76s_rx_handler.exit.if.then20_crit_edge:        ; preds = %mt76s_rx_handler.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

lor.lhs.false:                                    ; preds = %mt76s_rx_handler.exit
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state, align 4
  %70 = and i32 %69, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool19.not = icmp eq i32 %70, 0
  br i1 %tobool19.not, label %lor.lhs.false.do.cond_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

lor.lhs.false.do.cond_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %mt76s_rx_handler.exit.if.then20_crit_edge
  %71 = ptrtoint ptr %q_tx to i32
  call void @__asan_load4_noabort(i32 %71)
  %q.0.i = load ptr, ptr %q_tx, align 4
  %first.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.i, i32 0, i32 5
  %72 = ptrtoint ptr %first.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %first.i, align 4
  %head.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.i, i32 0, i32 6
  %74 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %head.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %75)
  %cmp4.not.i = icmp eq i16 %73, %75
  br i1 %cmp4.not.i, label %for.cond.i, label %if.then20.do.cond_crit_edge

if.then20.do.cond_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

for.cond.i:                                       ; preds = %if.then20
  %76 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %q.0.1.i = load ptr, ptr %arrayidx.1.i, align 4
  %first.1.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.1.i, i32 0, i32 5
  %77 = ptrtoint ptr %first.1.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %first.1.i, align 4
  %head.1.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.1.i, i32 0, i32 6
  %79 = ptrtoint ptr %head.1.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %head.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %80)
  %cmp4.not.1.i = icmp eq i16 %78, %80
  br i1 %cmp4.not.1.i, label %for.cond.1.i, label %for.cond.i.do.cond_crit_edge

for.cond.i.do.cond_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

for.cond.1.i:                                     ; preds = %for.cond.i
  %81 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %q.0.2.i = load ptr, ptr %arrayidx.2.i, align 4
  %first.2.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.2.i, i32 0, i32 5
  %82 = ptrtoint ptr %first.2.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %first.2.i, align 4
  %head.2.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.2.i, i32 0, i32 6
  %84 = ptrtoint ptr %head.2.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %head.2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %83, i16 %85)
  %cmp4.not.2.i = icmp eq i16 %83, %85
  br i1 %cmp4.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.cond_crit_edge

for.cond.1.i.do.cond_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %86 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %q.0.3.i = load ptr, ptr %arrayidx.3.i, align 4
  %first.3.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.3.i, i32 0, i32 5
  %87 = ptrtoint ptr %first.3.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %first.3.i, align 4
  %head.3.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.3.i, i32 0, i32 6
  %89 = ptrtoint ptr %head.3.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %head.3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %90)
  %cmp4.not.3.i = icmp eq i16 %88, %90
  br i1 %cmp4.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.cond_crit_edge

for.cond.2.i.do.cond_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %91 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %q.0.4.i = load ptr, ptr %arrayidx.4.i, align 4
  %first.4.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.4.i, i32 0, i32 5
  %92 = ptrtoint ptr %first.4.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %first.4.i, align 4
  %head.4.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.4.i, i32 0, i32 6
  %94 = ptrtoint ptr %head.4.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %head.4.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %93, i16 %95)
  %cmp4.not.4.i = icmp eq i16 %93, %95
  br i1 %cmp4.not.4.i, label %mt76s_txqs_empty.exit, label %for.cond.3.i.do.cond_crit_edge

for.cond.3.i.do.cond_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

mt76s_txqs_empty.exit:                            ; preds = %for.cond.3.i
  %96 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %96)
  %q.0.5.i = load ptr, ptr %q_mcu, align 4
  %first.5.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.5.i, i32 0, i32 5
  %97 = ptrtoint ptr %first.5.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %first.5.i, align 4
  %head.5.i = getelementptr inbounds %struct.mt76_queue, ptr %q.0.5.i, i32 0, i32 6
  %99 = ptrtoint ptr %head.5.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %head.5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %100)
  %cmp4.not.5.i = icmp eq i16 %98, %100
  br i1 %cmp4.not.5.i, label %if.else, label %mt76s_txqs_empty.exit.do.cond_crit_edge

mt76s_txqs_empty.exit.do.cond_crit_edge:          ; preds = %mt76s_txqs_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.else:                                          ; preds = %mt76s_txqs_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %do.cond

do.cond:                                          ; preds = %if.else, %mt76s_txqs_empty.exit.do.cond_crit_edge, %for.cond.3.i.do.cond_crit_edge, %for.cond.2.i.do.cond_crit_edge, %for.cond.1.i.do.cond_crit_edge, %for.cond.i.do.cond_crit_edge, %if.then20.do.cond_crit_edge, %lor.lhs.false.do.cond_crit_edge
  %cmp25 = icmp sgt i32 %nframes.3, 0
  br i1 %cmp25, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %func, align 4
  call void @sdio_writel(ptr noundef %102, i32 noundef 1, i32 noundef 4, ptr noundef null) #9
  %103 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %func, align 4
  call void @sdio_release_host(ptr noundef %104) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76s_tx_run_queue(ptr noundef %dev, ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %q_mcu = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_mcu, align 16
  %cmp = icmp eq ptr %1, %q
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %qid1 = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 15
  %2 = ptrtoint ptr %qid1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %qid1, align 4
  %conv = zext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.false ], [ 5, %entry.cond.end_crit_edge ]
  %first = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 5
  %head = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 6
  %4 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %first, align 4
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %head, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp4.not227 = icmp eq i16 %5, %7
  br i1 %cmp4.not227, label %cond.end.if.end88_crit_edge, label %while.body.lr.ph

cond.end.if.end88_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

while.body.lr.ph:                                 ; preds = %cond.end
  %entry6 = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 3
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %deficit.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9, i32 1
  %pse_page_size.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9
  %sched.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 6
  %ple_data_quota.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 6, i32 4
  %hw_ver.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 4
  %pse_mcu_quota.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 8
  %xmit_buf = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 5, i32 3
  %arrayidx43 = getelementptr [6 x ptr], ptr %xmit_buf, i32 0, i32 %cond
  %func.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 1
  %ndesc = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i16 [ %5, %while.body.lr.ph ], [ %90, %cleanup.while.body_crit_edge ]
  %len.0233 = phi i32 [ 0, %while.body.lr.ph ], [ %len.2, %cleanup.while.body_crit_edge ]
  %nframes.0231 = phi i32 [ 0, %while.body.lr.ph ], [ %nframes.2, %cleanup.while.body_crit_edge ]
  %ple_sz.0230 = phi i32 [ 0, %while.body.lr.ph ], [ %ple_sz.3, %cleanup.while.body_crit_edge ]
  %pse_sz.0228 = phi i32 [ 0, %while.body.lr.ph ], [ %pse_sz.2, %cleanup.while.body_crit_edge ]
  %conv2 = zext i16 %8 to i32
  %9 = ptrtoint ptr %entry6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry6, align 4
  %arrayidx8 = getelementptr %struct.mt76_queue_entry, ptr %10, i32 %conv2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not = icmp eq i32 %16, 0
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx8, align 4
  br i1 %tobool16.not, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !44

do.body3.i.i:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

__skb_put_zero.exit:                              ; preds = %if.then17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %23 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %24, 4
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %22, align 1
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx8, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 6
  %30 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len19, align 4
  %32 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %func.i, align 4
  %cur_blksize.i = getelementptr inbounds %struct.sdio_func, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %cur_blksize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_blksize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %31)
  %cmp.i = icmp ult i32 %35, %31
  br i1 %cmp.i, label %if.then.i, label %__skb_put_zero.exit.if.end.i_crit_edge

__skb_put_zero.exit.if.end.i_crit_edge:           ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %31, -1
  %add.i = add i32 %sub.i, %35
  %36 = urem i32 %add.i, %35
  %mul.i = sub i32 %add.i, %36
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %__skb_put_zero.exit.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %mul.i, %if.then.i ], [ %31, %__skb_put_zero.exit.if.end.i_crit_edge ]
  %call.i = tail call i32 @sdio_writesb(ptr noundef %33, i32 noundef 52, ptr noundef %29, i32 noundef %len.addr.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %cleanup.thread205

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.thread205:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %37 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev5.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str, i32 noundef %call.i) #12
  br label %cleanup90

if.end24:                                         ; preds = %if.end
  %len25 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %39 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len25, align 4
  %add = add i32 %40, 3
  %div159 = and i32 %add, 252
  %sub27 = sub i32 %div159, %40
  %conv28 = trunc i32 %sub27 to i8
  %conv31 = and i32 %sub27, 255
  %add30 = add i32 %len.0233, -65533
  %add32 = add i32 %add30, %40
  %41 = add i32 %add32, %conv31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %41)
  %cmp34 = icmp ult i32 %41, -65537
  br i1 %cmp34, label %if.end24.while.end_crit_edge, label %if.end37

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end37:                                         ; preds = %if.end24
  %42 = getelementptr %struct.mt76_queue_entry, ptr %10, i32 %conv2, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = ptrtoint ptr %deficit.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %deficit.i, align 4
  %47 = ptrtoint ptr %pse_page_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pse_page_size.i, align 4
  %add.i162 = add i32 %44, -1
  %add2.i = add i32 %add.i162, %46
  %sub.i163 = add i32 %add2.i, %48
  %div.i = sdiv i32 %sub.i163, %48
  br i1 %cmp, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end37
  %49 = ptrtoint ptr %hw_ver.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hw_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp.i164 = icmp eq i8 %50, 1
  %spec.select.i = select i1 %cmp.i164, i32 1, i32 %div.i
  %51 = ptrtoint ptr %pse_mcu_quota.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pse_mcu_quota.i, align 4
  %add9.i = add i32 %spec.select.i, %pse_sz.0228
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %add9.i)
  %cmp10.i = icmp slt i32 %52, %add9.i
  br i1 %cmp10.i, label %if.then7.i.while.end_crit_edge, label %if.then7.i.if.end42_crit_edge

if.then7.i.if.end42_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then7.i.while.end_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.else.i:                                        ; preds = %if.end37
  %53 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sched.i, align 4
  %add15.i = add i32 %div.i, %pse_sz.0228
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %add15.i)
  %cmp16.i = icmp slt i32 %54, %add15.i
  br i1 %cmp16.i, label %if.else.i.while.end_crit_edge, label %lor.lhs.false.i

if.else.i.while.end_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.lhs.false.i:                                  ; preds = %if.else.i
  %55 = ptrtoint ptr %ple_data_quota.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ple_data_quota.i, align 4
  %add19.i = add i32 %ple_sz.0230, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add19.i)
  %cmp20.i = icmp slt i32 %56, %add19.i
  br i1 %cmp20.i, label %lor.lhs.false.i.while.end_crit_edge, label %lor.lhs.false.i.if.end42_crit_edge

lor.lhs.false.i.if.end42_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

lor.lhs.false.i.while.end_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end42:                                         ; preds = %lor.lhs.false.i.if.end42_crit_edge, %if.then7.i.if.end42_crit_edge
  %add26.i.pre-phi = phi i32 [ %add15.i, %lor.lhs.false.i.if.end42_crit_edge ], [ %add9.i, %if.then7.i.if.end42_crit_edge ]
  %ple_sz.1 = phi i32 [ %add19.i, %lor.lhs.false.i.if.end42_crit_edge ], [ %ple_sz.0230, %if.then7.i.if.end42_crit_edge ]
  %57 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx43, align 4
  %add.ptr = getelementptr i8, ptr %58, i32 %len.0233
  %data44 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %59 = ptrtoint ptr %data44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data44, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 7
  %61 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_len.i, align 8
  %sub.i165 = sub i32 %40, %62
  %63 = call ptr @memcpy(ptr %add.ptr, ptr %60, i32 %sub.i165)
  %64 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx8, align 4
  %len.i166 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %len.i166 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i166, align 4
  %data_len.i167 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 7
  %68 = ptrtoint ptr %data_len.i167 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i167, align 8
  %sub.i168 = add i32 %67, %len.0233
  %add47 = sub i32 %sub.i168, %69
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 17
  %70 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %72)
  %iter.0220 = load ptr, ptr %frag_list, align 8
  %nframes.1221 = add i32 %nframes.0231, 1
  %tobool49.not222 = icmp eq ptr %iter.0220, null
  br i1 %tobool49.not222, label %if.end42.for.end_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  br label %for.body

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end42.for.body_crit_edge
  %nframes.1225 = phi i32 [ %nframes.1, %for.body.for.body_crit_edge ], [ %nframes.1221, %if.end42.for.body_crit_edge ]
  %iter.0224 = phi ptr [ %iter.0, %for.body.for.body_crit_edge ], [ %iter.0220, %if.end42.for.body_crit_edge ]
  %len.1223 = phi i32 [ %add56, %for.body.for.body_crit_edge ], [ %add47, %if.end42.for.body_crit_edge ]
  %73 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx43, align 4
  %add.ptr52 = getelementptr i8, ptr %74, i32 %len.1223
  %data53 = getelementptr inbounds %struct.sk_buff, ptr %iter.0224, i32 0, i32 19
  %75 = ptrtoint ptr %data53 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data53, align 4
  %len54 = getelementptr inbounds %struct.sk_buff, ptr %iter.0224, i32 0, i32 6
  %77 = ptrtoint ptr %len54 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len54, align 4
  %79 = call ptr @memcpy(ptr %add.ptr52, ptr %76, i32 %78)
  %80 = load i32, ptr %len54, align 4
  %add56 = add i32 %80, %len.1223
  %81 = ptrtoint ptr %iter.0224 to i32
  call void @__asan_load4_noabort(i32 %81)
  %iter.0 = load ptr, ptr %iter.0224, align 8
  %nframes.1 = add i32 %nframes.1225, 1
  %tobool49.not = icmp eq ptr %iter.0, null
  br i1 %tobool49.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end42.for.end_crit_edge
  %len.1.lcssa = phi i32 [ %add47, %if.end42.for.end_crit_edge ], [ %add56, %for.body.for.end_crit_edge ]
  %nframes.1.lcssa = phi i32 [ %nframes.1221, %if.end42.for.end_crit_edge ], [ %nframes.1, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv28)
  %tobool58.not = icmp eq i8 %conv28, 0
  br i1 %tobool58.not, label %for.end.cleanup_crit_edge, label %if.then61, !prof !44

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then61:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx43, align 4
  %add.ptr64 = getelementptr i8, ptr %83, i32 %len.1.lcssa
  %84 = call ptr @memset(ptr %add.ptr64, i32 0, i32 %conv31)
  %add67 = add i32 %len.1.lcssa, %conv31
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %for.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %pse_sz.2 = phi i32 [ %add26.i.pre-phi, %for.end.cleanup_crit_edge ], [ %add26.i.pre-phi, %if.then61 ], [ %pse_sz.0228, %while.body.cleanup_crit_edge ], [ %pse_sz.0228, %if.end.i.cleanup_crit_edge ]
  %ple_sz.3 = phi i32 [ %ple_sz.1, %for.end.cleanup_crit_edge ], [ %ple_sz.1, %if.then61 ], [ %ple_sz.0230, %while.body.cleanup_crit_edge ], [ %ple_sz.0230, %if.end.i.cleanup_crit_edge ]
  %nframes.2 = phi i32 [ %nframes.1.lcssa, %for.end.cleanup_crit_edge ], [ %nframes.1.lcssa, %if.then61 ], [ %nframes.0231, %while.body.cleanup_crit_edge ], [ %nframes.0231, %if.end.i.cleanup_crit_edge ]
  %len.2 = phi i32 [ %len.1.lcssa, %for.end.cleanup_crit_edge ], [ %add67, %if.then61 ], [ %len.0233, %while.body.cleanup_crit_edge ], [ %len.0233, %if.end.i.cleanup_crit_edge ]
  %85 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %first, align 4
  %conv71 = zext i16 %86 to i32
  %add72 = add nuw nsw i32 %conv71, 1
  %87 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ndesc, align 4
  %rem = srem i32 %add72, %88
  %conv73 = trunc i32 %rem to i16
  store i16 %conv73, ptr %first, align 4
  %done = getelementptr %struct.mt76_queue_entry, ptr %10, i32 %conv2, i32 5
  %89 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load = load i8, ptr %done, align 2
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %done, align 2
  %90 = load i16, ptr %first, align 4
  %91 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %head, align 2
  %cmp4.not = icmp eq i16 %90, %92
  br i1 %cmp4.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %lor.lhs.false.i.while.end_crit_edge, %if.else.i.while.end_crit_edge, %if.then7.i.while.end_crit_edge, %if.end24.while.end_crit_edge
  %pse_sz.0.lcssa = phi i32 [ %pse_sz.2, %cleanup.while.end_crit_edge ], [ %pse_sz.0228, %if.end24.while.end_crit_edge ], [ %pse_sz.0228, %if.then7.i.while.end_crit_edge ], [ %pse_sz.0228, %lor.lhs.false.i.while.end_crit_edge ], [ %pse_sz.0228, %if.else.i.while.end_crit_edge ]
  %ple_sz.0.lcssa = phi i32 [ %ple_sz.3, %cleanup.while.end_crit_edge ], [ %ple_sz.0230, %if.end24.while.end_crit_edge ], [ %ple_sz.0230, %if.then7.i.while.end_crit_edge ], [ %ple_sz.0230, %lor.lhs.false.i.while.end_crit_edge ], [ %ple_sz.0230, %if.else.i.while.end_crit_edge ]
  %nframes.0.lcssa = phi i32 [ %nframes.2, %cleanup.while.end_crit_edge ], [ %nframes.0231, %if.end24.while.end_crit_edge ], [ %nframes.0231, %if.then7.i.while.end_crit_edge ], [ %nframes.0231, %lor.lhs.false.i.while.end_crit_edge ], [ %nframes.0231, %if.else.i.while.end_crit_edge ]
  %len.0.lcssa = phi i32 [ %len.2, %cleanup.while.end_crit_edge ], [ %len.0233, %if.end24.while.end_crit_edge ], [ %len.0233, %if.then7.i.while.end_crit_edge ], [ %len.0233, %lor.lhs.false.i.while.end_crit_edge ], [ %len.0233, %if.else.i.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nframes.0.lcssa)
  %tobool76.not = icmp eq i32 %nframes.0.lcssa, 0
  br i1 %tobool76.not, label %while.end.if.end88_crit_edge, label %if.then77

while.end.if.end88_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then77:                                        ; preds = %while.end
  %xmit_buf78 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 5, i32 3
  %arrayidx79 = getelementptr [6 x ptr], ptr %xmit_buf78, i32 0, i32 %cond
  %93 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx79, align 4
  %add.ptr80 = getelementptr i8, ptr %94, i32 %len.0.lcssa
  %95 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 0, ptr %add.ptr80, align 1
  %96 = load ptr, ptr %arrayidx79, align 4
  %add83 = add i32 %len.0.lcssa, 4
  %func.i169 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 1
  %97 = ptrtoint ptr %func.i169 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %func.i169, align 4
  %cur_blksize.i170 = getelementptr inbounds %struct.sdio_func, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %cur_blksize.i170 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cur_blksize.i170, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %add83)
  %cmp.i171 = icmp ult i32 %100, %add83
  br i1 %cmp.i171, label %if.then.i175, label %if.then77.if.end.i179_crit_edge

if.then77.if.end.i179_crit_edge:                  ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i179

if.then.i175:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i172 = add i32 %len.0.lcssa, 3
  %add.i173 = add i32 %sub.i172, %100
  %101 = urem i32 %add.i173, %100
  %mul.i174 = sub i32 %add.i173, %101
  br label %if.end.i179

if.end.i179:                                      ; preds = %if.then.i175, %if.then77.if.end.i179_crit_edge
  %len.addr.0.i176 = phi i32 [ %mul.i174, %if.then.i175 ], [ %add83, %if.then77.if.end.i179_crit_edge ]
  %call.i177 = tail call i32 @sdio_writesb(ptr noundef %98, i32 noundef 52, ptr noundef %96, i32 noundef %len.addr.0.i176) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool.not.i178 = icmp eq i32 %call.i177, 0
  br i1 %tobool.not.i178, label %if.end.i179.if.end88_crit_edge, label %__mt76s_xmit_queue.exit182

if.end.i179.if.end88_crit_edge:                   ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

__mt76s_xmit_queue.exit182:                       ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  %dev5.i180 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %102 = ptrtoint ptr %dev5.i180 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev5.i180, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str, i32 noundef %call.i177) #12
  br label %cleanup90

if.end88:                                         ; preds = %if.end.i179.if.end88_crit_edge, %while.end.if.end88_crit_edge, %cond.end.if.end88_crit_edge
  %nframes.0.lcssa263 = phi i32 [ %nframes.0.lcssa, %if.end.i179.if.end88_crit_edge ], [ 0, %while.end.if.end88_crit_edge ], [ 0, %cond.end.if.end88_crit_edge ]
  %ple_sz.0.lcssa262 = phi i32 [ %ple_sz.0.lcssa, %if.end.i179.if.end88_crit_edge ], [ %ple_sz.0.lcssa, %while.end.if.end88_crit_edge ], [ 0, %cond.end.if.end88_crit_edge ]
  %pse_sz.0.lcssa261 = phi i32 [ %pse_sz.0.lcssa, %if.end.i179.if.end88_crit_edge ], [ %pse_sz.0.lcssa, %while.end.if.end88_crit_edge ], [ 0, %cond.end.if.end88_crit_edge ]
  br i1 %cmp, label %if.then.i184, label %if.else.i186

if.then.i184:                                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %pse_mcu_quota.i183 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 8
  br label %mt76s_tx_update_quota.exit

if.else.i186:                                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %sched1.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 6
  %104 = ptrtoint ptr %sched1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sched1.i, align 4
  %sub2.i = sub i32 %105, %pse_sz.0.lcssa261
  store i32 %sub2.i, ptr %sched1.i, align 4
  %ple_data_quota.i185 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 6, i32 4
  br label %mt76s_tx_update_quota.exit

mt76s_tx_update_quota.exit:                       ; preds = %if.else.i186, %if.then.i184
  %ple_data_quota.sink8.i = phi ptr [ %ple_data_quota.i185, %if.else.i186 ], [ %pse_mcu_quota.i183, %if.then.i184 ]
  %ple_size.sink.i = phi i32 [ %ple_sz.0.lcssa262, %if.else.i186 ], [ %pse_sz.0.lcssa261, %if.then.i184 ]
  %106 = ptrtoint ptr %ple_data_quota.sink8.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ple_data_quota.sink8.i, align 4
  %sub4.i = sub i32 %107, %ple_size.sink.i
  store i32 %sub4.i, ptr %ple_data_quota.sink8.i, align 4
  %status_worker = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 2
  %108 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %status_worker, align 4
  %tobool.not.i188 = icmp eq ptr %109, null
  br i1 %tobool.not.i188, label %mt76s_tx_update_quota.exit.cleanup90_crit_edge, label %if.end.i190

mt76s_tx_update_quota.exit.cleanup90_crit_edge:   ; preds = %mt76s_tx_update_quota.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup90

if.end.i190:                                      ; preds = %mt76s_tx_update_quota.exit
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 0, i32 1, i32 4
  %call.i189 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool1.not.i = icmp eq i32 %call.i189, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i190.cleanup90_crit_edge

if.end.i190.cleanup90_crit_edge:                  ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup90

land.lhs.true.i:                                  ; preds = %if.end.i190
  %110 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %state.i, align 4
  %112 = and i32 %111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool4.not.i = icmp eq i32 %112, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.cleanup90_crit_edge

land.lhs.true.i.cleanup90_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup90

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %status_worker to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %status_worker, align 4
  %call7.i = tail call i32 @wake_up_process(ptr noundef %114) #9
  br label %cleanup90

cleanup90:                                        ; preds = %if.then5.i, %land.lhs.true.i.cleanup90_crit_edge, %if.end.i190.cleanup90_crit_edge, %mt76s_tx_update_quota.exit.cleanup90_crit_edge, %__mt76s_xmit_queue.exit182, %cleanup.thread205
  %retval.2 = phi i32 [ %call.i177, %__mt76s_xmit_queue.exit182 ], [ %call.i, %cleanup.thread205 ], [ %nframes.0.lcssa263, %mt76s_tx_update_quota.exit.cleanup90_crit_edge ], [ %nframes.0.lcssa263, %if.end.i190.cleanup90_crit_edge ], [ %nframes.0.lcssa263, %land.lhs.true.i.cleanup90_crit_edge ], [ %nframes.0.lcssa263, %if.then5.i ]
  ret i32 %retval.2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mt76s_txqs_empty(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %q_mcu = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 22
  %arrayidx = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %q.0 = load ptr, ptr %arrayidx, align 4
  %first = getelementptr inbounds %struct.mt76_queue, ptr %q.0, i32 0, i32 5
  %1 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %first, align 4
  %head = getelementptr inbounds %struct.mt76_queue, ptr %q.0, i32 0, i32 6
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %head, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %4)
  %cmp4.not = icmp eq i16 %2, %4
  br i1 %cmp4.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %q.0.1 = load ptr, ptr %arrayidx.1, align 4
  %first.1 = getelementptr inbounds %struct.mt76_queue, ptr %q.0.1, i32 0, i32 5
  %6 = ptrtoint ptr %first.1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %first.1, align 4
  %head.1 = getelementptr inbounds %struct.mt76_queue, ptr %q.0.1, i32 0, i32 6
  %8 = ptrtoint ptr %head.1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %head.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp4.not.1 = icmp eq i16 %7, %9
  br i1 %cmp4.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %q.0.2 = load ptr, ptr %arrayidx.2, align 4
  %first.2 = getelementptr inbounds %struct.mt76_queue, ptr %q.0.2, i32 0, i32 5
  %11 = ptrtoint ptr %first.2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %first.2, align 4
  %head.2 = getelementptr inbounds %struct.mt76_queue, ptr %q.0.2, i32 0, i32 6
  %13 = ptrtoint ptr %head.2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %head.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp4.not.2 = icmp eq i16 %12, %14
  br i1 %cmp4.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %q.0.3 = load ptr, ptr %arrayidx.3, align 4
  %first.3 = getelementptr inbounds %struct.mt76_queue, ptr %q.0.3, i32 0, i32 5
  %16 = ptrtoint ptr %first.3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %first.3, align 4
  %head.3 = getelementptr inbounds %struct.mt76_queue, ptr %q.0.3, i32 0, i32 6
  %18 = ptrtoint ptr %head.3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %head.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp4.not.3 = icmp eq i16 %17, %19
  br i1 %cmp4.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %q.0.4 = load ptr, ptr %arrayidx.4, align 4
  %first.4 = getelementptr inbounds %struct.mt76_queue, ptr %q.0.4, i32 0, i32 5
  %21 = ptrtoint ptr %first.4 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %first.4, align 4
  %head.4 = getelementptr inbounds %struct.mt76_queue, ptr %q.0.4, i32 0, i32 6
  %23 = ptrtoint ptr %head.4 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %head.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp4.not.4 = icmp eq i16 %22, %24
  br i1 %cmp4.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %25)
  %q.0.5 = load ptr, ptr %q_mcu, align 4
  %first.5 = getelementptr inbounds %struct.mt76_queue, ptr %q.0.5, i32 0, i32 5
  %26 = ptrtoint ptr %first.5 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %first.5, align 4
  %head.5 = getelementptr inbounds %struct.mt76_queue, ptr %q.0.5, i32 0, i32 6
  %28 = ptrtoint ptr %head.5 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %head.5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp4.not.5 = icmp eq i16 %27, %29
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %for.cond.cleanup_crit_edge ], [ false, %for.cond.1.cleanup_crit_edge ], [ false, %for.cond.2.cleanup_crit_edge ], [ false, %for.cond.3.cleanup_crit_edge ], [ %cmp4.not.5, %for.cond.4 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76s_sdio_irq(ptr nocapture noundef readonly %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 59, i32 0, i32 0, i32 1, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i = icmp eq i32 %12, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %call7.i = tail call i32 @wake_up_process(ptr noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dev_irq(ptr noundef %dev, i32 noundef %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_irq, i32 0, i32 1), ptr blockaddress(@trace_dev_irq, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !46

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !44

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %call42 = tail call i32 @__traceiter_dev_irq(ptr noundef null, ptr noundef %dev, i32 noundef %val, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !48
  %13 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !44

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_dev_irq.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dev_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 80, ptr noundef nonnull @.str.6) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %31 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76s_rx_run_queue(ptr noundef %dev, i32 noundef %qid, ptr nocapture noundef readonly %intr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.mt76s_intr, ptr %intr, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %num, align 4
  %arrayidx1 = getelementptr i16, ptr %1, i32 %qid
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx1, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp175.not = icmp eq i16 %3, 0
  br i1 %cmp175.not, label %entry.cleanup95_crit_edge, label %for.body.lr.ph

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

for.body.lr.ph:                                   ; preds = %entry
  %rx = getelementptr inbounds %struct.mt76s_intr, ptr %intr, i32 0, i32 3
  %arrayidx5 = getelementptr [2 x ptr], ptr %rx, i32 0, i32 %qid
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %len.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %add9, %for.body.for.body_crit_edge ]
  %i.0176 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx6 = getelementptr i16, ptr %5, i32 %i.0176
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %7 to i32
  %sub = add nuw nsw i32 %conv7, 3
  %or = or i32 %sub, 3
  %add8 = add i32 %len.0177, 1
  %add9 = add i32 %add8, %or
  %inc = add nuw nsw i32 %i.0176, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9)
  %tobool.not = icmp eq i32 %add9, 0
  br i1 %tobool.not, label %for.end.cleanup95_crit_edge, label %if.end

for.end.cleanup95_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

if.end:                                           ; preds = %for.end
  %func = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func, align 4
  %cur_blksize = getelementptr inbounds %struct.sdio_func, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %cur_blksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_blksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %11)
  %cmp10 = icmp ugt i32 %add9, %11
  br i1 %cmp10, label %if.then12, label %if.end.get_order.exit_crit_edge

if.end.get_order.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_order.exit

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub15 = add i32 %len.0177, %or
  %add16 = add i32 %sub15, %11
  %12 = urem i32 %add16, %11
  %mul = sub i32 %add16, %12
  br label %get_order.exit

get_order.exit:                                   ; preds = %if.then12, %if.end.get_order.exit_crit_edge
  %len.1 = phi i32 [ %mul, %if.then12 ], [ %add9, %if.end.get_order.exit_crit_edge ]
  %dec.i = add i32 %len.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %13 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #9, !range !51
  %sub.i.i = sub nuw nsw i32 32, %13
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 396480, i32 noundef %cond.i.i, i32 noundef 0, ptr noundef null) #9
  %tobool19.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool19.not, label %get_order.exit.cleanup95_crit_edge, label %if.end21

get_order.exit.cleanup95_crit_edge:               ; preds = %get_order.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

if.end21:                                         ; preds = %get_order.exit
  %call22 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #9
  %14 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func, align 4
  %mul24 = shl i32 %qid, 2
  %add25 = add i32 %mul24, 80
  %call26 = tail call i32 @sdio_readsb(ptr noundef %15, ptr noundef %call22, i32 noundef %add25, i32 noundef %len.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %if.end21
  %head = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 6
  %queued = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 9
  %16 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %num, align 4
  %arrayidx35178 = getelementptr i16, ptr %17, i32 %qid
  %18 = ptrtoint ptr %arrayidx35178 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx35178, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp37180.not = icmp eq i16 %19, 0
  br i1 %cmp37180.not, label %for.cond32.preheader.for.end84_crit_edge, label %for.body39.lr.ph

for.cond32.preheader.for.end84_crit_edge:         ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end84

for.body39.lr.ph:                                 ; preds = %for.cond32.preheader
  %ndesc = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 8
  %entry42 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 3
  br label %for.body39

do.end:                                           ; preds = %if.end21
  %dev30 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %20 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.8, i32 noundef %call26) #12
  %22 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i150 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i150, label %if.end.i.i, label %if.then.i.i, !prof !44

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i151 = add i32 %24, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i151, %if.then.i.i ], [ %25, %if.end.i.i ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %27 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !52

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.11) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !53
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mt76s_rx_run_queue, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !46

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %26, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup95_crit_edge

folio_put_testzero.exit.i.i.cleanup95_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %26) #9
  br label %cleanup95

for.body39:                                       ; preds = %for.inc82.for.body39_crit_edge, %for.body39.lr.ph
  %i.1182 = phi i32 [ 0, %for.body39.lr.ph ], [ %add73, %for.inc82.for.body39_crit_edge ]
  %buf.0181 = phi ptr [ %call22, %for.body39.lr.ph ], [ %add.ptr, %for.inc82.for.body39_crit_edge ]
  %30 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %head, align 2
  %conv40 = zext i16 %31 to i32
  %add41 = add nuw i32 %i.1182, %conv40
  %32 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ndesc, align 4
  %rem = srem i32 %add41, %33
  %34 = ptrtoint ptr %entry42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %entry42, align 4
  %arrayidx43 = getelementptr %struct.mt76_queue_entry, ptr %35, i32 %rem
  %36 = ptrtoint ptr %buf.0181 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf.0181, align 4
  %38 = and i32 %37, -65536
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %sub62 = add nuw nsw i32 %39, 3
  %or63 = or i32 %sub62, 3
  %add64 = add nuw nsw i32 %or63, 1
  %call65 = tail call fastcc ptr @mt76s_build_rx_skb(ptr noundef %buf.0181, i32 noundef %39, i32 noundef %add64)
  %40 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call65, ptr %arrayidx43, align 4
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %for.body39.for.end84_crit_edge, label %if.end68

for.body39.for.end84_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end84

if.end68:                                         ; preds = %for.body39
  %41 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %queued, align 4
  %add73 = add nuw nsw i32 %i.1182, 1
  %add74 = add i32 %add73, %42
  %43 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add74, i32 %44)
  %cmp76 = icmp eq i32 %add74, %44
  br i1 %cmp76, label %if.end68.for.end84_crit_edge, label %for.inc82

if.end68.for.end84_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end84

for.inc82:                                        ; preds = %if.end68
  %add.ptr = getelementptr i8, ptr %buf.0181, i32 %add64
  %45 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %num, align 4
  %arrayidx35 = getelementptr i16, ptr %46, i32 %qid
  %47 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %48 to i32
  %cmp37 = icmp ult i32 %add73, %conv36
  br i1 %cmp37, label %for.inc82.for.body39_crit_edge, label %for.inc82.for.end84_crit_edge

for.inc82.for.end84_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end84

for.inc82.for.body39_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body39

for.end84:                                        ; preds = %for.inc82.for.end84_crit_edge, %if.end68.for.end84_crit_edge, %for.body39.for.end84_crit_edge, %for.cond32.preheader.for.end84_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond32.preheader.for.end84_crit_edge ], [ %i.1182, %if.end68.for.end84_crit_edge ], [ %i.1182, %for.body39.for.end84_crit_edge ], [ %add73, %for.inc82.for.end84_crit_edge ]
  %49 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i.i152 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i152)
  %tobool.not.i.i153 = icmp eq i32 %and.i.i152, 0
  br i1 %tobool.not.i.i153, label %if.end.i.i156, label %if.then.i.i155, !prof !44

if.then.i.i155:                                   ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i154 = add i32 %51, -1
  br label %_compound_head.exit.i161

if.end.i.i156:                                    ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i161

_compound_head.exit.i161:                         ; preds = %if.end.i.i156, %if.then.i.i155
  %retval.0.i.i157 = phi i32 [ %sub.i.i154, %if.then.i.i155 ], [ %52, %if.end.i.i156 ]
  %53 = inttoptr i32 %retval.0.i.i157 to ptr
  %_refcount.i.i.i.i.i158 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 3
  %call.i.i.i.i.i.i.i159 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i158, i32 noundef 4) #9
  %54 = ptrtoint ptr %_refcount.i.i.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %_refcount.i.i.i.i.i158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i.i160 = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i.i160, label %if.then.i.i.i.i162, label %do.end5.i.i.i.i166, !prof !52

if.then.i.i.i.i162:                               ; preds = %_compound_head.exit.i161
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %53, ptr noundef nonnull @.str.11) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !53
  unreachable

do.end5.i.i.i.i166:                               ; preds = %_compound_head.exit.i161
  %call.i.i.i10.i.i.i.i163 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i158, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i158, i32 1, i32 3, i32 1) #9
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i158, ptr %_refcount.i.i.i.i.i158, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i158) #9, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i.i.i164 = extractvalue { i32, i32 } %56, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i164)
  %cmp.i.i.i.i.i.i.i165 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i164, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mt76s_rx_run_queue, %if.then.i.i.i.i.i168)) #9
          to label %folio_put_testzero.exit.i.i169 [label %if.then.i.i.i.i.i168], !srcloc !46

if.then.i.i.i.i.i168:                             ; preds = %do.end5.i.i.i.i166
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i167 = zext i1 %cmp.i.i.i.i.i.i.i165 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %53, i32 noundef -1, i32 noundef %conv.i.i.i.i.i167) #9
  br label %folio_put_testzero.exit.i.i169

folio_put_testzero.exit.i.i169:                   ; preds = %if.then.i.i.i.i.i168, %do.end5.i.i.i.i166
  br i1 %cmp.i.i.i.i.i.i.i165, label %if.then.i4.i170, label %folio_put_testzero.exit.i.i169.put_page.exit171_crit_edge

folio_put_testzero.exit.i.i169.put_page.exit171_crit_edge: ; preds = %folio_put_testzero.exit.i.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit171

if.then.i4.i170:                                  ; preds = %folio_put_testzero.exit.i.i169
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %53) #9
  br label %put_page.exit171

put_page.exit171:                                 ; preds = %if.then.i4.i170, %folio_put_testzero.exit.i.i169.put_page.exit171_crit_edge
  %lock = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %57 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %head, align 2
  %conv86 = zext i16 %58 to i32
  %add87 = add i32 %i.1.lcssa, %conv86
  %ndesc88 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 8
  %59 = ptrtoint ptr %ndesc88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ndesc88, align 4
  %rem89 = srem i32 %add87, %60
  %conv90 = trunc i32 %rem89 to i16
  store i16 %conv90, ptr %head, align 2
  %61 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %queued, align 4
  %add93 = add i32 %62, %i.1.lcssa
  store i32 %add93, ptr %queued, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup95

cleanup95:                                        ; preds = %put_page.exit171, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup95_crit_edge, %get_order.exit.cleanup95_crit_edge, %for.end.cleanup95_crit_edge, %entry.cleanup95_crit_edge
  %retval.0 = phi i32 [ %i.1.lcssa, %put_page.exit171 ], [ 0, %for.end.cleanup95_crit_edge ], [ -12, %get_order.exit.cleanup95_crit_edge ], [ %call26, %folio_put_testzero.exit.i.i.cleanup95_crit_edge ], [ %call26, %if.then.i4.i ], [ 0, %entry.cleanup95_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dev_irq(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mt76s_build_rx_skb(ptr noundef %data, i32 noundef %data_len, i32 noundef %buf_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smin.i32(i32 %data_len, i32 128)
  %call.i = tail call ptr @__alloc_skb(i32 noundef %0, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i26 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %0) #9
  %1 = call ptr @memcpy(ptr %call.i26, ptr %data, i32 %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %data_len)
  %cmp2 = icmp sgt i32 %data_len, 128
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %data, i32 %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  %sub.i = add i32 %3, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %4 = getelementptr %struct.page, ptr %2, i32 %shr.i, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !44

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %6, -1
  br label %virt_to_head_page.exit

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr %struct.page, ptr %2, i32 %shr.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  br label %virt_to_head_page.exit

virt_to_head_page.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %12 to i32
  %call6 = tail call ptr @page_address(ptr noundef %8) #9
  %sub.ptr.rhs.cast = ptrtoint ptr %call6 to i32
  %sub.ptr.sub = sub i32 %3, %sub.ptr.rhs.cast
  %sub = sub i32 %data_len, %0
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call.i, i32 noundef %conv, ptr noundef %8, i32 noundef %sub.ptr.sub, i32 noundef %sub, i32 noundef %buf_len) #9
  %13 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i27 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.not.i.i28 = icmp eq i32 %and.i.i27, 0
  br i1 %tobool.not.i.i28, label %virt_to_head_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i30, !prof !44

virt_to_head_page.exit._compound_head.exit.i_crit_edge: ; preds = %virt_to_head_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i

if.then.i.i30:                                    ; preds = %virt_to_head_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i29 = add i32 %15, -1
  %.pre = inttoptr i32 %sub.i.i29 to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i30, %virt_to_head_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %8, %virt_to_head_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i30 ]
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %17, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !52

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !57
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mt76s_build_rx_skb, %if.then.i.i.i.i)) #9
          to label %cleanup [label %if.then.i.i.i.i], !srcloc !46

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %.pre-phi, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i.i, %do.end5.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__ksymtab_mt76s_txrx_worker, !1, !"__ksymtab_mt76s_txrx_worker", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/sdio_txrx.c", i32 333, i32 1}
!2 = !{ptr @__ksymtab_mt76s_sdio_irq, !3, !"__ksymtab_mt76s_sdio_irq", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/sdio_txrx.c", i32 346, i32 1}
!4 = !{ptr @__ksymtab_mt76s_txqs_empty, !5, !"__ksymtab_mt76s_txqs_empty", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/sdio_txrx.c", i32 365, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/sdio_txrx.c", i32 219, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__mt76s_xmit_queue._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @__mt76s_xmit_queue._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/trace.h", i32 59, i32 1}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/sdio_txrx.c", i32 107, i32 3}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mt76s_rx_run_queue._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mt76s_rx_run_queue._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/mm.h", i32 717, i32 2}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2158586250}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2155035602, i64 2155036090, i64 2155035639, i64 2155035695, i64 2155035729, i64 2155035753, i64 2155035794, i64 2155035815, i64 2155035843, i64 2155035877}
!46 = !{i64 2148697877, i64 2148697882, i64 2148697895, i64 2148697939, i64 2148697973, i64 2148697994}
!47 = !{i64 2158128079}
!48 = !{i64 2158128284}
!49 = !{i64 2149345393}
!50 = !{i64 2149346429}
!51 = !{i32 0, i32 33}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2153811604, i64 2153812087, i64 2153811641, i64 2153811697, i64 2153811731, i64 2153811755, i64 2153811796, i64 2153811817, i64 2153811845, i64 2153811879}
!54 = !{i64 2148304514}
!55 = !{i64 2148219247, i64 2148219279, i64 2148219308, i64 2148219342, i64 2148219373, i64 2148219396}
!56 = !{i64 2148304743}
!57 = !{i64 2153831516, i64 2153832000, i64 2153831553, i64 2153831609, i64 2153831643, i64 2153831667, i64 2153831708, i64 2153831729, i64 2153831757, i64 2153831791}
!58 = !{i64 2148216062, i64 2148216088, i64 2148216117, i64 2148216151, i64 2148216182, i64 2148216205}
