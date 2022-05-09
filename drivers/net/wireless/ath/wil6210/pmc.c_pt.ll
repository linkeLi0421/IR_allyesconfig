; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/pmc.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/pmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wil6210_priv = type { ptr, i32, ptr, ptr, i32, ptr, [1 x i32], [32 x i8], i32, i8, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32, %struct.wait_queue_head, i8, [4 x ptr], %struct.mutex, %struct.atomic_t, i32, %struct.cfg80211_chan_def, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.wil6210_mbox_ctl, %struct.completion, %struct.completion, i16, i16, i8, ptr, i16, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.napi_struct, %struct.napi_struct, %struct.net_device, %struct.wil_ring, i32, [24 x %struct.wil_ring], [24 x %struct.wil_ring_tx_data], [8 x %struct.wil_status_ring], i8, i32, [24 x [2 x i8]], [20 x %struct.wil_sta_info], i32, i32, %struct.wil_rx_buff_mgmt, i8, %struct.wil_txrx_ops, %struct.mutex, %struct.rw_semaphore, %struct.atomic_t, %struct.atomic_t, ptr, [19 x %struct.wil_blob_wrapper], i8, i8, i8, %struct.wil_suspend_stats, %struct.wil_debugfs_data, i8, i32, ptr, %struct.wil_platform_ops, i8, %struct.pmc_ctx, i8, ptr, ptr, %struct.wil_halp, i32, i32, %struct.notifier_block, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, %struct.wil_fw_stats_global, i32, i32, i8, i32, [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wil6210_mbox_ctl = type { %struct.wil6210_mbox_ring, %struct.wil6210_mbox_ring }
%struct.wil6210_mbox_ring = type { i32, i16, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wil_ring = type { i32, ptr, i16, i32, i32, i32, ptr, %struct.wil_desc_ring_rx_swtail, i8 }
%struct.wil_desc_ring_rx_swtail = type { ptr, i32 }
%struct.wil_ring_tx_data = type { i8, i32, i32, i32, i32, i8, i16, i8, i8, i8, %struct.spinlock }
%struct.wil_status_ring = type { i32, ptr, i16, i32, i32, i32, i8, i8, %struct.wil_ring_rx_data, i32 }
%struct.wil_ring_rx_data = type { ptr, i8, i16 }
%struct.wil_sta_info = type { [6 x i8], i8, i32, %struct.wil_net_stats, ptr, %struct.wmi_link_stats_basic, [16 x ptr], %struct.spinlock, [1 x i32], [1 x i32], [16 x %struct.wil_tid_crypto_rx], %struct.wil_tid_crypto_rx, i8 }
%struct.wil_net_stats = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [16 x i64], i32 }
%struct.wmi_link_stats_basic = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], i16, i32, i32, i32, i32, i32 }
%struct.wil_tid_crypto_rx = type { [4 x %struct.wil_tid_crypto_rx_single] }
%struct.wil_tid_crypto_rx_single = type { [6 x i8], i8 }
%struct.wil_rx_buff_mgmt = type { ptr, i32, %struct.list_head, %struct.list_head, i32 }
%struct.wil_txrx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wil_blob_wrapper = type { ptr, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.wil_suspend_stats = type { %struct.wil_suspend_count_stats, %struct.wil_suspend_count_stats, i32, i32 }
%struct.wil_suspend_count_stats = type { i32, i32, i32, i32 }
%struct.wil_debugfs_data = type { ptr, i32 }
%struct.wil_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmc_ctx = type { %struct.mutex, ptr, i32, ptr, i32, i32, i32 }
%struct.wil_halp = type { %struct.mutex, i32, %struct.completion, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wil_fw_stats_global = type { i8, i64, %struct.wmi_link_stats_global }
%struct.wmi_link_stats_global = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.wmi_pmc_cmd = type <{ i8, i8, i16, i64 }>
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }
%struct.vring_tx_desc = type { %struct.vring_tx_mac, %struct.vring_tx_dma }
%struct.vring_tx_mac = type { [3 x i32], i32 }
%struct.vring_tx_dma = type { i32, %struct.wil_ring_dma_addr, i8, i8, i8, i8, i16 }
%struct.wil_ring_dma_addr = type <{ i32, i16 }>
%struct.desc_alloc_info = type { i32, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@wil_pmc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&wil->pmc.lock\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: ERROR pmc is already allocated\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.wil_pmc_alloc = private unnamed_addr constant [14 x i8] c"wil_pmc_alloc\00", align 1
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: Invalid params num_descriptors(%d), descriptor_size(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: num_descriptors(%d) exceeds max ring size %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Overflow in num_descriptors(%d)*descriptor_size(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@wil_pmc_alloc.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.wil_pmc_alloc, ptr @.str.6, ptr @.str.7, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/wil6210/pmc.c\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DBG[MISC]pmc_alloc: %d descriptors x %d bytes each\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: ERROR allocating pmc skb list\0A\00", [61 x i8] zeroinitializer }, align 32
@wil_pmc_alloc.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.wil_pmc_alloc, ptr @.str.6, ptr @.str.9, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"DBG[MISC]pmc_alloc: allocated descriptors info list %p\0A\00", [40 x i8] zeroinitializer }, align 32
@wil_pmc_alloc.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.wil_pmc_alloc, ptr @.str.6, ptr @.str.10, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"DBG[MISC]pmc_alloc: allocated pring %p => %pad. %zd x %d = total %zd bytes\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: ERROR allocating pmc pring\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: ERROR allocating pmc descriptor %d\00", [57 x i8] zeroinitializer }, align 32
@wil_pmc_alloc.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.wil_pmc_alloc, ptr @.str.6, ptr @.str.13, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[MISC]pmc_alloc: allocated successfully\0A\00", [52 x i8] zeroinitializer }, align 32
@wil_pmc_alloc.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.wil_pmc_alloc, ptr @.str.6, ptr @.str.14, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"DBG[MISC]pmc_alloc: send WMI_PMC_CMD with ALLOCATE op\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: WMI_PMC_CMD with ALLOCATE op failed with status %d\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: exit on error: Releasing skbs...\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: exit on error: Releasing pring...\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: exit on error: Releasing descriptors info list...\0A\00", [41 x i8] zeroinitializer }, align 32
@wil_pmc_free.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.6, ptr @.str.20, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wil_pmc_free\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"DBG[MISC]pmc_free: Error, can't free - not allocated\0A\00", [42 x i8] zeroinitializer }, align 32
@wil_pmc_free.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.6, ptr @.str.21, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DBG[MISC]send WMI_PMC_CMD with RELEASE op\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: WMI_PMC_CMD with RELEASE op failed, status %d\00", [46 x i8] zeroinitializer }, align 32
@wil_pmc_free.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.6, ptr @.str.23, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DBG[MISC]pmc_free: free pring va %p\0A\00", [59 x i8] zeroinitializer }, align 32
@wil_pmc_free.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.6, ptr @.str.24, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DBG[MISC]pmc_free: free descriptor info %d/%d\0A\00", [49 x i8] zeroinitializer }, align 32
@wil_pmc_free.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.6, ptr @.str.25, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"DBG[MISC]pmc_free: free pmc descriptors info list %p\0A\00", [42 x i8] zeroinitializer }, align 32
@wil_pmc_last_cmd_status.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.26, ptr @.str.6, ptr @.str.27, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wil_pmc_last_cmd_status\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DBG[MISC]pmc_last_cmd_status: status %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: error, pmc is not allocated!\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.wil_pmc_read = private unnamed_addr constant [13 x i8] c"wil_pmc_read\00", align 1
@wil_pmc_read.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.wil_pmc_read, ptr @.str.6, ptr @.str.29, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[MISC]pmc_read: size %u, pos %lld\0A\00", [58 x i8] zeroinitializer }, align 32
@wil_pmc_read.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.wil_pmc_read, ptr @.str.6, ptr @.str.30, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"DBG[MISC]pmc_read: reached end of pmc buf: %lld >= %u\0A\00", [41 x i8] zeroinitializer }, align 32
@wil_pmc_read.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.wil_pmc_read, ptr @.str.6, ptr @.str.31, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"DBG[MISC]pmc_read: read from pos %lld (descriptor %llu, offset %llu) %zu bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.wil_pmc_llseek = private unnamed_addr constant [15 x i8] c"wil_pmc_llseek\00", align 1
@__func__.wil_pmcring_read = private unnamed_addr constant [17 x i8] c"wil_pmcring_read\00", align 1
@wil_pmcring_read.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.wil_pmcring_read, ptr @.str.6, ptr @.str.32, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DBG[MISC]pmcring_read: size %zu\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 29, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 54, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 58, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 66, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 74, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 84, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 92, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 96, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 124, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 132, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 151, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 171, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 177, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 184, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 195, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 204, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 214, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 238, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 246, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 252, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 266, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 286, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 288, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 305, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 327, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 335, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 346, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 353, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [42 x i8] c"../drivers/net/wireless/ath/wil6210/pmc.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 437, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @wil_pmc_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_pmc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_pmc_init(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pmc = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85
  %0 = call ptr @memset(ptr %pmc, i32 0, i32 116)
  tail call void @__mutex_init(ptr noundef %pmc, ptr noundef nonnull @.str, ptr noundef nonnull @wil_pmc_init.__key) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_pmc_alloc(ptr noundef %wil, i32 noundef %num_descriptors, i32 noundef %descriptor_size) local_unnamed_addr #0 align 64 {
