; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cadence/macb_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/cadence/macb_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.100, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.100 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, i32, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.macb = type { ptr, i8, ptr, ptr, i32, i32, i32, i32, i32, [8 x %struct.macb_queue], %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.118, %struct.macb_or_gem_ops, ptr, ptr, %struct.phylink_config, %struct.phylink_pcs, %struct.phylink_pcs, i32, i32, i32, [2 x %struct.macb_tx_skb], i32, [91 x i64], i32, i32, i32, ptr, i8, %struct.spinlock, i32, ptr, %struct.ptp_clock_info, %struct.tsu_incr, %struct.hwtstamp_config, %struct.ethtool_rx_fs_list, %struct.spinlock, i32, %struct.tasklet_struct, i32, i32, i32, %struct.macb_pm_data, ptr }
%struct.macb_queue = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.work_struct, i32, i32, i32, i32, ptr, ptr, ptr, %struct.napi_struct, %struct.queue_stats, %struct.work_struct, i32, i32, [128 x %struct.gem_tx_ts] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.queue_stats = type { %union.anon.117, i32, i32, i32, i32, i32 }
%union.anon.117 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gem_tx_ts = type { ptr, %struct.macb_dma_desc_ptp }
%struct.macb_dma_desc_ptp = type { i32, i32 }
%union.anon.118 = type { %struct.gem_stats }
%struct.gem_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macb_or_gem_ops = type { ptr, ptr, ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.macb_tx_skb = type { ptr, i32, i32, i8 }
%struct.tsu_incr = type { i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ethtool_rx_fs_list = type { %struct.list_head, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.122, i32 }
%union.anon.122 = type { ptr }
%struct.macb_pm_data = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.macb_dma_desc = type { i32, i32 }
%struct.macb_ptp_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.99, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.99 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ifreq = type { %union.anon.2, %union.anon.3 }
%union.anon.2 = type { [16 x i8] }
%union.anon.3 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }

@gem_ptp_rxstamp._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.gem_ptp_rxstamp = private unnamed_addr constant [16 x i8] c"gem_ptp_rxstamp\00", align 1
@gem_ptp_rxstamp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.gem_ptp_rxstamp, ptr @.str.2, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timestamp not supported in BD\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/cadence/macb_ptp.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gem_ptp_rxstamp._entry_ptr = internal global ptr @gem_ptp_rxstamp._entry, section ".printk_index", align 4
@gem_ptp_caps_template = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"gem-ptp-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, ptr null, ptr @gem_ptp_adjfine, ptr null, ptr null, ptr @gem_ptp_adjtime, ptr null, ptr @gem_tsu_get_time, ptr null, ptr @gem_tsu_set_time, ptr @gem_ptp_enable, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@gem_ptp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013ptp clock register failed: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gem_ptp_init\00", [19 x i8] zeroinitializer }, align 32
@gem_ptp_init._entry_ptr = internal global ptr @gem_ptp_init._entry, section ".printk_index", align 4
@gem_ptp_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013ptp clock register failed\0A\00", [35 x i8] zeroinitializer }, align 32
@gem_ptp_init._entry_ptr.9 = internal global ptr @gem_ptp_init._entry.7, section ".printk_index", align 4
@gem_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&bp->tsu_clk_lock\00", [46 x i8] zeroinitializer }, align 32
@gem_ptp_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&queue->tx_ts_task)\00", [58 x i8] zeroinitializer }, align 32
@gem_ptp_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 396, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s ptp clock registered.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gem_ptp_init._entry_ptr.16 = internal global ptr @gem_ptp_init._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gem-ptp-timer\00", [18 x i8] zeroinitializer }, align 32
@gem_ptp_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 409, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s ptp clock unregistered.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gem_ptp_remove\00", [17 x i8] zeroinitializer }, align 32
@gem_ptp_remove._entry_ptr = internal global ptr @gem_ptp_remove._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.26 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 285, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"gem_ptp_caps_template\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 189, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 377, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 382, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 386, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 390, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 395, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private constant [43 x i8] c"../drivers/net/ethernet/cadence/macb_ptp.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 408, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 174, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @gem_ptp_init._entry, ptr @gem_ptp_init._entry.13, ptr @gem_ptp_init._entry.7, ptr @gem_ptp_init._entry_ptr, ptr @gem_ptp_init._entry_ptr.16, ptr @gem_ptp_init._entry_ptr.9, ptr @gem_ptp_remove._entry, ptr @gem_ptp_remove._entry_ptr, ptr @gem_ptp_rxstamp._entry, ptr @gem_ptp_rxstamp._entry_ptr, ptr @gem_ptp_rxstamp._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gem_ptp_caps_template, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @gem_ptp_init.__key, ptr @.str.10, ptr @gem_ptp_init.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_ptp_rxstamp._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_ptp_rxstamp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_ptp_caps_template to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_ptp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_ptp_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_ptp_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_ptp_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_ptp_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gem_ptp_rxstamp(ptr noundef %bp, ptr nocapture noundef readonly %skb, ptr noundef readonly %desc) local_unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #7
  %2 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %desc, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %hw_dma_cap.i = getelementptr inbounds %struct.macb, ptr %bp, i32 0, i32 35
  %6 = ptrtoint ptr %hw_dma_cap.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_dma_cap.i, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.then.do.body_crit_edge [
    i8 2, label %if.then.macb_ptp_desc.exit_crit_edge
    i8 3, label %if.then6.i
  ]

if.then.macb_ptp_desc.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %macb_ptp_desc.exit

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then6.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %macb_ptp_desc.exit

macb_ptp_desc.exit:                               ; preds = %if.then6.i, %if.then.macb_ptp_desc.exit_crit_edge
  %.sink = phi i32 [ 16, %if.then6.i ], [ 8, %if.then.macb_ptp_desc.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %desc, i32 %.sink
  %tobool2.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool2.not, label %macb_ptp_desc.exit.do.body_crit_edge, label %if.end10

macb_ptp_desc.exit.do.body_crit_edge:             ; preds = %macb_ptp_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %macb_ptp_desc.exit.do.body_crit_edge, %if.then.do.body_crit_edge
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @gem_ptp_rxstamp._rs, ptr noundef nonnull @__func__.gem_ptp_rxstamp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.macb, ptr %bp, i32 0, i32 11
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end10:                                         ; preds = %macb_ptp_desc.exit
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %ts_2 = getelementptr inbounds %struct.macb_dma_desc_ptp, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %ts_2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ts_2, align 4
  call fastcc void @gem_hw_timestamp(ptr noundef %bp, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %ts)
  %15 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %16)
  %cmp.i = icmp sgt i64 %16, 9223372035
  br i1 %cmp.i, label %if.end10.ktime_set.exit_crit_edge, label %if.end.i, !prof !55

