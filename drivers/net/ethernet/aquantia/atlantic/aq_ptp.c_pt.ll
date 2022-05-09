; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/aq_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ptp_tm_offset = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.4 }
%union.anon.4 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aq_nic_s = type { %struct.atomic_t, i32, [8 x ptr], [32 x ptr], ptr, ptr, i32, i32, i32, i8, ptr, ptr, %struct.aq_nic_cfg_s, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.aq_hw_link_status_s, %struct.anon.128, [128 x i32], ptr, i32, i32, %struct.mutex, ptr, ptr, %struct.aq_hw_rx_fltrs_s }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.anon.128 = type { i32, [32 x [6 x i8]] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.aq_hw_rx_fltrs_s = type { %struct.hlist_head, i16, %struct.aq_hw_rx_fl2, %struct.aq_hw_rx_fl3l4, i8 }
%struct.hlist_head = type { ptr }
%struct.aq_hw_rx_fl2 = type { [16 x %struct.aq_rx_filter_vlan] }
%struct.aq_rx_filter_vlan = type { i8, i8, i16, i8 }
%struct.aq_hw_rx_fl3l4 = type { i8, i8, i8, i8 }
%struct.aq_ptp_s = type { ptr, %struct.hwtstamp_config, %struct.spinlock, %struct.spinlock, ptr, %struct.ptp_clock_info, %struct.atomic_t, %struct.atomic_t, %struct.aq_ring_param_s, %struct.ptp_tx_timeout, i32, %struct.napi_struct, %struct.aq_ring_s, %struct.aq_ring_s, %struct.aq_ring_s, %struct.ptp_skb_ring, %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l2, %struct.delayed_work, i32, i8, i64, i8 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.aq_ring_param_s = type { i32, i32, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.ptp_tx_timeout = type { %struct.spinlock, i8, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.aq_ring_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %union.aq_ring_stats_s, i32, i32 }
%union.aq_ring_stats_s = type { %struct.aq_ring_stats_rx_s }
%struct.aq_ring_stats_rx_s = type { %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ptp_skb_ring = type { ptr, %struct.spinlock, i32, i32, i32 }
%struct.aq_rx_filter_l3l4 = type { i32, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.aq_rx_filter_l2 = type { i8, i8, i8, i8, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.aq_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.34, %union.anon.37, %union.anon.38, [48 x i8], %union.anon.39, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.41, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, ptr, %union.anon.36 }
%union.anon.36 = type { ptr }
%union.anon.37 = type { ptr }
%union.anon.38 = type { i64 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i32, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.43, i32, i32, i32, i16, i16, %union.anon.45, i32, %union.anon.46, %union.anon.47, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.43 = type { i32 }
%union.anon.45 = type { i32 }
%union.anon.46 = type { i32 }
%union.anon.47 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.129, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.129 = type { ptr }
%struct.aq_hw_caps_s = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.hw_atl_utils_mbox = type { %struct.hw_atl_utils_mbox_header, %struct.hw_atl_stats_s, %struct.hw_atl_info }
%struct.hw_atl_utils_mbox_header = type { i32, i32, i32 }
%struct.hw_atl_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hw_atl_info = type { [6 x i8], i16, i16, i8, i8, [4 x %struct.hw_atl_cable_diag], %struct.hw_atl_ptp_offset, [12 x i8], i32, i32, i32, [7 x i32], [3 x i32], [7 x i32], i32, [12 x i32], i32, i32, i32, i32, [3 x i32], [18 x i32], [4 x i16] }
%struct.hw_atl_cable_diag = type { i8, i8, i8, i8 }
%struct.hw_atl_ptp_offset = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.aq_hw_s = type { %struct.atomic_t, i8, ptr, ptr, ptr, %struct.aq_hw_link_status_s, %struct.hw_atl_utils_mbox, %struct.hw_atl_stats_s, %struct.aq_stats_s, i64, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.hw_atl_utils_fw_rpc, i64, i16, ptr }
%struct.aq_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hw_atl_utils_fw_rpc = type { i32, %union.anon.106 }
%union.anon.106 = type { %struct.offload_info }
%struct.offload_info = type { i32, i32, [6 x i8], [2 x i8], %struct.offload_ip_info, %struct.offload_port_info, %struct.offload_ka_info, %struct.offload_rr_info, [0 x i8] }
%struct.offload_ip_info = type { i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.offload_port_info = type { i16, i16, i32, i32 }
%struct.offload_ka_info = type { i16, i16, i32, i32, i32, i32 }
%struct.offload_rr_info = type { i32, i32, i32, i32 }
%struct.aq_fw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.110, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.110 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ptp_clock_event = type { i32, i32, %union.anon.138 }
%union.anon.138 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.ptp_clock_request = type { i32, %union.anon.130 }
%union.anon.130 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.131, %struct.ptp_clock_time, i32, i32, %union.anon.132 }
%union.anon.131 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.132 = type { %struct.ptp_clock_time }

@ptp_offset = internal global { [6 x %struct.ptp_tm_offset], [56 x i8] } zeroinitializer, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"have timestamp but tx_queues empty\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SKB Ring is overflow (%u)!\0A\00", [36 x i8] zeroinitializer }, align 32
@aq_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&aq_ptp->ptp_lock\00", [46 x i8] zeroinitializer }, align 32
@aq_ptp_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&aq_ptp->ptp_ring_lock\00", [41 x i8] zeroinitializer }, align 32
@aq_ptp_clock = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"atlantic ptp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 999999999, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @aq_ptp_adjfine, ptr null, ptr null, ptr @aq_ptp_adjtime, ptr @aq_ptp_gettime, ptr null, ptr null, ptr @aq_ptp_settime, ptr @aq_ptp_gpio_feature_enable, ptr @aq_ptp_verify, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptp_clock_register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@aq_ptp_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&aq_ptp->poll_sync)->work)\00", [49 x i8] zeroinitializer }, align 32
@aq_ptp_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&aq_ptp->poll_sync)->timer\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PTP Timeout. Clearing Tx Timestamp SKBs\0A\00", [55 x i8] zeroinitializer }, align 32
@aq_ptp_skb_ring_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ring->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@aq_ptp_hw_pin_conf.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atlantic\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aq_ptp_hw_pin_conf\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/aquantia/atlantic/aq_ptp.c\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Enable GPIO %d pulsing, start time %llu, period %u\0A\00", [44 x i8] zeroinitializer }, align 32
@aq_ptp_hw_pin_conf.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Disable GPIO %d pulsing, start time %llu, period %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AQ_GPIO%d\00", [22 x i8] zeroinitializer }, align 32
@aq_ptp_tx_timeout_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&timeout->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Unable to get correct GPIO TS\00", [62 x i8] zeroinitializer }, align 32
@__func__.aq_ptp_sync_ts_updated = private unnamed_addr constant [23 x i8] c"aq_ptp_sync_ts_updated\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"ptp_offset\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 94, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 542, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 772, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1203, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1204, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"aq_ptp_clock\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1029, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1210, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1234, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 271, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 267, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 190, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 108, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 370, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 374, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1115, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 219, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [51 x i8] c"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1341, i32 9 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @ptp_offset, ptr @.str, ptr @.str.1, ptr @aq_ptp_init.__key, ptr @.str.2, ptr @aq_ptp_init.__key.3, ptr @.str.4, ptr @aq_ptp_clock, ptr @.str.5, ptr @aq_ptp_init.__key.6, ptr @.str.7, ptr @aq_ptp_init.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @aq_ptp_skb_ring_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @aq_ptp_tx_timeout_init.__key, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_offset to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ptp_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ptp_clock to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ptp_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ptp_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ptp_skb_ring_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ptp_tx_timeout_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ptp_tm_offset_set(ptr nocapture noundef readonly %aq_nic, i32 noundef %mbps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = load i32, ptr @ptp_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %mbps)
  %cmp3 = icmp eq i32 %2, %mbps
  br i1 %cmp3, label %for.body.preheader.if.then4_crit_edge, label %for.inc

for.body.preheader.if.then4_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %for.inc.4.if.then4_crit_edge, %for.inc.3.if.then4_crit_edge, %for.inc.2.if.then4_crit_edge, %for.inc.1.if.then4_crit_edge, %for.inc.if.then4_crit_edge, %for.body.preheader.if.then4_crit_edge
  %i.021.lcssa = phi i32 [ 0, %for.body.preheader.if.then4_crit_edge ], [ 1, %for.inc.if.then4_crit_edge ], [ 2, %for.inc.1.if.then4_crit_edge ], [ 3, %for.inc.2.if.then4_crit_edge ], [ 4, %for.inc.3.if.then4_crit_edge ], [ 5, %for.inc.4.if.then4_crit_edge ]
  %egress6 = getelementptr [6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 %i.021.lcssa, i32 1
  %3 = ptrtoint ptr %egress6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %egress6, align 4
  %ingress8 = getelementptr [6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 %i.021.lcssa, i32 2
  %5 = ptrtoint ptr %ingress8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ingress8, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body.preheader
  %7 = load i32, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mbps)
  %cmp3.1 = icmp eq i32 %7, %mbps
  br i1 %cmp3.1, label %for.inc.if.then4_crit_edge, label %for.inc.1

for.inc.if.then4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.inc.1:                                        ; preds = %for.inc
  %8 = load i32, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %mbps)
  %cmp3.2 = icmp eq i32 %8, %mbps
  br i1 %cmp3.2, label %for.inc.1.if.then4_crit_edge, label %for.inc.2

for.inc.1.if.then4_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.inc.2:                                        ; preds = %for.inc.1
  %9 = load i32, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mbps)
  %cmp3.3 = icmp eq i32 %9, %mbps
  br i1 %cmp3.3, label %for.inc.2.if.then4_crit_edge, label %for.inc.3

for.inc.2.if.then4_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.inc.3:                                        ; preds = %for.inc.2
  %10 = load i32, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mbps)
  %cmp3.4 = icmp eq i32 %10, %mbps
  br i1 %cmp3.4, label %for.inc.3.if.then4_crit_edge, label %for.inc.4

for.inc.3.if.then4_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.inc.4:                                        ; preds = %for.inc.3
  %11 = load i32, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mbps)
  %cmp3.5 = icmp eq i32 %11, %mbps
  br i1 %cmp3.5, label %for.inc.4.if.then4_crit_edge, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.4.if.then4_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.end:                                          ; preds = %for.inc.4.for.end_crit_edge, %if.then4
  %egress.0 = phi i32 [ %4, %if.then4 ], [ 0, %for.inc.4.for.end_crit_edge ]
  %ingress.0 = phi i32 [ %6, %if.then4 ], [ 0, %for.inc.4.for.end_crit_edge ]
  %offset_egress = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %offset_egress, i32 noundef 4) #13
  %12 = ptrtoint ptr %offset_egress to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %egress.0, ptr %offset_egress, align 4
  %offset_ingress = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 7
  %call.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %offset_ingress, i32 noundef 4) #13
  %13 = ptrtoint ptr %offset_ingress to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %ingress.0, ptr %offset_ingress, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ptp_tx_hwtstamp(ptr nocapture noundef readonly %aq_nic, i64 noundef %timestamp) local_unnamed_addr #0 align 64 {
entry:
  %hwtstamp = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %lock.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %tail.i.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 4
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 3
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.i = icmp eq i32 %3, %5
  br i1 %cmp.i.i, label %aq_ptp_skb_get.exit.thread, label %aq_ptp_skb_get.exit

aq_ptp_skb_get.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwtstamp) #13
  br label %if.then

aq_ptp_skb_get.exit:                              ; preds = %entry
  %skb_ring = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %skb_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb_ring, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %3, 1
  %size.i.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 2
  %10 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i.i, align 4
  %rem.i.i = urem i32 %add.i.i, %11
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %rem.i.i, ptr %tail.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwtstamp) #13
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %aq_ptp_skb_get.exit.if.then_crit_edge, label %if.end

aq_ptp_skb_get.exit.if.then_crit_edge:            ; preds = %aq_ptp_skb_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %aq_ptp_skb_get.exit.if.then_crit_edge, %aq_ptp_skb_get.exit.thread
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str) #16
  br label %cleanup

if.end:                                           ; preds = %aq_ptp_skb_get.exit
  %offset_egress = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %offset_egress, i32 noundef 4) #13
  %15 = ptrtoint ptr %offset_egress to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %offset_egress, align 4
  %conv = sext i32 %16 to i64
  %add = add i64 %conv, %timestamp
  %17 = ptrtoint ptr %hwtstamp to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add, ptr %hwtstamp, align 8
  call void @skb_tstamp_tx(ptr noundef nonnull %9, ptr noundef nonnull %hwtstamp) #13
  call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #13
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %head.i.i, align 4
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp5.not.i.i = icmp ult i32 %19, %21
  br i1 %cmp5.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %19, %21
  br label %aq_ptp_skb_buf_len.exit.i

cond.false.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i.i, align 4
  %sub10.i.i = sub i32 %19, %21
  %add.i.i15 = add i32 %sub10.i.i, %23
  br label %aq_ptp_skb_buf_len.exit.i

