; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/dma.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76_put_txwi\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_put_txwi\09\09\09\09"
module asm "\09.long\09__crc_mt76_put_txwi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_put_txwi:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_put_txwi\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_put_txwi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_dma_rx_poll\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_dma_rx_poll\09\09\09\09"
module asm "\09.long\09__crc_mt76_dma_rx_poll\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_dma_rx_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_dma_rx_poll\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_dma_rx_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_dma_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_dma_attach\09\09\09\09"
module asm "\09.long\09__crc_mt76_dma_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_dma_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_dma_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_dma_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_dma_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_dma_cleanup\09\09\09\09"
module asm "\09.long\09__crc_mt76_dma_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_dma_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_dma_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_dma_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.134 = type { ptr, ptr, i16 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.mt76_desc = type { i32, i32, i32, i32 }
%struct.mt76_queue_entry = type { %union.anon.131, %union.anon.132, [2 x i32], [2 x i16], i16, i8 }
%union.anon.131 = type { ptr }
%union.anon.132 = type { ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.mt76_driver_ops = type { i32, i32, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt76_txwi_cache = type { %struct.list_head, i32, ptr }
%struct.mt76_queue_regs = type { i32, i32, i32, i32 }
%struct.mt76_queue_buf = type { i32, i16, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.ieee80211_tx_status = type { ptr, ptr, ptr, ptr, ptr }
%struct.mt76_tx_info = type { [32 x %struct.mt76_queue_buf], ptr, i32, i32 }

@__kstrtab_mt76_put_txwi = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_put_txwi = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_put_txwi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_put_txwi to i32), ptr @__kstrtab_mt76_put_txwi, ptr @__kstrtabns_mt76_put_txwi }, section "___ksymtab_gpl+mt76_put_txwi", align 4
@__kstrtab_mt76_dma_rx_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_dma_rx_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_dma_rx_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_dma_rx_poll to i32), ptr @__kstrtab_mt76_dma_rx_poll, ptr @__kstrtabns_mt76_dma_rx_poll }, section "___ksymtab_gpl+mt76_dma_rx_poll", align 4
@mt76_dma_ops = internal constant { %struct.mt76_queue_ops, [56 x i8] } { %struct.mt76_queue_ops { ptr @mt76_dma_init, ptr @mt76_dma_alloc_queue, ptr @mt76_dma_tx_queue_skb, ptr @mt76_dma_tx_queue_skb_raw, ptr null, ptr @mt76_dma_rx_reset, ptr @mt76_dma_tx_cleanup, ptr @mt76_dma_rx_cleanup, ptr @mt76_dma_kick_queue, ptr @mt76_dma_queue_reset }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_dma_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_dma_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_dma_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_dma_attach to i32), ptr @__kstrtab_mt76_dma_attach, ptr @__kstrtabns_mt76_dma_attach }, section "___ksymtab_gpl+mt76_dma_attach", align 4
@__kstrtab_mt76_dma_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_dma_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_dma_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_dma_cleanup to i32), ptr @__kstrtab_mt76_dma_cleanup, ptr @__kstrtabns_mt76_dma_cleanup }, section "___ksymtab_gpl+mt76_dma_cleanup", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mt76_dma_alloc_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&q->lock\00", [23 x i8] zeroinitializer }, align 32
@mt76_dma_alloc_queue.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&q->cleanup_lock\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"mt76_dma_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 663, i32 36 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 695, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 326, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 723, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 650, i32 59 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 115, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [44 x i8] c"../drivers/net/wireless/mediatek/mt76/dma.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 116, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_mt76_dma_attach, ptr @__ksymtab_mt76_dma_cleanup, ptr @__ksymtab_mt76_dma_rx_poll, ptr @__ksymtab_mt76_put_txwi, ptr @mt76_dma_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mt76_dma_alloc_queue.__key, ptr @.str.6, ptr @mt76_dma_alloc_queue.__key.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_dma_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_dma_alloc_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_dma_alloc_queue.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_put_txwi(ptr noundef %dev, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %t, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %txwi_cache = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %txwi_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txwi_cache, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %t, ptr noundef %txwi_cache, ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %t, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %t, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %t, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %txwi_cache, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %txwi_cache to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %t, ptr %txwi_cache, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %return

return:                                           ; preds = %list_add.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_dma_rx_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1280
  %napi2 = getelementptr i8, ptr %1, i32 4656
  %sub.ptr.lhs.cast = ptrtoint ptr %napi to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %napi2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 224
  %2 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %q_rx = getelementptr i8, ptr %1, i32 6076
  %arrayidx = getelementptr [5 x %struct.mt76_queue], ptr %q_rx, i32 0, i32 %sub.ptr.div
  %tail.i.i = getelementptr inbounds %struct.mt76_queue, ptr %arrayidx, i32 0, i32 7
  %queued.i.i = getelementptr inbounds %struct.mt76_queue, ptr %arrayidx, i32 0, i32 9
  %desc.i.i = getelementptr inbounds %struct.mt76_queue, ptr %arrayidx, i32 0, i32 4
  %ndesc.i.i = getelementptr inbounds %struct.mt76_queue, ptr %arrayidx, i32 0, i32 8
  %entry1.i.i.i = getelementptr inbounds %struct.mt76_queue, ptr %arrayidx, i32 0, i32 3
  %buf_size.i.i.i = getelementptr inbounds %struct.mt76_queue, ptr %arrayidx, i32 0, i32 10
  %dev27.i.i.i = getelementptr i8, ptr %1, i32 -296
  %rx_head.i = getelementptr inbounds %struct.mt76_queue, ptr %arrayidx, i32 0, i32 17
  %buf_offset104.i = getelementptr inbounds %struct.mt76_queue, ptr %arrayidx, i32 0, i32 13
  %drv.i.i = getelementptr i8, ptr %1, i32 -304
  %arrayidx.i = getelementptr i8, ptr %1, i32 6228
  %cmp31.i = icmp eq ptr %arrayidx.i, %arrayidx
  br label %do.body

do.body:                                          ; preds = %mt76_dma_rx_process.exit.do.body_crit_edge, %rcu_read_lock.exit
  %done.0 = phi i32 [ 0, %rcu_read_lock.exit ], [ %add, %mt76_dma_rx_process.exit.do.body_crit_edge ]
  %sub = sub i32 %budget, %done.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp117.i = icmp sgt i32 %sub, 0
  br i1 %cmp117.i, label %do.body.while.body.i_crit_edge, label %do.body.mt76_dma_rx_process.exit_crit_edge

do.body.mt76_dma_rx_process.exit_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_dma_rx_process.exit

do.body.while.body.i_crit_edge:                   ; preds = %do.body
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %do.body.while.body.i_crit_edge
  %done.0118.i = phi i32 [ %done.1.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %do.body.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tail.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %8 = ptrtoint ptr %queued.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queued.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %while.body.i.mt76_dma_rx_process.exit_crit_edge, label %if.end.i.i

while.body.i.mt76_dma_rx_process.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_dma_rx_process.exit

if.end.i.i:                                       ; preds = %while.body.i
  %10 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc.i.i, align 4
  %ctrl.i.i = getelementptr %struct.mt76_desc, ptr %11, i32 %conv.i.i, i32 1
  %12 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrl.i.i, align 4
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.mt76_dma_rx_process.exit_crit_edge, label %mt76_dma_dequeue.exit.i

if.end.i.i.mt76_dma_rx_process.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_dma_rx_process.exit

mt76_dma_dequeue.exit.i:                          ; preds = %if.end.i.i
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %14 = ptrtoint ptr %ndesc.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ndesc.i.i, align 4
  %rem.i.i = srem i32 %add.i.i, %15
  %conv12.i.i = trunc i32 %rem.i.i to i16
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv12.i.i, ptr %tail.i.i, align 4
  %dec.i.i = add i32 %9, -1
  %17 = ptrtoint ptr %queued.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dec.i.i, ptr %queued.i.i, align 4
  %18 = ptrtoint ptr %entry1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entry1.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mt76_queue_entry, ptr %19, i32 %conv.i.i
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i, align 4
  %22 = ptrtoint ptr %buf_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_size.i.i.i, align 4
  %dma_addr.i.i.i = getelementptr %struct.mt76_queue_entry, ptr %19, i32 %conv.i.i, i32 2
  %24 = ptrtoint ptr %dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr.i.i.i, align 4
  %26 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %ctrl.i.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  %and.i.i.i = lshr i32 %28, 16
  %shr.i.i.i = and i32 %and.i.i.i, 16383
  %and21.i.i.i = lshr i32 %28, 30
  %29 = trunc i32 %and21.i.i.i to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %info25.i.i.i = getelementptr %struct.mt76_desc, ptr %11, i32 %conv.i.i, i32 3
  %32 = ptrtoint ptr %info25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %info25.i.i.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  %sub.i.i.i = add i32 %23, -256
  %35 = ptrtoint ptr %dev27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev27.i.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %25, i32 noundef %sub.i.i.i, i32 noundef 2, i32 noundef 0) #8
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i22 = icmp eq ptr %21, null
  br i1 %tobool.not.i22, label %mt76_dma_dequeue.exit.i.mt76_dma_rx_process.exit_crit_edge, label %if.end.i

mt76_dma_dequeue.exit.i.mt76_dma_rx_process.exit_crit_edge: ; preds = %mt76_dma_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_dma_rx_process.exit

if.end.i:                                         ; preds = %mt76_dma_dequeue.exit.i
  %38 = ptrtoint ptr %rx_head.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_head.i, align 4
  %tobool1.not.i = icmp eq ptr %39, null
  %40 = ptrtoint ptr %buf_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_size.i.i.i, align 4
  br i1 %tobool1.not.i, label %if.end4.i, label %if.end4.thread.i

if.end4.i:                                        ; preds = %if.end.i
  %sub.i = add i32 %41, -256
  %42 = ptrtoint ptr %buf_offset104.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %buf_offset104.i, align 2
  %conv.i = zext i8 %43 to i32
  %add.i = add nuw nsw i32 %shr.i.i.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add.i)
  %cmp5.i = icmp slt i32 %sub.i, %add.i
  br i1 %cmp5.i, label %if.end4.i.if.then7.i_crit_edge, label %if.end15.i

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

if.end4.thread.i:                                 ; preds = %if.end.i
  %44 = ptrtoint ptr %buf_offset104.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buf_offset104.i, align 2
  %conv105.i = zext i8 %45 to i32
  %add106.i = add nuw nsw i32 %shr.i.i.i, %conv105.i
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add106.i)
  %cmp5107.i = icmp slt i32 %41, %add106.i
  br i1 %cmp5107.i, label %if.end4.thread.i.if.then7.i_crit_edge, label %if.then13.i

if.end4.thread.i.if.then7.i_crit_edge:            ; preds = %if.end4.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.thread.i.if.then7.i_crit_edge, %if.end4.i.if.then7.i_crit_edge
  tail call void @consume_skb(ptr noundef %39) #8
  %46 = ptrtoint ptr %rx_head.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rx_head.i, align 4
  br label %free_frag.i

if.then13.i:                                      ; preds = %if.end4.thread.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool14.not.i = icmp eq i8 %31, 0
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 17
  %47 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %nr_frags1.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nr_frags1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %50)
  %cmp.i.i = icmp ult i8 %50, 17
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.thread.i.i