entry:
  %pmc_cmd = alloca %struct.wmi_pmc_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pmc1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pmc_cmd) #6
  %6 = call ptr @memset(ptr %pmc_cmd, i32 0, i32 12)
  tail call void @mutex_lock_nested(ptr noundef %pmc1, i32 noundef 0) #6
  %pring_va.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 1
  %7 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pring_va.i, align 4
  %tobool.i.not = icmp eq ptr %8, null
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.wil_pmc_alloc) #6
  br label %no_release_err

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_descriptors)
  %cmp = icmp slt i32 %num_descriptors, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %descriptor_size)
  %cmp4 = icmp slt i32 %descriptor_size, 1
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.wil_pmc_alloc, i32 noundef %num_descriptors, i32 noundef %descriptor_size) #6
  br label %no_release_err

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %num_descriptors)
  %cmp7 = icmp ugt i32 %num_descriptors, 32768
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.wil_pmc_alloc, i32 noundef %num_descriptors, i32 noundef 32768) #6
  br label %no_release_err

if.end9:                                          ; preds = %if.end6
  %div390 = udiv i32 2147483647, %descriptor_size
  call void @__sanitizer_cov_trace_cmp4(i32 %div390, i32 %num_descriptors)
  %cmp10 = icmp ult i32 %div390, %num_descriptors
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.wil_pmc_alloc, i32 noundef %num_descriptors, i32 noundef %descriptor_size) #6
  br label %no_release_err