aq_ptp_skb_buf_len.exit.i:                        ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %sub.i.i, %cond.true.i.i ], [ %add.i.i15, %cond.false.i.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool.not.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %aq_ptp_skb_buf_len.exit.i.cleanup_crit_edge

aq_ptp_skb_buf_len.exit.i.cleanup_crit_edge:      ; preds = %aq_ptp_skb_buf_len.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %aq_ptp_skb_buf_len.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_tx_timeout.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 9
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_tx_timeout.i) #13
  %active.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %active.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_tx_timeout.i, i32 noundef %call3.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %aq_ptp_skb_buf_len.exit.i.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwtstamp) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @aq_ptp_hwtstamp_config_get(ptr nocapture noundef readonly %aq_ptp, ptr nocapture noundef writeonly %config) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hwtstamp_config = getelementptr inbounds %struct.aq_ptp_s, ptr %aq_ptp, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %config, ptr %hwtstamp_config, i32 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ptp_hwtstamp_config_set(ptr noundef %aq_ptp, ptr nocapture noundef readonly %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aq_ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp, align 8
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw_ops, align 8
  %tx_type = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %4 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rx_filter = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp2 = icmp eq i32 %7, 12
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %idx.i = getelementptr inbounds %struct.aq_ptp_s, ptr %aq_ptp, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx.i, align 4
  %shl.i = shl i32 %9, 8
  %or.i = or i32 %shl.i, -2038366207
  %udp_filter.i = getelementptr inbounds %struct.aq_ptp_s, ptr %aq_ptp, i32 0, i32 16
  %10 = ptrtoint ptr %udp_filter.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %udp_filter.i, align 4
  %p_dst.i = getelementptr inbounds %struct.aq_ptp_s, ptr %aq_ptp, i32 0, i32 16, i32 4
  %11 = ptrtoint ptr %p_dst.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 319, ptr %p_dst.i, align 4
  %eth_type_filter.i = getelementptr inbounds %struct.aq_ptp_s, ptr %aq_ptp, i32 0, i32 17
  %ethertype.i = getelementptr inbounds %struct.aq_ptp_s, ptr %aq_ptp, i32 0, i32 17, i32 4
  %12 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -30473, ptr %ethertype.i, align 4
  %conv.i = trunc i32 %9 to i8
  %13 = ptrtoint ptr %eth_type_filter.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %eth_type_filter.i, align 4
  %hw_filter_l3l4_set = getelementptr inbounds %struct.aq_hw_ops, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %hw_filter_l3l4_set to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_filter_l3l4_set, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then.land.lhs.true_crit_edge, label %if.end

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end:                                           ; preds = %if.then
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_hw, align 8
  %call = tail call i32 %15(ptr noundef %17, ptr noundef %udp_filter.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end.land.lhs.true_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %hw_filter_l2_set = getelementptr inbounds %struct.aq_hw_ops, ptr %3, i32 0, i32 23
  %18 = ptrtoint ptr %hw_filter_l2_set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_filter_l2_set, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %aq_hw9 = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %aq_hw9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aq_hw9, align 8
  %call10 = tail call i32 %19(ptr noundef %21, ptr noundef %eth_type_filter.i) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %err.1 = phi i32 [ %call, %if.end.if.end11_crit_edge ], [ %call10, %if.then7 ], [ 0, %land.lhs.true.if.end11_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %atomic_cmpxchg.exit.i.do.body.i_crit_edge, %if.end11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 4) #13
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %1, align 4
  %or.i64 = or i32 %23, 33554432
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.i
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 %23, i32 %or.i64, ptr elementtype(i32) %1) #13, !srcloc !61
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %24, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %24, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !62
  %cmp.not.i = icmp eq i32 %asmresult3.i.i.i.i, %23
  br i1 %cmp.not.i, label %atomic_cmpxchg.exit.i.if.end31_crit_edge, label %atomic_cmpxchg.exit.i.do.body.i_crit_edge

atomic_cmpxchg.exit.i.do.body.i_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

atomic_cmpxchg.exit.i.if.end31_crit_edge:         ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false
  %udp_filter12 = getelementptr inbounds %struct.aq_ptp_s, ptr %aq_ptp, i32 0, i32 16
  %25 = ptrtoint ptr %udp_filter12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %udp_filter12, align 4
  %and = and i32 %26, 2147483647
  store i32 %and, ptr %udp_filter12, align 4
  %hw_filter_l3l4_set13 = getelementptr inbounds %struct.aq_hw_ops, ptr %3, i32 0, i32 21
  %27 = ptrtoint ptr %hw_filter_l3l4_set13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_filter_l3l4_set13, align 4
  %tobool14.not = icmp eq ptr %28, null
  br i1 %tobool14.not, label %if.else.land.lhs.true22_crit_edge, label %if.end20

if.else.land.lhs.true22_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true22

if.end20:                                         ; preds = %if.else
  %aq_hw17 = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %aq_hw17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %aq_hw17, align 8
  %call19 = tail call i32 %28(ptr noundef %30, ptr noundef %udp_filter12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end20.land.lhs.true22_crit_edge, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end20.land.lhs.true22_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end20.land.lhs.true22_crit_edge, %if.else.land.lhs.true22_crit_edge
  %hw_filter_l2_clear = getelementptr inbounds %struct.aq_hw_ops, ptr %3, i32 0, i32 24
  %31 = ptrtoint ptr %hw_filter_l2_clear to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_filter_l2_clear, align 4
  %tobool23.not = icmp eq ptr %32, null
  br i1 %tobool23.not, label %land.lhs.true22.if.end29_crit_edge, label %if.then24

land.lhs.true22.if.end29_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  %aq_hw26 = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %aq_hw26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aq_hw26, align 8
  %eth_type_filter27 = getelementptr inbounds %struct.aq_ptp_s, ptr %aq_ptp, i32 0, i32 17
  %call28 = tail call i32 %32(ptr noundef %34, ptr noundef %eth_type_filter27) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %land.lhs.true22.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %err.3 = phi i32 [ %call19, %if.end20.if.end29_crit_edge ], [ %call28, %if.then24 ], [ 0, %land.lhs.true22.if.end29_crit_edge ]
  br label %do.body.i66

do.body.i66:                                      ; preds = %atomic_cmpxchg.exit.i72.do.body.i66_crit_edge, %if.end29
  %call.i.i.i65 = tail call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 4) #13
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %1, align 4
  %and.i = and i32 %36, -33554433
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i69

do.body.i.i.i.i69:                                ; preds = %do.body.i.i.i.i69.do.body.i.i.i.i69_crit_edge, %do.body.i66
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 %36, i32 %and.i, ptr elementtype(i32) %1) #13, !srcloc !61
  %asmresult.i.i.i.i67 = extractvalue { i32, i32 } %37, 0
  %tobool.not.i.i.i.i68 = icmp eq i32 %asmresult.i.i.i.i67, 0
  br i1 %tobool.not.i.i.i.i68, label %atomic_cmpxchg.exit.i72, label %do.body.i.i.i.i69.do.body.i.i.i.i69_crit_edge

do.body.i.i.i.i69.do.body.i.i.i.i69_crit_edge:    ; preds = %do.body.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i69

atomic_cmpxchg.exit.i72:                          ; preds = %do.body.i.i.i.i69
  %asmresult3.i.i.i.i70 = extractvalue { i32, i32 } %37, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !62
  %cmp.not.i71 = icmp eq i32 %asmresult3.i.i.i.i70, %36
  br i1 %cmp.not.i71, label %atomic_cmpxchg.exit.i72.if.end31_crit_edge, label %atomic_cmpxchg.exit.i72.do.body.i66_crit_edge

atomic_cmpxchg.exit.i72.do.body.i66_crit_edge:    ; preds = %atomic_cmpxchg.exit.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i66

atomic_cmpxchg.exit.i72.if.end31_crit_edge:       ; preds = %atomic_cmpxchg.exit.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.end31:                                         ; preds = %atomic_cmpxchg.exit.i72.if.end31_crit_edge, %atomic_cmpxchg.exit.i.if.end31_crit_edge
  %err.4 = phi i32 [ %err.1, %atomic_cmpxchg.exit.i.if.end31_crit_edge ], [ %err.3, %atomic_cmpxchg.exit.i72.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool32.not = icmp eq i32 %err.4, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %hwtstamp_config = getelementptr inbounds %struct.aq_ptp_s, ptr %aq_ptp, i32 0, i32 1
  %38 = call ptr @memcpy(ptr %hwtstamp_config, ptr %config, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -121, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @aq_ptp_ring(ptr nocapture noundef readonly %aq_nic, ptr noundef readnone %ring) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp_tx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12
  %cmp = icmp eq ptr %ptp_tx, %ring
  %ptp_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 13
  %cmp2 = icmp eq ptr %ptp_rx, %ring
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.rhs

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %hwts_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 14
  %cmp3 = icmp eq ptr %hwts_rx, %ring
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ %cmp3, %lor.rhs ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @aq_ptp_extract_ts(ptr nocapture noundef readonly %aq_nic, ptr nocapture noundef readonly %skb, ptr noundef %p, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %timestamp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timestamp) #13
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %timestamp, align 8
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %3 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aq_hw_ops, align 8
  %rx_extract_ts = getelementptr inbounds %struct.aq_hw_ops, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %rx_extract_ts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_extract_ts, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %7 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_hw, align 8
  %call = call zeroext i16 %6(ptr noundef %8, ptr noundef %p, i32 noundef %len, ptr noundef nonnull %timestamp) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %cmp.not = icmp eq i16 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timestamp, align 8
  %offset_ingress.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 7
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %offset_ingress.i, i32 noundef 4) #13
  %11 = ptrtoint ptr %offset_ingress.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %offset_ingress.i, align 4
  %conv.i = sext i32 %12 to i64
  %sub.i = sub i64 %10, %conv.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %13 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %sub.i, ptr %hwtstamps.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timestamp) #13
  ret i16 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ptp_xmit(ptr noundef %aq_nic, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %ptp_tx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %7)
  %cmp2 = icmp ugt i8 %7, 31
  br i1 %cmp2, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %conv = zext i8 %7 to i32
  %sw_tail.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sw_tail.i, align 8
  %sw_head.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12, i32 5
  %10 = ptrtoint ptr %sw_head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sw_head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.not.i = icmp ugt i32 %11, %9
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %size.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12, i32 7
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %14 = xor i32 %9, -1
  %sub2.i = add i32 %11, %14
  %add.i = add i32 %sub2.i, %13
  br label %aq_ring_avail_dx.exit

cond.false.i:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %15 = xor i32 %9, -1
  %sub7.i = add i32 %11, %15
  br label %aq_ring_avail_dx.exit

aq_ring_avail_dx.exit:                            ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv)
  %cmp5.not = icmp ugt i32 %cond.i, %conv
  br i1 %cmp5.not, label %if.end8, label %aq_ring_avail_dx.exit.if.then7_crit_edge

aq_ring_avail_dx.exit.if.then7_crit_edge:         ; preds = %aq_ring_avail_dx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then7:                                         ; preds = %aq_ring_avail_dx.exit.if.then7_crit_edge, %if.end.if.then7_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup

if.end8:                                          ; preds = %aq_ring_avail_dx.exit
  %skb_ring = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15
  %lock.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %head.i.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 3
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head.i.i, align 4
  %add.i.i = add i32 %17, 1
  %size.i.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 2
  %18 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i.i, align 4
  %rem.i.i = urem i32 %add.i.i, %19
  %tail.i.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 4
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i, i32 %21)
  %cmp.i.i = icmp eq i32 %rem.i.i, %21
  br i1 %cmp.i.i, label %if.then10, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end8
  %users.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %users.i.i.i, i32 1, i32 3, i32 1) #13
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i.i, ptr %users.i.i.i, i32 1, ptr elementtype(i32) %users.i.i.i) #13, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !64

if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end11_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !65

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end11_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %24 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev, align 4
  %size = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12, i32 7
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.1, i32 noundef %27) #16
  br label %cleanup

if.end11:                                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end11_crit_edge
  %28 = ptrtoint ptr %skb_ring to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb_ring, align 4
  %30 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %head.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %skb, ptr %arrayidx.i.i, align 4
  store i32 %rem.i.i, ptr %head.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  %33 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx_flags, align 1
  %37 = or i8 %36, 4
  store i8 %37, ptr %tx_flags, align 1
  %ptp_tx_timeout.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 9
  %call2.i76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_tx_timeout.i) #13
  %active.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %active.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %tx_start.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 9, i32 2
  %40 = ptrtoint ptr %tx_start.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tx_start.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_tx_timeout.i, i32 noundef %call2.i76) #13
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #13
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_flags.i, align 1
  %45 = and i8 %44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i, label %if.end11.skb_tx_timestamp.exit_crit_edge, label %if.then.i