if.then.i.i:                                      ; preds = %if.then13.i
  %conv.i84.i = zext i8 %50 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %52 = ptrtoint ptr %21 to i32
  %sub.i.i85.i = add i32 %52, 1073741824
  %shr.i.i86.i = lshr i32 %sub.i.i85.i, 12
  %53 = getelementptr %struct.page, ptr %51, i32 %shr.i.i86.i, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %and.i.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i = add i32 %55, -1
  br label %if.end.i88.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %51, i32 %shr.i.i86.i
  %56 = ptrtoint ptr %add.ptr.i.i.i to i32
  br label %if.end.i88.i

if.end.i88.i:                                     ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %56, %if.end.i.i.i.i ]
  %57 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %call4.i.i = tail call ptr @page_address(ptr noundef %57) #8
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call4.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %52, %sub.ptr.rhs.cast.i.i
  %58 = ptrtoint ptr %buf_offset104.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %buf_offset104.i, align 2
  %conv5.i.i = zext i8 %59 to i32
  %add.i87.i = add i32 %sub.ptr.sub.i.i, %conv5.i.i
  %60 = ptrtoint ptr %buf_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_size.i.i.i, align 4
  tail call void @skb_add_rx_frag(ptr noundef nonnull %39, i32 noundef %conv.i84.i, ptr noundef %57, i32 noundef %add.i87.i, i32 noundef %shr.i.i.i, i32 noundef %61) #8
  br i1 %tobool14.not.i, label %if.then11.i.i, label %if.end.i88.i.cleanup.i_crit_edge

if.end.i88.i.cleanup.i_crit_edge:                 ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.thread.i.i:                                ; preds = %if.then13.i
  tail call void @page_frag_free(ptr noundef nonnull %21) #8
  br i1 %tobool14.not.i, label %if.else15.i.i, label %if.end.thread.i.i.cleanup.i_crit_edge

if.end.thread.i.i.cleanup.i_crit_edge:            ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then11.i.i:                                    ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %rx_head.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %rx_head.i, align 4
  %63 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %drv.i.i, align 16
  %rx_skb.i.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %rx_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_skb.i.i, align 4
  tail call void %66(ptr noundef %add.ptr, i32 noundef %sub.ptr.div, ptr noundef nonnull %39) #8
  br label %cleanup.i

if.else15.i.i:                                    ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %rx_head.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %rx_head.i, align 4
  tail call void @consume_skb(ptr noundef nonnull %39) #8
  br label %cleanup.i

if.end15.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool16.not.i = icmp eq i8 %31, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i23, label %if.end15.i.if.end23.i_crit_edge

if.end15.i.if.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true.i23:                                ; preds = %if.end15.i
  %68 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %drv.i.i, align 16
  %rx_check.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %69, i32 0, i32 9
  %70 = ptrtoint ptr %rx_check.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_check.i, align 4
  %tobool17.not.i = icmp eq ptr %71, null
  br i1 %tobool17.not.i, label %land.lhs.true.i23.if.end23.i_crit_edge, label %land.lhs.true18.i

land.lhs.true.i23.if.end23.i_crit_edge:           ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true18.i:                                ; preds = %land.lhs.true.i23
  %call21.i = tail call zeroext i1 %71(ptr noundef %add.ptr, ptr noundef nonnull %21, i32 noundef %shr.i.i.i) #8
  br i1 %call21.i, label %land.lhs.true18.i.if.end23.i_crit_edge, label %land.lhs.true18.i.free_frag.i_crit_edge

land.lhs.true18.i.free_frag.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_frag.i

land.lhs.true18.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %land.lhs.true18.i.if.end23.i_crit_edge, %land.lhs.true.i23.if.end23.i_crit_edge, %if.end15.i.if.end23.i_crit_edge
  %72 = ptrtoint ptr %buf_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buf_size.i.i.i, align 4
  %call25.i = tail call ptr @build_skb(ptr noundef nonnull %21, i32 noundef %73) #8
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.end23.i.free_frag.i_crit_edge, label %if.end28.i

if.end23.i.free_frag.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_frag.i

if.end28.i:                                       ; preds = %if.end23.i
  %74 = ptrtoint ptr %buf_offset104.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %buf_offset104.i, align 2
  %conv30.i = zext i8 %75 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call25.i, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 %conv30.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i89.i = getelementptr inbounds %struct.sk_buff, ptr %call25.i, i32 0, i32 16
  %78 = ptrtoint ptr %tail.i89.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tail.i89.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %79, i32 %conv30.i
  store ptr %add.ptr1.i.i, ptr %tail.i89.i, align 8
  br i1 %cmp31.i, label %if.then33.i, label %if.end28.i.if.end34.i_crit_edge

if.end28.i.if.end34.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then33.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call25.i, i32 0, i32 3
  %80 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %34, ptr %cb.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then33.i, %if.end28.i.if.end34.i_crit_edge
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call25.i, i32 0, i32 7
  %81 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.i.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !40

do.body3.i.i:                                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end34.i
  %83 = ptrtoint ptr %tail.i89.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tail.i89.i, align 8
  %add.ptr.i91.i = getelementptr i8, ptr %84, i32 %shr.i.i.i
  store ptr %add.ptr.i91.i, ptr %tail.i89.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call25.i, i32 0, i32 6
  %85 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len9.i.i, align 4
  %add.i92.i = add i32 %86, %shr.i.i.i
  store i32 %add.i92.i, ptr %len9.i.i, align 4
  %inc.i = add nsw i32 %done.0118.i, 1
  br i1 %tobool16.not.i, label %if.end39.i, label %if.then37.i

if.then37.i:                                      ; preds = %__skb_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %rx_head.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call25.i, ptr %rx_head.i, align 4
  br label %cleanup.i

if.end39.i:                                       ; preds = %__skb_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %drv.i.i, align 16
  %rx_skb.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %89, i32 0, i32 10
  %90 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rx_skb.i, align 4
  tail call void %91(ptr noundef %add.ptr, i32 noundef %sub.ptr.div, ptr noundef nonnull %call25.i) #8
  br label %cleanup.i

free_frag.i:                                      ; preds = %if.end23.i.free_frag.i_crit_edge, %land.lhs.true18.i.free_frag.i_crit_edge, %if.then7.i
  tail call void @page_frag_free(ptr noundef nonnull %21) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %free_frag.i, %if.end39.i, %if.then37.i, %if.else15.i.i, %if.then11.i.i, %if.end.thread.i.i.cleanup.i_crit_edge, %if.end.i88.i.cleanup.i_crit_edge
  %done.1.i = phi i32 [ %done.0118.i, %free_frag.i ], [ %inc.i, %if.then37.i ], [ %inc.i, %if.end39.i ], [ %done.0118.i, %if.end.i88.i.cleanup.i_crit_edge ], [ %done.0118.i, %if.end.thread.i.i.cleanup.i_crit_edge ], [ %done.0118.i, %if.then11.i.i ], [ %done.0118.i, %if.else15.i.i ]
  %cmp.i = icmp slt i32 %done.1.i, %sub
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.mt76_dma_rx_process.exit_crit_edge

cleanup.i.mt76_dma_rx_process.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_dma_rx_process.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

mt76_dma_rx_process.exit:                         ; preds = %cleanup.i.mt76_dma_rx_process.exit_crit_edge, %mt76_dma_dequeue.exit.i.mt76_dma_rx_process.exit_crit_edge, %if.end.i.i.mt76_dma_rx_process.exit_crit_edge, %while.body.i.mt76_dma_rx_process.exit_crit_edge, %do.body.mt76_dma_rx_process.exit_crit_edge
  %done.0.lcssa.i = phi i32 [ 0, %do.body.mt76_dma_rx_process.exit_crit_edge ], [ %done.1.i, %cleanup.i.mt76_dma_rx_process.exit_crit_edge ], [ %done.0118.i, %mt76_dma_dequeue.exit.i.mt76_dma_rx_process.exit_crit_edge ], [ %done.0118.i, %while.body.i.mt76_dma_rx_process.exit_crit_edge ], [ %done.0118.i, %if.end.i.i.mt76_dma_rx_process.exit_crit_edge ]
  tail call fastcc void @mt76_dma_rx_fill(ptr noundef %add.ptr, ptr noundef %arrayidx) #8
  tail call void @mt76_rx_poll_complete(ptr noundef %add.ptr, i32 noundef %sub.ptr.div, ptr noundef %napi) #8
  %add = add i32 %done.0.lcssa.i, %done.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.lcssa.i)
  %tobool.not = icmp ne i32 %done.0.lcssa.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp = icmp slt i32 %add, %budget
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %mt76_dma_rx_process.exit.do.body_crit_edge, label %do.end

mt76_dma_rx_process.exit.do.body_crit_edge:       ; preds = %mt76_dma_rx_process.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %mt76_dma_rx_process.exit
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i24, label %do.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

do.end.rcu_read_unlock.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %do.end
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %do.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !42
  %92 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i.i.i31 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i33 = add i32 %95, -1
  store volatile i32 %sub.i.i.i33, ptr %preempt_count.i.i.i.i32, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br i1 %cmp, label %land.lhs.true, label %rcu_read_unlock.exit.if.end_crit_edge

rcu_read_unlock.exit.if.end_crit_edge:            ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %rcu_read_unlock.exit
  %call.i34 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #8
  br i1 %call.i34, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %drv.i.i, align 16
  %rx_poll_complete = getelementptr inbounds %struct.mt76_driver_ops, ptr %97, i32 0, i32 11
  %98 = ptrtoint ptr %rx_poll_complete to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rx_poll_complete, align 4
  tail call void %99(ptr noundef %add.ptr, i32 noundef %sub.ptr.div) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %rcu_read_unlock.exit.if.end_crit_edge
  ret i32 %add
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_rx_poll_complete(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mt76_dma_attach(ptr nocapture noundef writeonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %queue_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mt76_dma_ops, ptr %queue_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_dma_cleanup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt76_worker_disable.exit_crit_edge, label %if.end.i

entry.mt76_worker_disable.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %1) #8
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 26, i32 2
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %entry.mt76_worker_disable.exit_crit_edge
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 27
  tail call void @__netif_napi_del(ptr noundef %tx_napi) #8
  tail call void @synchronize_net() #8
  %phy2 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %arrayidx = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %4, i1 noundef zeroext true)
  %5 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy2, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %mt76_worker_disable.exit.for.inc_crit_edge, label %if.then