if.end12:                                         ; preds = %if.end9
  %num_descriptors13 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 5
  %9 = ptrtoint ptr %num_descriptors13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %num_descriptors, ptr %num_descriptors13, align 4
  %descriptor_size14 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 6
  %10 = ptrtoint ptr %descriptor_size14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %descriptor_size, ptr %descriptor_size14, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_alloc.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_alloc, %if.then21)) #6
          to label %do.end25 [label %if.then21], !srcloc !93

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_alloc.__UNIQUE_ID_ddebug343, ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef %num_descriptors, i32 noundef %descriptor_size) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %if.end12
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.7, i32 noundef %num_descriptors, i32 noundef %descriptor_size) #6
  %13 = shl nuw nsw i32 %num_descriptors, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #9
  %descriptors = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 3
  %14 = ptrtoint ptr %descriptors to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i, ptr %descriptors, align 4
  %tobool30.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool30.not, label %if.then31, label %do.body35

if.then31:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.wil_pmc_alloc) #6
  br label %no_release_err

do.body35:                                        ; preds = %do.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_alloc.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_alloc, %if.then47)) #6
          to label %do.end54 [label %if.then47], !srcloc !93

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_ndev, align 4
  %17 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %descriptors, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_alloc.__UNIQUE_ID_ddebug344, ptr noundef %16, ptr noundef nonnull @.str.9, ptr noundef %18) #6
  br label %do.end54

do.end54:                                         ; preds = %if.then47, %do.body35
  %19 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %descriptors, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.9, ptr noundef %20) #6
  %dma_addr_size = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 65
  %21 = ptrtoint ptr %dma_addr_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_addr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %22)
  %cmp58 = icmp ugt i32 %22, 32
  br i1 %cmp58, label %if.then59, label %do.end54.if.end61_crit_edge

do.end54.if.end61_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then59:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dma_set_mask_and_coherent(ptr noundef %3, i64 noundef 4294967295)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %do.end54.if.end61_crit_edge
  %mul = shl nuw nsw i32 %num_descriptors, 5
  %pring_pa = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %pring_pa, i32 noundef 3264, i32 noundef 0) #6
  %23 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %pring_va.i, align 4
  %24 = ptrtoint ptr %dma_addr_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %cmp64 = icmp ugt i32 %25, 32
  br i1 %cmp64, label %if.then65, label %if.end61.do.body73_crit_edge

if.end61.do.body73_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %25)
  %cmp67 = icmp eq i32 %25, 64
  br i1 %cmp67, label %if.then65.cond.end_crit_edge, label %cond.false

if.then65.cond.end_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  %sh_prom = zext i32 %25 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then65.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.then65.cond.end_crit_edge ]
  tail call fastcc void @dma_set_mask_and_coherent(ptr noundef %3, i64 noundef %cond)
  br label %do.body73

do.body73:                                        ; preds = %cond.end, %if.end61.do.body73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_alloc.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_alloc, %if.then85)) #6
          to label %do.end94 [label %if.then85], !srcloc !93

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %main_ndev, align 4
  %28 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pring_va.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_alloc.__UNIQUE_ID_ddebug345, ptr noundef %27, ptr noundef nonnull @.str.10, ptr noundef %29, ptr noundef %pring_pa, i32 noundef 32, i32 noundef %num_descriptors, i32 noundef %mul) #6
  br label %do.end94

do.end94:                                         ; preds = %if.then85, %do.body73
  %30 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pring_va.i, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.10, ptr noundef %31, ptr noundef %pring_pa, i32 noundef 32, i32 noundef %num_descriptors, i32 noundef %mul) #6
  %32 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pring_va.i, align 4
  %tobool101.not = icmp eq ptr %33, null
  br i1 %tobool101.not, label %if.then102, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.end94
  %div126367 = lshr i32 %descriptor_size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %descriptor_size)
  %cmp127392.not = icmp ult i32 %descriptor_size, 4
  %conv142 = trunc i32 %descriptor_size to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv142)
  %umax = call i32 @llvm.umax.i32(i32 %div126367, i32 1)
  br label %for.body

if.then102:                                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.wil_pmc_alloc) #6
  br label %release_pmc_skb_list

for.body:                                         ; preds = %for.inc148.for.body_crit_edge, %for.body.lr.ph
  %i.0395 = phi i32 [ 0, %for.body.lr.ph ], [ %inc149, %for.inc148.for.body_crit_edge ]
  %35 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pring_va.i, align 4
  %arrayidx = getelementptr %struct.vring_tx_desc, ptr %36, i32 %i.0395
  %37 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %descriptors, align 4
  %arrayidx107 = getelementptr %struct.desc_alloc_info, ptr %38, i32 %i.0395
  %call.i380 = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %descriptor_size, ptr noundef %arrayidx107, i32 noundef 3264, i32 noundef 0) #6
  %39 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %descriptors, align 4
  %va = getelementptr %struct.desc_alloc_info, ptr %40, i32 %i.0395, i32 1
  %41 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i380, ptr %va, align 4
  %42 = load ptr, ptr %descriptors, align 4
  %va113 = getelementptr %struct.desc_alloc_info, ptr %42, i32 %i.0395, i32 1
  %43 = ptrtoint ptr %va113 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %va113, align 4
  %tobool114.not = icmp eq ptr %44, null
  br i1 %tobool114.not, label %cleanup, label %for.cond125.preheader, !prof !94