if.end11.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #13
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %if.end11.skb_tx_timestamp.exit_crit_edge
  %46 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aq_ptp1, align 4
  %ptp_ring_lock = getelementptr inbounds %struct.aq_ptp_s, ptr %47, i32 0, i32 3
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_ring_lock) #13
  %call23 = tail call i32 @aq_nic_map_skb(ptr noundef %aq_nic, ptr noundef %skb, ptr noundef %ptp_tx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %skb_tx_timestamp.exit.if.end40_crit_edge, label %if.then27, !prof !64

skb_tx_timestamp.exit.if.end40_crit_edge:         ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then27:                                        ; preds = %skb_tx_timestamp.exit
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %48 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %aq_hw_ops, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %52 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aq_hw, align 8
  %call28 = tail call i32 %51(ptr noundef %53, ptr noundef %ptp_tx, i32 noundef %call23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28)
  %cmp29 = icmp sgt i32 %call28, -1
  br i1 %cmp29, label %if.then31, label %if.then27.if.end40_crit_edge

if.then27.if.end40_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then31:                                        ; preds = %if.then27
  %stats = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %54 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i, label %if.then31.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

if.then31.u64_stats_update_begin.exit_crit_edge:  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %if.then31
  %55 = tail call i32 @llvm.read_register.i32(metadata !50) #13
  %and.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !66
  %59 = tail call i32 @llvm.read_register.i32(metadata !50) #13
  %and.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i77 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i.i77 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i77, align 4
  %add.i.i78 = add i32 %64, ptrtoint (ptr @lockdep_recursion to i32)
  %65 = inttoptr i32 %add.i.i78 to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !67
  %68 = tail call i32 @llvm.read_register.i32(metadata !50) #13
  %and.i.i.i7.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool20.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %72 = tail call i32 @llvm.read_register.i32(metadata !50) #13
  %and.i.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i79 = icmp eq i32 %75, 0
  br i1 %cmp.i.i79, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %76 = tail call i32 @llvm.read_register.i32(metadata !50) #13
  %and.i.i.i9.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %79, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !68
  %80 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %83, ptrtoint (ptr @hardirqs_enabled to i32)
  %84 = inttoptr i32 %add47.i.i to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !69
  %87 = tail call i32 @llvm.read_register.i32(metadata !50) #13
  %and.i.i.i12.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %90, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool54.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !65

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %if.then31.u64_stats_update_begin.exit_crit_edge
  %91 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %stats, align 4
  %inc.i.i.i.i = add i32 %92, 1
  store i32 %inc.i.i.i.i, ptr %stats, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  %dep_map.i.i.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12, i32 10, i32 0, i32 0, i32 0, i32 1
  %93 = tail call ptr @llvm.returnaddress(i32 0) #13
  %94 = ptrtoint ptr %93 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %94) #13
  %packets = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12, i32 10, i32 0, i32 2
  %95 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %packets, align 8
  %inc = add i64 %96, 1
  store i64 %inc, ptr %packets, align 8
  %97 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len, align 4
  %conv34 = zext i32 %98 to i64
  %bytes = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12, i32 10, i32 0, i32 3
  %99 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %bytes, align 8
  %add36 = add i64 %100, %conv34
  store i64 %add36, ptr %bytes, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %94) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !71
  %101 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %stats, align 4
  %inc.i.i.i = add i32 %102, 1
  store i32 %inc.i.i.i, ptr %stats, align 4
  br label %if.end40

if.end40:                                         ; preds = %u64_stats_update_begin.exit, %if.then27.if.end40_crit_edge, %skb_tx_timestamp.exit.if.end40_crit_edge
  %err.0 = phi i32 [ %call28, %u64_stats_update_begin.exit ], [ %call28, %if.then27.if.end40_crit_edge ], [ 16, %skb_tx_timestamp.exit.if.end40_crit_edge ]
  %103 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %aq_ptp1, align 4
  %ptp_ring_lock42 = getelementptr inbounds %struct.aq_ptp_s, ptr %104, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_ring_lock42, i32 noundef %call20) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then10, %if.then7, %if.then
  %retval.0 = phi i32 [ 16, %if.then10 ], [ 0, %if.then ], [ 0, %if.then7 ], [ %err.0, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_map_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ptp_service_task(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp_tx_timeout.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_tx_timeout.i) #13
  %active.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active.i, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end14.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %tx_start.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %tx_start.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_start.i, align 4
  %add.i = add i32 %5, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp5.i = icmp slt i32 %sub.i, 0
  br i1 %cmp5.i, label %if.then8.i, label %if.end14.critedge22.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %active.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_tx_timeout.i, i32 noundef %call2.i) #13
  %skb_ring.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15
  tail call fastcc void @aq_ptp_skb_ring_clean(ptr noundef %skb_ring.i) #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.11) #16
  br label %cleanup

if.end14.critedge.i:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_tx_timeout.i, i32 noundef %call2.i) #13
  br label %cleanup

