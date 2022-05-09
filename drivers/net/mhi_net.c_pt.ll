; ModuleID = '/llk/IR_all_yes/drivers/net/mhi_net.c_pt.bc'
source_filename = "../drivers/net/mhi_net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mhi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mhi_device_id = type { [32 x i8], i32 }
%struct.mhi_device_info = type { ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mhi_device = type { ptr, ptr, ptr, ptr, ptr, %struct.device, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mhi_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], ptr, ptr, ptr, %struct.mutex, %struct.rwlock_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.mhi_link_info, %struct.work_struct, ptr, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mhi_link_info = type { i32, i32 }
%struct.mhi_net_dev = type { ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mhi_net_stats, i32, i32, i32 }
%struct.mhi_net_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mhi_result = type { ptr, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_mhi_net__338_408_mhi_net_driver_init6 = internal global ptr @mhi_net_driver_init, section ".initcall6.init", align 4
@mhi_net_driver = internal global { %struct.mhi_driver, [60 x i8] } { %struct.mhi_driver { ptr @mhi_net_id_table, ptr @mhi_net_probe, ptr @mhi_net_remove, ptr @mhi_net_ul_callback, ptr @mhi_net_dl_callback, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [60 x i8] zeroinitializer }, align 32
@__exitcall_mhi_net_driver_exit = internal global ptr @mhi_net_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author339 = internal constant [54 x i8] c"mhi_net.author=Loic Poulain <loic.poulain@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [37 x i8] c"mhi_net.description=Network over MHI\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [33 x i8] c"mhi_net.file=drivers/net/mhi_net\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [23 x i8] c"mhi_net.license=GPL v2\00", section ".modinfo", align 1
@mhi_net_id_table = internal constant { [3 x %struct.mhi_device_id], [52 x i8] } { [3 x %struct.mhi_device_id] [%struct.mhi_device_id { [32 x i8] c"IP_HW0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mhi_hwip0 to i32) }, %struct.mhi_device_id { [32 x i8] c"IP_SW0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mhi_swip0 to i32) }, %struct.mhi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mhi_net\00", [24 x i8] zeroinitializer }, align 32
@mhi_hwip0 = internal constant { %struct.mhi_device_info, [28 x i8] } { %struct.mhi_device_info { ptr @.str.1 }, [28 x i8] zeroinitializer }, align 32
@mhi_swip0 = internal constant { %struct.mhi_device_info, [28 x i8] } { %struct.mhi_device_info { ptr @.str.2 }, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mhi_hwip%d\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mhi_swip%d\00", [21 x i8] zeroinitializer }, align 32
@mhi_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mhi_ndo_open, ptr @mhi_ndo_stop, ptr @mhi_ndo_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mhi_ndo_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mhi_ndo_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Failed to queue TX buf (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mhi_ndo_xmit\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/net/mhi_net.c\00", [42 x i8] zeroinitializer }, align 32
@mhi_ndo_xmit._entry_ptr = internal global ptr @mhi_ndo_xmit._entry, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@mhi_net_newlink.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&mhi_netdev->rx_refill)->work)\00", [45 x i8] zeroinitializer }, align 32
@mhi_net_newlink.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&mhi_netdev->rx_refill)->timer\00", [63 x i8] zeroinitializer }, align 32
@mhi_net_newlink.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&mhi_netdev->stats.rx_syncp)->seq\00", [60 x i8] zeroinitializer }, align 32
@mhi_net_newlink.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&mhi_netdev->stats.tx_syncp)->seq\00", [60 x i8] zeroinitializer }, align 32
@mhi_net_rx_refill_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Failed to queue RX buf (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mhi_net_rx_refill_work\00", [41 x i8] zeroinitializer }, align 32
@mhi_net_rx_refill_work._entry_ptr = internal global ptr @mhi_net_rx_refill_work._entry, section ".printk_index", align 4
@mhi_net_dl_callback.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Fragmented packets received, fix MTU?\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967189]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967189, i64 4294967221]
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"mhi_net_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 396, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"mhi_net_id_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 387, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 403, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [10 x i8] c"mhi_hwip0\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 379, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"mhi_swip0\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 383, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 380, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 384, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"mhi_netdev_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 122, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 81, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 271, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 317, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 318, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 319, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 287, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [25 x i8] c"../drivers/net/mhi_net.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 187, i32 4 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_mhi_net_driver_exit, ptr @__initcall__kmod_mhi_net__338_408_mhi_net_driver_init6, ptr @mhi_ndo_xmit._entry, ptr @mhi_ndo_xmit._entry_ptr, ptr @mhi_net_driver_exit, ptr @mhi_net_rx_refill_work._entry, ptr @mhi_net_rx_refill_work._entry_ptr, ptr @mhi_net_driver, ptr @mhi_net_id_table, ptr @.str, ptr @mhi_hwip0, ptr @mhi_swip0, ptr @.str.1, ptr @.str.2, ptr @mhi_netdev_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mhi_net_newlink.__key, ptr @.str.7, ptr @mhi_net_newlink.__key.8, ptr @.str.9, ptr @mhi_net_newlink.__key.10, ptr @.str.11, ptr @mhi_net_newlink.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_net_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_net_id_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_hwip0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_swip0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_ndo_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_net_newlink.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_net_newlink.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_net_newlink.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_net_newlink.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_net_rx_refill_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_net_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__mhi_driver_register(ptr noundef nonnull @mhi_net_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mhi_net_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mhi_driver_unregister(ptr noundef nonnull @mhi_net_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mhi_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_net_probe(ptr noundef %mhi_dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.mhi_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 256, ptr noundef %4, i8 noundef zeroext 2, ptr noundef nonnull @mhi_net_setup, i32 noundef 1, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call, i32 2304
  %driver_data.i.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i.i, ptr %driver_data.i.i, align 4
  %ndev1.i = getelementptr i8, ptr %call, i32 2308
  %7 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %ndev1.i, align 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mhi_dev, ptr %add.ptr.i.i, align 8
  %skbagg_head.i = getelementptr i8, ptr %call, i32 2312
  %9 = ptrtoint ptr %skbagg_head.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %skbagg_head.i, align 8
  %mhi_cntrl.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 2
  %10 = ptrtoint ptr %mhi_cntrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mhi_cntrl.i, align 8
  %mru.i = getelementptr inbounds %struct.mhi_controller, ptr %11, i32 0, i32 70
  %12 = ptrtoint ptr %mru.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mru.i, align 4
  %mru2.i = getelementptr i8, ptr %call, i32 2552
  %14 = ptrtoint ptr %mru2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mru2.i, align 8
  %rx_refill.i = getelementptr i8, ptr %call, i32 2320
  tail call void @__init_work(ptr noundef %rx_refill.i, i32 noundef 0) #9
  %15 = ptrtoint ptr %rx_refill.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %rx_refill.i, align 8
  %lockdep_map.i = getelementptr i8, ptr %call, i32 2336
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @mhi_net_newlink.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry10.i = getelementptr i8, ptr %call, i32 2324
  %16 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry10.i, ptr %entry10.i, align 4
  %prev.i.i = getelementptr i8, ptr %call, i32 2328
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry10.i, ptr %prev.i.i, align 4
  %func.i = getelementptr i8, ptr %call, i32 2332
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mhi_net_rx_refill_work, ptr %func.i, align 4
  %timer.i = getelementptr i8, ptr %call, i32 2364
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @mhi_net_newlink.__key.8) #9
  %rx_syncp.i = getelementptr i8, ptr %call, i32 2512
  %dep_map.i.i = getelementptr i8, ptr %call, i32 2516
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @mhi_net_newlink.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %19 = ptrtoint ptr %rx_syncp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rx_syncp.i, align 4
  %tx_syncp.i = getelementptr i8, ptr %call, i32 2480
  %dep_map.i56.i = getelementptr i8, ptr %call, i32 2484
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i56.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @mhi_net_newlink.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %20 = ptrtoint ptr %tx_syncp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tx_syncp.i, align 4
  %call27.i = tail call i32 @mhi_prepare_for_transfer(ptr noundef %mhi_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool.not.i, label %mhi_net_newlink.exit, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

mhi_net_newlink.exit:                             ; preds = %if.end
  %call28.i = tail call i32 @mhi_get_free_desc_count(ptr noundef %mhi_dev, i32 noundef 2) #9
  %rx_queue_sz.i = getelementptr i8, ptr %call, i32 2544
  %21 = ptrtoint ptr %rx_queue_sz.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call28.i, ptr %rx_queue_sz.i, align 8
  %call29.i = tail call i32 @register_netdev(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool3.not = icmp eq i32 %call29.i, 0
  br i1 %tobool3.not, label %mhi_net_newlink.exit.cleanup_crit_edge, label %mhi_net_newlink.exit.if.then4_crit_edge

mhi_net_newlink.exit.if.then4_crit_edge:          ; preds = %mhi_net_newlink.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

mhi_net_newlink.exit.cleanup_crit_edge:           ; preds = %mhi_net_newlink.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %mhi_net_newlink.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i15 = phi i32 [ %call29.i, %mhi_net_newlink.exit.if.then4_crit_edge ], [ %call27.i, %if.end.if.then4_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %mhi_net_newlink.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i15, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %mhi_net_newlink.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_net_remove(ptr noundef %mhi_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ndev = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void @unregister_netdev(ptr noundef %3) #9
  tail call void @mhi_unprepare_from_transfer(ptr noundef %mhi_dev) #9
  %skbagg_head.i = getelementptr i8, ptr %3, i32 2312
  %4 = ptrtoint ptr %skbagg_head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skbagg_head.i, align 8
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #9
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_net_ul_callback(ptr nocapture noundef readonly %mhi_dev, ptr nocapture noundef readonly %mhi_res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ndev1 = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %mhi_res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mhi_res, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %7, i32 noundef 0) #9
  %tx_syncp = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 7
  tail call fastcc void @u64_stats_update_begin(ptr noundef %tx_syncp)
  %transaction_status = getelementptr inbounds %struct.mhi_result, ptr %mhi_res, i32 0, i32 3
  %8 = ptrtoint ptr %transaction_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %transaction_status, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end [
    i32 0, label %if.else
    i32 -107, label %if.then6
  ], !prof !65

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dep_map.i.i = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 7, i32 0, i32 1
  %11 = tail call ptr @llvm.returnaddress(i32 0) #9
  %12 = ptrtoint ptr %11 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  %13 = ptrtoint ptr %tx_syncp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_syncp, align 4
  %inc.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i, ptr %tx_syncp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_errors = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 5
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_packets = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_packets, align 8
  %inc.i33 = add i64 %16, 1
  store i64 %inc.i33, ptr %tx_packets, align 8
  %tx_bytes = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 4
  %bytes_xferd = getelementptr inbounds %struct.mhi_result, ptr %mhi_res, i32 0, i32 1
  %17 = ptrtoint ptr %bytes_xferd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytes_xferd, align 4
  %conv.i = zext i32 %18 to i64
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end
  %tx_bytes.sink37 = phi ptr [ %tx_bytes, %if.else ], [ %tx_errors, %if.end ]
  %conv.i.sink = phi i64 [ %conv.i, %if.else ], [ 1, %if.end ]
  %19 = ptrtoint ptr %tx_bytes.sink37 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tx_bytes.sink37, align 8
  %add.i = add i64 %20, %conv.i.sink
  store i64 %add.i, ptr %tx_bytes.sink37, align 8
  %dep_map.i.i34 = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 7, i32 0, i32 1
  %21 = tail call ptr @llvm.returnaddress(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i34, i32 noundef %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  %23 = ptrtoint ptr %tx_syncp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_syncp, align 4
  %inc.i.i.i35 = add i32 %24, 1
  store i32 %inc.i.i.i35, ptr %tx_syncp, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end12.cleanup_crit_edge, label %land.lhs.true

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end12
  %call16 = tail call zeroext i1 @mhi_queue_is_full(ptr noundef %5, i32 noundef 1) #9
  br i1 %call16, label %land.lhs.true.cleanup_crit_edge, label %if.then17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %30) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %land.lhs.true.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_net_dl_callback(ptr noundef %mhi_dev, ptr nocapture noundef readonly %mhi_res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %mhi_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mhi_res, align 4
  %call1 = tail call i32 @mhi_get_free_desc_count(ptr noundef %mhi_dev, i32 noundef 2) #9
  %transaction_status = getelementptr inbounds %struct.mhi_result, ptr %mhi_res, i32 0, i32 3
  %4 = ptrtoint ptr %transaction_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transaction_status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %5, label %sw.default [
    i32 0, label %if.else
    i32 -75, label %do.body
    i32 -107, label %sw.bb9
  ], !prof !67

do.body:                                          ; preds = %entry
  %.b70 = load i1, ptr @mhi_net_dl_callback.__print_once, align 1
  br i1 %.b70, label %do.body.do.end_crit_edge, label %if.then6

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mhi_net_dl_callback.__print_once, align 1
  %ndev = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.16, ptr noundef %8, ptr noundef nonnull @.str.17) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body.do.end_crit_edge
  %bytes_xferd = getelementptr inbounds %struct.mhi_result, ptr %mhi_res, i32 0, i32 1
  %9 = ptrtoint ptr %bytes_xferd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes_xferd, align 4
  %call7 = tail call ptr @skb_put(ptr noundef %3, i32 noundef %10) #9
  %call8 = tail call fastcc ptr @mhi_net_skb_agg(ptr noundef %1, ptr noundef %3)
  br label %if.end33

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef %3, i32 noundef 1) #9
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef %3, i32 noundef 1) #9
  %rx_syncp = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 8
  tail call fastcc void @u64_stats_update_begin(ptr noundef %rx_syncp)
  %rx_errors = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_errors, align 8
  %inc.i = add i64 %12, 1
  store i64 %inc.i, ptr %rx_errors, align 8
  %dep_map.i.i = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 8, i32 0, i32 1
  %13 = tail call ptr @llvm.returnaddress(i32 0) #9
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  %15 = ptrtoint ptr %rx_syncp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_syncp, align 4
  %inc.i.i.i = add i32 %16, 1
  store i32 %inc.i.i.i, ptr %rx_syncp, align 4
  br label %if.end33

if.else:                                          ; preds = %entry
  %bytes_xferd13 = getelementptr inbounds %struct.mhi_result, ptr %mhi_res, i32 0, i32 1
  %17 = ptrtoint ptr %bytes_xferd13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytes_xferd13, align 4
  %call14 = tail call ptr @skb_put(ptr noundef %3, i32 noundef %18) #9
  %skbagg_head = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %skbagg_head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skbagg_head, align 8
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %if.else.if.end19_crit_edge, label %mhi_net_skb_agg.exit

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

mhi_net_skb_agg.exit:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %skbagg_tail.i = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %skbagg_tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skbagg_tail.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 17
  %23 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %frag_list.i, align 8
  %tobool2.not.i = icmp eq ptr %26, null
  %frag_list..i = select i1 %tobool2.not.i, ptr %frag_list.i, ptr %22
  %27 = ptrtoint ptr %frag_list..i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %3, ptr %frag_list..i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  %len7.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %30 = ptrtoint ptr %len7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len7.i, align 4
  %add.i = add i32 %31, %29
  store i32 %add.i, ptr %len7.i, align 4
  %32 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 7
  %33 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i, align 8
  %add9.i = add i32 %34, %32
  store i32 %add9.i, ptr %data_len.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 20
  %35 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %truesize.i, align 8
  %truesize10.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 20
  %37 = ptrtoint ptr %truesize10.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %truesize10.i, align 8
  %add11.i = add i32 %38, %36
  store i32 %add11.i, ptr %truesize10.i, align 8
  store ptr %3, ptr %skbagg_tail.i, align 4
  %39 = ptrtoint ptr %skbagg_head to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skbagg_head, align 8
  store ptr null, ptr %skbagg_head, align 8
  br label %if.end19

if.end19:                                         ; preds = %mhi_net_skb_agg.exit, %if.else.if.end19_crit_edge
  %skb.0 = phi ptr [ %40, %mhi_net_skb_agg.exit ], [ %3, %if.else.if.end19_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %45 = and i8 %44, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %45)
  %switch.selectcmp = icmp eq i8 %45, 96
  %switch.select = select i1 %switch.selectcmp, i16 -31011, i16 249
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %45)
  %switch.selectcmp75 = icmp eq i8 %45, 64
  %switch.select76 = select i1 %switch.selectcmp75, i16 2048, i16 %switch.select
  %protocol24 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %46 = ptrtoint ptr %protocol24 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %switch.select76, ptr %protocol24, align 8
  %stats26 = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5
  %rx_syncp27 = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 8
  tail call fastcc void @u64_stats_update_begin(ptr noundef %rx_syncp27)
  %47 = ptrtoint ptr %stats26 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %stats26, align 8
  %inc.i71 = add i64 %48, 1
  store i64 %inc.i71, ptr %stats26, align 8
  %rx_bytes = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  %conv.i = zext i32 %50 to i64
  %51 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rx_bytes, align 8
  %add.i72 = add i64 %52, %conv.i
  store i64 %add.i72, ptr %rx_bytes, align 8
  %dep_map.i.i73 = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 5, i32 8, i32 0, i32 1
  %53 = tail call ptr @llvm.returnaddress(i32 0) #9
  %54 = ptrtoint ptr %53 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i73, i32 noundef %54) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  %55 = ptrtoint ptr %rx_syncp27 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_syncp27, align 4
  %inc.i.i.i74 = add i32 %56, 1
  store i32 %inc.i.i.i74, ptr %rx_syncp27, align 4
  %call32 = tail call i32 @netif_rx(ptr noundef %skb.0) #9
  br label %if.end33

if.end33:                                         ; preds = %if.end19, %sw.default, %do.end
  %rx_queue_sz = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 6
  %57 = ptrtoint ptr %rx_queue_sz to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_queue_sz, align 8
  %div69 = lshr i32 %58, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %div69)
  %cmp.not = icmp ult i32 %call1, %div69
  br i1 %cmp.not, label %if.end33.cleanup_crit_edge, label %if.then35

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %rx_refill = getelementptr inbounds %struct.mhi_net_dev, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %rx_refill, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end33.cleanup_crit_edge, %sw.bb9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mhi_net_setup(ptr nocapture noundef writeonly %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %header_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 49
  %0 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 519, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %addr_len, align 1
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 144, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mhi_netdev_ops, ptr %netdev_ops, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 30
  %7 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 31
  %8 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65535, ptr %max_mtu, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 107
  %9 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1000, ptr %tx_queue_len, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_ndo_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_refill = getelementptr i8, ptr %ndev, i32 2320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %rx_refill, i32 noundef 0) #9
  tail call void @netif_carrier_on(ptr noundef %ndev) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %1 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %2, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_ndo_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  tail call void @netif_carrier_off(ptr noundef %ndev) #9
  %rx_refill = getelementptr i8, ptr %ndev, i32 2320
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rx_refill) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_ndo_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %call2 = tail call i32 @mhi_queue_skb(ptr noundef %1, i32 noundef 1, ptr noundef %skb, i32 noundef %3, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end12, label %do.body, !prof !68

do.body:                                          ; preds = %entry
  %call5 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %ndev, i32 noundef %call2) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  %tx_syncp = getelementptr i8, ptr %ndev, i32 2480
  tail call fastcc void @u64_stats_update_begin(ptr noundef %tx_syncp)
  %tx_dropped = getelementptr i8, ptr %ndev, i32 2472
  %4 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tx_dropped, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %tx_dropped, align 8
  %dep_map.i.i = getelementptr i8, ptr %ndev, i32 2484
  %6 = tail call ptr @llvm.returnaddress(i32 0) #9
  %7 = ptrtoint ptr %6 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  %8 = ptrtoint ptr %tx_syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_syncp, align 4
  %inc.i.i.i = add i32 %9, 1
  store i32 %inc.i.i.i, ptr %tx_syncp, align 4
  br label %cleanup