if.end10.ktime_set.exit_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %ktime_set.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %17 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tv_nsec, align 8
  %mul.i = mul i64 %16, 1000000000
  %conv.i = zext i32 %18 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %ktime_set.exit

ktime_set.exit:                                   ; preds = %if.end.i, %if.end10.ktime_set.exit_crit_edge
  %retval.0.i22 = phi i64 [ %add.i, %if.end.i ], [ 9223372036854775807, %if.end10.ktime_set.exit_crit_edge ]
  %19 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %retval.0.i22, ptr %hwtstamps.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ktime_set.exit, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gem_hw_timestamp(ptr noundef %bp, i32 noundef %dma_desc_ts_1, i32 noundef %dma_desc_ts_2, ptr nocapture noundef %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %dma_desc_ts_2, 2
  %shl = and i32 %and, 60
  %shr1 = lshr i32 %dma_desc_ts_1, 30
  %or = or i32 %shl, %shr1
  %conv = zext i32 %or to i64
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %ts, align 8
  %and4 = and i32 %dma_desc_ts_1, 1073741823
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %1 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and4, ptr %tv_nsec, align 8
  %tsu_clk_lock.i = getelementptr %struct.macb, ptr %bp, i32 0, i32 36
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tsu_clk_lock.i) #7
  %macb_reg_readl55.i = getelementptr %struct.macb, ptr %bp, i32 0, i32 2
  %2 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call656.i = tail call i32 %3(ptr noundef %bp, i32 noundef 468) #7
  %4 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call8.i = tail call i32 %5(ptr noundef %bp, i32 noundef 464) #7
  %6 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call10.i = tail call i32 %7(ptr noundef %bp, i32 noundef 448) #7
  %8 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call12.i = tail call i32 %9(ptr noundef %bp, i32 noundef 468) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call656.i, i32 %call12.i)
  %cmp13.i = icmp sgt i32 %call656.i, %call12.i
  br i1 %cmp13.i, label %if.then.i, label %entry.gem_tsu_get_time.exit_crit_edge

entry.gem_tsu_get_time.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gem_tsu_get_time.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call1659.i = tail call i32 %11(ptr noundef %bp, i32 noundef 468) #7
  %12 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call18.i = tail call i32 %13(ptr noundef %bp, i32 noundef 464) #7
  %14 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call20.i = tail call i32 %15(ptr noundef %bp, i32 noundef 448) #7
  br label %gem_tsu_get_time.exit

gem_tsu_get_time.exit:                            ; preds = %if.then.i, %entry.gem_tsu_get_time.exit_crit_edge
  %secl.0.i = phi i32 [ %call18.i, %if.then.i ], [ %call8.i, %entry.gem_tsu_get_time.exit_crit_edge ]
  %sech.0.i = phi i32 [ %call20.i, %if.then.i ], [ %call10.i, %entry.gem_tsu_get_time.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tsu_clk_lock.i, i32 noundef %call3.i) #7
  %conv24.i = zext i32 %secl.0.i to i64
  %16 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ts, align 8
  %and6 = and i64 %17, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool.not = icmp ne i64 %and6, 0
  %and8 = and i64 %conv24.i, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  %or.cond = select i1 %tobool.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.then, label %gem_tsu_get_time.exit.if.end_crit_edge