if.end14.critedge22.i:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_tx_timeout.i, i32 noundef %call2.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14.critedge22.i, %if.end14.critedge.i, %if.then8.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ptp_irq_alloc(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 19
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %aq_ptp2 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %2 = ptrtoint ptr %aq_ptp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_ptp2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %5 = and i40 %bf.load, 201326592
  %6 = icmp eq i40 %5, 0
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %idx_vector = getelementptr inbounds %struct.aq_ptp_s, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %idx_vector to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx_vector, align 8
  %call = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %8) #13
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef nonnull @aq_ptp_isr, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef nonnull %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then9 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ptp_isr(i32 noundef %irq, ptr noundef %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %private, null
  br i1 %tobool.not, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit

if.end:                                           ; preds = %entry
  %napi = getelementptr inbounds %struct.aq_ptp_s, ptr %private, i32 0, i32 11
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #13
  br i1 %call.i, label %if.then.i, label %if.end.err_exit_crit_edge

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule(ptr noundef %napi) #13
  br label %err_exit

err_exit:                                         ; preds = %if.then.i, %if.end.err_exit_crit_edge, %entry.err_exit_crit_edge
  %0 = xor i1 %tobool.not, true
  %cond = zext i1 %0 to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ptp_irq_free(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev2 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 19
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 8
  %idx_vector = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %idx_vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx_vector, align 8
  %call = tail call i32 @pci_irq_vector(ptr noundef %3, i32 noundef %5) #13
  %call3 = tail call ptr @free_irq(i32 noundef %call, ptr noundef nonnull %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ptp_ring_init(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp_tx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12
  %call = tail call i32 @aq_ring_init(ptr noundef %ptp_tx, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %2 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_tx_init = getelementptr inbounds %struct.aq_hw_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %hw_ring_tx_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_ring_tx_init, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %6 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw, align 8
  %ptp_ring_param = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 8
  %call5 = tail call i32 %5(ptr noundef %7, ptr noundef %ptp_tx, ptr noundef %ptp_ring_param) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %ptp_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 13
  %call9 = tail call i32 @aq_ring_init(ptr noundef %ptp_rx, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_rx_init = getelementptr inbounds %struct.aq_hw_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %hw_ring_rx_init to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ring_rx_init, align 4
  %12 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw, align 8
  %call17 = tail call i32 %11(ptr noundef %13, ptr noundef %ptp_rx, ptr noundef %ptp_ring_param) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end12.cleanup_crit_edge, label %if.end20

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call22 = tail call i32 @aq_ring_rx_fill(ptr noundef %ptp_rx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.err_rx_free_crit_edge, label %if.end25

if.end20.err_rx_free_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_rx_free

if.end25:                                         ; preds = %if.end20
  %14 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_rx_fill = getelementptr inbounds %struct.aq_hw_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %hw_ring_rx_fill to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_ring_rx_fill, align 4
  %18 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aq_hw, align 8
  %call29 = tail call i32 %17(ptr noundef %19, ptr noundef %ptp_rx, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end25.err_rx_free_crit_edge, label %if.end32

if.end25.err_rx_free_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_rx_free

if.end32:                                         ; preds = %if.end25
  %hwts_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 14
  %call33 = tail call i32 @aq_ring_init(ptr noundef %hwts_rx, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.err_rx_free_crit_edge, label %if.end36

if.end32.err_rx_free_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_rx_free

if.end36:                                         ; preds = %if.end32
  %20 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_rx_init38 = getelementptr inbounds %struct.aq_hw_ops, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %hw_ring_rx_init38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_ring_rx_init38, align 4
  %24 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aq_hw, align 8
  %call42 = tail call i32 %23(ptr noundef %25, ptr noundef %hwts_rx, ptr noundef %ptp_ring_param) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end36.cleanup_crit_edge, label %if.end45

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_hwts_rx_fill = getelementptr inbounds %struct.aq_hw_ops, ptr %27, i32 0, i32 36
  %28 = ptrtoint ptr %hw_ring_hwts_rx_fill to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_ring_hwts_rx_fill, align 4
  %30 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aq_hw, align 8
  %call49 = tail call i32 %29(ptr noundef %31, ptr noundef %hwts_rx) #13
  br label %cleanup

err_rx_free:                                      ; preds = %if.end32.err_rx_free_crit_edge, %if.end25.err_rx_free_crit_edge, %if.end20.err_rx_free_crit_edge
  %err.0 = phi i32 [ %call22, %if.end20.err_rx_free_crit_edge ], [ %call29, %if.end25.err_rx_free_crit_edge ], [ %call33, %if.end32.err_rx_free_crit_edge ]
  tail call void @aq_ring_rx_deinit(ptr noundef %ptp_rx) #13
  br label %cleanup

cleanup:                                          ; preds = %err_rx_free, %if.end45, %if.end36.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call17, %if.end12.cleanup_crit_edge ], [ %err.0, %err_rx_free ], [ %call42, %if.end36.cleanup_crit_edge ], [ %call49, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ring_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ring_rx_fill(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ring_rx_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ptp_ring_start(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %2 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_tx_start = getelementptr inbounds %struct.aq_hw_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %hw_ring_tx_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_ring_tx_start, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %6 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw, align 8
  %ptp_tx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12
  %call = tail call i32 %5(ptr noundef %7, ptr noundef %ptp_tx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_rx_start = getelementptr inbounds %struct.aq_hw_ops, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %hw_ring_rx_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ring_rx_start, align 4
  %12 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw, align 8
  %ptp_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 13
  %call6 = tail call i32 %11(ptr noundef %13, ptr noundef %ptp_rx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %14 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_rx_start11 = getelementptr inbounds %struct.aq_hw_ops, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %hw_ring_rx_start11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_ring_rx_start11, align 4
  %18 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aq_hw, align 8
  %hwts_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 14
  %call13 = tail call i32 %17(ptr noundef %19, ptr noundef %hwts_rx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end9.cleanup_crit_edge, label %if.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %napi = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 11
  tail call void @napi_enable(ptr noundef %napi) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ], [ %call13, %if.end9.cleanup_crit_edge ], [ %call13, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ptp_ring_stop(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %2 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_tx_stop = getelementptr inbounds %struct.aq_hw_ops, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %hw_ring_tx_stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_ring_tx_stop, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %6 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw, align 8
  %ptp_tx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12
  %call = tail call i32 %5(ptr noundef %7, ptr noundef %ptp_tx) #13
  %8 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_rx_stop = getelementptr inbounds %struct.aq_hw_ops, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %hw_ring_rx_stop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ring_rx_stop, align 4
  %12 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw, align 8
  %ptp_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 13
  %call4 = tail call i32 %11(ptr noundef %13, ptr noundef %ptp_rx) #13
  %14 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_rx_stop6 = getelementptr inbounds %struct.aq_hw_ops, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %hw_ring_rx_stop6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_ring_rx_stop6, align 4
  %18 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aq_hw, align 8
  %hwts_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 14
  %call8 = tail call i32 %17(ptr noundef %19, ptr noundef %hwts_rx) #13
  %napi = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 11
  tail call void @napi_disable(ptr noundef %napi) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ptp_ring_deinit(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ptp_tx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12
  %aq_nic2 = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %aq_nic2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_nic2, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %aq_nic5 = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %aq_nic5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_nic5, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 13
  %call = tail call zeroext i1 @aq_ring_tx_clean(ptr noundef %ptp_tx) #13
  tail call void @aq_ring_rx_deinit(ptr noundef %ptp_rx) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aq_ring_tx_clean(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ptp_ring_alloc(ptr noundef %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %aq_nic_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 12
  %tc_mode = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 12, i32 29
  %2 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %..i = select i1 %cmp.i, i32 8, i32 16
  %ptp_tx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12
  %call3 = tail call ptr @aq_ring_tx_alloc(ptr noundef %ptp_tx, ptr noundef %aq_nic, i32 noundef %..i, ptr noundef %aq_nic_cfg) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i69 = icmp eq i32 %5, 0
  %..i70 = select i1 %cmp.i69, i32 8, i32 16
  %ptp_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 13
  %call11 = tail call ptr @aq_ring_rx_alloc(ptr noundef %ptp_rx, ptr noundef %aq_nic, i32 noundef %..i70, ptr noundef %aq_nic_cfg) #13
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end6.err_exit_ptp_tx_crit_edge, label %if.end14

if.end6.err_exit_ptp_tx_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit_ptp_tx

if.end14:                                         ; preds = %if.end6
  %hwts_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 14
  %rxds = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 12, i32 2
  %6 = ptrtoint ptr %rxds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxds, align 8
  %8 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_nic_cfg, align 8
  %rxd_size = getelementptr inbounds %struct.aq_hw_caps_s, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %rxd_size to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rxd_size, align 1
  %conv = zext i8 %11 to i32
  %call17 = tail call ptr @aq_ring_hwts_rx_alloc(ptr noundef %hwts_rx, ptr noundef %aq_nic, i32 noundef 31, i32 noundef %7, i32 noundef %conv) #13
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end14.err_exit_ptp_rx_crit_edge, label %if.end20

if.end14.err_exit_ptp_rx_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit_ptp_rx

if.end20:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %rxds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxds, align 8
  %mul.i = shl i32 %13, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #17
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @aq_ring_free(ptr noundef %hwts_rx) #13
  br label %err_exit_ptp_rx

if.end26:                                         ; preds = %if.end20
  %skb_ring = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15
  %lock.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @aq_ptp_skb_ring_init.__key, i16 noundef signext 3) #13
  %14 = ptrtoint ptr %skb_ring to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %skb_ring, align 4
  %size3.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 2
  %15 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %size3.i, align 4
  %head.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 3
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15, i32 4
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tail.i, align 4
  %idx_vector = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %idx_vector to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx_vector, align 8
  %ptp_ring_param = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %ptp_ring_param to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ptp_ring_param, align 8
  %call29 = tail call ptr @aq_nic_get_cfg(ptr noundef %aq_nic) #13
  %aq_rss = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call29, i32 0, i32 36
  %21 = ptrtoint ptr %aq_rss to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %aq_rss, align 4
  %conv30 = zext i16 %22 to i32
  %add = add i32 %19, %conv30
  %cpu = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %cpu, align 4
  %affinity_mask = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 8, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add)
  %cmp.not.i.i.i = icmp ugt i32 %24, %add
  br i1 %cmp.not.i.i.i, label %if.end26.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.end26.cpumask_set_cpu.exit_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.end26
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !65

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.end26.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %add, ptr noundef %affinity_mask) #13
  br label %cleanup

err_exit_ptp_rx:                                  ; preds = %if.then25, %if.end14.err_exit_ptp_rx_crit_edge
  tail call void @aq_ring_free(ptr noundef %ptp_rx) #13
  br label %err_exit_ptp_tx

err_exit_ptp_tx:                                  ; preds = %err_exit_ptp_rx, %if.end6.err_exit_ptp_tx_crit_edge
  tail call void @aq_ring_free(ptr noundef %ptp_tx) #13
  br label %cleanup

cleanup:                                          ; preds = %err_exit_ptp_tx, %cpumask_set_cpu.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpumask_set_cpu.exit ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %err_exit_ptp_tx ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_ring_tx_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_ring_rx_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_ring_hwts_rx_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_nic_get_cfg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ring_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ptp_ring_free(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp_tx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12
  tail call void @aq_ring_free(ptr noundef %ptp_tx) #13
  %ptp_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 13
  tail call void @aq_ring_free(ptr noundef %ptp_rx) #13
  %hwts_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 14
  tail call void @aq_ring_free(ptr noundef %hwts_rx) #13
  %skb_ring = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %skb_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb_ring, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @aq_ptp_skb_ring_clean(ptr noundef %skb_ring) #13
  %4 = ptrtoint ptr %skb_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb_ring, align 4
  tail call void @kfree(ptr noundef %5) #13
  %6 = ptrtoint ptr %skb_ring to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %skb_ring, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ptp_clock_init(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  %now.i = alloca i64, align 8
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #13
  %2 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts) #13
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %5 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %6)
  %cmp.i.i = icmp sgt i64 %6, 9223372035
  br i1 %cmp.i.i, label %entry.aq_ptp_settime.exit_crit_edge, label %if.end.i.i

entry.aq_ptp_settime.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_settime.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %6)
  %cmp2.i.i = icmp slt i64 %6, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.aq_ptp_settime.exit_crit_edge, label %if.end4.i.i

if.end.i.i.aq_ptp_settime.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_settime.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i.i = mul nsw i64 %6, 1000000000
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i.i = sext i32 %8 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %aq_ptp_settime.exit

aq_ptp_settime.exit:                              ; preds = %if.end4.i.i, %if.end.i.i.aq_ptp_settime.exit_crit_edge, %entry.aq_ptp_settime.exit_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end4.i.i ], [ 9223372036854775807, %entry.aq_ptp_settime.exit_crit_edge ], [ -9223372036854775808, %if.end.i.i.aq_ptp_settime.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %now.i) #13
  %9 = ptrtoint ptr %now.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %now.i, align 8, !annotation !73
  %ptp_lock.i = getelementptr %struct.aq_ptp_s, ptr %1, i32 0, i32 2
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock.i) #13
  %aq_hw_ops.i = getelementptr inbounds %struct.aq_nic_s, ptr %4, i32 0, i32 10
  %10 = ptrtoint ptr %aq_hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_hw_ops.i, align 8
  %hw_get_ptp_ts.i = getelementptr inbounds %struct.aq_hw_ops, ptr %11, i32 0, i32 38
  %12 = ptrtoint ptr %hw_get_ptp_ts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_get_ptp_ts.i, align 4
  %aq_hw.i = getelementptr inbounds %struct.aq_nic_s, ptr %4, i32 0, i32 4
  %14 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aq_hw.i, align 8
  call void %13(ptr noundef %15, ptr noundef nonnull %now.i) #13
  %16 = ptrtoint ptr %aq_hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_hw_ops.i, align 8
  %hw_adj_sys_clock.i = getelementptr inbounds %struct.aq_hw_ops, ptr %17, i32 0, i32 40
  %18 = ptrtoint ptr %hw_adj_sys_clock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_adj_sys_clock.i, align 4
  %20 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aq_hw.i, align 8
  %22 = ptrtoint ptr %now.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %now.i, align 8
  %sub.i = sub i64 %retval.0.i.i, %23
  %call10.i = call i32 %19(ptr noundef %21, i64 noundef %sub.i) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock.i, i32 noundef %call5.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %now.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ptp_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  %now = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -108
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %3)
  %cmp.i = icmp sgt i64 %3, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %3)
  %cmp2.i = icmp slt i64 %3, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i = mul nsw i64 %3, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %5 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %entry.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %entry.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %now) #13
  %6 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %now, align 8, !annotation !73
  %ptp_lock = getelementptr i8, ptr %ptp, i32 -92
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #13
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_hw_ops, align 8
  %hw_get_ptp_ts = getelementptr inbounds %struct.aq_hw_ops, ptr %8, i32 0, i32 38
  %9 = ptrtoint ptr %hw_get_ptp_ts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_get_ptp_ts, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aq_hw, align 8
  call void %10(ptr noundef %12, ptr noundef nonnull %now) #13
  %13 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aq_hw_ops, align 8
  %hw_adj_sys_clock = getelementptr inbounds %struct.aq_hw_ops, ptr %14, i32 0, i32 40
  %15 = ptrtoint ptr %hw_adj_sys_clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_adj_sys_clock, align 4
  %17 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aq_hw, align 8
  %19 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %now, align 8
  %sub = sub i64 %retval.0.i, %20
  %call10 = call i32 %16(ptr noundef %18, i64 noundef %sub) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %now) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ptp_init(ptr noundef %aq_nic, i32 noundef %idx_vec) local_unnamed_addr #0 align 64 {
entry:
  %now.i.i = alloca i64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  %pin_desc.i = alloca [4 x %struct.ptp_pin_desc], align 4
  %mbox = alloca %struct.hw_atl_utils_mbox, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %0 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw, align 8
  %chip_features = getelementptr inbounds %struct.aq_hw_s, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %chip_features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_features, align 8
  %and = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.lobit = lshr exact i32 %and, 23
  %4 = trunc i32 %and.lobit to i8
  call void @llvm.lifetime.start.p0(i64 372, ptr nonnull %mbox) #13
  %5 = call ptr @memset(ptr %mbox, i32 255, i32 372)
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %aq_ptp3 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %6 = ptrtoint ptr %aq_ptp3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %aq_ptp3, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %7 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_hw_ops, align 8
  %hw_get_ptp_ts = getelementptr inbounds %struct.aq_hw_ops, ptr %8, i32 0, i32 38
  %9 = ptrtoint ptr %hw_get_ptp_ts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_get_ptp_ts, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %aq_ptp6 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %11 = ptrtoint ptr %aq_ptp6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %aq_ptp6, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 11
  %12 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_fw_ops, align 4
  %enable_ptp = getelementptr inbounds %struct.aq_fw_ops, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %enable_ptp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enable_ptp, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %aq_ptp10 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %16 = ptrtoint ptr %aq_ptp10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %aq_ptp10, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @hw_atl_utils_mpi_read_stats(ptr noundef %1, ptr noundef nonnull %mbox) #13
  %caps_ex = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 19
  %17 = ptrtoint ptr %caps_ex to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %caps_ex, align 1
  %and13 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %aq_ptp16 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %19 = ptrtoint ptr %aq_ptp16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %aq_ptp16, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %ptp_offset = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 6
  %20 = call ptr @memset(ptr @ptp_offset, i32 0, i32 12)
  %egress_10000.i.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 6, i32 9
  %ingress_10000.i.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 6, i32 8
  %egress_5000.i.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 6, i32 7
  %ingress_5000.i.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 6, i32 6
  %egress_2500.i.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 6, i32 5
  %ingress_2500.i.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 6, i32 4
  %egress_1000.i.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 6, i32 3
  %ingress_1000.i.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 6, i32 2
  %egress_100.i.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 6, i32 1
  store i32 100, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 1), align 4
  %21 = ptrtoint ptr %egress_100.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %egress_100.i.i, align 1
  %conv.1.i.i = zext i16 %22 to i32
  store i32 %conv.1.i.i, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 1, i32 1), align 4
  %23 = ptrtoint ptr %ptp_offset to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %ptp_offset, align 1
  %conv2.1.i.i = zext i16 %24 to i32
  store i32 %conv2.1.i.i, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 1, i32 2), align 4
  store i32 1000, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 2), align 4
  %25 = ptrtoint ptr %egress_1000.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %egress_1000.i.i, align 1
  %conv8.2.i.i = zext i16 %26 to i32
  store i32 %conv8.2.i.i, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 2, i32 1), align 4
  %27 = ptrtoint ptr %ingress_1000.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %ingress_1000.i.i, align 1
  %conv11.2.i.i = zext i16 %28 to i32
  store i32 %conv11.2.i.i, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 2, i32 2), align 4
  store i32 2500, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 3), align 4
  %29 = ptrtoint ptr %egress_2500.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %egress_2500.i.i, align 1
  %conv20.3.i.i = zext i16 %30 to i32
  store i32 %conv20.3.i.i, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 3, i32 1), align 4
  %31 = ptrtoint ptr %ingress_2500.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %ingress_2500.i.i, align 1
  %conv23.3.i.i = zext i16 %32 to i32
  store i32 %conv23.3.i.i, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 3, i32 2), align 4
  store i32 5000, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 4), align 4
  %33 = ptrtoint ptr %egress_5000.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %egress_5000.i.i, align 1
  %conv32.4.i.i = zext i16 %34 to i32
  store i32 %conv32.4.i.i, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 4, i32 1), align 4
  %35 = ptrtoint ptr %ingress_5000.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %ingress_5000.i.i, align 1
  %conv35.4.i.i = zext i16 %36 to i32
  store i32 %conv35.4.i.i, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 4, i32 2), align 4
  store i32 10000, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 5), align 4
  %37 = ptrtoint ptr %egress_10000.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %egress_10000.i.i, align 1
  %conv44.5.i.i = zext i16 %38 to i32
  store i32 %conv44.5.i.i, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 5, i32 1), align 4
  %39 = ptrtoint ptr %ingress_10000.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %ingress_10000.i.i, align 1
  %conv47.5.i.i = zext i16 %40 to i32
  store i32 %conv47.5.i.i, ptr getelementptr inbounds ([6 x %struct.ptp_tm_offset], ptr @ptp_offset, i32 0, i32 5, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 1264) #18
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.if.end72_crit_edge, label %if.end21

if.end17.if.end72_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.end21:                                         ; preds = %if.end17
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %aq_nic, ptr %call7.i.i, align 8
  %a1_ptp24 = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 22
  %43 = ptrtoint ptr %a1_ptp24 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %4, ptr %a1_ptp24, align 8
  %ptp_lock = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %ptp_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @aq_ptp_init.__key, i16 noundef signext 3) #13
  %ptp_ring_lock = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %ptp_ring_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @aq_ptp_init.__key.3, i16 noundef signext 3) #13
  %ptp_info = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 5
  %44 = call ptr @memcpy(ptr %ptp_info, ptr @aq_ptp_clock, i32 108)
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %pin_desc.i) #13
  %45 = call ptr @memset(ptr %pin_desc.i, i32 0, i32 384)
  %arrayidx.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 20
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %cmp1.i = icmp eq i32 %47, 8
  br i1 %cmp1.i, label %if.then.i, label %if.end21.for.inc.i_crit_edge