mt76_worker_disable.exit.for.inc_crit_edge:       ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3 = getelementptr %struct.mt76_phy, ptr %6, i32 0, i32 4, i32 0
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %8, i1 noundef zeroext true)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %mt76_worker_disable.exit.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %10, i1 noundef zeroext true)
  %11 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy2, align 8
  %tobool.not.1 = icmp eq ptr %12, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.1 = getelementptr %struct.mt76_phy, ptr %12, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3.1, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %14, i1 noundef zeroext true)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.2, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %16, i1 noundef zeroext true)
  %17 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy2, align 8
  %tobool.not.2 = icmp eq ptr %18, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.2 = getelementptr %struct.mt76_phy, ptr %18, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3.2, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %20, i1 noundef zeroext true)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.3, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %22, i1 noundef zeroext true)
  %23 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy2, align 8
  %tobool.not.3 = icmp eq ptr %24, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.3 = getelementptr %struct.mt76_phy, ptr %24, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx3.3, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %26, i1 noundef zeroext true)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.4, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %28, i1 noundef zeroext true)
  %29 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy2, align 8
  %tobool.not.4 = icmp eq ptr %30, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.4 = getelementptr %struct.mt76_phy, ptr %30, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx3.4, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %32, i1 noundef zeroext true)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.5, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %34, i1 noundef zeroext true)
  %35 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy2, align 8
  %tobool.not.5 = icmp eq ptr %36, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.5 = getelementptr %struct.mt76_phy, ptr %36, i32 0, i32 4, i32 5
  %37 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx3.5, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %38, i1 noundef zeroext true)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 6
  %39 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.6, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %40, i1 noundef zeroext true)
  %41 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy2, align 8
  %tobool.not.6 = icmp eq ptr %42, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.6 = getelementptr %struct.mt76_phy, ptr %42, i32 0, i32 4, i32 6
  %43 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx3.6, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %44, i1 noundef zeroext true)
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx7 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 0
  %45 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx7, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %46, i1 noundef zeroext true)
  %arrayidx7.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 1
  %47 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx7.1, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %48, i1 noundef zeroext true)
  %arrayidx7.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 2
  %49 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx7.2, align 4
  tail call void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %50, i1 noundef zeroext true)
  %ndesc = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 0, i32 8
  %51 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool14.not = icmp eq i32 %52, 0
  br i1 %tobool14.not, label %for.inc.6.for.end21_crit_edge, label %for.body15

for.inc.6.for.end21_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.body15:                                       ; preds = %for.inc.6
  %arrayidx13 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 0
  %arrayidx16 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 0
  tail call void @__netif_napi_del(ptr noundef %arrayidx16) #8
  tail call void @synchronize_net() #8
  tail call void @mt76_dma_rx_cleanup(ptr noundef %dev, ptr noundef %arrayidx13)
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1, i32 8
  %53 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool14.not.1 = icmp eq i32 %54, 0
  br i1 %tobool14.not.1, label %for.body15.for.end21_crit_edge, label %for.body15.1

for.body15.for.end21_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.body15.1:                                     ; preds = %for.body15
  %arrayidx13.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1
  %arrayidx16.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 1
  tail call void @__netif_napi_del(ptr noundef %arrayidx16.1) #8
  tail call void @synchronize_net() #8
  tail call void @mt76_dma_rx_cleanup(ptr noundef %dev, ptr noundef %arrayidx13.1)
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2, i32 8
  %55 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool14.not.2 = icmp eq i32 %56, 0
  br i1 %tobool14.not.2, label %for.body15.1.for.end21_crit_edge, label %for.body15.2

for.body15.1.for.end21_crit_edge:                 ; preds = %for.body15.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.body15.2:                                     ; preds = %for.body15.1
  %arrayidx13.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2
  %arrayidx16.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 2
  tail call void @__netif_napi_del(ptr noundef %arrayidx16.2) #8
  tail call void @synchronize_net() #8
  tail call void @mt76_dma_rx_cleanup(ptr noundef %dev, ptr noundef %arrayidx13.2)
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3, i32 8
  %57 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool14.not.3 = icmp eq i32 %58, 0
  br i1 %tobool14.not.3, label %for.body15.2.for.end21_crit_edge, label %for.body15.3

for.body15.2.for.end21_crit_edge:                 ; preds = %for.body15.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.body15.3:                                     ; preds = %for.body15.2
  %arrayidx13.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3
  %arrayidx16.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 3
  tail call void @__netif_napi_del(ptr noundef %arrayidx16.3) #8
  tail call void @synchronize_net() #8
  tail call void @mt76_dma_rx_cleanup(ptr noundef %dev, ptr noundef %arrayidx13.3)
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4, i32 8
  %59 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool14.not.4 = icmp eq i32 %60, 0
  br i1 %tobool14.not.4, label %for.body15.3.for.end21_crit_edge, label %for.body15.4

for.body15.3.for.end21_crit_edge:                 ; preds = %for.body15.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.body15.4:                                     ; preds = %for.body15.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4
  %arrayidx16.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 4
  tail call void @__netif_napi_del(ptr noundef %arrayidx16.4) #8
  tail call void @synchronize_net() #8
  tail call void @mt76_dma_rx_cleanup(ptr noundef %dev, ptr noundef %arrayidx13.4)
  br label %for.end21

for.end21:                                        ; preds = %for.body15.4, %for.body15.3.for.end21_crit_edge, %for.body15.2.for.end21_crit_edge, %for.body15.1.for.end21_crit_edge, %for.body15.for.end21_crit_edge, %for.inc.6.for.end21_crit_edge
  tail call fastcc void @local_bh_disable() #8
  %lock.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #8
  %txwi_cache.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 21
  %61 = ptrtoint ptr %txwi_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %txwi_cache.i.i, align 4
  %cmp.i.not.i7.i = icmp eq ptr %62, %txwi_cache.i.i
  br i1 %cmp.i.not.i7.i, label %for.end21.__mt76_get_txwi.exit.thread.i_crit_edge, label %if.then.i.lr.ph.i

for.end21.__mt76_get_txwi.exit.thread.i_crit_edge: ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt76_get_txwi.exit.thread.i

if.then.i.lr.ph.i:                                ; preds = %for.end21
  %dev1.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %drv.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 11
  br label %if.then.i.i

__mt76_get_txwi.exit.thread.i:                    ; preds = %while.body.i.__mt76_get_txwi.exit.thread.i_crit_edge, %for.end21.__mt76_get_txwi.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #8
  br label %mt76_free_pending_txwi.exit

if.then.i.i:                                      ; preds = %while.body.i.if.then.i.i_crit_edge, %if.then.i.lr.ph.i
  %63 = phi ptr [ %62, %if.then.i.lr.ph.i ], [ %81, %while.body.i.if.then.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %63) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.__mt76_get_txwi.exit.i_crit_edge

if.then.i.i.__mt76_get_txwi.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt76_get_txwi.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i.i, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %__mt76_get_txwi.exit.i

__mt76_get_txwi.exit.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.__mt76_get_txwi.exit.i_crit_edge
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %63, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #8
  %cmp.not.i = icmp eq ptr %63, null
  br i1 %cmp.not.i, label %__mt76_get_txwi.exit.i.mt76_free_pending_txwi.exit_crit_edge, label %while.body.i

__mt76_get_txwi.exit.i.mt76_free_pending_txwi.exit_crit_edge: ; preds = %__mt76_get_txwi.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_free_pending_txwi.exit

while.body.i:                                     ; preds = %__mt76_get_txwi.exit.i
  %72 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev1.i, align 8
  %dma_addr.i = getelementptr inbounds %struct.mt76_txwi_cache, ptr %63, i32 0, i32 1
  %74 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_addr.i, align 4
  %76 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %drv.i, align 16
  %txwi_size.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %txwi_size.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %txwi_size.i, align 4
  %conv.i = zext i16 %79 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %73, i32 noundef %75, i32 noundef %conv.i, i32 noundef 1, i32 noundef 0) #8
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #8
  %80 = ptrtoint ptr %txwi_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %txwi_cache.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %81, %txwi_cache.i.i
  br i1 %cmp.i.not.i.i, label %while.body.i.__mt76_get_txwi.exit.thread.i_crit_edge, label %while.body.i.if.then.i.i_crit_edge

while.body.i.if.then.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

while.body.i.__mt76_get_txwi.exit.thread.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt76_get_txwi.exit.thread.i

mt76_free_pending_txwi.exit:                      ; preds = %__mt76_get_txwi.exit.i.mt76_free_pending_txwi.exit_crit_edge, %__mt76_get_txwi.exit.thread.i
  tail call fastcc void @local_bh_enable() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76_dma_tx_cleanup(ptr noundef %dev, ptr noundef %q, i1 noundef zeroext %flush) #0 align 64 {
entry:
  %entry1 = alloca %struct.mt76_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %entry1) #8
  %0 = call ptr @memset(ptr %entry1, i32 255, i32 24)
  %tobool.not = icmp eq ptr %q, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cleanup_lock = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %cleanup_lock) #8
  br i1 %flush, label %if.end.if.end5_crit_edge, label %if.else

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %q, align 4
  %dma_idx = getelementptr inbounds %struct.mt76_queue_regs, ptr %2, i32 0, i32 3
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_idx) #8, !srcloc !43
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end.if.end5_crit_edge
  %last.0 = phi i32 [ %4, %if.else ], [ -1, %if.end.if.end5_crit_edge ]
  %tail = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 7
  %queued = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 9
  %5 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp68 = icmp sgt i32 %6, 0
  br i1 %cmp68, label %land.rhs.lr.ph, label %if.end5.while.end_crit_edge

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end5
  %entry1.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 3
  %dev2.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %7 = getelementptr inbounds %struct.mt76_queue_entry, ptr %entry1, i32 0, i32 1
  %drv = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 11
  %lock.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 3
  %txwi_cache.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 21
  br label %land.rhs

land.rhs:                                         ; preds = %if.end29.land.rhs_crit_edge, %land.rhs.lr.ph
  %last.169 = phi i32 [ %last.0, %land.rhs.lr.ph ], [ %last.2, %if.end29.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tail, align 4
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %last.169, i32 %conv)
  %cmp6.not = icmp eq i32 %last.169, %conv
  br i1 %cmp6.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %10 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i = getelementptr %struct.mt76_queue_entry, ptr %11, i32 %conv
  %skip_buf0.i = getelementptr %struct.mt76_queue_entry, ptr %11, i32 %conv, i32 5
  %12 = ptrtoint ptr %skip_buf0.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %skip_buf0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.then.i, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2.i, align 8
  %dma_addr.i = getelementptr %struct.mt76_queue_entry, ptr %11, i32 %conv, i32 2
  %15 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr.i, align 4
  %dma_len.i = getelementptr %struct.mt76_queue_entry, ptr %11, i32 %conv, i32 3
  %17 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dma_len.i, align 4
  %conv.i = zext i16 %18 to i32
  call void @dma_unmap_page_attrs(ptr noundef %14, i32 noundef %16, i32 noundef %conv.i, i32 noundef 1, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.if.end.i_crit_edge
  %19 = ptrtoint ptr %skip_buf0.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load5.i = load i8, ptr %skip_buf0.i, align 2
  %20 = and i8 %bf.load5.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %bf.cast7.not.i = icmp eq i8 %20, 0
  br i1 %bf.cast7.not.i, label %if.then8.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev2.i, align 8
  %arrayidx11.i = getelementptr %struct.mt76_queue_entry, ptr %11, i32 %conv, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx13.i = getelementptr %struct.mt76_queue_entry, ptr %11, i32 %conv, i32 3, i32 1
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx13.i, align 2
  %conv14.i = zext i16 %26 to i32
  call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %24, i32 noundef %conv14.i, i32 noundef 1, i32 noundef 0) #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then8.i, %if.end.i.if.end15.i_crit_edge
  %27 = getelementptr %struct.mt76_queue_entry, ptr %11, i32 %conv, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %cmp.i = icmp eq ptr %29, inttoptr (i32 -1 to ptr)
  br i1 %cmp.i, label %if.then17.i, label %if.end15.i.if.end18.i_crit_edge