for.cond125.preheader:                            ; preds = %for.body
  br i1 %cmp127392.not, label %for.cond125.preheader.for.inc148_crit_edge, label %for.cond125.preheader.for.body128_crit_edge

for.cond125.preheader.for.body128_crit_edge:      ; preds = %for.cond125.preheader
  br label %for.body128

for.cond125.preheader.for.inc148_crit_edge:       ; preds = %for.cond125.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc148

for.body128:                                      ; preds = %for.body128.for.body128_crit_edge, %for.cond125.preheader.for.body128_crit_edge
  %j.0393 = phi i32 [ %inc, %for.body128.for.body128_crit_edge ], [ 0, %for.cond125.preheader.for.body128_crit_edge ]
  %45 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %descriptors, align 4
  %va131 = getelementptr %struct.desc_alloc_info, ptr %46, i32 %i.0395, i32 1
  %47 = ptrtoint ptr %va131 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %va131, align 4
  %add.ptr = getelementptr i32, ptr %48, i32 %j.0393
  %or = or i32 %j.0393, -1329987584
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or, ptr %add.ptr, align 4
  %inc = add nuw nsw i32 %j.0393, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body128.for.inc148_crit_edge, label %for.body128.for.body128_crit_edge

for.body128.for.body128_crit_edge:                ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body128

for.body128.for.inc148_crit_edge:                 ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc148

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.wil_pmc_alloc, i32 noundef %i.0395) #6
  br label %land.rhs.preheader

for.inc148:                                       ; preds = %for.body128.for.inc148_crit_edge, %for.cond125.preheader.for.inc148_crit_edge
  %50 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %descriptors, align 4
  %arrayidx133 = getelementptr %struct.desc_alloc_info, ptr %51, i32 %i.0395
  %52 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx133, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = call ptr @memset(ptr %arrayidx, i32 0, i32 16)
  %dd.sroa.4.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %56 = ptrtoint ptr %dd.sroa.4.0.arrayidx.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 1536, ptr %dd.sroa.4.0.arrayidx.sroa_idx, align 1
  %dd.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 20
  %57 = ptrtoint ptr %dd.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %54, ptr %dd.sroa.5.0.arrayidx.sroa_idx, align 1
  %dd.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 24
  %dd.sroa.8.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 30
  %58 = call ptr @memset(ptr %dd.sroa.6.0.arrayidx.sroa_idx, i32 0, i32 6)
  %59 = ptrtoint ptr %dd.sroa.8.0.arrayidx.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %34, ptr %dd.sroa.8.0.arrayidx.sroa_idx, align 1
  %inc149 = add nuw i32 %i.0395, 1
  %exitcond400.not = icmp eq i32 %inc149, %num_descriptors
  br i1 %exitcond400.not, label %do.body153, label %for.inc148.for.body_crit_edge

for.inc148.for.body_crit_edge:                    ; preds = %for.inc148
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body153:                                       ; preds = %for.inc148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_alloc.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_alloc, %if.then165)) #6
          to label %do.end171 [label %if.then165], !srcloc !93

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_alloc.__UNIQUE_ID_ddebug346, ptr noundef %61, ptr noundef nonnull @.str.13) #6
  br label %do.end171

do.end171:                                        ; preds = %if.then165, %do.body153
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.13) #6
  %62 = ptrtoint ptr %pmc_cmd to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %pmc_cmd, align 1
  %63 = ptrtoint ptr %num_descriptors13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_descriptors13, align 4
  %conv175 = trunc i32 %64 to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv175)
  %ring_size = getelementptr inbounds %struct.wmi_pmc_cmd, ptr %pmc_cmd, i32 0, i32 2
  %66 = ptrtoint ptr %ring_size to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %65, ptr %ring_size, align 1
  %67 = ptrtoint ptr %pring_pa to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pring_pa, align 4
  %conv177 = zext i32 %68 to i64
  %69 = tail call i64 @llvm.bswap.i64(i64 %conv177)
  %mem_base = getelementptr inbounds %struct.wmi_pmc_cmd, ptr %pmc_cmd, i32 0, i32 3
  %70 = ptrtoint ptr %mem_base to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 %69, ptr %mem_base, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_alloc.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_alloc, %if.then192)) #6
          to label %do.end198 [label %if.then192], !srcloc !93

if.then192:                                       ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_alloc.__UNIQUE_ID_ddebug347, ptr noundef %72, ptr noundef nonnull @.str.14) #6
  br label %do.end198

do.end198:                                        ; preds = %if.then192, %do.end171
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.14) #6
  %mid = getelementptr i8, ptr %5, i32 3276
  %73 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mid, align 4
  %call201 = call i32 @wmi_send(ptr noundef %wil, i16 noundef zeroext -4017, i8 noundef zeroext %74, ptr noundef nonnull %pmc_cmd, i16 noundef zeroext 12) #6
  %last_cmd_status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 4
  %75 = ptrtoint ptr %last_cmd_status to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call201, ptr %last_cmd_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool203.not = icmp eq i32 %call201, 0
  br i1 %tobool203.not, label %do.end198.cleanup236_crit_edge, label %if.then204

do.end198.cleanup236_crit_edge:                   ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup236

if.then204:                                       ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.wil_pmc_alloc, i32 noundef %call201) #6
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.then204, %cleanup
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.wil_pmc_alloc) #6
  br label %land.rhs