if.end21.for.inc.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pin_desc.i, i32 noundef 64, ptr noundef nonnull @.str.19, i32 noundef 0) #13
  %index.i = getelementptr inbounds [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %index.i, align 4
  %chan.i = getelementptr inbounds [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 0, i32 3
  %49 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %chan.i, align 4
  %func.i = getelementptr inbounds [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %func.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end21.for.inc.i_crit_edge
  %out_pin_cnt.1.i = phi i32 [ 1, %if.then.i ], [ 0, %if.end21.for.inc.i_crit_edge ]
  %arrayidx.1.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 20, i32 1
  %51 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %arrayidx.1.i, align 1
  %add.1.i = or i32 %out_pin_cnt.1.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %add.1.i)
  %cmp1.1.i = icmp eq i32 %52, %add.1.i
  br i1 %cmp1.1.i, label %if.then.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx2.1.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.i
  %call.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx2.1.i, i32 noundef 64, ptr noundef nonnull @.str.19, i32 noundef 1) #13
  %index.1.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.i, i32 1
  %53 = ptrtoint ptr %index.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %out_pin_cnt.1.i, ptr %index.1.i, align 4
  %chan.1.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.i, i32 3
  %54 = ptrtoint ptr %chan.1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %out_pin_cnt.1.i, ptr %chan.1.i, align 4
  %inc.1.i = add nuw nsw i32 %out_pin_cnt.1.i, 1
  %func.1.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.i, i32 2
  %55 = ptrtoint ptr %func.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %func.1.i, align 4
  %.pre.i = add nuw nsw i32 %out_pin_cnt.1.i, 9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %add.2.pre-phi.i = phi i32 [ %.pre.i, %if.then.1.i ], [ %add.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %out_pin_cnt.1.1.i = phi i32 [ %inc.1.i, %if.then.1.i ], [ %out_pin_cnt.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 2, i32 20, i32 2
  %56 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %add.2.pre-phi.i)
  %cmp1.2.i = icmp eq i32 %57, %add.2.pre-phi.i
  br i1 %cmp1.2.i, label %if.then.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx2.2.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.1.i
  %call.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx2.2.i, i32 noundef 64, ptr noundef nonnull @.str.19, i32 noundef 2) #13
  %index.2.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.1.i, i32 1
  %58 = ptrtoint ptr %index.2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %out_pin_cnt.1.1.i, ptr %index.2.i, align 4
  %chan.2.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.1.i, i32 3
  %59 = ptrtoint ptr %chan.2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %out_pin_cnt.1.1.i, ptr %chan.2.i, align 4
  %inc.2.i = add nuw nsw i32 %out_pin_cnt.1.1.i, 1
  %func.2.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.1.i, i32 2
  %60 = ptrtoint ptr %func.2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %func.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %out_pin_cnt.1.2.i = phi i32 [ %inc.2.i, %if.then.2.i ], [ %out_pin_cnt.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %n_per_out.i = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 5, i32 5
  %61 = ptrtoint ptr %n_per_out.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %out_pin_cnt.1.2.i, ptr %n_per_out.i, align 4
  %62 = ptrtoint ptr %caps_ex to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %caps_ex, align 1
  %and.i = and i32 %63, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.2.i.if.end20.i_crit_edge, label %if.then8.i

for.inc.2.i.if.end20.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then8.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx10.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.2.i
  %call13.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx10.i, i32 noundef 64, ptr noundef nonnull @.str.19, i32 noundef %out_pin_cnt.1.2.i) #13
  %index15.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.2.i, i32 1
  %64 = ptrtoint ptr %index15.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %out_pin_cnt.1.2.i, ptr %index15.i, align 4
  %chan17.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.2.i, i32 3
  %65 = ptrtoint ptr %chan17.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %chan17.i, align 4
  %func19.i = getelementptr [4 x %struct.ptp_pin_desc], ptr %pin_desc.i, i32 0, i32 %out_pin_cnt.1.2.i, i32 2
  %66 = ptrtoint ptr %func19.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %func19.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then8.i, %for.inc.2.i.if.end20.i_crit_edge
  %extts_pin_cnt.0.i = phi i32 [ 1, %if.then8.i ], [ 0, %for.inc.2.i.if.end20.i_crit_edge ]
  %add21.i = add nuw nsw i32 %extts_pin_cnt.0.i, %out_pin_cnt.1.2.i
  %n_pins.i = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 5, i32 6
  %67 = ptrtoint ptr %n_pins.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add21.i, ptr %n_pins.i, align 8
  %n_ext_ts.i = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 5, i32 4
  %68 = ptrtoint ptr %n_ext_ts.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %extts_pin_cnt.0.i, ptr %n_ext_ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21.i)
  %tobool23.not.i = icmp eq i32 %add21.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.aq_ptp_gpio_init.exit_crit_edge, label %if.end7.i.i.i

if.end20.i.aq_ptp_gpio_init.exit_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_gpio_init.exit

if.end7.i.i.i:                                    ; preds = %if.end20.i
  %69 = mul nuw nsw i32 %add21.i, 96
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %69, i32 noundef 3520) #17
  %pin_config.i = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 5, i32 8
  %70 = ptrtoint ptr %pin_config.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call8.i.i.i, ptr %pin_config.i, align 8
  %tobool29.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool29.not.i, label %if.end7.i.i.i.aq_ptp_gpio_init.exit_crit_edge, label %if.end31.i

if.end7.i.i.i.aq_ptp_gpio_init.exit_crit_edge:    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_gpio_init.exit

if.end31.i:                                       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %n_pins.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %n_pins.i, align 8
  %mul.i = mul i32 %72, 96
  %73 = call ptr @memcpy(ptr %call8.i.i.i, ptr %pin_desc.i, i32 %mul.i)
  br label %aq_ptp_gpio_init.exit

aq_ptp_gpio_init.exit:                            ; preds = %if.end31.i, %if.end7.i.i.i.aq_ptp_gpio_init.exit_crit_edge, %if.end20.i.aq_ptp_gpio_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %pin_desc.i) #13
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %74 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ndev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 133
  %call34 = call ptr @ptp_clock_register(ptr noundef %ptp_info, ptr noundef %dev) #13
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then70, label %if.end39

if.end39:                                         ; preds = %aq_ptp_gpio_init.exit
  %ptp_clock = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call34, ptr %ptp_clock, align 8
  %ptp_tx_timeout = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %ptp_tx_timeout, ptr noundef nonnull @.str.20, ptr noundef nonnull @aq_ptp_tx_timeout_init.__key, i16 noundef signext 3) #13
  %active.i = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 9, i32 1
  %77 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %active.i, align 8
  %offset_egress = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %offset_egress, i32 noundef 4) #13
  %78 = ptrtoint ptr %offset_egress to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 0, ptr %offset_egress, align 8
  %offset_ingress = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 7
  %call.i.i127 = call zeroext i1 @__kasan_check_write(ptr noundef %offset_ingress, i32 noundef 4) #13
  %79 = ptrtoint ptr %offset_ingress to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 0, ptr %offset_ingress, align 4
  %call40 = call ptr @aq_nic_get_ndev(ptr noundef %aq_nic) #13
  %napi = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 11
  call void @netif_napi_add(ptr noundef %call40, ptr noundef %napi, ptr noundef nonnull @aq_ptp_poll, i32 noundef 64) #13
  %idx_vector = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 10
  %80 = ptrtoint ptr %idx_vector to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %idx_vec, ptr %idx_vector, align 8
  %aq_ptp41 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %81 = ptrtoint ptr %aq_ptp41 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i, ptr %aq_ptp41, align 4
  %82 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %aq_hw, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %atomic_cmpxchg.exit.i.do.body.i_crit_edge, %if.end39
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %83, i32 noundef 4) #13
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %83, align 4
  %or.i = or i32 %85, 16777216
  %call.i.i5.i = call zeroext i1 @__kasan_check_write(ptr noundef %83, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  call void @llvm.prefetch.p0(ptr %83, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.i
  %86 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 %85, i32 %or.i, ptr elementtype(i32) %83) #13, !srcloc !61
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %86, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %86, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !62
  %cmp.not.i = icmp eq i32 %asmresult3.i.i.i.i, %85
  br i1 %cmp.not.i, label %aq_utils_obj_set.exit, label %atomic_cmpxchg.exit.i.do.body.i_crit_edge

atomic_cmpxchg.exit.i.do.body.i_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

aq_utils_obj_set.exit:                            ; preds = %atomic_cmpxchg.exit.i
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 22
  call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #13
  %87 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %aq_fw_ops, align 4
  %enable_ptp44 = getelementptr inbounds %struct.aq_fw_ops, ptr %88, i32 0, i32 17
  %89 = ptrtoint ptr %enable_ptp44 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %enable_ptp44, align 4
  %91 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %aq_hw, align 8
  call void %90(ptr noundef %92, i32 noundef 1) #13
  %93 = ptrtoint ptr %aq_ptp41 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %aq_ptp41, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #13
  %95 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts.i) #13
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %94, align 8
  %98 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %99)
  %cmp.i.i.i = icmp sgt i64 %99, 9223372035
  br i1 %cmp.i.i.i, label %aq_utils_obj_set.exit.aq_ptp_clock_init.exit_crit_edge, label %if.end.i.i.i

aq_utils_obj_set.exit.aq_ptp_clock_init.exit_crit_edge: ; preds = %aq_utils_obj_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_clock_init.exit

if.end.i.i.i:                                     ; preds = %aq_utils_obj_set.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %99)
  %cmp2.i.i.i = icmp slt i64 %99, -9223372035
  br i1 %cmp2.i.i.i, label %if.end.i.i.i.aq_ptp_clock_init.exit_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.aq_ptp_clock_init.exit_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_clock_init.exit

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i.i.i = mul nsw i64 %99, 1000000000
  %tv_nsec.i.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %100 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tv_nsec.i.i.i, align 8
  %conv.i.i.i = sext i32 %101 to i64
  %add.i.i.i = add i64 %mul.i.i.i, %conv.i.i.i
  br label %aq_ptp_clock_init.exit

aq_ptp_clock_init.exit:                           ; preds = %if.end4.i.i.i, %if.end.i.i.i.aq_ptp_clock_init.exit_crit_edge, %aq_utils_obj_set.exit.aq_ptp_clock_init.exit_crit_edge
  %retval.0.i.i.i128 = phi i64 [ %add.i.i.i, %if.end4.i.i.i ], [ 9223372036854775807, %aq_utils_obj_set.exit.aq_ptp_clock_init.exit_crit_edge ], [ -9223372036854775808, %if.end.i.i.i.aq_ptp_clock_init.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %now.i.i) #13
  %102 = ptrtoint ptr %now.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 -1, ptr %now.i.i, align 8, !annotation !73
  %ptp_lock.i.i = getelementptr %struct.aq_ptp_s, ptr %94, i32 0, i32 2
  %call5.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock.i.i) #13
  %aq_hw_ops.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %97, i32 0, i32 10
  %103 = ptrtoint ptr %aq_hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %aq_hw_ops.i.i, align 8
  %hw_get_ptp_ts.i.i = getelementptr inbounds %struct.aq_hw_ops, ptr %104, i32 0, i32 38
  %105 = ptrtoint ptr %hw_get_ptp_ts.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw_get_ptp_ts.i.i, align 4
  %aq_hw.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %97, i32 0, i32 4
  %107 = ptrtoint ptr %aq_hw.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %aq_hw.i.i, align 8
  call void %106(ptr noundef %108, ptr noundef nonnull %now.i.i) #13
  %109 = ptrtoint ptr %aq_hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %aq_hw_ops.i.i, align 8
  %hw_adj_sys_clock.i.i = getelementptr inbounds %struct.aq_hw_ops, ptr %110, i32 0, i32 40
  %111 = ptrtoint ptr %hw_adj_sys_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw_adj_sys_clock.i.i, align 4
  %113 = ptrtoint ptr %aq_hw.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %aq_hw.i.i, align 8
  %115 = ptrtoint ptr %now.i.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %now.i.i, align 8
  %sub.i.i = sub i64 %retval.0.i.i.i128, %116
  %call10.i.i = call i32 %112(ptr noundef %114, i64 noundef %sub.i.i) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock.i.i, i32 noundef %call5.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %now.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #13
  call void @mutex_unlock(ptr noundef %fwreq_mutex) #13
  %poll_sync = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 18
  call void @__init_work(ptr noundef %poll_sync, i32 noundef 0) #13
  %117 = ptrtoint ptr %poll_sync to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -64, ptr %poll_sync, align 4
  %lockdep_map = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 18, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @aq_ptp_init.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry55 = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 18, i32 0, i32 1
  %118 = ptrtoint ptr %entry55 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %entry55, ptr %entry55, align 8
  %prev.i = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 18, i32 0, i32 1, i32 1
  %119 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %entry55, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 18, i32 0, i32 2
  %120 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @aq_ptp_poll_sync_work_cb, ptr %func, align 8
  %timer = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 18, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @aq_ptp_init.__key.8) #13
  %call66 = call zeroext i8 @aq_nic_reserve_filter(ptr noundef %aq_nic, i32 noundef 0) #13
  %location = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 17, i32 1
  %121 = ptrtoint ptr %location to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %call66, ptr %location, align 1
  %call67 = call zeroext i8 @aq_nic_reserve_filter(ptr noundef %aq_nic, i32 noundef 2) #13
  %location68 = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 16, i32 1
  %122 = ptrtoint ptr %location68 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %call67, ptr %location68, align 8
  br label %cleanup