gem_tsu_get_time.exit.if.end_crit_edge:           ; preds = %gem_tsu_get_time.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %gem_tsu_get_time.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i64 %17, -64
  %18 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %sub, ptr %ts, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %gem_tsu_get_time.exit.if.end_crit_edge
  %conv23.i = zext i32 %sech.0.i to i64
  %shl.i = shl nuw i64 %conv23.i, 32
  %and.i = or i64 %shl.i, %conv24.i
  %and12 = and i64 %and.i, 281474976710592
  %19 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ts, align 8
  %add = add i64 %20, %and12
  store i64 %add, ptr %ts, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gem_ptp_txstamp(ptr noundef %queue, ptr noundef %skb, ptr noundef readonly %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ts_tail = getelementptr inbounds %struct.macb_queue, ptr %queue, i32 0, i32 28
  %0 = ptrtoint ptr %tx_ts_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tx_ts_tail, align 8
  %tx_ts_head = getelementptr inbounds %struct.macb_queue, ptr %queue, i32 0, i32 27
  %2 = ptrtoint ptr %tx_ts_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ts_head, align 4
  %ctrl = getelementptr inbounds %struct.macb_dma_desc, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl, align 4
  %6 = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %3, 1
  %sub = sub i32 %1, %add
  %and1 = and i32 %sub, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp = icmp eq i32 %and1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue, align 8
  %hw_dma_cap.i = getelementptr inbounds %struct.macb, ptr %8, i32 0, i32 35
  %9 = ptrtoint ptr %hw_dma_cap.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hw_dma_cap.i, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %10, label %if.end3.cleanup_crit_edge [
    i8 2, label %if.end3.macb_ptp_desc.exit_crit_edge
    i8 3, label %if.then6.i
  ]

if.end3.macb_ptp_desc.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %macb_ptp_desc.exit

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %macb_ptp_desc.exit

macb_ptp_desc.exit:                               ; preds = %if.then6.i, %if.end3.macb_ptp_desc.exit_crit_edge
  %.sink = phi i32 [ 16, %if.then6.i ], [ 8, %if.end3.macb_ptp_desc.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %desc, i32 %.sink
  %tobool4.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool4.not, label %macb_ptp_desc.exit.cleanup_crit_edge, label %if.end6

macb_ptp_desc.exit.cleanup_crit_edge:             ; preds = %macb_ptp_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %macb_ptp_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_flags, align 1
  %16 = or i8 %15, 4
  store i8 %16, ptr %tx_flags, align 1
  %arrayidx = getelementptr %struct.macb_queue, ptr %queue, i32 0, i32 29, i32 %3
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %skb, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %desc_ptp10 = getelementptr %struct.macb_queue, ptr %queue, i32 0, i32 29, i32 %3, i32 1
  %20 = ptrtoint ptr %desc_ptp10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %desc_ptp10, align 4
  %ts_2 = getelementptr inbounds %struct.macb_dma_desc_ptp, ptr %add.ptr.i, i32 0, i32 1
  %21 = ptrtoint ptr %ts_2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ts_2, align 4
  %ts_213 = getelementptr %struct.macb_queue, ptr %queue, i32 0, i32 29, i32 %3, i32 1, i32 1
  %23 = ptrtoint ptr %ts_213 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ts_213, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  %and28 = and i32 %add, 127
  %24 = ptrtoint ptr %tx_ts_head to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %and28, ptr %tx_ts_head, align 4
  %tx_ts_task = getelementptr inbounds %struct.macb_queue, ptr %queue, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %tx_ts_task) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %macb_ptp_desc.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %macb_ptp_desc.exit.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gem_ptp_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ptp_clock_info = getelementptr i8, ptr %dev, i32 19320
  %0 = call ptr @memcpy(ptr %ptp_clock_info, ptr @gem_ptp_caps_template, i32 108)
  %ptp_info = getelementptr i8, ptr %dev, i32 19260
  %1 = ptrtoint ptr %ptp_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptp_info, align 4
  %get_tsu_rate = getelementptr inbounds %struct.macb_ptp_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %get_tsu_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_tsu_rate, align 4
  %call1 = tail call i32 %4(ptr noundef %add.ptr.i) #7
  %tsu_rate = getelementptr i8, ptr %dev, i32 19312
  %5 = ptrtoint ptr %tsu_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %tsu_rate, align 8
  %6 = ptrtoint ptr %ptp_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptp_info, align 4
  %get_ptp_max_adj = getelementptr inbounds %struct.macb_ptp_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %get_ptp_max_adj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_ptp_max_adj, align 4
  %call3 = tail call i32 %9() #7
  %max_adj = getelementptr i8, ptr %dev, i32 19356
  %10 = ptrtoint ptr %max_adj to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3, ptr %max_adj, align 4
  %11 = ptrtoint ptr %tsu_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tsu_rate, align 8
  %.frozen = freeze i32 %12
  %div172.i.i = udiv i32 1000000000, %.frozen
  %13 = mul i32 %div172.i.i, %.frozen
  %rem170.i.i.decomposed = sub i32 1000000000, %13
  %ns16.i = getelementptr i8, ptr %dev, i32 19432
  %14 = ptrtoint ptr %ns16.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div172.i.i, ptr %ns16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem170.i.i.decomposed)
  %tobool.not17.i = icmp eq i32 %rem170.i.i.decomposed, 0
  br i1 %tobool.not17.i, label %entry.gem_ptp_init_timer.exit_crit_edge, label %if.else162.i.i.i

entry.gem_ptp_init_timer.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gem_ptp_init_timer.exit

if.else162.i.i.i:                                 ; preds = %entry
  %conv120.i = zext i32 %rem170.i.i.decomposed to i64
  %shl21.i = shl nuw nsw i64 %conv120.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %rem170.i.i.decomposed)
  %cmp164.i.i.i = icmp ult i32 %rem170.i.i.decomposed, 256
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !58

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %shl21.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %12
  br label %gem_ptp_init_timer.exit

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %shl21.i) #11, !srcloc !59
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %15, 1
  %extract.t25.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %gem_ptp_init_timer.exit

gem_ptp_init_timer.exit:                          ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %entry.gem_ptp_init_timer.exit_crit_edge
  %storemerge.i = phi i32 [ 0, %entry.gem_ptp_init_timer.exit_crit_edge ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t25.i, %if.else174.i.i.i ]
  %tsu_incr.i = getelementptr i8, ptr %dev, i32 19428
  %16 = ptrtoint ptr %tsu_incr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge.i, ptr %tsu_incr.i, align 4
  %dev6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %call7 = tail call ptr @ptp_clock_register(ptr noundef %ptp_clock_info, ptr noundef %dev6) #7
  %ptp_clock = getelementptr i8, ptr %dev, i32 19316
  %17 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7, ptr %ptp_clock, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.else

do.end:                                           ; preds = %gem_ptp_init_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call7 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %18) #10
  %19 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ptp_clock, align 4
  br label %cleanup

if.else:                                          ; preds = %gem_ptp_init_timer.exit
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %do.end18, label %do.body22

do.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %cleanup

do.body22:                                        ; preds = %if.else
  %tsu_clk_lock = getelementptr i8, ptr %dev, i32 19268
  tail call void @__raw_spin_lock_init(ptr noundef %tsu_clk_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @gem_ptp_init.__key, i16 noundef signext 3) #7
  %num_queues = getelementptr i8, ptr %dev, i32 2332
  %20 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2670.not = icmp eq i32 %21, 0
  br i1 %cmp2670.not, label %do.body22.for.end_crit_edge, label %for.body.preheader