land.rhs:                                         ; preds = %for.body215.land.rhs_crit_edge, %land.rhs.preheader
  %i.1398 = phi i32 [ %inc226, %for.body215.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %76 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %descriptors, align 4
  %va213 = getelementptr %struct.desc_alloc_info, ptr %77, i32 %i.1398, i32 1
  %78 = ptrtoint ptr %va213 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %va213, align 4
  %tobool214.not = icmp eq ptr %79, null
  br i1 %tobool214.not, label %land.rhs.for.end227_crit_edge, label %for.body215

land.rhs.for.end227_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end227

for.body215:                                      ; preds = %land.rhs
  %arrayidx212 = getelementptr %struct.desc_alloc_info, ptr %77, i32 %i.1398
  %80 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx212, align 4
  call void @dma_free_attrs(ptr noundef %3, i32 noundef %descriptor_size, ptr noundef nonnull %79, i32 noundef %81, i32 noundef 0) #6
  %82 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %descriptors, align 4
  %va224 = getelementptr %struct.desc_alloc_info, ptr %83, i32 %i.1398, i32 1
  %84 = ptrtoint ptr %va224 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %va224, align 4
  %inc226 = add nuw i32 %i.1398, 1
  %exitcond401.not = icmp eq i32 %inc226, %num_descriptors
  br i1 %exitcond401.not, label %for.body215.for.end227_crit_edge, label %for.body215.land.rhs_crit_edge

for.body215.land.rhs_crit_edge:                   ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.body215.for.end227_crit_edge:                 ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end227

for.end227:                                       ; preds = %for.body215.for.end227_crit_edge, %land.rhs.for.end227_crit_edge
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.wil_pmc_alloc) #6
  %85 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pring_va.i, align 4
  %87 = ptrtoint ptr %pring_pa to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pring_pa, align 4
  call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %86, i32 noundef %88, i32 noundef 0) #6
  %89 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %pring_va.i, align 4
  br label %release_pmc_skb_list

release_pmc_skb_list:                             ; preds = %for.end227, %if.then102
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.wil_pmc_alloc) #6
  %90 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %descriptors, align 4
  call void @kfree(ptr noundef %91) #6
  %92 = ptrtoint ptr %descriptors to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %descriptors, align 4
  br label %no_release_err

no_release_err:                                   ; preds = %release_pmc_skb_list, %if.then31, %if.then11, %if.then8, %if.then5, %if.then
  %last_cmd_err.0 = phi i32 [ -12, %if.then ], [ -22, %if.then5 ], [ -22, %if.then8 ], [ -22, %if.then11 ], [ -12, %release_pmc_skb_list ], [ -12, %if.then31 ]
  %last_cmd_status234 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 4
  %93 = ptrtoint ptr %last_cmd_status234 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %last_cmd_err.0, ptr %last_cmd_status234, align 4
  br label %cleanup236

cleanup236:                                       ; preds = %no_release_err, %do.end198.cleanup236_crit_edge
  call void @mutex_unlock(ptr noundef %pmc1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pmc_cmd) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_send(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_pmc_free(ptr noundef %wil, i32 noundef %send_pmc_cmd) local_unnamed_addr #0 align 64 {
entry:
  %pmc_cmd = alloca %struct.wmi_pmc_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pmc1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pmc_cmd) #6
  %6 = call ptr @memset(ptr %pmc_cmd, i32 0, i32 12)
  tail call void @mutex_lock_nested(ptr noundef %pmc1, i32 noundef 0) #6
  %last_cmd_status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 4
  %7 = ptrtoint ptr %last_cmd_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %last_cmd_status, align 4
  %pring_va.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 1
  %8 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pring_va.i, align 4
  %tobool.i.not = icmp eq ptr %9, null
  br i1 %tobool.i.not, label %do.body5, label %if.end18

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_free.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_free, %if.then10)) #6
          to label %do.end13 [label %if.then10], !srcloc !93

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_free.__UNIQUE_ID_ddebug348, ptr noundef %11, ptr noundef nonnull @.str.20) #6
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body5
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.20) #6
  %12 = ptrtoint ptr %last_cmd_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %last_cmd_status, align 4
  tail call void @mutex_unlock(ptr noundef %pmc1) #6
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send_pmc_cmd)
  %tobool19.not = icmp eq i32 %send_pmc_cmd, 0
  br i1 %tobool19.not, label %if.end18.if.then53_crit_edge, label %do.body23

if.end18.if.then53_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53

do.body23:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_free.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_free, %if.then35)) #6
          to label %do.end41 [label %if.then35], !srcloc !93

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_free.__UNIQUE_ID_ddebug349, ptr noundef %14, ptr noundef nonnull @.str.21) #6
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %do.body23
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.21) #6
  %15 = ptrtoint ptr %pmc_cmd to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %pmc_cmd, align 1
  %mid = getelementptr i8, ptr %5, i32 3276
  %16 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mid, align 4
  %call44 = call i32 @wmi_send(ptr noundef %wil, i16 noundef zeroext -4017, i8 noundef zeroext %17, ptr noundef nonnull %pmc_cmd, i16 noundef zeroext 12) #6
  %18 = ptrtoint ptr %last_cmd_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call44, ptr %last_cmd_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool47.not = icmp eq i32 %call44, 0
  br i1 %tobool47.not, label %do.end41.if.end51_crit_edge, label %if.then48