if.end12:                                         ; preds = %entry
  %call13 = tail call zeroext i1 @mhi_queue_is_full(ptr noundef %1, i32 noundef 1) #9
  br i1 %call13, label %if.then14, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end12.cleanup_crit_edge, %do.end11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_ndo_get_stats64(ptr noundef %ndev, ptr nocapture noundef writeonly %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %ndev, i32 2424
  %rx_syncp = getelementptr i8, ptr %ndev, i32 2512
  %rx_bytes = getelementptr i8, ptr %ndev, i32 2432
  %rx_bytes8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %rx_errors = getelementptr i8, ptr %ndev, i32 2440
  %rx_errors11 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call2 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %rx_syncp)
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats1, align 8
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %stats, align 8
  %3 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rx_bytes, align 8
  %5 = ptrtoint ptr %rx_bytes8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %rx_bytes8, align 8
  %6 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rx_errors, align 8
  %8 = ptrtoint ptr %rx_errors11 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rx_errors11, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %9 = ptrtoint ptr %rx_syncp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %rx_syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %10, %call2
  br i1 %cmp.i.i.i.i.not, label %do.body15.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body15.preheader:                              ; preds = %do.body
  %tx_syncp = getelementptr i8, ptr %ndev, i32 2480
  %tx_packets = getelementptr i8, ptr %ndev, i32 2448
  %tx_packets20 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes = getelementptr i8, ptr %ndev, i32 2456
  %tx_bytes23 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %tx_errors = getelementptr i8, ptr %ndev, i32 2464
  %tx_errors26 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %tx_dropped = getelementptr i8, ptr %ndev, i32 2472
  %tx_dropped29 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  br label %do.body15