do.body22.for.end_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %do.body22
  %queues = getelementptr i8, ptr %dev, i32 2344
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %queue.072 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %queues, %for.body.preheader ]
  %q.071 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %tx_ts_head = getelementptr inbounds %struct.macb_queue, ptr %queue.072, i32 0, i32 27
  %22 = ptrtoint ptr %tx_ts_head to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tx_ts_head, align 4
  %tx_ts_tail = getelementptr inbounds %struct.macb_queue, ptr %queue.072, i32 0, i32 28
  %23 = ptrtoint ptr %tx_ts_tail to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tx_ts_tail, align 8
  %tx_ts_task = getelementptr inbounds %struct.macb_queue, ptr %queue.072, i32 0, i32 26
  tail call void @__init_work(ptr noundef %tx_ts_task, i32 noundef 0) #7
  %24 = ptrtoint ptr %tx_ts_task to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %tx_ts_task, align 8
  %lockdep_map = getelementptr inbounds %struct.macb_queue, ptr %queue.072, i32 0, i32 26, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @gem_ptp_init.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry31 = getelementptr inbounds %struct.macb_queue, ptr %queue.072, i32 0, i32 26, i32 1
  %25 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.macb_queue, ptr %queue.072, i32 0, i32 26, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry31, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.macb_queue, ptr %queue.072, i32 0, i32 26, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @gem_tx_timestamp_flush, ptr %func, align 4
  %inc = add nuw i32 %q.071, 1
  %incdec.ptr = getelementptr %struct.macb_queue, ptr %queue.072, i32 1
  %28 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_queues, align 4
  %cmp26 = icmp ult i32 %inc, %29
  br i1 %cmp26, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body22.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %call.i.i) #7
  %30 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %ts.sroa.0.0.copyload10.i = load i64, ptr %tmp.i, align 8
  %ts.sroa.5.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %31 = ptrtoint ptr %ts.sroa.5.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %ts.sroa.5.0.copyload11.i = load i32, ptr %ts.sroa.5.0.tmp.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  %conv.i.i = trunc i64 %ts.sroa.0.0.copyload10.i to i32
  %32 = lshr i64 %ts.sroa.0.0.copyload10.i, 32
  %33 = trunc i64 %32 to i32
  %conv2.i.i = and i32 %33, 65535
  %call6.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tsu_clk_lock) #7
  %macb_reg_writel.i.i = getelementptr i8, ptr %dev, i32 2316
  %34 = ptrtoint ptr %macb_reg_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %macb_reg_writel.i.i, align 4
  call void %35(ptr noundef %add.ptr.i, i32 noundef 468, i32 noundef 0) #7
  %36 = ptrtoint ptr %macb_reg_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %macb_reg_writel.i.i, align 4
  call void %37(ptr noundef %add.ptr.i, i32 noundef 448, i32 noundef %conv2.i.i) #7
  %38 = ptrtoint ptr %macb_reg_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %macb_reg_writel.i.i, align 4
  call void %39(ptr noundef %add.ptr.i, i32 noundef 464, i32 noundef %conv.i.i) #7
  %40 = ptrtoint ptr %macb_reg_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %macb_reg_writel.i.i, align 4
  call void %41(ptr noundef %add.ptr.i, i32 noundef 468, i32 noundef %ts.sroa.5.0.copyload11.i) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tsu_clk_lock, i32 noundef %call6.i.i) #7
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tsu_clk_lock) #7
  %42 = ptrtoint ptr %macb_reg_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %macb_reg_writel.i.i, align 4
  %44 = ptrtoint ptr %tsu_incr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tsu_incr.i, align 4
  %shl.i.i68 = shl i32 %45, 24
  %shr.i.i69 = lshr i32 %45, 8
  %and6.i.i = and i32 %shr.i.i69, 65535
  %or.i.i = or i32 %and6.i.i, %shl.i.i68
  call void %43(ptr noundef %add.ptr.i, i32 noundef 444, i32 noundef %or.i.i) #7
  %46 = ptrtoint ptr %macb_reg_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %macb_reg_writel.i.i, align 4
  %ns.i.i = getelementptr i8, ptr %dev, i32 19432
  %48 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ns.i.i, align 4
  %and9.i.i = and i32 %49, 255
  call void %47(ptr noundef %add.ptr.i, i32 noundef 476, i32 noundef %and9.i.i) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tsu_clk_lock, i32 noundef %call2.i.i) #7
  %50 = ptrtoint ptr %macb_reg_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %macb_reg_writel.i.i, align 4
  call void %51(ptr noundef %add.ptr.i, i32 noundef 472, i32 noundef 0) #7
  %pdev = getelementptr i8, ptr %dev, i32 18196
  %52 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev, align 4
  %dev38 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end18, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gem_tx_timestamp_flush(ptr noundef %work) #0 align 64 {
entry:
  %shhwtstamps.i = alloca %struct.skb_shared_hwtstamps, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -384
  %tx_ts_head = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %tx_ts_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tx_ts_head, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  %tx_ts_tail = getelementptr i8, ptr %work, i32 48
  %2 = ptrtoint ptr %tx_ts_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ts_tail, align 8
  %sub40 = sub i32 %1, %3
  %and41 = and i32 %sub40, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool.not42 = icmp eq i32 %and41, 0
  br i1 %tobool.not42, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tx_timestamps = getelementptr i8, ptr %work, i32 52
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %gem_tstamp_tx.exit.while.body_crit_edge, %while.body.lr.ph
  %tail.043 = phi i32 [ %3, %while.body.lr.ph ], [ %and20, %gem_tstamp_tx.exit.while.body_crit_edge ]
  %arrayidx = getelementptr [128 x %struct.gem_tx_ts], ptr %tx_timestamps, i32 0, i32 %tail.043
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %desc_ptp = getelementptr inbounds %struct.gem_tx_ts, ptr %arrayidx, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps.i) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #7
  %8 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %9 = ptrtoint ptr %desc_ptp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc_ptp, align 4
  %ts_2.i = getelementptr inbounds %struct.gem_tx_ts, ptr %arrayidx, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %ts_2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ts_2.i, align 4
  call fastcc void @gem_hw_timestamp(ptr noundef %5, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %ts.i) #7
  %13 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %14)
  %cmp.i.i = icmp sgt i64 %14, 9223372035
  br i1 %cmp.i.i, label %while.body.gem_tstamp_tx.exit_crit_edge, label %if.end.i.i, !prof !55

while.body.gem_tstamp_tx.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %gem_tstamp_tx.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tv_nsec.i, align 8
  %mul.i.i = mul i64 %14, 1000000000
  %conv.i.i = zext i32 %16 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %gem_tstamp_tx.exit

gem_tstamp_tx.exit:                               ; preds = %if.end.i.i, %while.body.gem_tstamp_tx.exit_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end.i.i ], [ 9223372036854775807, %while.body.gem_tstamp_tx.exit_crit_edge ]
  %17 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %retval.0.i.i, ptr %shhwtstamps.i, align 8
  call void @skb_tstamp_tx(ptr noundef %7, ptr noundef nonnull %shhwtstamps.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps.i) #7
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  call void @__dev_kfree_skb_any(ptr noundef %19, i32 noundef 1) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  %add = add i32 %tail.043, 1
  %and20 = and i32 %add, 127
  %20 = ptrtoint ptr %tx_ts_tail to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %and20, ptr %tx_ts_tail, align 8
  %sub = sub i32 %1, %add
  %and = and i32 %sub, 127
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %gem_tstamp_tx.exit.while.end_crit_edge, label %gem_tstamp_tx.exit.while.body_crit_edge