if.then70:                                        ; preds = %aq_ptp_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %124, ptr noundef nonnull @.str.5) #16
  %125 = ptrtoint ptr %call34 to i32
  %pin_config = getelementptr inbounds %struct.aq_ptp_s, ptr %call7.i.i, i32 0, i32 5, i32 8
  %126 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pin_config, align 8
  call void @kfree(ptr noundef %127) #13
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end17.if.end72_crit_edge
  %err.0130 = phi i32 [ %125, %if.then70 ], [ -12, %if.end17.if.end72_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #13
  %aq_ptp73 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %128 = ptrtoint ptr %aq_ptp73 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %aq_ptp73, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %aq_ptp_clock_init.exit, %if.then15, %if.then9, %if.then5, %if.then
  %retval.0 = phi i32 [ %err.0130, %if.end72 ], [ 0, %aq_ptp_clock_init.exit ], [ 0, %if.then15 ], [ 0, %if.then9 ], [ 0, %if.then5 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 372, ptr nonnull %mbox) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_utils_mpi_read_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_nic_get_ndev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ptp_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %work_done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -296
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %work_done) #13
  %2 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %work_done, align 4
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_tx_head_update = getelementptr inbounds %struct.aq_hw_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %hw_ring_tx_head_update to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_ring_tx_head_update, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_hw, align 8
  %ptp_tx = getelementptr i8, ptr %napi, i32 224
  %call = tail call i32 %6(ptr noundef %8, ptr noundef %ptp_tx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit

if.end:                                           ; preds = %entry
  %sw_head = getelementptr i8, ptr %napi, i32 244
  %9 = ptrtoint ptr %sw_head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sw_head, align 4
  %hw_head = getelementptr i8, ptr %napi, i32 240
  %11 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp4.not = icmp eq i32 %10, %12
  br i1 %cmp4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call zeroext i1 @aq_ring_tx_clean(ptr noundef %ptp_tx) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %13 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_hwts_rx_receive = getelementptr inbounds %struct.aq_hw_ops, ptr %14, i32 0, i32 37
  %15 = ptrtoint ptr %hw_ring_hwts_rx_receive to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_ring_hwts_rx_receive, align 4
  %17 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aq_hw, align 8
  %hwts_rx = getelementptr i8, ptr %napi, i32 560
  %call11 = tail call i32 %16(ptr noundef %18, ptr noundef %hwts_rx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end8.err_exit_crit_edge, label %if.end14

if.end8.err_exit_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit

if.end14:                                         ; preds = %if.end8
  %19 = xor i1 %cmp4.not, true
  %sw_head16 = getelementptr i8, ptr %napi, i32 580
  %20 = ptrtoint ptr %sw_head16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sw_head16, align 4
  %hw_head18 = getelementptr i8, ptr %napi, i32 576
  %22 = ptrtoint ptr %hw_head18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_head18, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp19.not = icmp eq i32 %21, %23
  br i1 %cmp19.not, label %if.end14.if.end29_crit_edge, label %if.then20

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then20:                                        ; preds = %if.end14
  tail call void @aq_ring_hwts_rx_clean(ptr noundef %hwts_rx, ptr noundef %1) #13
  %24 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_hwts_rx_fill = getelementptr inbounds %struct.aq_hw_ops, ptr %25, i32 0, i32 36
  %26 = ptrtoint ptr %hw_ring_hwts_rx_fill to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_ring_hwts_rx_fill, align 4
  %28 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aq_hw, align 8
  %call25 = tail call i32 %27(ptr noundef %29, ptr noundef %hwts_rx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then20.err_exit_crit_edge, label %if.then20.if.end29_crit_edge

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then20.err_exit_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit

if.end29:                                         ; preds = %if.then20.if.end29_crit_edge, %if.end14.if.end29_crit_edge
  %was_cleaned.1.off0 = phi i1 [ %19, %if.end14.if.end29_crit_edge ], [ true, %if.then20.if.end29_crit_edge ]
  %30 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_rx_receive = getelementptr inbounds %struct.aq_hw_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %hw_ring_rx_receive to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_ring_rx_receive, align 4
  %34 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %aq_hw, align 8
  %ptp_rx = getelementptr i8, ptr %napi, i32 392
  %call32 = tail call i32 %33(ptr noundef %35, ptr noundef %ptp_rx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end29.err_exit_crit_edge, label %if.end35

if.end29.err_exit_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit

if.end35:                                         ; preds = %if.end29
  %sw_head37 = getelementptr i8, ptr %napi, i32 412
  %36 = ptrtoint ptr %sw_head37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sw_head37, align 4
  %hw_head39 = getelementptr i8, ptr %napi, i32 408
  %38 = ptrtoint ptr %hw_head39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hw_head39, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp40.not = icmp eq i32 %37, %39
  br i1 %cmp40.not, label %if.end35.if.end60_crit_edge, label %if.then41

if.end35.if.end60_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then41:                                        ; preds = %if.end35
  %call43 = call i32 @aq_ring_rx_clean(ptr noundef %ptp_rx, ptr noundef %napi, ptr noundef nonnull %work_done, i32 noundef %budget) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then41.err_exit_crit_edge, label %if.end46

if.then41.err_exit_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit

if.end46:                                         ; preds = %if.then41
  %sw_tail = getelementptr i8, ptr %napi, i32 416
  %40 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sw_tail, align 8
  %call49 = call i32 @aq_ring_rx_fill(ptr noundef %ptp_rx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end46.err_exit_crit_edge, label %if.end52

if.end46.err_exit_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit

if.end52:                                         ; preds = %if.end46
  %42 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %aq_hw_ops, align 8
  %hw_ring_rx_fill = getelementptr inbounds %struct.aq_hw_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %hw_ring_rx_fill to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_ring_rx_fill, align 4
  %46 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aq_hw, align 8
  %call56 = call i32 %45(ptr noundef %47, ptr noundef %ptp_rx, i32 noundef %41) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end52.err_exit_crit_edge, label %if.end52.if.end60_crit_edge

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.end52.err_exit_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit

if.end60:                                         ; preds = %if.end52.if.end60_crit_edge, %if.end35.if.end60_crit_edge
  br i1 %was_cleaned.1.off0, label %if.then61, label %if.end60.if.end62_crit_edge

if.end60.if.end62_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then61:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %budget, ptr %work_done, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end60.if.end62_crit_edge
  %49 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %work_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %budget)
  %cmp63 = icmp slt i32 %50, %budget
  br i1 %cmp63, label %if.then64, label %if.end62.err_exit_crit_edge

if.end62.err_exit_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_exit

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %call65 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %50) #13
  %51 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %aq_hw_ops, align 8
  %hw_irq_enable = getelementptr inbounds %struct.aq_hw_ops, ptr %52, i32 0, i32 17
  %53 = ptrtoint ptr %hw_irq_enable to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw_irq_enable, align 4
  %55 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %aq_hw, align 8
  %ptp_ring_param = getelementptr i8, ptr %napi, i32 -72
  %57 = ptrtoint ptr %ptp_ring_param to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ptp_ring_param, align 8
  %sh_prom = zext i32 %58 to i64
  %shl = shl nuw i64 1, %sh_prom
  %call68 = call i32 %54(ptr noundef %56, i64 noundef %shl) #13
  br label %err_exit

err_exit:                                         ; preds = %if.then64, %if.end62.err_exit_crit_edge, %if.end52.err_exit_crit_edge, %if.end46.err_exit_crit_edge, %if.then41.err_exit_crit_edge, %if.end29.err_exit_crit_edge, %if.then20.err_exit_crit_edge, %if.end8.err_exit_crit_edge, %entry.err_exit_crit_edge
  %59 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %work_done, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %work_done) #13
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_ptp_poll_sync_work_cb(ptr noundef %w) #0 align 64 {
entry:
  %ts.i29.i.i = alloca i64, align 8
  %ts.i21.i.i = alloca i64, align 8
  %ts.i.i.i = alloca i64, align 8
  %ptp_event.i = alloca %struct.ptp_clock_event, align 8
  %time.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -1140
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts.i.i.i) #13
  %2 = ptrtoint ptr %ts.i.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ts.i.i.i, align 8
  %aq_hw_ops.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %aq_hw_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aq_hw_ops.i.i.i, align 8
  %hw_get_sync_ts.i.i.i = getelementptr inbounds %struct.aq_hw_ops, ptr %4, i32 0, i32 45
  %5 = ptrtoint ptr %hw_get_sync_ts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_get_sync_ts.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %entry.aq_ptp_get_sync1588_ts.exit.i.i_crit_edge, label %if.then.i.i.i

entry.aq_ptp_get_sync1588_ts.exit.i.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_get_sync1588_ts.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %aq_hw.i.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %aq_hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_hw.i.i.i, align 8
  %call.i.i.i = call i32 %6(ptr noundef %8, ptr noundef nonnull %ts.i.i.i) #13
  br label %aq_ptp_get_sync1588_ts.exit.i.i

aq_ptp_get_sync1588_ts.exit.i.i:                  ; preds = %if.then.i.i.i, %entry.aq_ptp_get_sync1588_ts.exit.i.i_crit_edge
  %9 = ptrtoint ptr %ts.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ts.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts.i.i.i) #13
  %last_sync1588_ts.i.i = getelementptr i8, ptr %w, i32 108
  %11 = ptrtoint ptr %last_sync1588_ts.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %last_sync1588_ts.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp.not.i.i = icmp eq i64 %10, %12
  br i1 %cmp.not.i.i, label %aq_ptp_get_sync1588_ts.exit.i.i.aq_ptp_check_sync1588.exit_crit_edge, label %if.then.i.i

aq_ptp_get_sync1588_ts.exit.i.i.aq_ptp_check_sync1588.exit_crit_edge: ; preds = %aq_ptp_get_sync1588_ts.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_check_sync1588.exit

if.then.i.i:                                      ; preds = %aq_ptp_get_sync1588_ts.exit.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts.i21.i.i) #13
  %13 = ptrtoint ptr %ts.i21.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %ts.i21.i.i, align 8
  %14 = ptrtoint ptr %aq_hw_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aq_hw_ops.i.i.i, align 8
  %hw_get_sync_ts.i23.i.i = getelementptr inbounds %struct.aq_hw_ops, ptr %15, i32 0, i32 45
  %16 = ptrtoint ptr %hw_get_sync_ts.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_get_sync_ts.i23.i.i, align 4
  %tobool.not.i24.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i24.i.i, label %if.then.i.i.aq_ptp_get_sync1588_ts.exit28.i.i_crit_edge, label %if.then.i27.i.i

if.then.i.i.aq_ptp_get_sync1588_ts.exit28.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_get_sync1588_ts.exit28.i.i

if.then.i27.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %aq_hw.i25.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %aq_hw.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aq_hw.i25.i.i, align 8
  %call.i26.i.i = call i32 %17(ptr noundef %19, ptr noundef nonnull %ts.i21.i.i) #13
  br label %aq_ptp_get_sync1588_ts.exit28.i.i

aq_ptp_get_sync1588_ts.exit28.i.i:                ; preds = %if.then.i27.i.i, %if.then.i.i.aq_ptp_get_sync1588_ts.exit28.i.i_crit_edge
  %20 = ptrtoint ptr %ts.i21.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ts.i21.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts.i21.i.i) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %21)
  %cmp3.not.i.i = icmp eq i64 %10, %21
  br i1 %cmp3.not.i.i, label %aq_ptp_get_sync1588_ts.exit28.i.i.if.then.i7_crit_edge, label %if.then4.i.i

aq_ptp_get_sync1588_ts.exit28.i.i.if.then.i7_crit_edge: ; preds = %aq_ptp_get_sync1588_ts.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i7

if.then4.i.i:                                     ; preds = %aq_ptp_get_sync1588_ts.exit28.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts.i29.i.i) #13
  %22 = ptrtoint ptr %ts.i29.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %ts.i29.i.i, align 8
  %23 = ptrtoint ptr %aq_hw_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aq_hw_ops.i.i.i, align 8
  %hw_get_sync_ts.i31.i.i = getelementptr inbounds %struct.aq_hw_ops, ptr %24, i32 0, i32 45
  %25 = ptrtoint ptr %hw_get_sync_ts.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_get_sync_ts.i31.i.i, align 4
  %tobool.not.i32.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i32.i.i, label %if.then4.i.i.aq_ptp_get_sync1588_ts.exit36.i.i_crit_edge, label %if.then.i35.i.i

if.then4.i.i.aq_ptp_get_sync1588_ts.exit36.i.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_get_sync1588_ts.exit36.i.i

if.then.i35.i.i:                                  ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %aq_hw.i33.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %aq_hw.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %aq_hw.i33.i.i, align 8
  %call.i34.i.i = call i32 %26(ptr noundef %28, ptr noundef nonnull %ts.i29.i.i) #13
  br label %aq_ptp_get_sync1588_ts.exit36.i.i

aq_ptp_get_sync1588_ts.exit36.i.i:                ; preds = %if.then.i35.i.i, %if.then4.i.i.aq_ptp_get_sync1588_ts.exit36.i.i_crit_edge
  %29 = ptrtoint ptr %ts.i29.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ts.i29.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts.i29.i.i) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %30)
  %cmp6.not.i.i = icmp eq i64 %21, %30
  br i1 %cmp6.not.i.i, label %aq_ptp_get_sync1588_ts.exit36.i.i.if.then.i7_crit_edge, label %if.then7.i.i

aq_ptp_get_sync1588_ts.exit36.i.i.if.then.i7_crit_edge: ; preds = %aq_ptp_get_sync1588_ts.exit36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i7

if.then7.i.i:                                     ; preds = %aq_ptp_get_sync1588_ts.exit36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ndev.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ndev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %32, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.aq_ptp_sync_ts_updated) #16
  br label %if.then.i7