do.end41.if.end51_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then48:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19, i32 noundef %call44) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %do.end41.if.end51_crit_edge
  %19 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load ptr, ptr %pring_va.i, align 4
  %tobool52.not = icmp eq ptr %.pr, null
  br i1 %tobool52.not, label %if.else, label %if.end51.if.then53_crit_edge

if.end51.if.then53_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53

if.then53:                                        ; preds = %if.end51.if.then53_crit_edge, %if.end18.if.then53_crit_edge
  %num_descriptors = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 5
  %20 = ptrtoint ptr %num_descriptors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_descriptors, align 4
  %mul = shl i32 %21, 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_free.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_free, %if.then68)) #6
          to label %do.end75 [label %if.then68], !srcloc !93

if.then68:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %main_ndev, align 4
  %24 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pring_va.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_free.__UNIQUE_ID_ddebug350, ptr noundef %23, ptr noundef nonnull @.str.23, ptr noundef %25) #6
  br label %do.end75

do.end75:                                         ; preds = %if.then68, %if.then53
  %26 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pring_va.i, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.23, ptr noundef %27) #6
  %28 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pring_va.i, align 4
  %pring_pa = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 2
  %30 = ptrtoint ptr %pring_pa to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pring_pa, align 4
  call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %29, i32 noundef %31, i32 noundef 0) #6
  %32 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %pring_va.i, align 4
  br label %if.end82

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %last_cmd_status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -2, ptr %last_cmd_status, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else, %do.end75
  %descriptors = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 3
  %34 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %descriptors, align 4
  %tobool83.not = icmp eq ptr %35, null
  br i1 %tobool83.not, label %if.else148, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end82
  %num_descriptors85 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 5
  %36 = ptrtoint ptr %num_descriptors85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_descriptors85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp224 = icmp sgt i32 %37, 0
  br i1 %cmp224, label %land.rhs.lr.ph, label %for.cond.preheader.do.body98_crit_edge

for.cond.preheader.do.body98_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body98

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %descriptor_size = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 6
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0225 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.body.land.rhs_crit_edge ]
  %38 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %descriptors, align 4
  %va = getelementptr %struct.desc_alloc_info, ptr %39, i32 %i.0225, i32 1
  %40 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %va, align 4
  %tobool87.not = icmp eq ptr %41, null
  br i1 %tobool87.not, label %land.rhs.do.body98_crit_edge, label %for.body

land.rhs.do.body98_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body98

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr %struct.desc_alloc_info, ptr %39, i32 %i.0225
  %42 = ptrtoint ptr %descriptor_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %descriptor_size, align 4
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  call void @dma_free_attrs(ptr noundef %3, i32 noundef %43, ptr noundef nonnull %41, i32 noundef %45, i32 noundef 0) #6
  %46 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %descriptors, align 4
  %va95 = getelementptr %struct.desc_alloc_info, ptr %47, i32 %i.0225, i32 1
  %48 = ptrtoint ptr %va95 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %va95, align 4
  %inc = add nuw nsw i32 %i.0225, 1
  %49 = ptrtoint ptr %num_descriptors85 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_descriptors85, align 4
  %cmp = icmp slt i32 %inc, %50
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.do.body98_crit_edge

for.body.do.body98_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body98

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

do.body98:                                        ; preds = %for.body.do.body98_crit_edge, %land.rhs.do.body98_crit_edge, %for.cond.preheader.do.body98_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.do.body98_crit_edge ], [ %i.0225, %land.rhs.do.body98_crit_edge ], [ %inc, %for.body.do.body98_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_free.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_free, %if.then110)) #6
          to label %do.end117 [label %if.then110], !srcloc !93

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %main_ndev, align 4
  %53 = ptrtoint ptr %num_descriptors85 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_descriptors85, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_free.__UNIQUE_ID_ddebug351, ptr noundef %52, ptr noundef nonnull @.str.24, i32 noundef %i.0.lcssa, i32 noundef %54) #6
  br label %do.end117

do.end117:                                        ; preds = %if.then110, %do.body98
  %55 = ptrtoint ptr %num_descriptors85 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_descriptors85, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.24, i32 noundef %i.0.lcssa, i32 noundef %56) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_free.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_free, %if.then135)) #6
          to label %do.end142 [label %if.then135], !srcloc !93

if.then135:                                       ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %main_ndev, align 4
  %59 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %descriptors, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_free.__UNIQUE_ID_ddebug352, ptr noundef %58, ptr noundef nonnull @.str.25, ptr noundef %60) #6
  br label %do.end142

do.end142:                                        ; preds = %if.then135, %do.end117
  %61 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %descriptors, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.25, ptr noundef %62) #6
  %63 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %descriptors, align 4
  call void @kfree(ptr noundef %64) #6
  %65 = ptrtoint ptr %descriptors to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %descriptors, align 4
  br label %if.end150

if.else148:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %last_cmd_status to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -2, ptr %last_cmd_status, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.else148, %do.end142
  call void @mutex_unlock(ptr noundef %pmc1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end150, %do.end13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pmc_cmd) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_pmc_last_cmd_status(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_last_cmd_status.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_last_cmd_status, %if.then)) #6
          to label %do.end5 [label %if.then], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %last_cmd_status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 4
  %2 = ptrtoint ptr %last_cmd_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_cmd_status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_last_cmd_status.__UNIQUE_ID_ddebug353, ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %3) #6
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %last_cmd_status7 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 85, i32 4
  %4 = ptrtoint ptr %last_cmd_status7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_cmd_status7, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.27, i32 noundef %5) #6
  %6 = ptrtoint ptr %last_cmd_status7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_cmd_status7, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_pmc_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %f_pos) local_unnamed_addr #0 align 64 {