do.body15:                                        ; preds = %do.body15.do.body15_crit_edge, %do.body15.preheader
  %call17 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %tx_syncp)
  %11 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tx_packets, align 8
  %13 = ptrtoint ptr %tx_packets20 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %tx_packets20, align 8
  %14 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_bytes, align 8
  %16 = ptrtoint ptr %tx_bytes23 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tx_bytes23, align 8
  %17 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tx_errors, align 8
  %19 = ptrtoint ptr %tx_errors26 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %tx_errors26, align 8
  %20 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_dropped, align 8
  %22 = ptrtoint ptr %tx_dropped29 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %tx_dropped29, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %23 = ptrtoint ptr %tx_syncp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %tx_syncp, align 4
  %cmp.i.i.i.i52.not = icmp eq i32 %24, %call17
  br i1 %cmp.i.i.i.i52.not, label %do.end34, label %do.body15.do.body15_crit_edge

do.body15.do.body15_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

do.end34:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_queue_skb(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mhi_queue_is_full(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !70
  %5 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  %14 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  %33 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !68

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #9
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !75
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #9
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !77

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !78
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !80
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_net_rx_refill_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %ndev1 = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %mru = getelementptr i8, ptr %work, i32 232
  %4 = ptrtoint ptr %mru to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mru, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mtu, align 4
  br label %cond.end

cond.end:                                         ; preds = %do.end, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %do.end ], [ %5, %entry.cond.end_crit_edge ]
  %call53 = tail call zeroext i1 @mhi_queue_is_full(ptr noundef %3, i32 noundef 2) #9
  br i1 %call53, label %cond.end.while.end_crit_edge, label %cond.end.while.body_crit_edge

cond.end.while.body_crit_edge:                    ; preds = %cond.end
  br label %while.body

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %cond.end.while.body_crit_edge
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %cond, i32 noundef 2592) #9
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %while.body.while.end_crit_edge, label %if.end, !prof !77

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %call11 = tail call i32 @mhi_queue_skb(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %call.i, i32 noundef %cond, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end32, label %do.body20, !prof !68

do.body20:                                        ; preds = %if.end
  %call21 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.do.end31_crit_edge, label %do.end26

do.body20.do.end31_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %1, i32 noundef %call11) #12
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.body20.do.end31_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #9
  br label %while.end