if.end15.i.if.end18.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %27, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end18.i_crit_edge
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %cmp19.i = icmp eq ptr %32, inttoptr (i32 -1 to ptr)
  br i1 %cmp19.i, label %if.then21.i, label %if.end18.i.mt76_dma_tx_cleanup_idx.exit_crit_edge

if.end18.i.mt76_dma_tx_cleanup_idx.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_dma_tx_cleanup_idx.exit

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.i, align 4
  br label %mt76_dma_tx_cleanup_idx.exit

mt76_dma_tx_cleanup_idx.exit:                     ; preds = %if.then21.i, %if.end18.i.mt76_dma_tx_cleanup_idx.exit_crit_edge
  %34 = call ptr @memcpy(ptr %entry1, ptr %arrayidx.i, i32 24)
  %35 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 24)
  call void @mt76_queue_tx_complete(ptr noundef %dev, ptr noundef nonnull %q, ptr noundef nonnull %entry1) #8
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %7, align 4
  %tobool10.not = icmp eq ptr %37, null
  br i1 %tobool10.not, label %mt76_dma_tx_cleanup_idx.exit.if.end15_crit_edge, label %if.then11

mt76_dma_tx_cleanup_idx.exit.if.end15_crit_edge:  ; preds = %mt76_dma_tx_cleanup_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %mt76_dma_tx_cleanup_idx.exit
  %38 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drv, align 16
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %and = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end.i64, label %if.then11.if.end15_crit_edge

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end.i64:                                       ; preds = %if.then11
  call void @_raw_spin_lock(ptr noundef %lock.i) #8
  %42 = ptrtoint ptr %txwi_cache.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %txwi_cache.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %37, ptr noundef %txwi_cache.i, ptr noundef %43) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i64.mt76_put_txwi.exit_crit_edge

if.end.i64.mt76_put_txwi.exit_crit_edge:          ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_put_txwi.exit

if.end.i.i.i:                                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %37, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %txwi_cache.i, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %txwi_cache.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %37, ptr %txwi_cache.i, align 4
  br label %mt76_put_txwi.exit

mt76_put_txwi.exit:                               ; preds = %if.end.i.i.i, %if.end.i64.mt76_put_txwi.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  br label %if.end15

if.end15:                                         ; preds = %mt76_put_txwi.exit, %if.then11.if.end15_crit_edge, %mt76_dma_tx_cleanup_idx.exit.if.end15_crit_edge
  br i1 %flush, label %if.end15.if.end29_crit_edge, label %land.lhs.true

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end15
  %48 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tail, align 4
  %conv18 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %last.169, i32 %conv18)
  %cmp19 = icmp eq i32 %last.169, %conv18
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %q, align 4
  %dma_idx25 = getelementptr inbounds %struct.mt76_queue_regs, ptr %51, i32 0, i32 3
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_idx25) #8, !srcloc !43
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %land.lhs.true.if.end29_crit_edge, %if.end15.if.end29_crit_edge
  %last.2 = phi i32 [ %last.169, %if.end15.if.end29_crit_edge ], [ %53, %if.then21 ], [ %last.169, %land.lhs.true.if.end29_crit_edge ]
  %54 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %queued, align 4
  %cmp = icmp sgt i32 %55, 0
  br i1 %cmp, label %if.end29.land.rhs_crit_edge, label %if.end29.while.end_crit_edge

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end29.land.rhs_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %if.end29.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end5.while.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %cleanup_lock) #8
  br i1 %flush, label %if.then32, label %while.end.if.end34_crit_edge

while.end.if.end34_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  call void @arm_heavy_mb() #8
  %desc_dma.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 16
  %56 = ptrtoint ptr %desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %desc_dma.i, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #8
  %59 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %q, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #8, !srcloc !47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  call void @arm_heavy_mb() #8
  %ndesc.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 8
  %61 = ptrtoint ptr %ndesc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ndesc.i, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62) #8
  %64 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %q, align 4
  %ring_size.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %65, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ring_size.i, i32 %63) #8, !srcloc !47
  %66 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %q, align 4
  %dma_idx.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %67, i32 0, i32 3
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_idx.i) #8, !srcloc !43
  %69 = call i32 @llvm.bswap.i32(i32 %68) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  %conv.i65 = trunc i32 %69 to i16
  %head.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 6
  %70 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i65, ptr %head.i, align 2
  %71 = ptrtoint ptr %tail to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i65, ptr %tail, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  call void @arm_heavy_mb() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %head.i, align 2
  %conv.i67 = zext i16 %73 to i32
  %74 = call i32 @llvm.bswap.i32(i32 %conv.i67) #8
  %75 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %q, align 4
  %cpu_idx.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %76, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpu_idx.i, i32 %74) #8, !srcloc !47
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %while.end.if.end34_crit_edge
  %77 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool36.not = icmp eq i32 %78, 0
  br i1 %tobool36.not, label %if.then37, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %tx_wait = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 31
  call void @__wake_up(ptr noundef %tx_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %entry1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76_dma_rx_cleanup(ptr nocapture noundef readonly %dev, ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %tail.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 7
  %queued.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 9
  %0 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queued.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i21 = icmp eq i32 %1, 0
  br i1 %tobool.not.i21, label %entry.do.end_crit_edge, label %mt76_dma_dequeue.exit.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

mt76_dma_dequeue.exit.lr.ph:                      ; preds = %entry
  %desc.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 4
  %ndesc.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 8
  %entry1.i.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 3
  %buf_size.i.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 10
  %dev27.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  br label %mt76_dma_dequeue.exit

mt76_dma_dequeue.exit:                            ; preds = %if.end.mt76_dma_dequeue.exit_crit_edge, %mt76_dma_dequeue.exit.lr.ph
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tail.i, align 4
  %conv.i = zext i16 %3 to i32
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 4
  %ctrl.i = getelementptr %struct.mt76_desc, ptr %5, i32 %conv.i, i32 1
  %6 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl.i, align 4
  %or.i = or i32 %7, 128
  store i32 %or.i, ptr %ctrl.i, align 4
  %8 = load i16, ptr %tail.i, align 4
  %conv11.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv11.i, 1
  %9 = ptrtoint ptr %ndesc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ndesc.i, align 4
  %rem.i = srem i32 %add.i, %10
  %conv12.i = trunc i32 %rem.i to i16
  store i16 %conv12.i, ptr %tail.i, align 4
  %11 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %queued.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %queued.i, align 4
  %13 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entry1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mt76_queue_entry, ptr %14, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %17 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf_size.i.i, align 4
  %dma_addr.i.i = getelementptr %struct.mt76_queue_entry, ptr %14, i32 %conv.i, i32 2
  %19 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_addr.i.i, align 4
  %sub.i.i = add i32 %18, -256
  %21 = ptrtoint ptr %dev27.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev27.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %20, i32 noundef %sub.i.i, i32 noundef 2, i32 noundef 0) #8
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.i.i, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %mt76_dma_dequeue.exit.do.end_crit_edge, label %if.end

mt76_dma_dequeue.exit.do.end_crit_edge:           ; preds = %mt76_dma_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %mt76_dma_dequeue.exit
  tail call void @page_frag_free(ptr noundef nonnull %16) #8
  %24 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %queued.i, align 4
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %if.end.mt76_dma_dequeue.exit_crit_edge

if.end.mt76_dma_dequeue.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_dma_dequeue.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %mt76_dma_dequeue.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %rx_page = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 18
  %26 = ptrtoint ptr %rx_page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_page, align 4
  %tobool2.not = icmp eq ptr %27, null
  br i1 %tobool2.not, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %28 = load ptr, ptr @mem_map, align 4
  %29 = ptrtoint ptr %27 to i32
  %sub = add i32 %29, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %28, i32 %shr
  %pagecnt_bias = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 18, i32 3
  %30 = ptrtoint ptr %pagecnt_bias to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagecnt_bias, align 4
  tail call void @__page_frag_cache_drain(ptr noundef %add.ptr, i32 noundef %31) #8
  %32 = call ptr @memset(ptr %rx_page, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76_dma_rx_fill(ptr nocapture noundef readonly %dev, ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  %qbuf = alloca %struct.mt76_queue_buf, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_size = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_size, align 4
  %sub = add i32 %1, -256
  %buf_offset = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 13
  %2 = ptrtoint ptr %buf_offset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf_offset, align 2
  %conv = zext i8 %3 to i32
  %lock = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %queued = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 9
  %ndesc = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 8
  %4 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queued, align 4
  %6 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ndesc, align 4
  %sub123 = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub123)
  %cmp24 = icmp slt i32 %5, %sub123
  br i1 %cmp24, label %while.body.lr.ph, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

while.body.lr.ph:                                 ; preds = %entry
  %rx_page = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 18
  %dev4 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %sub14 = sub i32 %sub, %conv
  %conv15 = trunc i32 %sub14 to i16
  %len16 = getelementptr inbounds %struct.mt76_queue_buf, ptr %qbuf, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %frames.025 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qbuf) #8
  %8 = ptrtoint ptr %qbuf to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %qbuf, align 8, !annotation !52
  %9 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_size, align 4
  %call.i = tail call ptr @page_frag_alloc_align(ptr noundef %rx_page, i32 noundef %10, i32 noundef 2592, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %while.body.cleanup.thread_crit_edge, label %if.end

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end:                                           ; preds = %while.body
  %11 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev4, align 8
  %call.i1 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call.i) #8
  br i1 %call.i1, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !40

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %12) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %17 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev4, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef -1) #8
  br label %if.then11

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %12, ptr noundef nonnull %call.i, i32 noundef %sub) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %call.i to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %12, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #8
  %21 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev4, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %22, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then11_crit_edge, label %cleanup

dma_map_single_attrs.exit.if.then11_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %dma_map_single_attrs.exit.if.then11_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @page_frag_free(ptr noundef nonnull %call.i) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then11, %while.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qbuf) #8
  br label %while.end

cleanup:                                          ; preds = %dma_map_single_attrs.exit
  %add = add i32 %call41.i, %conv
  %23 = ptrtoint ptr %qbuf to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %qbuf, align 8
  %24 = ptrtoint ptr %len16 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv15, ptr %len16, align 4
  %25 = call fastcc i32 @mt76_dma_add_buf(ptr noundef %q, ptr noundef nonnull %qbuf, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef null)
  %inc = add i32 %frames.025, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qbuf) #8
  %26 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %queued, align 4
  %28 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ndesc, align 4
  %sub1 = add i32 %29, -1
  %cmp = icmp slt i32 %27, %sub1
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread
  %frames.015 = phi i32 [ %frames.025, %cleanup.thread ], [ %inc, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames.015)
  %tobool18.not = icmp eq i32 %frames.015, 0
  br i1 %tobool18.not, label %while.end.if.end20_crit_edge, label %if.then19