if.then.i7:                                       ; preds = %if.then7.i.i, %aq_ptp_get_sync1588_ts.exit36.i.i.if.then.i7_crit_edge, %aq_ptp_get_sync1588_ts.exit28.i.i.if.then.i7_crit_edge
  %sync_ts.0.ph.i = phi i64 [ %10, %aq_ptp_get_sync1588_ts.exit28.i.i.if.then.i7_crit_edge ], [ %21, %aq_ptp_get_sync1588_ts.exit36.i.i.if.then.i7_crit_edge ], [ 0, %if.then7.i.i ]
  %extts_pin_enabled.i = getelementptr i8, ptr %w, i32 104
  %33 = ptrtoint ptr %extts_pin_enabled.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extts_pin_enabled.i, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.then.i7.if.end.i8_crit_edge, label %if.then2.i

if.then.i7.if.end.i8_crit_edge:                   ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i8

if.then2.i:                                       ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ptp_event.i) #13
  %35 = getelementptr inbounds i8, ptr %ptp_event.i, i32 16
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -1, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time.i) #13
  %37 = ptrtoint ptr %time.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %time.i, align 8
  %38 = ptrtoint ptr %aq_hw_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %aq_hw_ops.i.i.i, align 8
  %hw_ts_to_sys_clock.i = getelementptr inbounds %struct.aq_hw_ops, ptr %39, i32 0, i32 42
  %40 = ptrtoint ptr %hw_ts_to_sys_clock.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_ts_to_sys_clock.i, align 4
  %aq_hw.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %aq_hw.i, align 8
  %call3.i = call i32 %41(ptr noundef %43, i64 noundef %sync_ts.0.ph.i, ptr noundef nonnull %time.i) #13
  %n_pins.i = getelementptr i8, ptr %w, i32 -980
  %44 = ptrtoint ptr %n_pins.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_pins.i, align 4
  %sub.i = add i32 %45, -1
  %index.i = getelementptr inbounds %struct.ptp_clock_event, ptr %ptp_event.i, i32 0, i32 1
  %46 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i, ptr %index.i, align 4
  %47 = ptrtoint ptr %time.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %time.i, align 8
  %49 = getelementptr inbounds %struct.ptp_clock_event, ptr %ptp_event.i, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %48, ptr %49, align 8
  %51 = ptrtoint ptr %ptp_event.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %ptp_event.i, align 8
  %ptp_clock.i = getelementptr i8, ptr %w, i32 -1036
  %52 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptp_clock.i, align 8
  call void @ptp_clock_event(ptr noundef %53, ptr noundef nonnull %ptp_event.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time.i) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ptp_event.i) #13
  br label %if.end.i8

if.end.i8:                                        ; preds = %if.then2.i, %if.then.i7.if.end.i8_crit_edge
  %54 = ptrtoint ptr %last_sync1588_ts.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %sync_ts.0.ph.i, ptr %last_sync1588_ts.i.i, align 8
  br label %aq_ptp_check_sync1588.exit

aq_ptp_check_sync1588.exit:                       ; preds = %if.end.i8, %aq_ptp_get_sync1588_ts.exit.i.i.aq_ptp_check_sync1588.exit_crit_edge
  %extts_pin_enabled = getelementptr i8, ptr %w, i32 104
  %55 = ptrtoint ptr %extts_pin_enabled to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %extts_pin_enabled, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not = icmp eq i8 %56, 0
  br i1 %tobool.not, label %aq_ptp_check_sync1588.exit.if.end_crit_edge, label %if.else.i

aq_ptp_check_sync1588.exit.if.end_crit_edge:      ; preds = %aq_ptp_check_sync1588.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else.i:                                        ; preds = %aq_ptp_check_sync1588.exit
  call void @__sanitizer_cov_trace_pc() #15
  %poll_timeout_ms = getelementptr i8, ptr %w, i32 100
  %57 = ptrtoint ptr %poll_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %poll_timeout_ms, align 8
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %58) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %w, i32 noundef %call2.i) #13
  br label %if.end

if.end:                                           ; preds = %if.else.i, %aq_ptp_check_sync1588.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @aq_nic_reserve_filter(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ptp_unregister(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_clock = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clock, align 8
  %call = tail call i32 @ptp_clock_unregister(ptr noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ptp_free(ptr noundef %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %location = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %location, align 1
  %conv = zext i8 %3 to i32
  tail call void @aq_nic_release_filter(ptr noundef %aq_nic, i32 noundef 0, i32 noundef %conv) #13
  %location2 = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %location2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %location2, align 4
  %conv3 = zext i8 %5 to i32
  tail call void @aq_nic_release_filter(ptr noundef %aq_nic, i32 noundef 2, i32 noundef %conv3) #13
  %poll_sync = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 18
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %poll_sync) #13
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #13
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 11
  %6 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_fw_ops, align 4
  %enable_ptp = getelementptr inbounds %struct.aq_fw_ops, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %enable_ptp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_ptp, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %10 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_hw, align 8
  tail call void %9(ptr noundef %11, i32 noundef 0) #13
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #13
  %pin_config = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pin_config, align 4
  tail call void @kfree(ptr noundef %13) #13
  %napi = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 11
  tail call void @__netif_napi_del(ptr noundef %napi) #13
  tail call void @synchronize_net() #13
  tail call void @kfree(ptr noundef nonnull %1) #13
  %14 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %aq_ptp1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_nic_release_filter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @aq_ptp_get_ptp_clock(ptr nocapture noundef readonly %aq_ptp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr inbounds %struct.aq_ptp_s, ptr %aq_ptp, i32 0, i32 4
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ptp_link_change(ptr nocapture noundef readonly %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  %ts.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %2 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw, align 8
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aq_link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %extts_pin_enabled.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %extts_pin_enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %extts_pin_enabled.i, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then3.cleanup_crit_edge, label %if.then.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then3
  %poll_timeout_ms.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %poll_timeout_ms.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 15, ptr %poll_timeout_ms.i, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts.i.i) #13
  %11 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %ts.i.i, align 8
  %aq_hw_ops.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %10, i32 0, i32 10
  %12 = ptrtoint ptr %aq_hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw_ops.i.i, align 8
  %hw_get_sync_ts.i.i = getelementptr inbounds %struct.aq_hw_ops, ptr %13, i32 0, i32 45
  %14 = ptrtoint ptr %hw_get_sync_ts.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_get_sync_ts.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then.i.aq_ptp_get_sync1588_ts.exit.i_crit_edge, label %if.then.i9.i

if.then.i.aq_ptp_get_sync1588_ts.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_get_sync1588_ts.exit.i

if.then.i9.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %aq_hw.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %aq_hw.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_hw.i.i, align 8
  %call.i.i = call i32 %15(ptr noundef %17, ptr noundef nonnull %ts.i.i) #13
  br label %aq_ptp_get_sync1588_ts.exit.i

aq_ptp_get_sync1588_ts.exit.i:                    ; preds = %if.then.i9.i, %if.then.i.aq_ptp_get_sync1588_ts.exit.i_crit_edge
  %18 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ts.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts.i.i) #13
  %last_sync1588_ts.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 21
  %20 = ptrtoint ptr %last_sync1588_ts.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %last_sync1588_ts.i, align 8
  %poll_sync.i = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 18
  %21 = ptrtoint ptr %poll_timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %poll_timeout_ms.i, align 8
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %22) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %poll_sync.i, i32 noundef %call2.i.i) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %poll_sync = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 18
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %poll_sync) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %aq_ptp_get_sync1588_ts.exit.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @aq_ptp_get_ring_cnt(ptr nocapture noundef readonly %aq_nic, i32 noundef %ring_type) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %a1_ptp = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %a1_ptp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %a1_ptp, align 8, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ring_type)
  %cmp = icmp eq i32 %ring_type, 1
  %phi.sel = select i1 %cmp, i32 2, i32 1
  %4 = select i1 %tobool2.not, i32 1, i32 %phi.sel
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aq_ptp_get_stats(ptr nocapture noundef readonly %aq_nic, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_ptp1 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 24
  %0 = ptrtoint ptr %aq_ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 13
  %call = tail call i32 @aq_ring_fill_stats_data(ptr noundef %ptp_rx, ptr noundef %data) #13
  %add.ptr = getelementptr i64, ptr %data, i32 %call
  %ptp_tx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @aq_ring_fill_stats_data(ptr noundef %ptp_tx, ptr noundef %add.ptr) #13
  %add.ptr3 = getelementptr i64, ptr %add.ptr, i32 %call2
  %a1_ptp = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %a1_ptp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %a1_ptp, align 8, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %hwts_rx = getelementptr inbounds %struct.aq_ptp_s, ptr %1, i32 0, i32 14
  %call6 = tail call i32 @aq_ring_fill_stats_data(ptr noundef %hwts_rx, ptr noundef %add.ptr3) #13
  %add.ptr7 = getelementptr i64, ptr %add.ptr3, i32 %call6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %data, %entry.cleanup_crit_edge ], [ %add.ptr7, %if.then5 ], [ %add.ptr3, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ring_fill_stats_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aq_ptp_skb_ring_clean(ptr noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.ptp_skb_ring, ptr %ring, i32 0, i32 1
  %call2.i5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %tail.i.i = getelementptr inbounds %struct.ptp_skb_ring, ptr %ring, i32 0, i32 4
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tail.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.ptp_skb_ring, ptr %ring, i32 0, i32 3
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.i6 = icmp eq i32 %1, %3
  br i1 %cmp.i.i6, label %entry.aq_ptp_skb_get.exit.thread_crit_edge, label %aq_ptp_skb_get.exit.lr.ph

entry.aq_ptp_skb_get.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_skb_get.exit.thread

aq_ptp_skb_get.exit.lr.ph:                        ; preds = %entry
  %size.i.i = getelementptr inbounds %struct.ptp_skb_ring, ptr %ring, i32 0, i32 2
  br label %aq_ptp_skb_get.exit

aq_ptp_skb_get.exit.thread:                       ; preds = %while.body.aq_ptp_skb_get.exit.thread_crit_edge, %entry.aq_ptp_skb_get.exit.thread_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i5, %entry.aq_ptp_skb_get.exit.thread_crit_edge ], [ %call2.i, %while.body.aq_ptp_skb_get.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.lcssa) #13
  br label %while.end

aq_ptp_skb_get.exit:                              ; preds = %while.body.aq_ptp_skb_get.exit_crit_edge, %aq_ptp_skb_get.exit.lr.ph
  %4 = phi i32 [ %1, %aq_ptp_skb_get.exit.lr.ph ], [ %13, %while.body.aq_ptp_skb_get.exit_crit_edge ]
  %call2.i7 = phi i32 [ %call2.i5, %aq_ptp_skb_get.exit.lr.ph ], [ %call2.i, %while.body.aq_ptp_skb_get.exit_crit_edge ]
  %5 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %6, i32 %4
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %4, 1
  %9 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i.i, align 4
  %rem.i.i = urem i32 %add.i.i, %10
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rem.i.i, ptr %tail.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i7) #13
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %aq_ptp_skb_get.exit.while.end_crit_edge, label %while.body

aq_ptp_skb_get.exit.while.end_crit_edge:          ; preds = %aq_ptp_skb_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %aq_ptp_skb_get.exit
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %8, i32 noundef 1) #13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail.i.i, align 4
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head.i.i, align 4
  %cmp.i.i = icmp eq i32 %13, %15
  br i1 %cmp.i.i, label %while.body.aq_ptp_skb_get.exit.thread_crit_edge, label %while.body.aq_ptp_skb_get.exit_crit_edge

while.body.aq_ptp_skb_get.exit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_skb_get.exit

while.body.aq_ptp_skb_get.exit.thread_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_skb_get.exit.thread

while.end:                                        ; preds = %aq_ptp_skb_get.exit.while.end_crit_edge, %aq_ptp_skb_get.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ptp_adjfine(ptr nocapture noundef readonly %ptp, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -108
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #13
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw_ops, align 8
  %hw_adj_clock_freq = getelementptr inbounds %struct.aq_hw_ops, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %hw_adj_clock_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_adj_clock_freq, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw, align 8
  %add.i = add i32 %scaled_ppm, 1
  %conv.i = sext i32 %add.i to i64
  %mul.i = mul nsw i64 %conv.i, 125
  %shr.i = ashr i64 %mul.i, 13
  %conv1.i = trunc i64 %shr.i to i32
  %call2 = tail call i32 %5(ptr noundef %7, i32 noundef %conv1.i) #13
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -108
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %ptp_lock = getelementptr i8, ptr %ptp, i32 -92
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #13
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw_ops, align 8
  %hw_adj_sys_clock = getelementptr inbounds %struct.aq_hw_ops, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %hw_adj_sys_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_adj_sys_clock, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw, align 8
  %call7 = tail call i32 %5(ptr noundef %7, i64 noundef %delta) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call4) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ptp_gettime(ptr noundef %ptp, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  %ns = alloca i64, align 8
  %tmp8 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -108
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ns) #13
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %ns, align 8, !annotation !73
  %ptp_lock = getelementptr i8, ptr %ptp, i32 -92
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #13
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aq_hw_ops, align 8
  %hw_get_ptp_ts = getelementptr inbounds %struct.aq_hw_ops, ptr %4, i32 0, i32 38
  %5 = ptrtoint ptr %hw_get_ptp_ts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_get_ptp_ts, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_hw, align 8
  call void %6(ptr noundef %8, ptr noundef nonnull %ns) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp8) #13
  %9 = ptrtoint ptr %ns to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ns, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp8, i64 noundef %10) #13
  %11 = call ptr @memcpy(ptr %ts, ptr %tmp8, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ns) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ptp_gpio_feature_enable(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  %start.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %ptp, i32 -108
  %3 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %n_ext_ts.i = getelementptr inbounds %struct.ptp_clock_info, ptr %ptp, i32 0, i32 4
  %6 = ptrtoint ptr %n_ext_ts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_ext_ts.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp ult i32 %5, %7
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.i = icmp ne i32 %on, 0
  %extts_pin_enabled.i = getelementptr i8, ptr %ptp, i32 1136
  %frombool.i = zext i1 %tobool.i to i8
  %8 = ptrtoint ptr %extts_pin_enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool.i, ptr %extts_pin_enabled.i, align 4
  br i1 %tobool.i, label %if.then3.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %poll_timeout_ms.i = getelementptr i8, ptr %ptp, i32 1132
  %9 = ptrtoint ptr %poll_timeout_ms.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 15, ptr %poll_timeout_ms.i, align 8
  %poll_sync.i = getelementptr i8, ptr %ptp, i32 1032
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %poll_sync.i) #13
  %10 = ptrtoint ptr %poll_timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poll_timeout_ms.i, align 8
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %poll_sync.i, i32 noundef %call2.i.i) #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then3.i, %if.end.i.if.end8.i_crit_edge
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %aq_hw_ops.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %aq_hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aq_hw_ops.i.i, align 8
  %hw_extts_gpio_enable.i.i = getelementptr inbounds %struct.aq_hw_ops, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %hw_extts_gpio_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_extts_gpio_enable.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i.i, label %if.end8.i.return_crit_edge, label %if.then.i17.i