if.end32:                                         ; preds = %if.end
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 296, i32 noundef 0) #9
  %call.i52 = tail call i32 @__cond_resched() #9
  %call = tail call zeroext i1 @mhi_queue_is_full(ptr noundef %3, i32 noundef 2) #9
  br i1 %call, label %if.end32.while.end_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %do.end31, %while.body.while.end_crit_edge, %cond.end.while.end_crit_edge
  %call35 = tail call i32 @mhi_get_free_desc_count(ptr noundef %3, i32 noundef 2) #9
  %rx_queue_sz = getelementptr i8, ptr %work, i32 224
  %8 = ptrtoint ptr %rx_queue_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_queue_sz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %9)
  %cmp = icmp eq i32 %call35, %9
  br i1 %cmp, label %if.then36, label %while.end.if.end38_crit_edge

while.end.if.end38_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef 50) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %while.end.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_prepare_for_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_get_free_desc_count(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_unprepare_from_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @mhi_net_skb_agg(ptr nocapture noundef %mhi_netdev, ptr noundef %skb) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skbagg_head = getelementptr inbounds %struct.mhi_net_dev, ptr %mhi_netdev, i32 0, i32 2
  %0 = ptrtoint ptr %skbagg_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skbagg_head, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %skbagg_head to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %skbagg_head, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %skbagg_tail = getelementptr inbounds %struct.mhi_net_dev, ptr %mhi_netdev, i32 0, i32 3
  %3 = ptrtoint ptr %skbagg_tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skbagg_tail, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %frag_list, align 8
  %tobool2.not = icmp eq ptr %8, null
  %frag_list. = select i1 %tobool2.not, ptr %frag_list, ptr %4
  %9 = ptrtoint ptr %frag_list. to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %skb, ptr %frag_list., align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %len7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len7, align 4
  %add = add i32 %13, %11
  store i32 %add, ptr %len7, align 4
  %14 = load i32, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len, align 8
  %add9 = add i32 %16, %14
  store i32 %add9, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %17 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %truesize, align 8
  %truesize10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %truesize10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %truesize10, align 8
  %add11 = add i32 %20, %18
  store i32 %add11, ptr %truesize10, align 8
  store ptr %skb, ptr %skbagg_tail, align 4
  %21 = ptrtoint ptr %skbagg_head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skbagg_head, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %22, %if.end ], [ %skb, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_mhi_net__338_408_mhi_net_driver_init6, !1, !"__initcall__kmod_mhi_net__338_408_mhi_net_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/mhi_net.c", i32 408, i32 1}