while.end.if.end20_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %head.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 6
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %head.i, align 2
  %conv.i = zext i16 %31 to i32
  %32 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %33 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %q, align 4
  %cpu_idx.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %34, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpu_idx.i, i32 %32) #8, !srcloc !47
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %while.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt76_dma_add_buf(ptr nocapture noundef %q, ptr nocapture noundef readonly %buf, i32 noundef %nbufs, i32 noundef %info, ptr noundef %skb, ptr noundef %txwi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %txwi, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %entry2 = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry2, align 4
  %head = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 6
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %head, align 2
  %idxprom = zext i16 %3 to i32
  %4 = getelementptr %struct.mt76_queue_entry, ptr %1, i32 %idxprom, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4
  %6 = load ptr, ptr %entry2, align 4
  %7 = load i16, ptr %head, align 2
  %idxprom5 = zext i16 %7 to i32
  %skip_buf0 = getelementptr %struct.mt76_queue_entry, ptr %6, i32 %idxprom5, i32 5
  %8 = ptrtoint ptr %skip_buf0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %skip_buf0, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %skip_buf0, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbufs)
  %cmp5 = icmp sgt i32 %nbufs, 0
  br i1 %cmp5, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %head8 = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 6
  %ndesc = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 8
  %desc13 = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 4
  %entry15 = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 3
  %sub = add nsw i32 %nbufs, -1
  %sub121 = add nsw i32 %nbufs, -2
  %9 = tail call i32 @llvm.bswap.i32(i32 %info)
  %queued = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end115.for.body_crit_edge, %for.body.lr.ph
  %buf.addr.08 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr, %if.end115.for.body_crit_edge ]
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %add168, %if.end115.for.body_crit_edge ]
  %10 = ptrtoint ptr %buf.addr.08 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf.addr.08, align 4
  %12 = ptrtoint ptr %head8 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %head8, align 2
  %conv = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv, 1
  %14 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ndesc, align 4
  %rem = srem i32 %add, %15
  %conv11 = trunc i32 %rem to i16
  store i16 %conv11, ptr %head8, align 2
  %16 = ptrtoint ptr %desc13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc13, align 4
  %arrayidx14 = getelementptr %struct.mt76_desc, ptr %17, i32 %conv
  %18 = ptrtoint ptr %entry15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entry15, align 4
  %skip_unmap = getelementptr inbounds %struct.mt76_queue_buf, ptr %buf.addr.08, i32 0, i32 2
  %20 = ptrtoint ptr %skip_unmap to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %skip_unmap, align 2, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not = icmp eq i8 %21, 0
  br i1 %tobool18.not, label %for.body.if.end24_crit_edge, label %if.then19

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %skip_buf020 = getelementptr %struct.mt76_queue_entry, ptr %19, i32 %conv, i32 5
  %22 = ptrtoint ptr %skip_buf020 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load21 = load i8, ptr %skip_buf020, align 2
  %bf.set23 = or i8 %bf.load21, -128
  store i8 %bf.set23, ptr %skip_buf020, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %for.body.if.end24_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.06, i32 %sub)
  %cmp25 = icmp eq i32 %i.06, %sub
  %skip_buf1 = getelementptr %struct.mt76_queue_entry, ptr %19, i32 %conv, i32 5
  %23 = ptrtoint ptr %skip_buf1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load27 = load i8, ptr %skip_buf1, align 2
  %bf.shl = select i1 %cmp25, i8 64, i8 0
  %bf.clear28 = and i8 %bf.load27, -65
  %bf.set29 = or i8 %bf.clear28, %bf.shl
  store i8 %bf.set29, ptr %skip_buf1, align 2
  %24 = ptrtoint ptr %buf.addr.08 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf.addr.08, align 4
  %dma_addr = getelementptr %struct.mt76_queue_entry, ptr %19, i32 %conv, i32 2
  %26 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dma_addr, align 4
  %len = getelementptr inbounds %struct.mt76_queue_buf, ptr %buf.addr.08, i32 0, i32 1
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %len, align 4
  %dma_len = getelementptr %struct.mt76_queue_entry, ptr %19, i32 %conv, i32 3
  %29 = ptrtoint ptr %dma_len to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %dma_len, align 4
  %30 = load i16, ptr %len, align 4
  %conv58 = zext i16 %30 to i32
  %shl = shl nuw i32 %conv58, 16
  %and59 = and i32 %shl, 1073676288
  call void @__sanitizer_cov_trace_cmp4(i32 %i.06, i32 %sub)
  %cmp61 = icmp slt i32 %i.06, %sub
  br i1 %cmp61, label %if.then63, label %if.end24.if.end115_crit_edge

if.end24.if.end115_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then63:                                        ; preds = %if.end24
  %arrayidx64 = getelementptr %struct.mt76_queue_buf, ptr %buf.addr.08, i32 1
  %31 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx64, align 4
  %arrayidx67 = getelementptr %struct.mt76_queue_entry, ptr %19, i32 %conv, i32 2, i32 1
  %33 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx67, align 4
  %len69 = getelementptr %struct.mt76_queue_buf, ptr %buf.addr.08, i32 1, i32 1
  %34 = ptrtoint ptr %len69 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %len69, align 4
  %arrayidx71 = getelementptr %struct.mt76_queue_entry, ptr %19, i32 %conv, i32 3, i32 1
  %36 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayidx71, align 2
  %37 = load i32, ptr %arrayidx64, align 4
  %38 = load i16, ptr %len69, align 4
  %39 = and i16 %38, 16383
  %and105 = zext i16 %39 to i32
  %or = or i32 %and59, %and105
  %skip_unmap107 = getelementptr %struct.mt76_queue_buf, ptr %buf.addr.08, i32 1, i32 2
  %40 = ptrtoint ptr %skip_unmap107 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %skip_unmap107, align 2, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool108.not = icmp eq i8 %41, 0
  br i1 %tobool108.not, label %if.then63.if.end115_crit_edge, label %if.then109

if.then63.if.end115_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then109:                                       ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set113 = or i8 %bf.load27, 64
  %42 = ptrtoint ptr %skip_buf1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %bf.set113, ptr %skip_buf1, align 2
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %if.then63.if.end115_crit_edge, %if.end24.if.end115_crit_edge
  %ctrl.0 = phi i32 [ %or, %if.then109 ], [ %or, %if.then63.if.end115_crit_edge ], [ %and59, %if.end24.if.end115_crit_edge ]
  %buf1.0 = phi i32 [ %37, %if.then109 ], [ %37, %if.then63.if.end115_crit_edge ], [ 0, %if.end24.if.end115_crit_edge ]
  %or120 = or i32 %ctrl.0, 1073741824
  call void @__sanitizer_cov_trace_cmp4(i32 %i.06, i32 %sub121)
  %cmp122 = icmp eq i32 %i.06, %sub121
  %or125 = or i32 %ctrl.0, 16384
  %spec.select = select i1 %cmp122, i32 %or125, i32 %ctrl.0
  %ctrl.1 = select i1 %cmp25, i32 %or120, i32 %spec.select
  %43 = tail call i32 @llvm.bswap.i32(i32 %11)
  %44 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %43, ptr %arrayidx14, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %buf1.0)
  %buf1143 = getelementptr %struct.mt76_desc, ptr %17, i32 %conv, i32 2
  %46 = ptrtoint ptr %buf1143 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %45, ptr %buf1143, align 4
  %info153 = getelementptr %struct.mt76_desc, ptr %17, i32 %conv, i32 3
  %47 = ptrtoint ptr %info153 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %9, ptr %info153, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %ctrl.1)
  %ctrl163 = getelementptr %struct.mt76_desc, ptr %17, i32 %conv, i32 1
  %49 = ptrtoint ptr %ctrl163 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %48, ptr %ctrl163, align 4
  %50 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %queued, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %queued, align 4
  %add168 = add i32 %i.06, 2
  %add.ptr = getelementptr %struct.mt76_queue_buf, ptr %buf.addr.08, i32 2
  %cmp = icmp slt i32 %add168, %nbufs
  br i1 %cmp, label %if.end115.for.body_crit_edge, label %for.end.loopexit

if.end115.for.body_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %conv.le = zext i16 %13 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ -1, %if.end.for.end_crit_edge ], [ %conv.le, %for.end.loopexit ]
  %entry169 = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 3
  %52 = ptrtoint ptr %entry169 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %entry169, align 4
  %54 = getelementptr %struct.mt76_queue_entry, ptr %53, i32 %idx.0.lcssa, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %txwi, ptr %54, align 4
  %56 = load ptr, ptr %entry169, align 4
  %arrayidx172 = getelementptr %struct.mt76_queue_entry, ptr %56, i32 %idx.0.lcssa
  %57 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %skb, ptr %arrayidx172, align 4
  %58 = load ptr, ptr %entry169, align 4
  %wcid = getelementptr %struct.mt76_queue_entry, ptr %58, i32 %idx.0.lcssa, i32 4
  %59 = ptrtoint ptr %wcid to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %wcid, align 4
  ret i32 %idx.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76_dma_kick_queue(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %head = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 6
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %head, align 2
  %conv = zext i16 %1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %3 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q, align 4
  %cpu_idx = getelementptr inbounds %struct.mt76_queue_regs, ptr %4, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpu_idx, i32 %2) #8, !srcloc !47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_frag_alloc_align(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
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
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_dma_init(ptr noundef %dev, ptr noundef %poll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %napi_dev = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 @init_dummy_netdev(ptr noundef %napi_dev) #8
  %tx_napi_dev = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 17
  %call1 = tail call i32 @init_dummy_netdev(ptr noundef %tx_napi_dev) #8
  %hw = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.wiphy_name.exit_crit_edge

entry.wiphy_name.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %entry.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.wiphy_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %napi_dev, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i)
  %threaded = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 16, i32 149
  %8 = ptrtoint ptr %threaded to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %threaded, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %threaded, align 1
  %ndesc = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 0, i32 8
  %9 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %wiphy_name.exit.for.end_crit_edge, label %for.body

wiphy_name.exit.for.end_crit_edge:                ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %wiphy_name.exit
  %arrayidx = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 0
  %arrayidx7 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 0
  tail call void @netif_napi_add(ptr noundef %napi_dev, ptr noundef %arrayidx7, ptr noundef %poll, i32 noundef 64) #8
  tail call fastcc void @mt76_dma_rx_fill(ptr noundef %dev, ptr noundef %arrayidx)
  tail call void @napi_enable(ptr noundef %arrayidx7) #8
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1, i32 8
  %11 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1 = icmp eq i32 %12, 0
  br i1 %tobool.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %arrayidx.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1
  %arrayidx7.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 1
  tail call void @netif_napi_add(ptr noundef %napi_dev, ptr noundef %arrayidx7.1, ptr noundef %poll, i32 noundef 64) #8
  tail call fastcc void @mt76_dma_rx_fill(ptr noundef %dev, ptr noundef %arrayidx.1)
  tail call void @napi_enable(ptr noundef %arrayidx7.1) #8
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2, i32 8
  %13 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.2 = icmp eq i32 %14, 0
  br i1 %tobool.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %arrayidx.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2
  %arrayidx7.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 2
  tail call void @netif_napi_add(ptr noundef %napi_dev, ptr noundef %arrayidx7.2, ptr noundef %poll, i32 noundef 64) #8
  tail call fastcc void @mt76_dma_rx_fill(ptr noundef %dev, ptr noundef %arrayidx.2)
  tail call void @napi_enable(ptr noundef %arrayidx7.2) #8
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3, i32 8
  %15 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.3 = icmp eq i32 %16, 0
  br i1 %tobool.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %arrayidx.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3
  %arrayidx7.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 3
  tail call void @netif_napi_add(ptr noundef %napi_dev, ptr noundef %arrayidx7.3, ptr noundef %poll, i32 noundef 64) #8
  tail call fastcc void @mt76_dma_rx_fill(ptr noundef %dev, ptr noundef %arrayidx.3)
  tail call void @napi_enable(ptr noundef %arrayidx7.3) #8
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4, i32 8
  %17 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.4 = icmp eq i32 %18, 0
  br i1 %tobool.not.4, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4
  %arrayidx7.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 19, i32 4
  tail call void @netif_napi_add(ptr noundef %napi_dev, ptr noundef %arrayidx7.4, ptr noundef %poll, i32 noundef 64) #8
  tail call fastcc void @mt76_dma_rx_fill(ptr noundef %dev, ptr noundef %arrayidx.4)
  tail call void @napi_enable(ptr noundef %arrayidx7.4) #8
  br label %for.end