gem_tstamp_tx.exit.while.body_crit_edge:          ; preds = %gem_tstamp_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

gem_tstamp_tx.exit.while.end_crit_edge:           ; preds = %gem_tstamp_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %gem_tstamp_tx.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gem_ptp_remove(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr i8, ptr %ndev, i32 19316
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tsu_incr.i = getelementptr i8, ptr %ndev, i32 19428
  %2 = ptrtoint ptr %tsu_incr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tsu_incr.i, align 4
  %ns.i = getelementptr i8, ptr %ndev, i32 19432
  %3 = ptrtoint ptr %ns.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ns.i, align 4
  %macb_reg_writel.i = getelementptr i8, ptr %ndev, i32 2316
  %4 = ptrtoint ptr %macb_reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macb_reg_writel.i, align 4
  tail call void %5(ptr noundef %add.ptr.i, i32 noundef 444, i32 noundef 0) #7
  %6 = ptrtoint ptr %macb_reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %macb_reg_writel.i, align 4
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef 476, i32 noundef 0) #7
  %8 = ptrtoint ptr %macb_reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %macb_reg_writel.i, align 4
  tail call void %9(ptr noundef %add.ptr.i, i32 noundef 472, i32 noundef 0) #7
  %pdev = getelementptr i8, ptr %ndev, i32 18196
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gem_get_hwtst(ptr noundef %dev, ptr nocapture noundef readonly %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_dma_cap = getelementptr i8, ptr %dev, i32 19264
  %0 = ptrtoint ptr %hw_dma_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_dma_cap, align 8
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tstamp_config1 = getelementptr i8, ptr %dev, i32 19436
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %3 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 12, i32 -1226833920) #11, !srcloc !62
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tstamp_config1, i32 noundef 12) #7
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %tstamp_config1, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gem_set_hwtst(ptr noundef %dev, ptr nocapture noundef readonly %ifr, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tstamp_config1 = getelementptr i8, ptr %dev, i32 19436
  %hw_dma_cap = getelementptr i8, ptr %dev, i32 19264
  %0 = ptrtoint ptr %hw_dma_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_dma_cap, align 8
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %3 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 12, i32 -1226833920) #11, !srcloc !63
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !58

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tstamp_config1, i32 noundef 12) #7
  %6 = tail call i32 @llvm.read_register.i32(metadata !45) #7
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !64
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %tstamp_config1, ptr noundef %4, i32 noundef 12) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !58

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %tstamp_config1, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %tx_type = getelementptr i8, ptr %dev, i32 19440
  %10 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %11, label %if.end5.cleanup_crit_edge [
    i32 0, label %if.end5.sw.epilog_crit_edge
    i32 2, label %sw.bb
    i32 1, label %if.end5.sw.bb11_crit_edge
  ]

if.end5.sw.bb11_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %macb_reg_readl.i = getelementptr i8, ptr %dev, i32 2312
  %13 = ptrtoint ptr %macb_reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %macb_reg_readl.i, align 8
  %call.i = tail call i32 %14(ptr noundef %add.ptr.i, i32 noundef 0) #7
  %macb_reg_writel.i = getelementptr i8, ptr %dev, i32 2316
  %15 = ptrtoint ptr %macb_reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %macb_reg_writel.i, align 4
  %or.i = or i32 %call.i, 16777216
  tail call void %16(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %or.i) #7
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb, %if.end5.sw.bb11_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %if.end5.sw.epilog_crit_edge
  %tx_bd_control.0 = phi i32 [ 48, %sw.bb11 ], [ %11, %if.end5.sw.epilog_crit_edge ]
  %rx_filter = getelementptr i8, ptr %dev, i32 19444
  %17 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_filter, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %18, label %sw.default17 [
    i32 0, label %sw.epilog.if.then.i50_crit_edge
    i32 4, label %sw.epilog.if.then.i50_crit_edge61
    i32 5, label %sw.epilog.if.then.i50_crit_edge62
    i32 12, label %sw.epilog.sw.bb12_crit_edge
    i32 9, label %sw.epilog.sw.bb12_crit_edge63
    i32 6, label %sw.epilog.sw.bb12_crit_edge64
    i32 13, label %sw.epilog.sw.bb12_crit_edge65
    i32 10, label %sw.epilog.sw.bb12_crit_edge66
    i32 7, label %sw.epilog.sw.bb12_crit_edge67
    i32 14, label %sw.epilog.sw.bb12_crit_edge68
    i32 11, label %sw.epilog.sw.bb12_crit_edge69
    i32 8, label %sw.epilog.sw.bb12_crit_edge70
    i32 3, label %sw.epilog.sw.bb15_crit_edge
    i32 1, label %sw.epilog.sw.bb15_crit_edge71
  ]

sw.epilog.sw.bb15_crit_edge71:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

sw.epilog.sw.bb15_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

sw.epilog.sw.bb12_crit_edge70:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge69:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge68:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge67:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge66:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge65:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge64:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge63:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.epilog.if.then.i50_crit_edge62:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i50

sw.epilog.if.then.i50_crit_edge61:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i50

sw.epilog.if.then.i50_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i50

sw.bb12:                                          ; preds = %sw.epilog.sw.bb12_crit_edge, %sw.epilog.sw.bb12_crit_edge63, %sw.epilog.sw.bb12_crit_edge64, %sw.epilog.sw.bb12_crit_edge65, %sw.epilog.sw.bb12_crit_edge66, %sw.epilog.sw.bb12_crit_edge67, %sw.epilog.sw.bb12_crit_edge68, %sw.epilog.sw.bb12_crit_edge69, %sw.epilog.sw.bb12_crit_edge70
  %20 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12, ptr %rx_filter, align 4
  %macb_reg_readl = getelementptr i8, ptr %dev, i32 2312
  %21 = ptrtoint ptr %macb_reg_readl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %macb_reg_readl, align 8
  %call14 = tail call i32 %22(ptr noundef %add.ptr.i, i32 noundef 0) #7
  %macb_reg_writel = getelementptr i8, ptr %dev, i32 2316
  %23 = ptrtoint ptr %macb_reg_writel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %macb_reg_writel, align 4
  %or = or i32 %call14, 32768
  tail call void %24(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %or) #7
  br label %if.then.i50