!2 = !{ptr @__exitcall_mhi_net_driver_exit, !1, !"__exitcall_mhi_net_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author339, !4, !"__UNIQUE_ID_author339", i1 false, i1 false}
!4 = !{!"../drivers/net/mhi_net.c", i32 410, i32 1}
!5 = !{ptr @__UNIQUE_ID_description340, !6, !"__UNIQUE_ID_description340", i1 false, i1 false}
!6 = !{!"../drivers/net/mhi_net.c", i32 411, i32 1}
!7 = !{ptr @__UNIQUE_ID_file341, !8, !"__UNIQUE_ID_file341", i1 false, i1 false}
!8 = !{!"../drivers/net/mhi_net.c", i32 412, i32 1}
!9 = !{ptr @__UNIQUE_ID_license342, !8, !"__UNIQUE_ID_license342", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/mhi_net.c", i32 403, i32 11}
!12 = !{ptr @mhi_net_driver, !13, !"mhi_net_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/mhi_net.c", i32 396, i32 26}
!14 = !{ptr @mhi_net_id_table, !15, !"mhi_net_id_table", i1 false, i1 false}
!15 = !{!"../drivers/net/mhi_net.c", i32 387, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/mhi_net.c", i32 380, i32 13}
!18 = !{ptr @mhi_hwip0, !19, !"mhi_hwip0", i1 false, i1 false}
!19 = !{!"../drivers/net/mhi_net.c", i32 379, i32 37}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/mhi_net.c", i32 384, i32 13}
!22 = !{ptr @mhi_swip0, !23, !"mhi_swip0", i1 false, i1 false}
!23 = !{!"../drivers/net/mhi_net.c", i32 383, i32 37}
!24 = !{ptr @mhi_netdev_ops, !25, !"mhi_netdev_ops", i1 false, i1 false}
!25 = !{!"../drivers/net/mhi_net.c", i32 122, i32 36}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/mhi_net.c", i32 81, i32 3}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mhi_ndo_xmit._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @mhi_ndo_xmit._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mhi_net_newlink.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/mhi_net.c", i32 317, i32 2}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mhi_net_newlink.__key.8, !36, !"__key", i1 false, i1 false}
!39 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mhi_net_newlink.__key.10, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/net/mhi_net.c", i32 318, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mhi_net_newlink.__key.12, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/net/mhi_net.c", i32 319, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/mhi_net.c", i32 287, i32 4}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mhi_net_rx_refill_work._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mhi_net_rx_refill_work._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"__print_once", i1 false, i1 false}
!52 = !{!"../drivers/net/mhi_net.c", i32 187, i32 4}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!66 = !{i64 2150273246}
!67 = !{!"branch_weights", i32 1, i32 6000, i32 1, i32 1}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2150272596}
!70 = !{i64 2150164848}
!71 = !{i64 2150169782}
!72 = !{i64 2150191500}
!73 = !{i64 2150196394}
!74 = !{i64 2150272921}
!75 = !{i64 752071, i64 752132}
!76 = !{i64 754803}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 755088}
!79 = !{i64 2154902518}
!80 = !{i64 2154902360}
!81 = !{i64 2154902688}