for.end:                                          ; preds = %for.body.4, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %wiphy_name.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_dma_alloc_queue(ptr nocapture noundef readonly %dev, ptr noundef %q, i32 noundef %idx, i32 noundef %n_desc, i32 noundef %bufsize, i32 noundef %ring_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mt76_dma_alloc_queue.__key, i16 noundef signext 3) #8
  %cleanup_lock = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %cleanup_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @mt76_dma_alloc_queue.__key.7, i16 noundef signext 3) #8
  %0 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %ring_base
  %mul = shl i32 %idx, 4
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %mul
  %3 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr5, ptr %q, align 4
  %ndesc = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 8
  %4 = ptrtoint ptr %ndesc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %n_desc, ptr %ndesc, align 4
  %buf_size = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 10
  %5 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bufsize, ptr %buf_size, align 4
  %conv = trunc i32 %idx to i8
  %hw_idx = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 14
  %6 = ptrtoint ptr %hw_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %hw_idx, align 1
  %mul8 = shl i32 %n_desc, 4
  %dev9 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %7 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev9, align 8
  %desc_dma = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 16
  %call.i = tail call ptr @dmam_alloc_attrs(ptr noundef %8, i32 noundef %mul8, ptr noundef %desc_dma, i32 noundef 3264, i32 noundef 0) #8
  %desc = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 4
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %desc, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ndesc, align 4
  %mul13 = mul i32 %11, 24
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 8
  %call.i39 = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef %mul13, i32 noundef 3520) #8
  %entry16 = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 3
  %14 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i39, ptr %entry16, align 4
  %tobool18.not = icmp eq ptr %call.i39, null
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mt76_dma_queue_reset(ptr noundef %dev, ptr noundef %q)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_dma_tx_queue_skb(ptr noundef %dev, ptr nocapture noundef %q, ptr noundef %skb, ptr noundef %wcid, ptr noundef %sta) #0 align 64 {
entry:
  %status = alloca %struct.ieee80211_tx_status, align 4
  %tx_info = alloca %struct.mt76_tx_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %status) #8
  %0 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status, i32 0, i32 2
  %1 = getelementptr inbounds i8, ptr %status, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sta, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %tx_info) #8
  %4 = call ptr @memset(ptr %tx_info, i32 0, i32 268)
  %skb3 = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 1
  %5 = ptrtoint ptr %skb3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %skb, ptr %skb3, align 4
  %lock.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #8
  %txwi_cache.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 21
  %6 = ptrtoint ptr %txwi_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %txwi_cache.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %txwi_cache.i.i
  br i1 %cmp.i.not.i.i, label %__mt76_get_txwi.exit.thread.i, label %if.then.i.i

__mt76_get_txwi.exit.thread.i:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #8
  br label %if.end.i

if.then.i.i:                                      ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.__mt76_get_txwi.exit.i_crit_edge

if.then.i.i.__mt76_get_txwi.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mt76_get_txwi.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__mt76_get_txwi.exit.i

__mt76_get_txwi.exit.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.__mt76_get_txwi.exit.i_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %__mt76_get_txwi.exit.i.if.end.i_crit_edge, label %__mt76_get_txwi.exit.i.if.end_crit_edge

__mt76_get_txwi.exit.i.if.end_crit_edge:          ; preds = %__mt76_get_txwi.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

__mt76_get_txwi.exit.i.if.end.i_crit_edge:        ; preds = %__mt76_get_txwi.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %__mt76_get_txwi.exit.i.if.end.i_crit_edge, %__mt76_get_txwi.exit.thread.i
  %drv.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 11
  %16 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv.i.i, align 16
  %txwi_size.i.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %txwi_size.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %txwi_size.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 143
  %and.i.i = and i32 %add1.i.i, 130944
  %dev2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %20 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2.i.i, align 8
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef %and.i.i, i32 noundef 2848) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.free_skb_crit_edge, label %if.end.i.i

if.end.i.free_skb_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_skb

if.end.i.i:                                       ; preds = %if.end.i
  %22 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2.i.i, align 8
  %24 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drv.i.i, align 16
  %txwi_size5.i.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %txwi_size5.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %txwi_size5.i.i, align 4
  %call.i21.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call.i.i.i) #8
  br i1 %call.i21.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.mt76_get_txwi.exit_crit_edge, label %if.then.i.i.i, !prof !40

land.rhs.i.i.i.mt76_get_txwi.exit_crit_edge:      ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_get_txwi.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %23) #8
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i4.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i.i

if.end.i.i.i4.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i4.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %31, %if.end.i.i.i4.i ], [ %29, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #8
  br label %mt76_get_txwi.exit

if.end39.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i.i = zext i16 %27 to i32
  tail call void @debug_dma_map_single(ptr noundef %23, ptr noundef nonnull %call.i.i.i, i32 noundef %conv6.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %call.i.i.i to i32
  %sub.i.i.i = add i32 %33, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %32, i32 %shr.i.i.i
  %and.i.i.i = and i32 %33, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %conv6.i.i, i32 noundef 1, i32 noundef 0) #8
  br label %mt76_get_txwi.exit

mt76_get_txwi.exit:                               ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.mt76_get_txwi.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.mt76_get_txwi.exit_crit_edge ]
  %34 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drv.i.i, align 16
  %txwi_size9.i.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %txwi_size9.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %txwi_size9.i.i, align 4
  %conv10.i.i = zext i16 %37 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %conv10.i.i
  %dma_addr.i.i = getelementptr inbounds %struct.mt76_txwi_cache, ptr %add.ptr.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i.i.i, ptr %dma_addr.i.i, align 4
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %mt76_get_txwi.exit.free_skb_crit_edge, label %mt76_get_txwi.exit.if.end_crit_edge

mt76_get_txwi.exit.if.end_crit_edge:              ; preds = %mt76_get_txwi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mt76_get_txwi.exit.free_skb_crit_edge:            ; preds = %mt76_get_txwi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_skb

if.end:                                           ; preds = %mt76_get_txwi.exit.if.end_crit_edge, %__mt76_get_txwi.exit.i.if.end_crit_edge
  %retval.0.i229 = phi ptr [ %add.ptr.i.i, %mt76_get_txwi.exit.if.end_crit_edge ], [ %7, %__mt76_get_txwi.exit.i.if.end_crit_edge ]
  %drv.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 11
  %39 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %drv.i, align 16
  %txwi_size.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %txwi_size.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %txwi_size.i, align 4
  %conv.i = zext i16 %42 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %retval.0.i229, i32 %idx.neg.i
  %43 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %skb, align 8
  %prev = getelementptr inbounds %struct.anon.41, ptr %skb, i32 0, i32 1
  %44 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %prev, align 4
  %45 = load ptr, ptr %drv.i, align 16
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %and = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %call.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #8
  %48 = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i = icmp eq i32 %48, 0
  br i1 %cmp.i, label %if.then6.if.end7_crit_edge, label %if.end.i183

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.i183:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %add.ptr.i182 = getelementptr i8, ptr %50, i32 2
  %51 = call ptr @memmove(ptr %50, ptr %add.ptr.i182, i32 %call.i)
  %52 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %52, i32 %call.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx.i, align 1
  %54 = load ptr, ptr %data.i, align 4
  %add.i = add i32 %call.i, 1
  %arrayidx5.i = getelementptr i8, ptr %54, i32 %add.i
  %55 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx5.i, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.end.i183, %if.then6.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %58 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %57, %59
  %dev9 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %60 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev9, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %call.i184 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %63) #8
  br i1 %call.i184, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end7
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !40

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %61) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %64 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i185 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i185, label %if.end.i.i186, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i186:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %61, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i186, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %67, %if.end.i.i186 ], [ %65, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %68 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev9, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %69, i32 noundef -1) #8
  br label %free

dma_map_single_attrs.exit:                        ; preds = %if.end7
  tail call void @debug_dma_map_single(ptr noundef %61, ptr noundef %63, i32 noundef %sub.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %70 = load ptr, ptr @mem_map, align 4
  %71 = ptrtoint ptr %63 to i32
  %sub.i187 = add i32 %71, 1073741824
  %shr.i = lshr i32 %sub.i187, 12
  %add.ptr.i188 = getelementptr %struct.page, ptr %70, i32 %shr.i
  %and.i = and i32 %71, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %61, ptr noundef %add.ptr.i188, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #8
  %72 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev9, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %73, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i190 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i190, label %dma_map_single_attrs.exit.free_crit_edge, label %if.end17

dma_map_single_attrs.exit.free_crit_edge:         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end17:                                         ; preds = %dma_map_single_attrs.exit
  %dma_addr = getelementptr inbounds %struct.mt76_txwi_cache, ptr %retval.0.i229, i32 0, i32 1
  %74 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_addr, align 4
  %76 = ptrtoint ptr %tx_info to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %tx_info, align 4
  %77 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %drv.i, align 16
  %txwi_size = getelementptr inbounds %struct.mt76_driver_ops, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %txwi_size to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %txwi_size, align 4
  %len22 = getelementptr inbounds %struct.mt76_queue_buf, ptr %tx_info, i32 0, i32 1
  %81 = ptrtoint ptr %len22 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %len22, align 4
  %arrayidx24 = getelementptr inbounds [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call41.i, ptr %arrayidx24, align 4
  %conv = trunc i32 %sub.i to i16
  %len29 = getelementptr inbounds [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %len29 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv, ptr %len29, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %84 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %86)
  %iter.0250 = load ptr, ptr %frag_list, align 8
  %tobool31.not251 = icmp eq ptr %iter.0250, null
  br i1 %tobool31.not251, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %if.end17.for.body_crit_edge
  %iter.0253 = phi ptr [ %iter.0, %if.end49.for.body_crit_edge ], [ %iter.0250, %if.end17.for.body_crit_edge ]
  %n.0252 = phi i32 [ %inc56, %if.end49.for.body_crit_edge ], [ 2, %if.end17.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %n.0252)
  %cmp = icmp eq i32 %n.0252, 32
  br i1 %cmp, label %for.body.for.body90.preheader_crit_edge, label %if.end34

for.body.for.body90.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body90.preheader

if.end34:                                         ; preds = %for.body
  %87 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev9, align 8
  %data36 = getelementptr inbounds %struct.sk_buff, ptr %iter.0253, i32 0, i32 19
  %89 = ptrtoint ptr %data36 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data36, align 4
  %len37 = getelementptr inbounds %struct.sk_buff, ptr %iter.0253, i32 0, i32 6
  %91 = ptrtoint ptr %len37 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len37, align 4
  %call.i191 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %90) #8
  br i1 %call.i191, label %land.rhs.i193, label %dma_map_single_attrs.exit208

land.rhs.i193:                                    ; preds = %if.end34
  %.b1.i192 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i192, label %land.rhs.i193.dma_map_single_attrs.exit208.thread_crit_edge, label %if.then.i197, !prof !40

land.rhs.i193.dma_map_single_attrs.exit208.thread_crit_edge: ; preds = %land.rhs.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit208.thread

if.then.i197:                                     ; preds = %land.rhs.i193
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i194 = tail call ptr @dev_driver_string(ptr noundef %88) #8
  %init_name.i.i195 = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 3
  %93 = ptrtoint ptr %init_name.i.i195 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i.i195, align 8
  %tobool.not.i.i196 = icmp eq ptr %94, null
  br i1 %tobool.not.i.i196, label %if.end.i.i198, label %if.then.i197.dev_name.exit.i200_crit_edge

if.then.i197.dev_name.exit.i200_crit_edge:        ; preds = %if.then.i197
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i200

if.end.i.i198:                                    ; preds = %if.then.i197
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %88, align 4
  br label %dev_name.exit.i200

dev_name.exit.i200:                               ; preds = %if.end.i.i198, %if.then.i197.dev_name.exit.i200_crit_edge
  %retval.0.i.i199 = phi ptr [ %96, %if.end.i.i198 ], [ %94, %if.then.i197.dev_name.exit.i200_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %call16.i194, ptr noundef %retval.0.i.i199) #8
  br label %dma_map_single_attrs.exit208.thread

dma_map_single_attrs.exit208.thread:              ; preds = %dev_name.exit.i200, %land.rhs.i193.dma_map_single_attrs.exit208.thread_crit_edge
  %97 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev9, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %98, i32 noundef -1) #8
  br label %unmap