sw.bb15:                                          ; preds = %sw.epilog.sw.bb15_crit_edge, %sw.epilog.sw.bb15_crit_edge71
  %25 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %rx_filter, align 4
  br label %if.then.i50

sw.default17:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rx_filter, align 4
  br label %cleanup

if.then.i50:                                      ; preds = %sw.bb15, %sw.bb12, %sw.epilog.if.then.i50_crit_edge, %sw.epilog.if.then.i50_crit_edge61, %sw.epilog.if.then.i50_crit_edge62
  %rx_bd_control.0 = phi i32 [ 48, %sw.bb15 ], [ 32, %sw.bb12 ], [ 0, %sw.epilog.if.then.i50_crit_edge ], [ 0, %sw.epilog.if.then.i50_crit_edge61 ], [ 0, %sw.epilog.if.then.i50_crit_edge62 ]
  %macb_reg_writel.i56 = getelementptr i8, ptr %dev, i32 2316
  %27 = ptrtoint ptr %macb_reg_writel.i56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %macb_reg_writel.i56, align 4
  tail call void %28(ptr noundef %add.ptr.i, i32 noundef 1228, i32 noundef %tx_bd_control.0) #7
  %29 = ptrtoint ptr %macb_reg_writel.i56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %macb_reg_writel.i56, align 4
  tail call void %30(ptr noundef %add.ptr.i, i32 noundef 1232, i32 noundef %rx_bd_control.0) #7
  %31 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #7
  %call.i.i49 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i49, label %if.then.i50.cleanup_crit_edge, label %if.end.i.i53

if.then.i50.cleanup_crit_edge:                    ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i53:                                     ; preds = %if.then.i50
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %32, i32 12, i32 -1226833920) #11, !srcloc !62
  %asmresult.i.i51 = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i51)
  %cmp.i.i52 = icmp eq i32 %asmresult.i.i51, 0
  br i1 %cmp.i.i52, label %copy_to_user.exit, label %if.end.i.i53.cleanup_crit_edge

if.end.i.i53.cleanup_crit_edge:                   ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i54 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tstamp_config1, i32 noundef 12) #7
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %32, ptr noundef %tstamp_config1, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool27.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool27.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i53.cleanup_crit_edge, %if.then.i50.cleanup_crit_edge, %sw.default17, %if.end5.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %sw.default17 ], [ -95, %entry.cleanup_crit_edge ], [ -34, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i50.cleanup_crit_edge ], [ -14, %if.end.i.i53.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_tsu_get_time(ptr noundef %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -17016
  %tsu_clk_lock = getelementptr i8, ptr %ptp, i32 -52
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tsu_clk_lock) #7
  %tobool.not.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i, label %ptp_read_system_prets.exit.thread, label %if.then.i47

ptp_read_system_prets.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %macb_reg_readl55 = getelementptr i8, ptr %ptp, i32 -17008
  %0 = ptrtoint ptr %macb_reg_readl55 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macb_reg_readl55, align 8
  %call656 = tail call i32 %1(ptr noundef %add.ptr, i32 noundef 468) #7
  br label %ptp_read_system_postts.exit

if.then.i47:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #7
  %macb_reg_readl = getelementptr i8, ptr %ptp, i32 -17008
  %2 = ptrtoint ptr %macb_reg_readl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macb_reg_readl, align 8
  %call6 = tail call i32 %3(ptr noundef %add.ptr, i32 noundef 468) #7
  %post_ts.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #7
  br label %ptp_read_system_postts.exit

ptp_read_system_postts.exit:                      ; preds = %if.then.i47, %ptp_read_system_prets.exit.thread
  %call658 = phi i32 [ %call656, %ptp_read_system_prets.exit.thread ], [ %call6, %if.then.i47 ]
  %macb_reg_readl57 = phi ptr [ %macb_reg_readl55, %ptp_read_system_prets.exit.thread ], [ %macb_reg_readl, %if.then.i47 ]
  %4 = ptrtoint ptr %macb_reg_readl57 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macb_reg_readl57, align 8
  %call8 = tail call i32 %5(ptr noundef %add.ptr, i32 noundef 464) #7
  %6 = ptrtoint ptr %macb_reg_readl57 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %macb_reg_readl57, align 8
  %call10 = tail call i32 %7(ptr noundef %add.ptr, i32 noundef 448) #7
  %8 = ptrtoint ptr %macb_reg_readl57 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %macb_reg_readl57, align 8
  %call12 = tail call i32 %9(ptr noundef %add.ptr, i32 noundef 468) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call658, i32 %call12)
  %cmp13 = icmp sgt i32 %call658, %call12
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %ptp_read_system_postts.exit
  br i1 %tobool.not.i, label %ptp_read_system_prets.exit50.thread, label %if.then.i53

ptp_read_system_prets.exit50.thread:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %macb_reg_readl57 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %macb_reg_readl57, align 8
  %call1659 = tail call i32 %11(ptr noundef %add.ptr, i32 noundef 468) #7
  %tv_nsec60 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %12 = ptrtoint ptr %tv_nsec60 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call1659, ptr %tv_nsec60, align 8
  br label %ptp_read_system_postts.exit54

if.then.i53:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #7
  %13 = ptrtoint ptr %macb_reg_readl57 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %macb_reg_readl57, align 8
  %call16 = tail call i32 %14(ptr noundef %add.ptr, i32 noundef 468) #7
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %15 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call16, ptr %tv_nsec, align 8
  %post_ts.i52 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i52) #7
  br label %ptp_read_system_postts.exit54