entry:
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pmc1 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #6
  tail call void @mutex_lock_nested(ptr noundef %pmc1, i32 noundef 0) #6
  %pring_va.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 1
  %2 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pring_va.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wil_pmc_read) #6
  %last_cmd_status = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 4
  %4 = ptrtoint ptr %last_cmd_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %last_cmd_status, align 4
  tail call void @mutex_unlock(ptr noundef %pmc1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %descriptor_size = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 6
  %5 = ptrtoint ptr %descriptor_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %descriptor_size, align 4
  %num_descriptors = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 5
  %7 = ptrtoint ptr %num_descriptors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_descriptors, align 4
  %mul = mul i32 %8, %6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_read.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_read, %if.then10)) #6
          to label %do.end13 [label %if.then10], !srcloc !93

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_ndev, align 4
  %11 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %f_pos, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_read.__UNIQUE_ID_ddebug354, ptr noundef %10, ptr noundef nonnull @.str.29, i32 noundef %count, i64 noundef %12) #6
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %if.end
  %13 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %f_pos, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %count, i64 noundef %14) #6
  %last_cmd_status16 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 4
  %15 = ptrtoint ptr %last_cmd_status16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %last_cmd_status16, align 4
  %16 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %f_pos, align 8
  %18 = ptrtoint ptr %descriptor_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %descriptor_size, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %17)
  %cmp187 = icmp ult i64 %17, 4294967296
  br i1 %cmp187, label %if.then195, label %if.else201, !prof !95

if.then195:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %conv196 = trunc i64 %17 to i32
  %div199 = udiv i32 %conv196, %19
  %conv200 = zext i32 %div199 to i64
  br label %if.end205

if.else201:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %17) #10, !srcloc !96
  %asmresult1.i = extractvalue { i64, i64 } %20, 1
  br label %if.end205

if.end205:                                        ; preds = %if.else201, %if.then195
  %idx.0 = phi i64 [ %conv200, %if.then195 ], [ %asmresult1.i, %if.else201 ]
  %conv208 = sext i32 %19 to i64
  %mul209 = mul i64 %idx.0, %conv208
  %sub210 = sub i64 %17, %mul209
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub210, ptr %offset, align 8
  %conv211 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %conv211)
  %cmp212.not = icmp slt i64 %17, %conv211
  br i1 %cmp212.not, label %do.body242, label %do.body217

do.body217:                                       ; preds = %if.end205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_read.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_read, %if.then229)) #6
          to label %do.end235 [label %if.then229], !srcloc !93

if.then229:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev230 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %main_ndev230 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %main_ndev230, align 4
  %24 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %f_pos, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_read.__UNIQUE_ID_ddebug355, ptr noundef %23, ptr noundef nonnull @.str.30, i64 noundef %25, i32 noundef %mul) #6
  br label %do.end235

do.end235:                                        ; preds = %if.then229, %do.body217
  %26 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %f_pos, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.30, i64 noundef %27, i32 noundef %mul) #6
  %28 = ptrtoint ptr %last_cmd_status16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -34, ptr %last_cmd_status16, align 4
  br label %out

do.body242:                                       ; preds = %if.end205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmc_read.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmc_read, %if.then254)) #6
          to label %do.end260 [label %if.then254], !srcloc !93

if.then254:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev255 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %main_ndev255 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %main_ndev255, align 4
  %31 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %f_pos, align 8
  %33 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %offset, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmc_read.__UNIQUE_ID_ddebug356, ptr noundef %30, ptr noundef nonnull @.str.31, i64 noundef %32, i64 noundef %idx.0, i64 noundef %34, i32 noundef %count) #6
  br label %do.end260

do.end260:                                        ; preds = %if.then254, %do.body242
  %35 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %f_pos, align 8
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %offset, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.31, i64 noundef %36, i64 noundef %idx.0, i64 noundef %38, i32 noundef %count) #6
  %descriptors = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 3
  %39 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %descriptors, align 4
  %idxprom = trunc i64 %idx.0 to i32
  %va = getelementptr %struct.desc_alloc_info, ptr %40, i32 %idxprom, i32 1
  %41 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %va, align 4
  %43 = ptrtoint ptr %descriptor_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %descriptor_size, align 4
  %call264 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %offset, ptr noundef %42, i32 noundef %44) #6
  %conv265 = zext i32 %call264 to i64
  %45 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %f_pos, align 8
  %add266 = add i64 %46, %conv265
  store i64 %add266, ptr %f_pos, align 8
  br label %out