dma_map_single_attrs.exit208:                     ; preds = %if.end34
  tail call void @debug_dma_map_single(ptr noundef %88, ptr noundef %90, i32 noundef %92) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %99 = load ptr, ptr @mem_map, align 4
  %100 = ptrtoint ptr %90 to i32
  %sub.i201 = add i32 %100, 1073741824
  %shr.i202 = lshr i32 %sub.i201, 12
  %add.ptr.i203 = getelementptr %struct.page, ptr %99, i32 %shr.i202
  %and.i204 = and i32 %100, 4095
  %call41.i205 = tail call i32 @dma_map_page_attrs(ptr noundef %88, ptr noundef %add.ptr.i203, i32 noundef %and.i204, i32 noundef %92, i32 noundef 1, i32 noundef 0) #8
  %101 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev9, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %102, i32 noundef %call41.i205) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i205)
  %cmp.i209 = icmp eq i32 %call41.i205, -1
  br i1 %cmp.i209, label %dma_map_single_attrs.exit208.unmap_crit_edge, label %if.end49

dma_map_single_attrs.exit208.unmap_crit_edge:     ; preds = %dma_map_single_attrs.exit208
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmap

if.end49:                                         ; preds = %dma_map_single_attrs.exit208
  %arrayidx51 = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %n.0252
  %103 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call41.i205, ptr %arrayidx51, align 4
  %104 = ptrtoint ptr %len37 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len37, align 4
  %conv54 = trunc i32 %105 to i16
  %inc56 = add nuw nsw i32 %n.0252, 1
  %len58 = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %n.0252, i32 1
  %106 = ptrtoint ptr %len58 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv54, ptr %len58, align 4
  %107 = ptrtoint ptr %iter.0253 to i32
  call void @__asan_load4_noabort(i32 %107)
  %iter.0 = load ptr, ptr %iter.0253, align 8
  %tobool31.not = icmp eq ptr %iter.0, null
  br i1 %tobool31.not, label %if.end49.for.end_crit_edge, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end49.for.end_crit_edge, %if.end17.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 2, %if.end17.for.end_crit_edge ], [ %inc56, %if.end49.for.end_crit_edge ]
  %nbuf = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 2
  %108 = ptrtoint ptr %nbuf to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %n.0.lcssa, ptr %nbuf, align 4
  %queued = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 9
  %109 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %queued, align 4
  %add = add i32 %n.0.lcssa, 1
  %div = sdiv i32 %add, 2
  %add61 = add i32 %110, %div
  %ndesc = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 8
  %111 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ndesc, align 4
  %sub = add i32 %112, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add61, i32 %sub)
  %cmp62.not = icmp slt i32 %add61, %sub
  br i1 %cmp62.not, label %if.end65, label %for.end.unmap_crit_edge

for.end.unmap_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmap

if.end65:                                         ; preds = %for.end
  %113 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev9, align 8
  %115 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dma_addr, align 4
  %117 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %drv.i, align 16
  %txwi_size69 = getelementptr inbounds %struct.mt76_driver_ops, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %txwi_size69 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %txwi_size69, align 4
  %conv70 = zext i16 %120 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %114, i32 noundef %116, i32 noundef %conv70, i32 noundef 1) #8
  %121 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %drv.i, align 16
  %tx_prepare_skb = getelementptr inbounds %struct.mt76_driver_ops, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %tx_prepare_skb to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tx_prepare_skb, align 4
  %qid = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 15
  %125 = ptrtoint ptr %qid to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %qid, align 4
  %conv72 = zext i8 %126 to i32
  %call73 = call i32 %124(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %conv72, ptr noundef %wcid, ptr noundef %sta, ptr noundef nonnull %tx_info) #8
  %127 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev9, align 8
  %129 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dma_addr, align 4
  %131 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %drv.i, align 16
  %txwi_size77 = getelementptr inbounds %struct.mt76_driver_ops, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %txwi_size77 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %txwi_size77, align 4
  %conv78 = zext i16 %134 to i32
  call void @dma_sync_single_for_device(ptr noundef %128, i32 noundef %130, i32 noundef %conv78, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp79 = icmp slt i32 %call73, 0
  br i1 %cmp79, label %if.end65.unmap_crit_edge, label %if.end82

if.end65.unmap_crit_edge:                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmap

if.end82:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %nbuf to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %nbuf, align 4
  %info = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 3
  %137 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %info, align 4
  %139 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %skb3, align 4
  %call86 = call fastcc i32 @mt76_dma_add_buf(ptr noundef %q, ptr noundef nonnull %tx_info, i32 noundef %136, i32 noundef %138, ptr noundef %140, ptr noundef nonnull %retval.0.i229)
  br label %cleanup

unmap:                                            ; preds = %if.end65.unmap_crit_edge, %for.end.unmap_crit_edge, %dma_map_single_attrs.exit208.unmap_crit_edge, %dma_map_single_attrs.exit208.thread
  %n.0249 = phi i32 [ %n.0.lcssa, %if.end65.unmap_crit_edge ], [ %n.0.lcssa, %for.end.unmap_crit_edge ], [ %n.0252, %dma_map_single_attrs.exit208.thread ], [ %n.0252, %dma_map_single_attrs.exit208.unmap_crit_edge ]
  %ret.0 = phi i32 [ %call73, %if.end65.unmap_crit_edge ], [ -12, %for.end.unmap_crit_edge ], [ -12, %dma_map_single_attrs.exit208.thread ], [ -12, %dma_map_single_attrs.exit208.unmap_crit_edge ]
  %n.1254 = add i32 %n.0249, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1254)
  %cmp88255 = icmp sgt i32 %n.1254, 0
  br i1 %cmp88255, label %unmap.for.body90.preheader_crit_edge, label %unmap.free_crit_edge

unmap.free_crit_edge:                             ; preds = %unmap
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

unmap.for.body90.preheader_crit_edge:             ; preds = %unmap
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body90.preheader

for.body90.preheader:                             ; preds = %unmap.for.body90.preheader_crit_edge, %for.body.for.body90.preheader_crit_edge
  %n.1254265 = phi i32 [ %n.1254, %unmap.for.body90.preheader_crit_edge ], [ 31, %for.body.for.body90.preheader_crit_edge ]
  %ret.0264 = phi i32 [ %ret.0, %unmap.for.body90.preheader_crit_edge ], [ -12, %for.body.for.body90.preheader_crit_edge ]
  br label %for.body90

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %for.body90.preheader
  %n.1256 = phi i32 [ %n.1, %for.body90.for.body90_crit_edge ], [ %n.1254265, %for.body90.preheader ]
  %141 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev9, align 8
  %arrayidx93 = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %n.1256
  %143 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx93, align 4
  %len97 = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %n.1256, i32 1
  %145 = ptrtoint ptr %len97 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %len97, align 4
  %conv98 = zext i16 %146 to i32
  call void @dma_unmap_page_attrs(ptr noundef %142, i32 noundef %144, i32 noundef %conv98, i32 noundef 1, i32 noundef 0) #8
  %n.1 = add nsw i32 %n.1256, -1
  %cmp88 = icmp ugt i32 %n.1256, 1
  br i1 %cmp88, label %for.body90.for.body90_crit_edge, label %for.body90.free_crit_edge

for.body90.free_crit_edge:                        ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body90

free:                                             ; preds = %for.body90.free_crit_edge, %unmap.free_crit_edge, %dma_map_single_attrs.exit.free_crit_edge, %dma_map_single_attrs.exit.thread
  %ret.1 = phi i32 [ -12, %dma_map_single_attrs.exit.free_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ], [ %ret.0, %unmap.free_crit_edge ], [ %ret.0264, %for.body90.free_crit_edge ]
  %tx_skb.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 17, i32 2
  %147 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tx_skb.i, align 8
  %cmp.i211 = icmp eq ptr %148, %skb
  br i1 %cmp.i211, label %free.if.then103_crit_edge, label %if.else.i

free.if.then103_crit_edge:                        ; preds = %free
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then103

if.else.i:                                        ; preds = %free
  %phy2.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %149 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %phy2.i, align 8
  %tobool.not.i212 = icmp eq ptr %150, null
  br i1 %tobool.not.i212, label %if.else.i.if.end.i216_crit_edge, label %land.lhs.true.i

if.else.i.if.end.i216_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i216

land.lhs.true.i:                                  ; preds = %if.else.i
  %tx_skb5.i = getelementptr inbounds %struct.mt76_phy, ptr %150, i32 0, i32 17, i32 2
  %151 = ptrtoint ptr %tx_skb5.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tx_skb5.i, align 8
  %cmp6.i = icmp eq ptr %152, %skb
  br i1 %cmp6.i, label %land.lhs.true.i.if.then103_crit_edge, label %land.lhs.true.i.if.end.i216_crit_edge

land.lhs.true.i.if.end.i216_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i216

land.lhs.true.i.if.then103_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then103

if.then103:                                       ; preds = %land.lhs.true.i.if.then103_crit_edge, %free.if.then103_crit_edge
  %storemerge.in.i = phi ptr [ %dev, %free.if.then103_crit_edge ], [ %150, %land.lhs.true.i.if.then103_crit_edge ]
  %153 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %storemerge.i = load ptr, ptr %storemerge.in.i, align 8
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %storemerge.i, i32 0, i32 3
  %154 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %priv, align 8
  %156 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %skb3, align 4
  %tx_skb = getelementptr inbounds %struct.mt76_phy, ptr %155, i32 0, i32 17, i32 2
  %158 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tx_skb, align 8
  %cmp105 = icmp eq ptr %157, %159
  br i1 %cmp105, label %if.then107, label %if.then103.if.end.i216_crit_edge