ptp_read_system_postts.exit54:                    ; preds = %if.then.i53, %ptp_read_system_prets.exit50.thread
  %16 = ptrtoint ptr %macb_reg_readl57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %macb_reg_readl57, align 8
  %call18 = tail call i32 %17(ptr noundef %add.ptr, i32 noundef 464) #7
  %18 = ptrtoint ptr %macb_reg_readl57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %macb_reg_readl57, align 8
  %call20 = tail call i32 %19(ptr noundef %add.ptr, i32 noundef 448) #7
  br label %if.end

if.else:                                          ; preds = %ptp_read_system_postts.exit
  call void @__sanitizer_cov_trace_pc() #9
  %tv_nsec21 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %20 = ptrtoint ptr %tv_nsec21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call658, ptr %tv_nsec21, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %ptp_read_system_postts.exit54
  %secl.0 = phi i32 [ %call18, %ptp_read_system_postts.exit54 ], [ %call8, %if.else ]
  %sech.0 = phi i32 [ %call20, %ptp_read_system_postts.exit54 ], [ %call10, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tsu_clk_lock, i32 noundef %call3) #7
  %conv23 = zext i32 %sech.0 to i64
  %shl = shl nuw i64 %conv23, 32
  %conv24 = zext i32 %secl.0 to i64
  %shl.masked = and i64 %shl, 281470681743360
  %and = or i64 %shl.masked, %conv24
  %21 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %and, ptr %ts, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_ptp_adjfine(ptr noundef %ptp, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scaled_ppm)
  %cmp = icmp slt i32 %scaled_ppm, 0
  %0 = tail call i32 @llvm.abs.i32(i32 %scaled_ppm, i1 false)
  %tsu_incr = getelementptr i8, ptr %ptp, i32 108
  %1 = ptrtoint ptr %tsu_incr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tsu_incr, align 4
  %ns = getelementptr i8, ptr %ptp, i32 112
  %3 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ns, align 4
  %shl = shl i32 %4, 24
  %add = add i32 %shl, %2
  %conv8 = sext i32 %0 to i64
  %conv9 = zext i32 %add to i64
  %mul = mul nsw i64 %conv9, %conv8
  %add10 = add nsw i64 %mul, 500000
  %shr = lshr i64 %add10, 16
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %shr) #11, !srcloc !67
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %shr, i64 %5, i32 0) #11, !srcloc !68
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div158.i.i36 = lshr i64 %asmresult10.i.i.i, 18
  %7 = trunc i64 %div158.i.i36 to i32
  %8 = sub i32 0, %7
  %cond.off0.p = select i1 %cmp, i32 %8, i32 %7
  %cond.off0 = add i32 %cond.off0.p, %add
  %add.ptr = getelementptr i8, ptr %ptp, i32 -17016
  %9 = lshr i32 %cond.off0, 24
  %tsu_clk_lock.i = getelementptr i8, ptr %ptp, i32 -52
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tsu_clk_lock.i) #7
  %macb_reg_writel.i = getelementptr i8, ptr %ptp, i32 -17004
  %10 = ptrtoint ptr %macb_reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %macb_reg_writel.i, align 4
  %shl.i = shl i32 %cond.off0, 24
  %conv20 = lshr i32 %cond.off0, 8
  %shr.i = and i32 %conv20, 65535
  %or.i = or i32 %shr.i, %shl.i
  tail call void %11(ptr noundef %add.ptr, i32 noundef 444, i32 noundef %or.i) #7
  %12 = ptrtoint ptr %macb_reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %macb_reg_writel.i, align 4
  tail call void %13(ptr noundef %add.ptr, i32 noundef 476, i32 noundef %9) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tsu_clk_lock.i, i32 noundef %call2.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  %then = alloca %struct.timespec64, align 8
  %tmp3 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -17016
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %then) #7
  %0 = call ptr @memset(ptr %then, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %then, i64 noundef %delta) #7
  %1 = call i64 @llvm.abs.i64(i64 %delta, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741823, i64 %1)
  %cmp1 = icmp sgt i64 %1, 1073741823
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %entry
  %tsu_clk_lock.i = getelementptr i8, ptr %ptp, i32 -52
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tsu_clk_lock.i) #7
  %macb_reg_readl55.i = getelementptr i8, ptr %ptp, i32 -17008
  %2 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call656.i = call i32 %3(ptr noundef %add.ptr, i32 noundef 468) #7
  %4 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call8.i = call i32 %5(ptr noundef %add.ptr, i32 noundef 464) #7
  %6 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call10.i = call i32 %7(ptr noundef %add.ptr, i32 noundef 448) #7
  %8 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call12.i = call i32 %9(ptr noundef %add.ptr, i32 noundef 468) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call656.i, i32 %call12.i)
  %cmp13.i = icmp sgt i32 %call656.i, %call12.i
  br i1 %cmp13.i, label %if.then.i, label %if.then2.gem_tsu_get_time.exit_crit_edge

if.then2.gem_tsu_get_time.exit_crit_edge:         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %gem_tsu_get_time.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call1659.i = call i32 %11(ptr noundef %add.ptr, i32 noundef 468) #7
  %12 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call18.i = call i32 %13(ptr noundef %add.ptr, i32 noundef 464) #7
  %14 = ptrtoint ptr %macb_reg_readl55.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %macb_reg_readl55.i, align 8
  %call20.i = call i32 %15(ptr noundef %add.ptr, i32 noundef 448) #7
  br label %gem_tsu_get_time.exit