if.end8.i.return_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.i17.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %extts_pin_enabled.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %extts_pin_enabled.i, align 4, !range !72
  %21 = zext i8 %20 to i32
  %aq_hw.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %14, i32 0, i32 4
  %22 = ptrtoint ptr %aq_hw.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aq_hw.i.i, align 8
  %call.i.i = tail call i32 %18(ptr noundef %23, i32 noundef 0, i32 noundef %21) #13
  br label %return

sw.bb1:                                           ; preds = %entry
  %add.ptr.i12 = getelementptr i8, ptr %ptp, i32 -108
  %24 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %25 = ptrtoint ptr %add.ptr.i12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i12, align 8
  %index.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i, align 8
  %n_per_out.i = getelementptr inbounds %struct.ptp_clock_info, ptr %ptp, i32 0, i32 5
  %29 = ptrtoint ptr %n_per_out.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_per_out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.not.i13 = icmp ult i32 %28, %30
  br i1 %cmp.not.i13, label %if.end.i14, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i14:                                       ; preds = %sw.bb1
  %period.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %period.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %period.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %32)
  %33 = icmp ugt i64 %32, 4
  br i1 %33, label %if.end.i14.return_crit_edge, label %if.end7.i

if.end.i14.return_crit_edge:                      ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end7.i:                                        ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not.i = icmp eq i32 %on, 0
  br i1 %tobool.not.i, label %if.end7.i.cond.end21.i_crit_edge, label %cond.end.i

if.end7.i.cond.end21.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end21.i

cond.end.i:                                       ; preds = %if.end7.i
  %mul.i = mul nuw nsw i64 %32, 1000000000
  %nsec.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nsec.i, align 8
  %conv.i = zext i32 %35 to i64
  %add.i = add nuw nsw i64 %mul.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add.i)
  %cmp9.i = icmp ugt i64 %add.i, 4294967295
  br i1 %cmp9.i, label %cond.end.i.return_crit_edge, label %cond.true14.i

cond.end.i.return_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

cond.true14.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %24, align 8
  %mul16.i = mul i64 %37, 1000000000
  %nsec17.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %nsec17.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nsec17.i, align 8
  %conv18.i = zext i32 %39 to i64
  %add19.i = add i64 %mul16.i, %conv18.i
  br label %cond.end21.i

cond.end21.i:                                     ; preds = %cond.true14.i, %if.end7.i.cond.end21.i_crit_edge
  %cond4244.i = phi i64 [ %add.i, %cond.true14.i ], [ 0, %if.end7.i.cond.end21.i_crit_edge ]
  %cond22.i = phi i64 [ %add19.i, %cond.true14.i ], [ 0, %if.end7.i.cond.end21.i_crit_edge ]
  tail call fastcc void @aq_ptp_hw_pin_conf(ptr noundef %26, i32 noundef %28, i64 noundef %cond22.i, i64 noundef %cond4244.i) #13
  br label %return

sw.bb3:                                           ; preds = %entry
  %add.ptr.i16 = getelementptr i8, ptr %ptp, i32 -108
  %40 = ptrtoint ptr %add.ptr.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i16, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start.i) #13
  %42 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 -1, ptr %start.i, align 8, !annotation !73
  %n_per_out.i17 = getelementptr inbounds %struct.ptp_clock_info, ptr %ptp, i32 0, i32 5
  %43 = ptrtoint ptr %n_per_out.i17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_per_out.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i = icmp eq i32 %44, 0
  br i1 %cmp.i, label %sw.bb3.aq_ptp_pps_pin_configure.exit_crit_edge, label %if.end.i19

sw.bb3.aq_ptp_pps_pin_configure.exit_crit_edge:   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %aq_ptp_pps_pin_configure.exit

if.end.i19:                                       ; preds = %sw.bb3
  %aq_hw_ops.i = getelementptr inbounds %struct.aq_nic_s, ptr %41, i32 0, i32 10
  %45 = ptrtoint ptr %aq_hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %aq_hw_ops.i, align 8
  %hw_get_ptp_ts.i = getelementptr inbounds %struct.aq_hw_ops, ptr %46, i32 0, i32 38
  %47 = ptrtoint ptr %hw_get_ptp_ts.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw_get_ptp_ts.i, align 4
  %aq_hw.i = getelementptr inbounds %struct.aq_nic_s, ptr %41, i32 0, i32 4
  %49 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %aq_hw.i, align 8
  call void %48(ptr noundef %50, ptr noundef nonnull %start.i) #13
  %51 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %start.i, align 8
  %53 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %52, i32 0) #19, !srcloc !74
  %asmresult.i.i.i = extractvalue { i64, i32 } %53, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %53, 1
  %54 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %52, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #19, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not.i18 = icmp eq i32 %on, 0
  %cond.i = select i1 %tobool.not.i18, i32 0, i32 1000000000
  %55 = zext i32 %cond.i to i64
  br i1 %tobool.not.i18, label %if.end.i19.cond.end.i22_crit_edge, label %cond.true.i

if.end.i19.cond.end.i22_crit_edge:                ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i22

cond.true.i:                                      ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #15
  %asmresult10.i.i.i = extractvalue { i64, i32 } %54, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 29
  %conv159.i.i = trunc i64 %div1581.i.i to i32
  %mul160.neg.i.i = mul i32 %conv159.i.i, -1000000000
  %conv14.i.i = trunc i64 %52 to i32
  %sub161.i.i = add i32 %mul160.neg.i.i, %conv14.i.i
  %conv3.i = zext i32 %sub161.i.i to i64
  %sub.i = sub i64 %52, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 990000000, i32 %sub161.i.i)
  %cmp5.i = icmp ugt i32 %sub161.i.i, 990000000
  %mul.i20 = select i1 %cmp5.i, i32 2000000000, i32 1000000000
  %56 = zext i32 %mul.i20 to i64
  %add.i21 = add i64 %sub.i, %56
  br label %cond.end.i22

cond.end.i22:                                     ; preds = %cond.true.i, %if.end.i19.cond.end.i22_crit_edge
  %cond9.i = phi i64 [ %add.i21, %cond.true.i ], [ 0, %if.end.i19.cond.end.i22_crit_edge ]
  %57 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %cond9.i, ptr %start.i, align 8
  call fastcc void @aq_ptp_hw_pin_conf(ptr noundef %41, i32 noundef 0, i64 noundef %cond9.i, i64 noundef %55) #13
  br label %aq_ptp_pps_pin_configure.exit

aq_ptp_pps_pin_configure.exit:                    ; preds = %cond.end.i22, %sw.bb3.aq_ptp_pps_pin_configure.exit_crit_edge
  %retval.0.i23 = phi i32 [ 0, %cond.end.i22 ], [ -22, %sw.bb3.aq_ptp_pps_pin_configure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start.i) #13
  br label %return

return:                                           ; preds = %aq_ptp_pps_pin_configure.exit, %cond.end21.i, %cond.end.i.return_crit_edge, %if.end.i14.return_crit_edge, %sw.bb1.return_crit_edge, %if.then.i17.i, %if.end8.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i23, %aq_ptp_pps_pin_configure.exit ], [ -95, %entry.return_crit_edge ], [ -22, %sw.bb.return_crit_edge ], [ 0, %if.end8.i.return_crit_edge ], [ 0, %if.then.i17.i ], [ 0, %cond.end21.i ], [ -22, %sw.bb1.return_crit_edge ], [ -34, %if.end.i14.return_crit_edge ], [ -34, %cond.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aq_ptp_verify(ptr nocapture noundef readonly %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %ptp, i32 0, i32 8
  %0 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_config, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %n_pins = getelementptr inbounds %struct.ptp_clock_info, ptr %ptp, i32 0, i32 6
  %2 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_pins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pin)
  %cmp.not = icmp ugt i32 %3, %pin
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %chan2 = getelementptr %struct.ptp_pin_desc, ptr %1, i32 %pin, i32 3
  %4 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %chan)
  %cmp3.not = icmp eq i32 %5, %chan
  br i1 %cmp3.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %func8 = getelementptr %struct.ptp_pin_desc, ptr %1, i32 %pin, i32 2
  %6 = ptrtoint ptr %func8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %func8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %func)
  %cmp9.not = icmp eq i32 %7, %func
  %. = select i1 %cmp9.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aq_ptp_hw_pin_conf(ptr noundef %aq_nic, i32 noundef %pin_index, i64 noundef %start, i64 noundef %period) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %period)
  %tobool.not = icmp eq i64 %period, 0
  br i1 %tobool.not, label %do.body8, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aq_ptp_hw_pin_conf.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aq_ptp_hw_pin_conf, %if.then5)) #13
          to label %if.end26 [label %if.then5], !srcloc !76

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %conv = trunc i64 %period to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @aq_ptp_hw_pin_conf.__UNIQUE_ID_ddebug353, ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %pin_index, i64 noundef %start, i32 noundef %conv) #13
  br label %if.end26

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aq_ptp_hw_pin_conf.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aq_ptp_hw_pin_conf, %if.then20)) #13
          to label %if.end26 [label %if.then20], !srcloc !76

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  %ndev21 = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %2 = ptrtoint ptr %ndev21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @aq_ptp_hw_pin_conf.__UNIQUE_ID_ddebug354, ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %pin_index, i64 noundef %start, i32 noundef 0) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %do.body8, %if.then5, %do.body1
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #13
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %4 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw_ops, align 8
  %hw_gpio_pulse = getelementptr inbounds %struct.aq_hw_ops, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %hw_gpio_pulse to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_gpio_pulse, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %8 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw, align 8
  %conv27 = trunc i64 %period to i32
  %call28 = tail call i32 %7(ptr noundef %9, i32 noundef %pin_index, i64 noundef %start, i32 noundef %conv27) #13
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ring_hwts_rx_clean(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ring_rx_clean(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !16, !17, !19, !21, !22, !24, !26, !27, !29, !30, !32, !34, !35, !36, !37, !38, !40, !41, !43, !45, !46, !48}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 542, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 772, i32 28}
!4 = !{ptr @aq_ptp_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 1203, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @aq_ptp_init.__key.3, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 1204, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 1210, i32 28}
!12 = !{ptr @aq_ptp_init.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 1234, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @aq_ptp_init.__key.8, !13, !"__key", i1 false, i1 false}
!16 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ptp_offset, !18, !"ptp_offset", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 94, i32 29}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 267, i32 7}
!24 = !{ptr @aq_ptp_skb_ring_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 190, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @aq_ptp_clock, !31, !"aq_ptp_clock", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 1029, i32 30}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 370, i32 3}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @aq_ptp_hw_pin_conf.__UNIQUE_ID_ddebug353, !33, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 374, i32 3}
!40 = !{ptr @aq_ptp_hw_pin_conf.__UNIQUE_ID_ddebug354, !39, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 1115, i32 6}
!43 = !{ptr @aq_ptp_tx_timeout_init.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 219, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 1341, i32 9}
!48 = !{ptr @__func__.aq_ptp_sync_ts_updated, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ptp.c", i32 1342, i32 9}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148610476}
!61 = !{i64 994166, i64 994190, i64 994211, i64 994228, i64 994245}
!62 = !{i64 2148610702}
!63 = !{i64 2148510183, i64 2148510215, i64 2148510244, i64 2148510278, i64 2148510309, i64 2148510332}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2150155950}
!67 = !{i64 2150160884}
!68 = !{i64 2150182602}
!69 = !{i64 2150187496}
!70 = !{i64 2150264023}
!71 = !{i64 2150264348}
!72 = !{i8 0, i8 2}
!73 = !{!"auto-init"}
!74 = !{i64 861689, i64 861716, i64 861738, i64 861766}
!75 = !{i64 862097, i64 862124, i64 862157, i64 862178, i64 862205, i64 862231}
!76 = !{i64 2148322046, i64 2148322051, i64 2148322064, i64 2148322108, i64 2148322142, i64 2148322163}