if.then103.if.end.i216_crit_edge:                 ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i216

if.then107:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %tx_done = getelementptr inbounds %struct.mt76_phy, ptr %155, i32 0, i32 17, i32 24
  %160 = ptrtoint ptr %tx_done to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tx_done, align 4
  %dec109 = add i32 %161, -1
  store i32 %dec109, ptr %tx_done, align 4
  br label %if.end.i216

if.end.i216:                                      ; preds = %if.then107, %if.then103.if.end.i216_crit_edge, %land.lhs.true.i.if.end.i216_crit_edge, %if.else.i.if.end.i216_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #8
  %162 = ptrtoint ptr %txwi_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %txwi_cache.i.i, align 4
  %call.i.i.i215 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %retval.0.i229, ptr noundef %txwi_cache.i.i, ptr noundef %163) #8
  br i1 %call.i.i.i215, label %if.end.i.i.i, label %if.end.i216.mt76_put_txwi.exit_crit_edge

if.end.i216.mt76_put_txwi.exit_crit_edge:         ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_put_txwi.exit

if.end.i.i.i:                                     ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %retval.0.i229, ptr %prev1.i.i.i, align 4
  %165 = ptrtoint ptr %retval.0.i229 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %163, ptr %retval.0.i229, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i229, i32 0, i32 1
  %166 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %txwi_cache.i.i, ptr %prev3.i.i.i, align 4
  %167 = ptrtoint ptr %txwi_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %retval.0.i229, ptr %txwi_cache.i.i, align 4
  br label %mt76_put_txwi.exit

mt76_put_txwi.exit:                               ; preds = %if.end.i.i.i, %if.end.i216.mt76_put_txwi.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #8
  br label %free_skb

free_skb:                                         ; preds = %mt76_put_txwi.exit, %mt76_get_txwi.exit.free_skb_crit_edge, %if.end.i.free_skb_crit_edge
  %ret.2 = phi i32 [ %ret.1, %mt76_put_txwi.exit ], [ -12, %mt76_get_txwi.exit.free_skb_crit_edge ], [ -12, %if.end.i.free_skb_crit_edge ]
  %168 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %skb3, align 4
  %170 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %169, ptr %0, align 4
  %171 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev, align 128
  %hw_queue.i = getelementptr inbounds %struct.sk_buff, ptr %169, i32 0, i32 3, i32 4
  %173 = ptrtoint ptr %hw_queue.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %bf.load.i = load i32, ptr %hw_queue.i, align 4
  %174 = and i32 %bf.load.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.i217 = icmp eq i32 %174, 0
  br i1 %tobool.not.i217, label %free_skb.mt76_tx_status_get_hw.exit_crit_edge, label %land.lhs.true.i219

free_skb.mt76_tx_status_get_hw.exit_crit_edge:    ; preds = %free_skb
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_tx_status_get_hw.exit

land.lhs.true.i219:                               ; preds = %free_skb
  %phy2.i218 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %175 = ptrtoint ptr %phy2.i218 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %phy2.i218, align 8
  %tobool2.not.i = icmp eq ptr %176, null
  br i1 %tobool2.not.i, label %land.lhs.true.i219.mt76_tx_status_get_hw.exit_crit_edge, label %if.then.i220

land.lhs.true.i219.mt76_tx_status_get_hw.exit_crit_edge: ; preds = %land.lhs.true.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt76_tx_status_get_hw.exit

if.then.i220:                                     ; preds = %land.lhs.true.i219
  call void @__sanitizer_cov_trace_pc() #10
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 8
  br label %mt76_tx_status_get_hw.exit

mt76_tx_status_get_hw.exit:                       ; preds = %if.then.i220, %land.lhs.true.i219.mt76_tx_status_get_hw.exit_crit_edge, %free_skb.mt76_tx_status_get_hw.exit_crit_edge
  %hw.0.i = phi ptr [ %178, %if.then.i220 ], [ %172, %land.lhs.true.i219.mt76_tx_status_get_hw.exit_crit_edge ], [ %172, %free_skb.mt76_tx_status_get_hw.exit_crit_edge ]
  %bf.set.i = and i32 %bf.load.i, -32769
  %179 = ptrtoint ptr %hw_queue.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %bf.set.i, ptr %hw_queue.i, align 4
  call void @ieee80211_tx_status_ext(ptr noundef %hw.0.i, ptr noundef nonnull %status) #8
  br label %cleanup

cleanup:                                          ; preds = %mt76_tx_status_get_hw.exit, %if.end82
  %retval.0 = phi i32 [ %ret.2, %mt76_tx_status_get_hw.exit ], [ %call86, %if.end82 ]
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %tx_info) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_dma_tx_queue_skb_raw(ptr nocapture noundef readonly %dev, ptr noundef %q, ptr noundef %skb, i32 noundef %tx_info) #0 align 64 {
entry:
  %buf = alloca %struct.mt76_queue_buf, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %buf, align 8
  %queued = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 9
  %1 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %queued, align 4
  %add = add i32 %2, 1
  %ndesc = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 8
  %3 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ndesc, align 4
  %sub = add i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp.not = icmp slt i32 %add, %sub
  br i1 %cmp.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !40

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %6) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %16, i32 noundef -1) #8
  br label %error

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %6, ptr noundef %8, i32 noundef %10) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %8 to i32
  %sub.i = add i32 %18, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %17, i32 %shr.i
  %and.i = and i32 %18, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %10, i32 noundef 1, i32 noundef 0) #8
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %20, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.error_crit_edge, label %if.end7

dma_map_single_attrs.exit.error_crit_edge:        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end7:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call41.i, ptr %buf, align 8
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %conv = trunc i32 %23 to i16
  %len10 = getelementptr inbounds %struct.mt76_queue_buf, ptr %buf, i32 0, i32 1
  %24 = ptrtoint ptr %len10 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %len10, align 4
  %lock = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %25 = call fastcc i32 @mt76_dma_add_buf(ptr noundef %q, ptr noundef nonnull %buf, i32 noundef 1, i32 noundef %tx_info, ptr noundef %skb, ptr noundef null)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %head.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 6
  %26 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head.i, align 2
  %conv.i = zext i16 %27 to i32
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %29 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %q, align 4
  %cpu_idx.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %30, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpu_idx.i, i32 %28) #8, !srcloc !47
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

error:                                            ; preds = %dma_map_single_attrs.exit.error_crit_edge, %dma_map_single_attrs.exit.thread, %entry.error_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end7
  %retval.0 = phi i32 [ -12, %error ], [ 0, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76_dma_rx_reset(ptr noundef %dev, i32 noundef %qid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid
  %ndesc = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 8
  %0 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17 = icmp sgt i32 %1, 0
  br i1 %cmp17, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %desc = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %ctrl = getelementptr %struct.mt76_desc, ptr %3, i32 %i.018, i32 1
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %ctrl, align 4
  %inc = add nuw nsw i32 %i.018, 1
  %5 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ndesc, align 4
  %cmp = icmp slt i32 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mt76_dma_rx_cleanup(ptr noundef %dev, ptr noundef %arrayidx)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %desc_dma.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 16
  %7 = ptrtoint ptr %desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %desc_dma.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ndesc, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %ring_size.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %16, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ring_size.i, i32 %14) #8, !srcloc !47
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %dma_idx.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %18, i32 0, i32 3
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_idx.i) #8, !srcloc !43
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  %conv.i = trunc i32 %20 to i16
  %head.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 6
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %head.i, align 2
  %tail.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 7
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %tail.i, align 4
  tail call fastcc void @mt76_dma_rx_fill(ptr noundef %dev, ptr noundef %arrayidx)
  %rx_head = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 %qid, i32 17
  %23 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_head, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %24) #8
  %25 = ptrtoint ptr %rx_head to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rx_head, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76_dma_queue_reset(ptr nocapture noundef readnone %dev, ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %q, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %ndesc = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 8
  %0 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12 = icmp sgt i32 %1, 0
  br i1 %cmp12, label %for.body.lr.ph, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %desc = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %ctrl = getelementptr %struct.mt76_desc, ptr %3, i32 %i.013, i32 1
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %ctrl, align 4
  %inc = add nuw nsw i32 %i.013, 1
  %5 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ndesc, align 4
  %cmp = icmp slt i32 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %q, align 4
  %cpu_idx = getelementptr inbounds %struct.mt76_queue_regs, ptr %8, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpu_idx, i32 0) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %q, align 4
  %dma_idx = getelementptr inbounds %struct.mt76_queue_regs, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_idx, i32 0) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %desc_dma.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 16
  %11 = ptrtoint ptr %desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc_dma.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %14 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %q, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ndesc, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %19 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %q, align 4
  %ring_size.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %20, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ring_size.i, i32 %18) #8, !srcloc !47
  %21 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %q, align 4
  %dma_idx.i = getelementptr inbounds %struct.mt76_queue_regs, ptr %22, i32 0, i32 3
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_idx.i) #8, !srcloc !43
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  %conv.i = trunc i32 %24 to i16
  %head.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 6
  %25 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %head.i, align 2
  %tail.i = getelementptr inbounds %struct.mt76_queue, ptr %q, i32 0, i32 7
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %tail.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dummy_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_ext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_queue_tx_complete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_frag_cache_drain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !25, !26, !28}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__ksymtab_mt76_put_txwi, !1, !"__ksymtab_mt76_put_txwi", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/dma.c", i32 68, i32 1}
!2 = !{ptr @__ksymtab_mt76_dma_rx_poll, !3, !"__ksymtab_mt76_dma_rx_poll", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/dma.c", i32 640, i32 1}
!4 = !{ptr @__ksymtab_mt76_dma_attach, !5, !"__ksymtab_mt76_dma_attach", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/dma.c", i32 679, i32 1}
!6 = !{ptr @__ksymtab_mt76_dma_cleanup, !7, !"__ksymtab_mt76_dma_cleanup", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/dma.c", i32 704, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mt76_dma_ops, !20, !"mt76_dma_ops", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt76/dma.c", i32 663, i32 36}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/mediatek/mt76/dma.c", i32 650, i32 59}
!23 = !{ptr @mt76_dma_alloc_queue.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/mediatek/mt76/dma.c", i32 115, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mt76_dma_alloc_queue.__key.7, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/mediatek/mt76/dma.c", i32 116, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2149324925}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2154609732, i64 2154610220, i64 2154609769, i64 2154609825, i64 2154609859, i64 2154609883, i64 2154609924, i64 2154609945, i64 2154609973, i64 2154610007}
!42 = !{i64 2149325191}
!43 = !{i64 6230204}
!44 = !{i64 2157834180}
!45 = !{i64 2157834748}
!46 = !{i64 2157740630}
!47 = !{i64 6229786}
!48 = !{i64 2157741052}
!49 = !{i64 2157741730}
!50 = !{i64 2157833289}
!51 = !{i64 2157833507}
!52 = !{!"auto-init"}
!53 = !{i8 0, i8 2}
!54 = !{i64 2157742171}
!55 = !{i64 2157742552}