gem_tsu_get_time.exit:                            ; preds = %if.then.i, %if.then2.gem_tsu_get_time.exit_crit_edge
  %now.sroa.7.0.off32 = phi i32 [ %call1659.i, %if.then.i ], [ %call656.i, %if.then2.gem_tsu_get_time.exit_crit_edge ]
  %secl.0.i = phi i32 [ %call18.i, %if.then.i ], [ %call8.i, %if.then2.gem_tsu_get_time.exit_crit_edge ]
  %sech.0.i = phi i32 [ %call20.i, %if.then.i ], [ %call10.i, %if.then2.gem_tsu_get_time.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tsu_clk_lock.i, i32 noundef %call3.i) #7
  %conv23.i = zext i32 %sech.0.i to i64
  %shl.i = shl nuw i64 %conv23.i, 32
  %conv24.i = zext i32 %secl.0.i to i64
  %shl.masked.i = and i64 %shl.i, 281470681743360
  %and.i = or i64 %shl.masked.i, %conv24.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp3) #7
  %16 = ptrtoint ptr %then to i32
  call void @__asan_load8_noabort(i32 %16)
  %.fca.0.load = load i64, ptr %then, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %then, i32 0, i32 1
  %17 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %17)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %18 = call ptr @memset(ptr %tmp3, i32 255, i32 16)
  %add.i = add i64 %and.i, %.fca.0.load
  %add3.i = add i32 %now.sroa.7.0.off32, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %add3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp3, i64 noundef %add.i, i64 noundef %conv.i) #7
  %19 = ptrtoint ptr %tmp3 to i32
  call void @__asan_load8_noabort(i32 %19)
  %now.sroa.0.0.copyload25 = load i64, ptr %tmp3, align 8
  %now.sroa.7.0.tmp3.sroa_idx = getelementptr inbounds i8, ptr %tmp3, i32 8
  %20 = ptrtoint ptr %now.sroa.7.0.tmp3.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %20)
  %now.sroa.7.0.copyload26 = load i64, ptr %now.sroa.7.0.tmp3.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp3) #7
  %conv.i23 = trunc i64 %now.sroa.0.0.copyload25 to i32
  %21 = lshr i64 %now.sroa.0.0.copyload25, 32
  %22 = trunc i64 %21 to i32
  %conv2.i = and i32 %22, 65535
  %now.sroa.7.8.extract.shift = lshr i64 %now.sroa.7.0.copyload26, 32
  %now.sroa.7.8.extract.trunc = trunc i64 %now.sroa.7.8.extract.shift to i32
  %call6.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tsu_clk_lock.i) #7
  %macb_reg_writel.i = getelementptr i8, ptr %ptp, i32 -17004
  %23 = ptrtoint ptr %macb_reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %macb_reg_writel.i, align 4
  call void %24(ptr noundef %add.ptr, i32 noundef 468, i32 noundef 0) #7
  %25 = ptrtoint ptr %macb_reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %macb_reg_writel.i, align 4
  call void %26(ptr noundef %add.ptr, i32 noundef 448, i32 noundef %conv2.i) #7
  %27 = ptrtoint ptr %macb_reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %macb_reg_writel.i, align 4
  call void %28(ptr noundef %add.ptr, i32 noundef 464, i32 noundef %conv.i23) #7
  %29 = ptrtoint ptr %macb_reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %macb_reg_writel.i, align 4
  call void %30(ptr noundef %add.ptr, i32 noundef 468, i32 noundef %now.sroa.7.8.extract.trunc) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tsu_clk_lock.i, i32 noundef %call6.i) #7
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = lshr i64 %delta, 32
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, -2147483648
  %34 = trunc i64 %1 to i32
  %conv6 = or i32 %33, %34
  %macb_reg_writel = getelementptr i8, ptr %ptp, i32 -17004
  %35 = ptrtoint ptr %macb_reg_writel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %macb_reg_writel, align 4
  call void %36(ptr noundef %add.ptr, i32 noundef 472, i32 noundef %conv6) #7
  br label %if.end7

if.end7:                                          ; preds = %if.else, %gem_tsu_get_time.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %then) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_tsu_set_time(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -17016
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  %conv = trunc i64 %1 to i32
  %2 = lshr i64 %1, 32
  %3 = trunc i64 %2 to i32
  %conv2 = and i32 %3, 65535
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec, align 8
  %tsu_clk_lock = getelementptr i8, ptr %ptp, i32 -52
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tsu_clk_lock) #7
  %macb_reg_writel = getelementptr i8, ptr %ptp, i32 -17004
  %6 = ptrtoint ptr %macb_reg_writel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %macb_reg_writel, align 4
  tail call void %7(ptr noundef %add.ptr, i32 noundef 468, i32 noundef 0) #7
  %8 = ptrtoint ptr %macb_reg_writel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %macb_reg_writel, align 4
  tail call void %9(ptr noundef %add.ptr, i32 noundef 448, i32 noundef %conv2) #7
  %10 = ptrtoint ptr %macb_reg_writel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %macb_reg_writel, align 4
  tail call void %11(ptr noundef %add.ptr, i32 noundef 464, i32 noundef %conv) #7
  %12 = ptrtoint ptr %macb_reg_writel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %macb_reg_writel, align 4
  tail call void %13(ptr noundef %add.ptr, i32 noundef 468, i32 noundef %5) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tsu_clk_lock, i32 noundef %call6) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gem_ptp_enable(ptr nocapture noundef readnone %ptp, ptr nocapture noundef readnone %rq, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !40, !41, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cadence/macb_ptp.c", i32 285, i32 4}
!2 = !{ptr @gem_ptp_rxstamp._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.gem_ptp_rxstamp, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gem_ptp_rxstamp._entry, !1, !"_entry", i1 false, i1 false}
!9 = !{ptr @gem_ptp_rxstamp._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/cadence/macb_ptp.c", i32 377, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @gem_ptp_init._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @gem_ptp_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/cadence/macb_ptp.c", i32 382, i32 3}
!17 = !{ptr @gem_ptp_init._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @gem_ptp_init._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @gem_ptp_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/cadence/macb_ptp.c", i32 386, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gem_ptp_init.__key.11, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/cadence/macb_ptp.c", i32 390, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/cadence/macb_ptp.c", i32 395, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @gem_ptp_init._entry.13, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @gem_ptp_init._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/cadence/macb_ptp.c", i32 408, i32 2}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gem_ptp_remove._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @gem_ptp_remove._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @gem_ptp_caps_template, !37, !"gem_ptp_caps_template", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/cadence/macb_ptp.c", i32 189, i32 36}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!40 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2156713210}
!57 = !{i64 2156715431}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2148612067, i64 2148612347, i64 2148612681, i64 2148613015}
!60 = !{i64 2156724990}
!61 = !{i64 2156727262}
!62 = !{i64 2152863421, i64 2152863446}
!63 = !{i64 2152862740, i64 2152862765}
!64 = !{i64 5358295}
!65 = !{i64 5358492}
!66 = !{i64 2152843725}
!67 = !{i64 1126236, i64 1126263}
!68 = !{i64 1126931, i64 1126958, i64 1126991, i64 1127012, i64 1127039, i64 1127065}