out:                                              ; preds = %do.end260, %do.end235
  %retval2.0 = phi i32 [ 0, %do.end235 ], [ %call264, %do.end260 ]
  call void @mutex_unlock(ptr noundef %pmc1) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %retval2.0, %out ], [ -1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @wil_pmc_llseek(ptr nocapture noundef %filp, i64 noundef %off, i32 noundef %whence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pmc1 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85
  tail call void @mutex_lock_nested(ptr noundef %pmc1, i32 noundef 0) #6
  %pring_va.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 1
  %2 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pring_va.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wil_pmc_llseek) #6
  %last_cmd_status = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 4
  %4 = ptrtoint ptr %last_cmd_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %last_cmd_status, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %descriptor_size = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 6
  %5 = ptrtoint ptr %descriptor_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %descriptor_size, align 4
  %num_descriptors = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 5
  %7 = ptrtoint ptr %num_descriptors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_descriptors, align 4
  %mul = mul i32 %8, %6
  %9 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %whence, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb3
    i32 2, label %sw.epilog.thread
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %f_pos = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 10
  %10 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %f_pos, align 8
  %add = add i64 %11, %off
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %mul to i64
  br label %if.end7

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %newpos.0 = phi i64 [ %add, %sw.bb3 ], [ %off, %if.end.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %newpos.0)
  %cmp = icmp slt i64 %newpos.0, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end7_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.if.end7_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = zext i32 %mul to i64
  br label %if.end7

if.end7:                                          ; preds = %sw.epilog.if.end7_crit_edge, %sw.epilog.thread
  %conv8.pre-phi = phi i64 [ %.pre, %sw.epilog.if.end7_crit_edge ], [ %conv, %sw.epilog.thread ]
  %newpos.036 = phi i64 [ %newpos.0, %sw.epilog.if.end7_crit_edge ], [ %conv, %sw.epilog.thread ]
  %12 = tail call i64 @llvm.umin.i64(i64 %newpos.036, i64 %conv8.pre-phi)
  %f_pos14 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 10
  %13 = ptrtoint ptr %f_pos14 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %f_pos14, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ %12, %if.end7 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pmc1) #6
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_pmcring_read(ptr noundef %s, ptr nocapture noundef readnone %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pmc1 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85
  %num_descriptors = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 5
  %2 = ptrtoint ptr %num_descriptors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_descriptors, align 4
  %mul = shl i32 %3, 5
  tail call void @mutex_lock_nested(ptr noundef %pmc1, i32 noundef 0) #6
  %pring_va.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 1
  %4 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pring_va.i, align 4
  %tobool.i.not = icmp eq ptr %5, null
  br i1 %tobool.i.not, label %if.then, label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wil_pmcring_read) #6
  %last_cmd_status = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 85, i32 4
  %6 = ptrtoint ptr %last_cmd_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %last_cmd_status, align 4
  br label %cleanup

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pmcring_read.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pmcring_read, %if.then9)) #6
          to label %do.end12 [label %if.then9], !srcloc !93

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pmcring_read.__UNIQUE_ID_ddebug357, ptr noundef %8, ptr noundef nonnull @.str.32, i32 noundef %mul) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %mul) #6
  %9 = ptrtoint ptr %pring_va.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pring_va.i, align 4
  %call15 = tail call i32 @seq_write(ptr noundef %s, ptr noundef %10, i32 noundef %mul) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then
  %retval.0 = phi i32 [ 0, %do.end12 ], [ -1, %if.then ]
  tail call void @mutex_unlock(ptr noundef %pmc1) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !22, !24, !25, !27, !29, !31, !32, !34, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !81, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @wil_pmc_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 29, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 54, i32 3}
!5 = !{ptr @__func__.wil_pmc_alloc, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 58, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 66, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 74, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 84, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @wil_pmc_alloc.__UNIQUE_ID_ddebug343, !13, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 92, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 96, i32 2}
!21 = !{ptr @wil_pmc_alloc.__UNIQUE_ID_ddebug344, !20, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 124, i32 2}
!24 = !{ptr @wil_pmc_alloc.__UNIQUE_ID_ddebug345, !23, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 132, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 151, i32 4}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 171, i32 2}
!31 = !{ptr @wil_pmc_alloc.__UNIQUE_ID_ddebug346, !30, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 177, i32 2}
!34 = !{ptr @wil_pmc_alloc.__UNIQUE_ID_ddebug347, !33, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 184, i32 3}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 195, i32 2}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 204, i32 2}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 214, i32 2}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 238, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @wil_pmc_free.__UNIQUE_ID_ddebug348, !44, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 246, i32 3}
!49 = !{ptr @wil_pmc_free.__UNIQUE_ID_ddebug349, !48, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 252, i32 4}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 266, i32 3}
!54 = !{ptr @wil_pmc_free.__UNIQUE_ID_ddebug350, !53, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 286, i32 3}
!57 = !{ptr @wil_pmc_free.__UNIQUE_ID_ddebug351, !56, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 288, i32 3}
!60 = !{ptr @wil_pmc_free.__UNIQUE_ID_ddebug352, !59, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 305, i32 2}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @wil_pmc_last_cmd_status.__UNIQUE_ID_ddebug353, !62, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 327, i32 3}
!67 = !{ptr @__func__.wil_pmc_read, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 335, i32 2}
!70 = !{ptr @wil_pmc_read.__UNIQUE_ID_ddebug354, !69, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 346, i32 3}
!73 = !{ptr @wil_pmc_read.__UNIQUE_ID_ddebug355, !72, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 353, i32 2}
!76 = !{ptr @wil_pmc_read.__UNIQUE_ID_ddebug356, !75, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!77 = !{ptr @__func__.wil_pmc_llseek, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 380, i32 3}
!79 = !{ptr @__func__.wil_pmcring_read, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 431, i32 3}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/wil6210/pmc.c", i32 437, i32 2}
!83 = !{ptr @wil_pmcring_read.__UNIQUE_ID_ddebug357, !82, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2148487774, i64 2148487779, i64 2148487792, i64 2148487836, i64 2148487870, i64 2148487891}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2148512961, i64 2148513241, i64 2148513575, i64 2148513909}
