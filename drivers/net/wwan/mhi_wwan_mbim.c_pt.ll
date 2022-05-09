; ModuleID = '/llk/IR_all_yes/drivers/net/wwan/mhi_wwan_mbim.c_pt.bc'
source_filename = "../drivers/net/wwan/mhi_wwan_mbim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mhi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mhi_device_id = type { [32 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wwan_ops = type { i32, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mhi_device = type { ptr, ptr, ptr, ptr, ptr, %struct.device, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mhi_mbim_context = type { ptr, ptr, ptr, i32, i32, i16, i16, %struct.delayed_work, %struct.spinlock, [8 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.mhi_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], ptr, ptr, ptr, %struct.mutex, %struct.rwlock_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.mhi_link_info, %struct.work_struct, ptr, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mhi_link_info = type { i32, i32 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.mhi_result = type { ptr, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.usb_cdc_ncm_ndp16 = type { i32, i16, i16, [0 x %struct.usb_cdc_ncm_dpe16] }
%struct.usb_cdc_ncm_dpe16 = type { i16, i16 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.usb_cdc_ncm_nth16 = type { i32, i16, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mhi_mbim_link = type { ptr, ptr, i32, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, %struct.u64_stats_sync, %struct.hlist_node }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mbim_tx_hdr = type { %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_ndp16, [2 x %struct.usb_cdc_ncm_dpe16] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__initcall__kmod_mhi_wwan_mbim__350_654_mhi_mbim_driver_init6 = internal global ptr @mhi_mbim_driver_init, section ".initcall6.init", align 4
@mhi_mbim_driver = internal global { %struct.mhi_driver, [60 x i8] } { %struct.mhi_driver { ptr @mhi_mbim_id_table, ptr @mhi_mbim_probe, ptr @mhi_mbim_remove, ptr @mhi_mbim_ul_callback, ptr @mhi_mbim_dl_callback, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [60 x i8] zeroinitializer }, align 32
@__exitcall_mhi_mbim_driver_exit = internal global ptr @mhi_mbim_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author351 = internal constant [60 x i8] c"mhi_wwan_mbim.author=Loic Poulain <loic.poulain@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [48 x i8] c"mhi_wwan_mbim.description=Network/MBIM over MHI\00", section ".modinfo", align 1
@__UNIQUE_ID_file353 = internal constant [50 x i8] c"mhi_wwan_mbim.file=drivers/net/wwan/mhi_wwan_mbim\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [29 x i8] c"mhi_wwan_mbim.license=GPL v2\00", section ".modinfo", align 1
@mhi_mbim_id_table = internal constant { [2 x %struct.mhi_device_id], [56 x i8] } { [2 x %struct.mhi_device_id] [%struct.mhi_device_id { [32 x i8] c"IP_HW0_MBIM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.mhi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mhi_wwan_mbim\00", [18 x i8] zeroinitializer }, align 32
@mhi_mbim_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mbim->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@mhi_mbim_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&mbim->rx_refill)->work)\00", [51 x i8] zeroinitializer }, align 32
@mhi_mbim_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&mbim->rx_refill)->timer\00", [37 x i8] zeroinitializer }, align 32
@mhi_mbim_wwan_ops = internal constant { %struct.wwan_ops, [16 x i8] } { %struct.wwan_ops { i32 144, ptr @mhi_mbim_setup, ptr @mhi_mbim_newlink, ptr @mhi_mbim_dellink }, [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/wwan/mhi_wwan_mbim.c\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mhi_mbim_ndo = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mhi_mbim_ndo_open, ptr @mhi_mbim_ndo_stop, ptr @mhi_mbim_ndo_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mhi_mbim_ndo_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mhi_mbim_ndo_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Failed to queue TX buf (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mhi_mbim_ndo_xmit\00", [46 x i8] zeroinitializer }, align 32
@mhi_mbim_ndo_xmit._entry_ptr = internal global ptr @mhi_mbim_ndo_xmit._entry, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@mhi_mbim_newlink.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&link->rx_syncp)->seq\00", [40 x i8] zeroinitializer }, align 32
@mhi_mbim_newlink.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&link->tx_syncp)->seq\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@mhi_mbim_get_link_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mhi_mbim_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013mbim: Incorrect NTB header\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mhi_mbim_rx\00", [20 x i8] zeroinitializer }, align 32
@mhi_mbim_rx._entry_ptr = internal global ptr @mhi_mbim_rx._entry, section ".printk_index", align 4
@mhi_mbim_rx._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.6, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013mbim: Incorrect NDP offset (%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@mhi_mbim_rx._entry_ptr.21 = internal global ptr @mhi_mbim_rx._entry.19, section ".printk_index", align 4
@mhi_mbim_rx._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.6, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013mbim: Incorrect NDP16\0A\00", [39 x i8] zeroinitializer }, align 32
@mhi_mbim_rx._entry_ptr.24 = internal global ptr @mhi_mbim_rx._entry.22, section ".printk_index", align 4
@mhi_mbim_rx._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.6, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013mbim: Unsupported NDP type\0A\00", [34 x i8] zeroinitializer }, align 32
@mhi_mbim_rx._entry_ptr.27 = internal global ptr @mhi_mbim_rx._entry.25, section ".printk_index", align 4
@mhi_mbim_rx._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.6, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013mbim: bad packet session (%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@mhi_mbim_rx._entry_ptr.30 = internal global ptr @mhi_mbim_rx._entry.28, section ".printk_index", align 4
@mhi_mbim_rx._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.6, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: unknown protocol\0A\00", [40 x i8] zeroinitializer }, align 32
@mhi_mbim_rx._entry_ptr.33 = internal global ptr @mhi_mbim_rx._entry.31, section ".printk_index", align 4
@mbim_rx_verify_nth16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013frame too short\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mbim_rx_verify_nth16\00", [43 x i8] zeroinitializer }, align 32
@mbim_rx_verify_nth16._entry_ptr = internal global ptr @mbim_rx_verify_nth16._entry, section ".printk_index", align 4
@mbim_rx_verify_nth16._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.6, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013invalid NTH16 signature <%#010x>\0A\00", [60 x i8] zeroinitializer }, align 32
@mbim_rx_verify_nth16._entry_ptr.38 = internal global ptr @mbim_rx_verify_nth16._entry.36, section ".printk_index", align 4
@mbim_rx_verify_nth16._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.6, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013NTB does not fit into the skb %u/%u\0A\00", [57 x i8] zeroinitializer }, align 32
@mbim_rx_verify_nth16._entry_ptr.41 = internal global ptr @mbim_rx_verify_nth16._entry.39, section ".printk_index", align 4
@mbim_rx_verify_nth16._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.6, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013sequence number glitch prev=%d curr=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@mbim_rx_verify_nth16._entry_ptr.44 = internal global ptr @mbim_rx_verify_nth16._entry.42, section ".printk_index", align 4
@mbim_rx_verify_ndp16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013invalid DPT16 length <%u>\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mbim_rx_verify_ndp16\00", [43 x i8] zeroinitializer }, align 32
@mbim_rx_verify_ndp16._entry_ptr = internal global ptr @mbim_rx_verify_ndp16._entry, section ".printk_index", align 4
@mbim_rx_verify_ndp16._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.6, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Invalid nframes = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mbim_rx_verify_ndp16._entry_ptr.49 = internal global ptr @mbim_rx_verify_ndp16._entry.47, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967189]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967189, i64 4294967221]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 96]
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"mhi_mbim_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 642, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"mhi_mbim_id_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 635, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 649, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 604, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 609, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"mhi_mbim_wwan_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 587, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 403, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"mhi_mbim_ndo\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 529, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 166, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 271, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 545, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 546, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 695, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 88, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 723, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 250, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 263, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 271, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 278, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 288, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 322, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 189, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 196, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 204, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 212, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 225, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private constant [36 x i8] c"../drivers/net/wwan/mhi_wwan_mbim.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 236, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_mhi_mbim_driver_exit, ptr @__initcall__kmod_mhi_wwan_mbim__350_654_mhi_mbim_driver_init6, ptr @mbim_rx_verify_ndp16._entry, ptr @mbim_rx_verify_ndp16._entry.47, ptr @mbim_rx_verify_ndp16._entry_ptr, ptr @mbim_rx_verify_ndp16._entry_ptr.49, ptr @mbim_rx_verify_nth16._entry, ptr @mbim_rx_verify_nth16._entry.36, ptr @mbim_rx_verify_nth16._entry.39, ptr @mbim_rx_verify_nth16._entry.42, ptr @mbim_rx_verify_nth16._entry_ptr, ptr @mbim_rx_verify_nth16._entry_ptr.38, ptr @mbim_rx_verify_nth16._entry_ptr.41, ptr @mbim_rx_verify_nth16._entry_ptr.44, ptr @mhi_mbim_driver_exit, ptr @mhi_mbim_ndo_xmit._entry, ptr @mhi_mbim_ndo_xmit._entry_ptr, ptr @mhi_mbim_rx._entry, ptr @mhi_mbim_rx._entry.19, ptr @mhi_mbim_rx._entry.22, ptr @mhi_mbim_rx._entry.25, ptr @mhi_mbim_rx._entry.28, ptr @mhi_mbim_rx._entry.31, ptr @mhi_mbim_rx._entry_ptr, ptr @mhi_mbim_rx._entry_ptr.21, ptr @mhi_mbim_rx._entry_ptr.24, ptr @mhi_mbim_rx._entry_ptr.27, ptr @mhi_mbim_rx._entry_ptr.30, ptr @mhi_mbim_rx._entry_ptr.33, ptr @mhi_mbim_driver, ptr @mhi_mbim_id_table, ptr @.str, ptr @mhi_mbim_probe.__key, ptr @.str.1, ptr @mhi_mbim_probe.__key.2, ptr @.str.3, ptr @mhi_mbim_probe.__key.4, ptr @.str.5, ptr @mhi_mbim_wwan_ops, ptr @.str.6, ptr @mhi_mbim_ndo, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mhi_mbim_newlink.__key, ptr @.str.10, ptr @mhi_mbim_newlink.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_wwan_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_ndo to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_ndo_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_newlink.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_newlink.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_rx._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_rx._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_rx._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_rx._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_mbim_rx._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbim_rx_verify_nth16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbim_rx_verify_nth16._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbim_rx_verify_nth16._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbim_rx_verify_nth16._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbim_rx_verify_ndp16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbim_rx_verify_ndp16._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_mbim_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__mhi_driver_register(ptr noundef nonnull @mhi_mbim_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mhi_mbim_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mhi_driver_unregister(ptr noundef nonnull @mhi_mbim_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mhi_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_mbim_probe(ptr noundef %mhi_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mhi_cntrl = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 2
  %0 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhi_cntrl, align 8
  %dev = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 200, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %tx_lock = getelementptr inbounds %struct.mhi_mbim_context, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mhi_mbim_probe.__key, i16 noundef signext 3) #11
  %driver_data.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mhi_dev, ptr %call.i, align 4
  %4 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mhi_cntrl, align 8
  %mru = getelementptr inbounds %struct.mhi_controller, ptr %5, i32 0, i32 70
  %6 = ptrtoint ptr %mru to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mru, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool4.not, i32 3500, i32 %7
  %mru7 = getelementptr inbounds %struct.mhi_mbim_context, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %mru7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %mru7, align 4
  %rx_refill = getelementptr inbounds %struct.mhi_mbim_context, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %rx_refill, i32 noundef 0) #11
  %9 = ptrtoint ptr %rx_refill to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %rx_refill, align 4
  %lockdep_map = getelementptr inbounds %struct.mhi_mbim_context, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @mhi_mbim_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry16 = getelementptr inbounds %struct.mhi_mbim_context, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.mhi_mbim_context, ptr %call.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mhi_mbim_context, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mhi_net_rx_refill_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mhi_mbim_context, ptr %call.i, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @mhi_mbim_probe.__key.4) #11
  %call27 = tail call i32 @mhi_prepare_for_transfer(ptr noundef %mhi_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 @mhi_get_free_desc_count(ptr noundef %mhi_dev, i32 noundef 2) #11
  %rx_queue_sz = getelementptr inbounds %struct.mhi_mbim_context, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %rx_queue_sz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call31, ptr %rx_queue_sz, align 4
  %mhi_dev32 = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %mhi_dev32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mhi_dev32, align 4
  %dev33 = getelementptr inbounds %struct.mhi_device, ptr %15, i32 0, i32 5
  %call34 = tail call i32 @wwan_register_ops(ptr noundef %dev33, ptr noundef nonnull @mhi_mbim_wwan_ops, ptr noundef nonnull %call.i, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end30 ], [ -12, %entry.cleanup_crit_edge ], [ %call27, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_mbim_remove(ptr noundef %mhi_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mhi_cntrl = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 2
  %2 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mhi_cntrl, align 8
  tail call void @mhi_unprepare_from_transfer(ptr noundef %mhi_dev) #11
  %rx_refill = getelementptr inbounds %struct.mhi_mbim_context, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rx_refill) #11
  %mhi_dev2 = getelementptr inbounds %struct.mhi_controller, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mhi_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mhi_dev2, align 4
  %dev3 = getelementptr inbounds %struct.mhi_device, ptr %5, i32 0, i32 5
  tail call void @wwan_unregister_ops(ptr noundef %dev3) #11
  %skbagg_head = getelementptr inbounds %struct.mhi_mbim_context, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %skbagg_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skbagg_head, align 4
  tail call void @kfree_skb_reason(ptr noundef %7, i32 noundef 0) #11
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_mbim_ul_callback(ptr nocapture noundef readonly %mhi_dev, ptr nocapture noundef readonly %mhi_res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %mhi_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mhi_res, align 4
  %4 = getelementptr inbounds %struct.anon.44, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %3, i32 noundef 0) #11
  %tx_syncp = getelementptr i8, ptr %6, i32 2380
  tail call fastcc void @u64_stats_update_begin(ptr noundef %tx_syncp)
  %transaction_status = getelementptr inbounds %struct.mhi_result, ptr %mhi_res, i32 0, i32 3
  %7 = ptrtoint ptr %transaction_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %transaction_status, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end [
    i32 0, label %if.else
    i32 -107, label %if.then5
  ], !prof !115

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dep_map.i.i = getelementptr i8, ptr %6, i32 2384
  %10 = tail call ptr @llvm.returnaddress(i32 0) #11
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %11) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !116
  %12 = ptrtoint ptr %tx_syncp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_syncp, align 4
  %inc.i.i.i = add i32 %13, 1
  store i32 %inc.i.i.i, ptr %tx_syncp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tx_errors = getelementptr i8, ptr %6, i32 2364
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tx_packets = getelementptr i8, ptr %6, i32 2348
  %14 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_packets, align 8
  %inc.i27 = add i64 %15, 1
  store i64 %inc.i27, ptr %tx_packets, align 8
  %tx_bytes = getelementptr i8, ptr %6, i32 2356
  %bytes_xferd = getelementptr inbounds %struct.mhi_result, ptr %mhi_res, i32 0, i32 1
  %16 = ptrtoint ptr %bytes_xferd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes_xferd, align 4
  %conv.i = zext i32 %17 to i64
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %tx_bytes.sink31 = phi ptr [ %tx_bytes, %if.else ], [ %tx_errors, %if.end ]
  %conv.i.sink = phi i64 [ %conv.i, %if.else ], [ 1, %if.end ]
  %18 = ptrtoint ptr %tx_bytes.sink31 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_bytes.sink31, align 8
  %add.i = add i64 %19, %conv.i.sink
  store i64 %add.i, ptr %tx_bytes.sink31, align 8
  %dep_map.i.i28 = getelementptr i8, ptr %6, i32 2384
  %20 = tail call ptr @llvm.returnaddress(i32 0) #11
  %21 = ptrtoint ptr %20 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i28, i32 noundef %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !116
  %22 = ptrtoint ptr %tx_syncp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_syncp, align 4
  %inc.i.i.i29 = add i32 %23, 1
  store i32 %inc.i.i.i29, ptr %tx_syncp, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end7.cleanup_crit_edge, label %land.lhs.true

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end7
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call10 = tail call zeroext i1 @mhi_queue_is_full(ptr noundef %29, i32 noundef 1) #11
  br i1 %call10, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %31) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_mbim_dl_callback(ptr noundef %mhi_dev, ptr nocapture noundef readonly %mhi_res) #2 align 64 {
entry:
  %ndp16.i = alloca %struct.usb_cdc_ncm_ndp16, align 8
  %dpe16.i = alloca %struct.usb_cdc_ncm_dpe16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %mhi_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mhi_res, align 4
  %call1 = tail call i32 @mhi_get_free_desc_count(ptr noundef %mhi_dev, i32 noundef 2) #11
  %transaction_status = getelementptr inbounds %struct.mhi_result, ptr %mhi_res, i32 0, i32 3
  %4 = ptrtoint ptr %transaction_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transaction_status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %5, label %sw.default [
    i32 0, label %if.else
    i32 -75, label %sw.bb
    i32 -107, label %sw.bb7
  ], !prof !117

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bytes_xferd = getelementptr inbounds %struct.mhi_result, ptr %mhi_res, i32 0, i32 1
  %7 = ptrtoint ptr %bytes_xferd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytes_xferd, align 4
  %call5 = tail call ptr @skb_put(ptr noundef %3, i32 noundef %8) #11
  %call6 = tail call fastcc ptr @mhi_net_skb_agg(ptr noundef %1, ptr noundef %3)
  br label %if.end14

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %3, i32 noundef 1) #11
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %3, i32 noundef 1) #11
  br label %if.end14

if.else:                                          ; preds = %entry
  %bytes_xferd8 = getelementptr inbounds %struct.mhi_result, ptr %mhi_res, i32 0, i32 1
  %9 = ptrtoint ptr %bytes_xferd8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes_xferd8, align 4
  %call9 = tail call ptr @skb_put(ptr noundef %3, i32 noundef %10) #11
  %skbagg_head = getelementptr inbounds %struct.mhi_mbim_context, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %skbagg_head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skbagg_head, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.else.if.end_crit_edge, label %mhi_net_skb_agg.exit

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

mhi_net_skb_agg.exit:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %skbagg_tail.i = getelementptr inbounds %struct.mhi_mbim_context, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %skbagg_tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skbagg_tail.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %frag_list.i, align 8
  %tobool2.not.i = icmp eq ptr %18, null
  %frag_list..i = select i1 %tobool2.not.i, ptr %frag_list.i, ptr %14
  %19 = ptrtoint ptr %frag_list..i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %3, ptr %frag_list..i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %len7.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 6
  %22 = ptrtoint ptr %len7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len7.i, align 4
  %add.i = add i32 %23, %21
  store i32 %add.i, ptr %len7.i, align 4
  %24 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i, align 8
  %add9.i = add i32 %26, %24
  store i32 %add9.i, ptr %data_len.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 20
  %27 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %truesize.i, align 8
  %truesize10.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 20
  %29 = ptrtoint ptr %truesize10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %truesize10.i, align 8
  %add11.i = add i32 %30, %28
  store i32 %add11.i, ptr %truesize10.i, align 8
  store ptr %3, ptr %skbagg_tail.i, align 4
  %31 = ptrtoint ptr %skbagg_head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skbagg_head, align 4
  store ptr null, ptr %skbagg_head, align 4
  br label %if.end

if.end:                                           ; preds = %mhi_net_skb_agg.exit, %if.else.if.end_crit_edge
  %skb.0 = phi ptr [ %32, %mhi_net_skb_agg.exit ], [ %3, %if.else.if.end_crit_edge ]
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %33 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %34)
  %cmp.i.i = icmp ult i32 %34, 20
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end7.i.i

do.body.i.i:                                      ; preds = %if.end
  %call.i170.i = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170.i)
  %tobool.not.i171.i = icmp eq i32 %call.i170.i, 0
  br i1 %tobool.not.i171.i, label %do.body.i.i.do.body.i_crit_edge, label %do.end.i.i

do.body.i.i.do.body.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %do.body.i

if.end7.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %36, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1313033544, i32 %38)
  %cmp8.not.i.i = icmp eq i32 %38, 1313033544
  br i1 %cmp8.not.i.i, label %if.end23.i.i, label %do.body10.i.i

do.body10.i.i:                                    ; preds = %if.end7.i.i
  %call11.i.i = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body10.i.i.do.body.i_crit_edge, label %do.end16.i.i

do.body10.i.i.do.body.i_crit_edge:                ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end16.i.i:                                     ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %36, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %41) #14
  br label %do.body.i

if.end23.i.i:                                     ; preds = %if.end7.i.i
  %wBlockLength.i.i = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %36, i32 0, i32 3
  %42 = ptrtoint ptr %wBlockLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %wBlockLength.i.i, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #11
  %conv.i.i = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv.i.i)
  %cmp25.i.i = icmp ult i32 %34, %conv.i.i
  br i1 %cmp25.i.i, label %do.body28.i.i, label %if.end41.i.i

do.body28.i.i:                                    ; preds = %if.end23.i.i
  %call29.i.i = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %do.body28.i.i.do.body.i_crit_edge, label %do.end34.i.i

do.body28.i.i.do.body.i_crit_edge:                ; preds = %do.body28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end34.i.i:                                     ; preds = %do.body28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len1.i.i, align 4
  %call37.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv.i.i, i32 noundef %46) #14
  br label %do.body.i

if.end41.i.i:                                     ; preds = %if.end23.i.i
  %rx_seq.i.i = getelementptr inbounds %struct.mhi_mbim_context, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %rx_seq.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rx_seq.i.i, align 4
  %conv42.i.i = zext i16 %48 to i32
  %add.i.i = add nuw nsw i32 %conv42.i.i, 1
  %wSequence.i.i = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %36, i32 0, i32 2
  %49 = ptrtoint ptr %wSequence.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %wSequence.i.i, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #11
  %conv43.i.i = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv43.i.i)
  %cmp44.not.i.i = icmp eq i32 %add.i.i, %conv43.i.i
  br i1 %cmp44.not.i.i, label %if.end41.i.i.mbim_rx_verify_nth16.exit.i_crit_edge, label %land.lhs.true.i172.i

if.end41.i.i.mbim_rx_verify_nth16.exit.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbim_rx_verify_nth16.exit.i

land.lhs.true.i172.i:                             ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool48.not.i.i = icmp eq i16 %48, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool51.not.i.i = icmp eq i16 %50, 0
  %or.cond.i.i = select i1 %tobool48.not.i.i, i1 %tobool51.not.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i172.i.mbim_rx_verify_nth16.exit.i_crit_edge, label %land.lhs.true52.i.i

land.lhs.true.i172.i.mbim_rx_verify_nth16.exit.i_crit_edge: ; preds = %land.lhs.true.i172.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbim_rx_verify_nth16.exit.i

land.lhs.true52.i.i:                              ; preds = %land.lhs.true.i172.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %48)
  %cmp55.i.i = icmp ne i16 %48, -1
  %tobool51.not.not.i.i = xor i1 %tobool51.not.i.i, true
  %brmerge.i.i = select i1 %cmp55.i.i, i1 true, i1 %tobool51.not.not.i.i
  br i1 %brmerge.i.i, label %do.body61.i.i, label %land.lhs.true52.i.i.mbim_rx_verify_nth16.exit.i_crit_edge

land.lhs.true52.i.i.mbim_rx_verify_nth16.exit.i_crit_edge: ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbim_rx_verify_nth16.exit.i

do.body61.i.i:                                    ; preds = %land.lhs.true52.i.i
  %call62.i.i = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i.i)
  %tobool63.not.i.i = icmp eq i32 %call62.i.i, 0
  br i1 %tobool63.not.i.i, label %do.body61.i.i.mbim_rx_verify_nth16.exit.i_crit_edge, label %do.end67.i.i

do.body61.i.i.mbim_rx_verify_nth16.exit.i_crit_edge: ; preds = %do.body61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbim_rx_verify_nth16.exit.i

do.end67.i.i:                                     ; preds = %do.body61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %rx_seq.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %rx_seq.i.i, align 4
  %conv70.i.i = zext i16 %53 to i32
  %54 = ptrtoint ptr %wSequence.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %wSequence.i.i, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #11
  %conv72.i.i = zext i16 %56 to i32
  %call73.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv70.i.i, i32 noundef %conv72.i.i) #14
  br label %mbim_rx_verify_nth16.exit.i

mbim_rx_verify_nth16.exit.i:                      ; preds = %do.end67.i.i, %do.body61.i.i.mbim_rx_verify_nth16.exit.i_crit_edge, %land.lhs.true52.i.i.mbim_rx_verify_nth16.exit.i_crit_edge, %land.lhs.true.i172.i.mbim_rx_verify_nth16.exit.i_crit_edge, %if.end41.i.i.mbim_rx_verify_nth16.exit.i_crit_edge
  %57 = ptrtoint ptr %wSequence.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %wSequence.i.i, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #11
  %60 = ptrtoint ptr %rx_seq.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %rx_seq.i.i, align 4
  %wNdpIndex.i.i = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %36, i32 0, i32 4
  %61 = ptrtoint ptr %wNdpIndex.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %wNdpIndex.i.i, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #11
  %64 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %ndp16.i, i32 0, i32 1
  %65 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %ndp16.i, i32 0, i32 2
  %66 = getelementptr inbounds %struct.usb_cdc_ncm_dpe16, ptr %dpe16.i, i32 0, i32 1
  %ndpoffset.0230.i = zext i16 %63 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ndp16.i) #11
  %67 = ptrtoint ptr %ndp16.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 -1, ptr %ndp16.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpe16.i) #11
  %68 = ptrtoint ptr %dpe16.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %dpe16.i, align 2, !annotation !118
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 -1, ptr %66, align 2, !annotation !118
  %call8231.i = call i32 @skb_copy_bits(ptr noundef %skb.0, i32 noundef %ndpoffset.0230.i, ptr noundef nonnull %ndp16.i, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8231.i)
  %tobool9.not232.i = icmp eq i32 %call8231.i, 0
  br i1 %tobool9.not232.i, label %mbim_rx_verify_nth16.exit.i.if.end23.i_crit_edge, label %mbim_rx_verify_nth16.exit.i.do.body11.i_crit_edge

mbim_rx_verify_nth16.exit.i.do.body11.i_crit_edge: ; preds = %mbim_rx_verify_nth16.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11.i

mbim_rx_verify_nth16.exit.i.if.end23.i_crit_edge: ; preds = %mbim_rx_verify_nth16.exit.i
  br label %if.end23.i

do.body.i:                                        ; preds = %do.end34.i.i, %do.body28.i.i.do.body.i_crit_edge, %do.end16.i.i, %do.body10.i.i.do.body.i_crit_edge, %do.end.i.i, %do.body.i.i.do.body.i_crit_edge
  %call1.i = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i38 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i38, label %do.body.i.mhi_mbim_rx.exit_crit_edge, label %do.end.i

do.body.i.mhi_mbim_rx.exit_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mhi_mbim_rx.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %mhi_mbim_rx.exit

do.body11.i:                                      ; preds = %cleanup120.i.do.body11.i_crit_edge, %mbim_rx_verify_nth16.exit.i.do.body11.i_crit_edge
  %ndpoffset.0.lcssa.i = phi i32 [ %ndpoffset.0230.i, %mbim_rx_verify_nth16.exit.i.do.body11.i_crit_edge ], [ %ndpoffset.0.i, %cleanup120.i.do.body11.i_crit_edge ]
  %call12.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.body11.i.cleanup120.thread.i_crit_edge, label %do.end17.i

do.body11.i.cleanup120.thread.i_crit_edge:        ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120.thread.i

do.end17.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %ndpoffset.0.lcssa.i) #14
  br label %cleanup120.thread.i

if.end23.i:                                       ; preds = %cleanup120.i.if.end23.i_crit_edge, %mbim_rx_verify_nth16.exit.i.if.end23.i_crit_edge
  %ndpoffset.0233.i = phi i32 [ %ndpoffset.0.i, %cleanup120.i.if.end23.i_crit_edge ], [ %ndpoffset.0230.i, %mbim_rx_verify_nth16.exit.i.if.end23.i_crit_edge ]
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %64, align 4
  %72 = call i16 @llvm.bswap.i16(i16 %71) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %72)
  %cmp.i173.i = icmp ult i16 %72, 16
  br i1 %cmp.i173.i, label %do.body.i176.i, label %if.end9.i.i

do.body.i176.i:                                   ; preds = %if.end23.i
  %call.i174.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174.i)
  %tobool.not.i175.i = icmp eq i32 %call.i174.i, 0
  br i1 %tobool.not.i175.i, label %do.body.i176.i.do.body27.i_crit_edge, label %do.end.i177.i

do.body.i176.i.do.body27.i_crit_edge:             ; preds = %do.body.i176.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.i

do.end.i177.i:                                    ; preds = %do.body.i176.i
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %64, align 4
  %75 = call i16 @llvm.bswap.i16(i16 %74) #11
  %conv5.i.i = zext i16 %75 to i32
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %conv5.i.i) #14
  br label %do.body27.i

if.end9.i.i:                                      ; preds = %if.end23.i
  %conv.i178.i = zext i16 %72 to i32
  %sub.i.i = add nsw i32 %conv.i178.i, -8
  %div33.i.i = lshr i32 %sub.i.i, 2
  %dec.i.i = add nsw i32 %div33.i.i, -1
  %mul.i.i = shl nuw nsw i32 %dec.i.i, 2
  %add.i179.i = add nuw nsw i32 %mul.i.i, 8
  %76 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i179.i, i32 %77)
  %cmp12.i.i = icmp ugt i32 %add.i179.i, %77
  br i1 %cmp12.i.i, label %do.body15.i.i, label %if.end39.i

do.body15.i.i:                                    ; preds = %if.end9.i.i
  %call16.i.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %do.body15.i.i.do.body27.i_crit_edge, label %do.end21.i.i

do.body15.i.i.do.body27.i_crit_edge:              ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.i

do.end21.i.i:                                     ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %dec.i.i) #14
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.end21.i.i, %do.body15.i.i.do.body27.i_crit_edge, %do.end.i177.i, %do.body.i176.i.do.body27.i_crit_edge
  %call28.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %do.body27.i.cleanup120.thread.i_crit_edge, label %do.end33.i

do.body27.i.cleanup120.thread.i_crit_edge:        ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120.thread.i

do.end33.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #13
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #14
  br label %cleanup120.thread.i

if.end39.i:                                       ; preds = %if.end9.i.i
  %78 = ptrtoint ptr %ndp16.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ndp16.i, align 8
  %and.i = and i32 %79, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 1230000896, i32 %and.i)
  %cmp40.not.i = icmp eq i32 %and.i, 1230000896
  br i1 %cmp40.not.i, label %if.end54.i, label %do.body42.i

do.body42.i:                                      ; preds = %if.end39.i
  %call43.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %do.body42.i.next_ndp.i_crit_edge, label %do.end48.i

do.body42.i.next_ndp.i_crit_edge:                 ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_ndp.i

do.end48.i:                                       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #13
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #14
  br label %next_ndp.i

if.end54.i:                                       ; preds = %if.end39.i
  %80 = and i32 %79, 255
  %81 = call i32 @llvm.read_register.i32(metadata !105) #11
  %and.i.i.i.i.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %84, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end54.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end54.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end54.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end54.i.rcu_read_lock.exit.i_crit_edge
  %call.i181.i = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181.i)
  %tobool.not.i182.i = icmp eq i32 %call.i181.i, 0
  br i1 %tobool.not.i182.i, label %land.lhs.true.i184.i, label %rcu_read_lock.exit.i.do.end.i186.i_crit_edge

rcu_read_lock.exit.i.do.end.i186.i_crit_edge:     ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i186.i

land.lhs.true.i184.i:                             ; preds = %rcu_read_lock.exit.i
  %call1.i183.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i183.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i183.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i184.i.do.end.i186.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i184.i.do.end.i186.i_crit_edge:     ; preds = %land.lhs.true.i184.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i186.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i184.i
  %.b38.i.i = load i1, ptr @mhi_mbim_get_link_rcu.__warned, align 1
  br i1 %.b38.i.i, label %land.lhs.true3.i.i.do.end.i186.i_crit_edge, label %if.then.i185.i

land.lhs.true3.i.i.do.end.i186.i_crit_edge:       ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i186.i

if.then.i185.i:                                   ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mhi_mbim_get_link_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 88, ptr noundef nonnull @.str.15) #11
  br label %do.end.i186.i

do.end.i186.i:                                    ; preds = %if.then.i185.i, %land.lhs.true3.i.i.do.end.i186.i_crit_edge, %land.lhs.true.i184.i.do.end.i186.i_crit_edge, %rcu_read_lock.exit.i.do.end.i186.i_crit_edge
  %rem.i.i = and i32 %79, 7
  %arrayidx.i.i = getelementptr %struct.mhi_mbim_context, ptr %1, i32 0, i32 9, i32 %rem.i.i
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %86, null
  %add.ptr.i.i = getelementptr i8, ptr %86, i32 -136
  %tobool12.not4245.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool12.not42.i.i = or i1 %tobool10.not.i.i, %tobool12.not4245.i.i
  br i1 %tobool12.not42.i.i, label %do.end.i186.i.do.body60.i_crit_edge, label %do.end.i186.i.for.body.i.i_crit_edge

do.end.i186.i.for.body.i.i_crit_edge:             ; preds = %do.end.i186.i
  br label %for.body.i.i

do.end.i186.i.do.body60.i_crit_edge:              ; preds = %do.end.i186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body60.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i186.i.for.body.i.i_crit_edge
  %link.043.i.i = phi ptr [ %add.ptr27.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i186.i.for.body.i.i_crit_edge ]
  %session13.i.i = getelementptr inbounds %struct.mhi_mbim_link, ptr %link.043.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %session13.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %session13.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %80)
  %cmp.i187.i = icmp eq i32 %88, %80
  br i1 %cmp.i187.i, label %if.end72.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hlnode.i.i = getelementptr inbounds %struct.mhi_mbim_link, ptr %link.043.i.i, i32 0, i32 12
  %89 = ptrtoint ptr %hlnode.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %hlnode.i.i, align 8
  %tobool23.not.i.i = icmp eq ptr %90, null
  %add.ptr27.i.i = getelementptr i8, ptr %90, i32 -136
  %tobool12.not46.i.i = icmp eq ptr %add.ptr27.i.i, null
  %tobool12.not.i188.i = or i1 %tobool23.not.i.i, %tobool12.not46.i.i
  br i1 %tobool12.not.i188.i, label %for.inc.i.i.do.body60.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.do.body60.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body60.i

do.body60.i:                                      ; preds = %for.inc.i.i.do.body60.i_crit_edge, %do.end.i186.i.do.body60.i_crit_edge
  %call61.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %do.body60.i.unlock.i_crit_edge, label %do.end66.i

do.body60.i.unlock.i_crit_edge:                   ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

do.end66.i:                                       ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #13
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %80) #14
  br label %unlock.i

if.end72.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i.i)
  %cmp73227.i = icmp ugt i32 %sub.i.i, 7
  br i1 %cmp73227.i, label %for.body.lr.ph.i, label %if.end72.i.unlock.i_crit_edge

if.end72.i.unlock.i_crit_edge:                    ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

for.body.lr.ph.i:                                 ; preds = %if.end72.i
  %add.i39 = add nuw nsw i32 %ndpoffset.0233.i, 8
  %ndev.i = getelementptr inbounds %struct.mhi_mbim_link, ptr %link.043.i.i, i32 0, i32 1
  %rx_syncp110.i = getelementptr inbounds %struct.mhi_mbim_link, ptr %link.043.i.i, i32 0, i32 11
  %rx_packets.i = getelementptr inbounds %struct.mhi_mbim_link, ptr %link.043.i.i, i32 0, i32 3
  %rx_bytes.i = getelementptr inbounds %struct.mhi_mbim_link, ptr %link.043.i.i, i32 0, i32 4
  %dep_map.i.i193.i = getelementptr inbounds %struct.mhi_mbim_link, ptr %link.043.i.i, i32 0, i32 11, i32 0, i32 1
  %rx_errors.i = getelementptr inbounds %struct.mhi_mbim_link, ptr %link.043.i.i, i32 0, i32 5
  %smax.i = call i32 @llvm.smax.i32(i32 %dec.i.i, i32 1) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.0229.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %dpeoffset.0228.i = phi i32 [ %add.i39, %for.body.lr.ph.i ], [ %add115.i, %for.inc.i.for.body.i_crit_edge ]
  %call74.i = call i32 @skb_copy_bits(ptr noundef %skb.0, i32 noundef %dpeoffset.0228.i, ptr noundef nonnull %dpe16.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %for.body.i.unlock.i_crit_edge

for.body.i.unlock.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end77.i:                                       ; preds = %for.body.i
  %91 = ptrtoint ptr %dpe16.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %dpe16.i, align 2
  %93 = call i16 @llvm.bswap.i16(i16 %92) #11
  %94 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %66, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool78.not.i = icmp eq i16 %92, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool79.not.i = icmp eq i16 %95, 0
  %or.cond.i = select i1 %tobool78.not.i, i1 true, i1 %tobool79.not.i
  br i1 %or.cond.i, label %if.end77.i.unlock.i_crit_edge, label %if.end81.i

if.end77.i.unlock.i_crit_edge:                    ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end81.i:                                       ; preds = %if.end77.i
  %96 = call i16 @llvm.bswap.i16(i16 %95) #11
  %97 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ndev.i, align 4
  %conv.i = zext i16 %96 to i32
  %call.i189.i = call ptr @__netdev_alloc_skb(ptr noundef %98, i32 noundef %conv.i, i32 noundef 2592) #11
  %tobool83.not.i = icmp eq ptr %call.i189.i, null
  br i1 %tobool83.not.i, label %if.end81.i.for.inc.i_crit_edge, label %if.end85.i

if.end81.i.for.inc.i_crit_edge:                   ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end85.i:                                       ; preds = %if.end81.i
  %call87.i = call ptr @skb_put(ptr noundef nonnull %call.i189.i, i32 noundef %conv.i) #11
  %conv88.i = zext i16 %93 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i189.i, i32 0, i32 19
  %99 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i, align 4
  %call90.i = call i32 @skb_copy_bits(ptr noundef %skb.0, i32 noundef %conv88.i, ptr noundef %100, i32 noundef %conv.i) #11
  %101 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 1
  %105 = and i8 %104, -16
  %106 = zext i8 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %105, label %do.body96.i [
    i8 64, label %if.end85.i.sw.epilog.i_crit_edge
    i8 96, label %sw.bb94.i
  ]

if.end85.i.sw.epilog.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb94.i:                                        ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

do.body96.i:                                      ; preds = %if.end85.i
  %call97.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %tobool98.not.i = icmp eq i32 %call97.i, 0
  br i1 %tobool98.not.i, label %do.body96.i.do.end108.i_crit_edge, label %do.end102.i

do.body96.i.do.end108.i_crit_edge:                ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end108.i

do.end102.i:                                      ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ndev.i, align 4
  %call105.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %108) #14
  br label %do.end108.i

do.end108.i:                                      ; preds = %do.end102.i, %do.body96.i.do.end108.i_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i189.i, i32 noundef 1) #11
  call fastcc void @u64_stats_update_begin(ptr noundef %rx_syncp110.i) #11
  %109 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %rx_errors.i, align 8
  %inc.i.i = add i64 %110, 1
  store i64 %inc.i.i, ptr %rx_errors.i, align 8
  %111 = call ptr @llvm.returnaddress(i32 0) #11
  %112 = ptrtoint ptr %111 to i32
  call void @lock_release(ptr noundef %dep_map.i.i193.i, i32 noundef %112) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !116
  %113 = ptrtoint ptr %rx_syncp110.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_syncp110.i, align 4
  %inc.i.i.i.i = add i32 %114, 1
  store i32 %inc.i.i.i.i, ptr %rx_syncp110.i, align 4
  br label %for.inc.i

sw.epilog.i:                                      ; preds = %sw.bb94.i, %if.end85.i.sw.epilog.i_crit_edge
  %.sink.i = phi i16 [ -31011, %sw.bb94.i ], [ 2048, %if.end85.i.sw.epilog.i_crit_edge ]
  %protocol95.i = getelementptr inbounds %struct.sk_buff, ptr %call.i189.i, i32 0, i32 15, i32 0, i32 18
  %115 = ptrtoint ptr %protocol95.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %.sink.i, ptr %protocol95.i, align 8
  call fastcc void @u64_stats_update_begin(ptr noundef %rx_syncp110.i) #11
  %116 = ptrtoint ptr %rx_packets.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %rx_packets.i, align 8
  %inc.i190.i = add i64 %117, 1
  store i64 %inc.i190.i, ptr %rx_packets.i, align 8
  %len.i40 = getelementptr inbounds %struct.sk_buff, ptr %call.i189.i, i32 0, i32 6
  %118 = ptrtoint ptr %len.i40 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len.i40, align 4
  %conv.i191.i = zext i32 %119 to i64
  %120 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %rx_bytes.i, align 8
  %add.i192.i = add i64 %121, %conv.i191.i
  store i64 %add.i192.i, ptr %rx_bytes.i, align 8
  %122 = call ptr @llvm.returnaddress(i32 0) #11
  %123 = ptrtoint ptr %122 to i32
  call void @lock_release(ptr noundef %dep_map.i.i193.i, i32 noundef %123) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !116
  %124 = ptrtoint ptr %rx_syncp110.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx_syncp110.i, align 4
  %inc.i.i.i194.i = add i32 %125, 1
  store i32 %inc.i.i.i194.i, ptr %rx_syncp110.i, align 4
  %call112.i = call i32 @netif_rx(ptr noundef nonnull %call.i189.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.epilog.i, %do.end108.i, %if.end81.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %n.0229.i, 1
  %add115.i = add i32 %dpeoffset.0228.i, 4
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %for.inc.i.unlock.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.unlock.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

unlock.i:                                         ; preds = %for.inc.i.unlock.i_crit_edge, %if.end77.i.unlock.i_crit_edge, %for.body.i.unlock.i_crit_edge, %if.end72.i.unlock.i_crit_edge, %do.end66.i, %do.body60.i.unlock.i_crit_edge
  %call.i195.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i195.i, label %unlock.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i198.i

unlock.i.rcu_read_unlock.exit.i_crit_edge:        ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i198.i:                             ; preds = %unlock.i
  %call1.i196.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i196.i)
  %tobool.not.i197.i = icmp eq i32 %call1.i196.i, 0
  br i1 %tobool.not.i197.i, label %land.lhs.true.i198.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i200.i

land.lhs.true.i198.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i198.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i200.i:                            ; preds = %land.lhs.true.i198.i
  %.b4.i199.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i199.i, label %land.lhs.true2.i200.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i201.i

land.lhs.true2.i200.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i201.i:                                   ; preds = %land.lhs.true2.i200.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i201.i, %land.lhs.true2.i200.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i198.i.rcu_read_unlock.exit.i_crit_edge, %unlock.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !120
  %126 = call i32 @llvm.read_register.i32(metadata !105) #11
  %and.i.i.i.i.i202.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i202.i to ptr
  %preempt_count.i.i.i.i203.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i.i203.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i.i203.i, align 4
  %sub.i.i.i.i = add i32 %129, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i203.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %next_ndp.i

next_ndp.i:                                       ; preds = %rcu_read_unlock.exit.i, %do.end48.i, %do.body42.i.next_ndp.i_crit_edge
  %130 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %65, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool117.not.i = icmp eq i16 %131, 0
  br i1 %tobool117.not.i, label %while.end.i, label %cleanup120.i

cleanup120.thread.i:                              ; preds = %do.end33.i, %do.body27.i.cleanup120.thread.i_crit_edge, %do.end17.i, %do.body11.i.cleanup120.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpe16.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ndp16.i) #11
  br label %mhi_mbim_rx.exit

cleanup120.i:                                     ; preds = %next_ndp.i
  %132 = call i16 @llvm.bswap.i16(i16 %131) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpe16.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ndp16.i) #11
  %ndpoffset.0.i = zext i16 %132 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ndp16.i) #11
  %133 = ptrtoint ptr %ndp16.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 -1, ptr %ndp16.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpe16.i) #11
  %134 = ptrtoint ptr %dpe16.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 -1, ptr %dpe16.i, align 2, !annotation !118
  %135 = ptrtoint ptr %66 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 -1, ptr %66, align 2, !annotation !118
  %call8.i = call i32 @skb_copy_bits(ptr noundef %skb.0, i32 noundef %ndpoffset.0.i, ptr noundef nonnull %ndp16.i, i32 noundef 8) #11
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %cleanup120.i.if.end23.i_crit_edge, label %cleanup120.i.do.body11.i_crit_edge

cleanup120.i.do.body11.i_crit_edge:               ; preds = %cleanup120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11.i

cleanup120.i.if.end23.i_crit_edge:                ; preds = %cleanup120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

while.end.i:                                      ; preds = %next_ndp.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpe16.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ndp16.i) #11
  br label %mhi_mbim_rx.exit

mhi_mbim_rx.exit:                                 ; preds = %while.end.i, %cleanup120.thread.i, %do.end.i, %do.body.i.mhi_mbim_rx.exit_crit_edge
  %.sink242.i = phi i32 [ 0, %while.end.i ], [ 1, %cleanup120.thread.i ], [ 1, %do.body.i.mhi_mbim_rx.exit_crit_edge ], [ 1, %do.end.i ]
  call void @__dev_kfree_skb_any(ptr noundef %skb.0, i32 noundef %.sink242.i) #11
  br label %if.end14

if.end14:                                         ; preds = %mhi_mbim_rx.exit, %sw.default, %sw.bb
  %rx_queue_sz = getelementptr inbounds %struct.mhi_mbim_context, ptr %1, i32 0, i32 4
  %136 = ptrtoint ptr %rx_queue_sz to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rx_queue_sz, align 4
  %div37 = lshr i32 %137, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %div37)
  %cmp.not = icmp ult i32 %call1, %div37
  br i1 %cmp.not, label %if.end14.cleanup_crit_edge, label %if.then15

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %rx_refill = getelementptr inbounds %struct.mhi_mbim_context, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %138 = load ptr, ptr @system_wq, align 4
  %call.i.i41 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %138, ptr noundef %rx_refill, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end14.cleanup_crit_edge, %sw.bb7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_net_rx_refill_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call35 = tail call zeroext i1 @mhi_queue_is_full(ptr noundef %1, i32 noundef 2) #11
  br i1 %call35, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mru = getelementptr i8, ptr %work, i32 -12
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %mru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mru, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %3, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end, !prof !121

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %while.body
  %4 = ptrtoint ptr %mru to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mru, align 4
  %call8 = tail call i32 @mhi_queue_skb(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %call.i, i32 noundef %5, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.then16, !prof !122

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #11
  br label %while.end

cleanup:                                          ; preds = %if.end
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 403, i32 noundef 0) #11
  %call.i32 = tail call i32 @__cond_resched() #11
  %call = tail call zeroext i1 @mhi_queue_is_full(ptr noundef %1, i32 noundef 2) #11
  br i1 %call, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then16, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %call20 = tail call i32 @mhi_get_free_desc_count(ptr noundef %1, i32 noundef 2) #11
  %rx_queue_sz = getelementptr i8, ptr %work, i32 -8
  %6 = ptrtoint ptr %rx_queue_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_queue_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %7)
  %cmp = icmp eq i32 %call20, %7
  br i1 %cmp, label %if.then21, label %while.end.if.end23_crit_edge

while.end.if.end23_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then21:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef 50) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %while.end.if.end23_crit_edge
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
declare dso_local i32 @wwan_register_ops(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mhi_queue_is_full(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_queue_skb(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mhi_mbim_setup(ptr nocapture noundef %ndev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %header_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 49
  %0 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 519, ptr %type, align 16
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 21
  %2 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 28, ptr %needed_headroom, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 56
  %4 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %addr_len, align 1
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 144, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mhi_mbim_ndo, ptr %netdev_ops, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1500, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 30
  %8 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 31
  %9 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65507, ptr %max_mtu, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 107
  %10 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1000, ptr %tx_queue_len, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_mbim_newlink(ptr noundef %ctxt, ptr noundef %ndev, i32 noundef %if_id, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr i8, ptr %ndev, i32 2308
  %session = getelementptr i8, ptr %ndev, i32 2316
  %0 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %if_id, ptr %session, align 8
  %1 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctxt, ptr %drv_priv.i, align 8
  %ndev2 = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %ndev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ndev, ptr %ndev2, align 4
  %rx_syncp = getelementptr i8, ptr %ndev, i32 2412
  %dep_map.i = getelementptr i8, ptr %ndev, i32 2416
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @mhi_mbim_newlink.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %3 = ptrtoint ptr %rx_syncp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rx_syncp, align 4
  %tx_syncp = getelementptr i8, ptr %ndev, i32 2380
  %dep_map.i21 = getelementptr i8, ptr %ndev, i32 2384
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i21, ptr noundef nonnull @.str.12, ptr noundef nonnull @mhi_mbim_newlink.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %4 = ptrtoint ptr %tx_syncp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tx_syncp, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !105) #11
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i22 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i25, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i25:                                ; preds = %rcu_read_lock.exit
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i25.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i25.do.end.i_crit_edge:             ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i25
  %.b38.i = load i1, ptr @mhi_mbim_get_link_rcu.__warned, align 1
  br i1 %.b38.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i26

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i26:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mhi_mbim_get_link_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 88, ptr noundef nonnull @.str.15) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i26, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i25.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %rem.i = and i32 %if_id, 7
  %arrayidx.i = getelementptr %struct.mhi_mbim_context, ptr %ctxt, i32 0, i32 9, i32 %rem.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %10, null
  %add.ptr.i = getelementptr i8, ptr %10, i32 -136
  %tobool12.not4245.i = icmp eq ptr %add.ptr.i, null
  %tobool12.not42.i = or i1 %tobool10.not.i, %tobool12.not4245.i
  br i1 %tobool12.not42.i, label %do.end.i.if.end_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %link.043.i = phi ptr [ %add.ptr27.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %session13.i = getelementptr inbounds %struct.mhi_mbim_link, ptr %link.043.i, i32 0, i32 2
  %11 = ptrtoint ptr %session13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %session13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %if_id)
  %cmp.i = icmp eq i32 %12, %if_id
  br i1 %cmp.i, label %if.then, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hlnode.i = getelementptr inbounds %struct.mhi_mbim_link, ptr %link.043.i, i32 0, i32 12
  %13 = ptrtoint ptr %hlnode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hlnode.i, align 8
  %tobool23.not.i = icmp eq ptr %14, null
  %add.ptr27.i = getelementptr i8, ptr %14, i32 -136
  %tobool12.not46.i = icmp eq ptr %add.ptr27.i, null
  %tobool12.not.i = or i1 %tobool23.not.i, %tobool12.not46.i
  br i1 %tobool12.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body.i
  %call.i27 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i27, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i30

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i30:                                ; preds = %if.then
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !120
  %15 = tail call i32 @llvm.read_register.i32(metadata !105) #11
  %and.i.i.i.i.i34 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i35, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %do.end.i.if.end_crit_edge
  %call.i37 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i37, label %if.end.rcu_read_unlock.exit48_crit_edge, label %land.lhs.true.i40

if.end.rcu_read_unlock.exit48_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit48

land.lhs.true.i40:                                ; preds = %if.end
  %call1.i38 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit48_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit48_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit48

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit48_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit48_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit48

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_unlock.exit48

rcu_read_unlock.exit48:                           ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit48_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit48_crit_edge, %if.end.rcu_read_unlock.exit48_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !120
  %19 = tail call i32 @llvm.read_register.i32(metadata !105) #11
  %and.i.i.i.i.i44 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i46 = add i32 %22, -1
  store volatile i32 %sub.i.i.i46, ptr %preempt_count.i.i.i.i45, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %hlnode = getelementptr i8, ptr %ndev, i32 2444
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %hlnode to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %hlnode, align 4
  %pprev.i = getelementptr i8, ptr %ndev, i32 2448
  %26 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %hlnode, ptr %arrayidx.i, align 4
  %tobool.not.i49 = icmp eq ptr %24, null
  br i1 %tobool.not.i49, label %rcu_read_unlock.exit48.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

rcu_read_unlock.exit48.hlist_add_head_rcu.exit_crit_edge: ; preds = %rcu_read_unlock.exit48
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %rcu_read_unlock.exit48
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %hlnode, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %rcu_read_unlock.exit48.hlist_add_head_rcu.exit_crit_edge
  %call8 = tail call i32 @register_netdevice(ptr noundef %ndev) #11
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head_rcu.exit, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -17, %rcu_read_unlock.exit ], [ %call8, %hlist_add_head_rcu.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_mbim_dellink(ptr nocapture noundef readnone %ctxt, ptr noundef %ndev, ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr i8, ptr %ndev, i32 2448
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

entry.hlist_del_init_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %entry
  %hlnode = getelementptr i8, ptr %ndev, i32 2444
  %2 = ptrtoint ptr %hlnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hlnode, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i7.i = icmp eq ptr %3, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %entry.hlist_del_init_rcu.exit_crit_edge
  tail call void @synchronize_rcu() #11
  tail call void @unregister_netdevice_queue(ptr noundef %ndev, ptr noundef %head) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_mbim_ndo_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 8
  %rx_refill = getelementptr inbounds %struct.mhi_mbim_context, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %rx_refill, i32 noundef 0) #11
  tail call void @netif_carrier_on(ptr noundef %ndev) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_mbim_ndo_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  tail call void @netif_carrier_off(ptr noundef %ndev) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_mbim_ndo_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 8
  %tx_lock = getelementptr inbounds %struct.mhi_mbim_context, ptr %1, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #11
  %session = getelementptr i8, ptr %ndev, i32 2316
  %2 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %session, align 8
  %tx_seq = getelementptr inbounds %struct.mhi_mbim_context, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %tx_seq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_seq, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %8 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %skb_header_cloned.exit.thread.i.i, label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %entry
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i1.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, 28
  br i1 %cmp.i1.i.i, label %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge, label %if.end.i2.i.i

skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread.i.i.i

skb_header_cloned.exit.thread.i.i:                ; preds = %entry
  %data.i.i5.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i5.i.i, align 4
  %head.i.i6.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i6.i.i, align 8
  %sub.ptr.lhs.cast.i.i7.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i8.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i9.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i, %sub.ptr.rhs.cast.i.i8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i9.i.i)
  %cmp.i110.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i, 28
  br i1 %cmp.i110.i.i, label %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.mbim_tx_fixup.exit_crit_edge

skb_header_cloned.exit.thread.i.i.mbim_tx_fixup.exit_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbim_tx_fixup.exit

skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread.i.i.i

if.end.thread.i.i.i:                              ; preds = %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i, %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge ]
  %phi.bo.i.i.i = sub nuw nsw i32 155, %sub.ptr.sub.i.i12.i.i
  %phi.bo11.i.i.i = and i32 %phi.bo.i.i.i, -128
  br label %skb_cow_head.exit.i

if.end.i2.i.i:                                    ; preds = %skb_header_cloned.exit.i.i
  %and.i.i.i = and i32 %12, 65535
  %shr.i.i.i = ashr i32 %12, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %if.end.i2.i.i.mbim_tx_fixup.exit_crit_edge, label %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge

if.end.i2.i.i.skb_cow_head.exit.i_crit_edge:      ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_cow_head.exit.i

if.end.i2.i.i.mbim_tx_fixup.exit_crit_edge:       ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbim_tx_fixup.exit

skb_cow_head.exit.i:                              ; preds = %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge, %if.end.thread.i.i.i
  %delta.010.i.i.i = phi i32 [ %phi.bo11.i.i.i, %if.end.thread.i.i.i ], [ 0, %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge ]
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i, label %skb_cow_head.exit.i.mbim_tx_fixup.exit_crit_edge, label %mbim_tx_fixup.exit.thread

skb_cow_head.exit.i.mbim_tx_fixup.exit_crit_edge: ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbim_tx_fixup.exit

mbim_tx_fixup.exit.thread:                        ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %do.body29

mbim_tx_fixup.exit:                               ; preds = %skb_cow_head.exit.i.mbim_tx_fixup.exit_crit_edge, %if.end.i2.i.i.mbim_tx_fixup.exit_crit_edge, %skb_header_cloned.exit.thread.i.i.mbim_tx_fixup.exit_crit_edge
  %call1.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 28) #11
  %21 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 1313033544, ptr %call1.i, align 1
  %wHeaderLength.i = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %call1.i, i32 0, i32 1
  %22 = ptrtoint ptr %wHeaderLength.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 3072, ptr %wHeaderLength.i, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %5) #11
  %wSequence.i = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %call1.i, i32 0, i32 2
  %24 = ptrtoint ptr %wSequence.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %wSequence.i, align 1
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %26 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #11
  %wBlockLength.i = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %call1.i, i32 0, i32 3
  %28 = ptrtoint ptr %wBlockLength.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %wBlockLength.i, align 1
  %wNdpIndex.i = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %call1.i, i32 0, i32 4
  %29 = ptrtoint ptr %wNdpIndex.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 3072, ptr %wNdpIndex.i, align 1
  %ndp164.i = getelementptr inbounds %struct.mbim_tx_hdr, ptr %call1.i, i32 0, i32 1
  %shl.i = shl i32 %3, 24
  %or.i = or i32 %shl.i, 5460041
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %31 = ptrtoint ptr %ndp164.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %ndp164.i, align 1
  %wLength.i = getelementptr inbounds %struct.mbim_tx_hdr, ptr %call1.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %wLength.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 4096, ptr %wLength.i, align 1
  %wNextNdpIndex.i = getelementptr inbounds %struct.mbim_tx_hdr, ptr %call1.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %wNextNdpIndex.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 0, ptr %wNextNdpIndex.i, align 1
  %dpe16.i = getelementptr inbounds %struct.mbim_tx_hdr, ptr %call1.i, i32 0, i32 2
  %34 = ptrtoint ptr %dpe16.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 7168, ptr %dpe16.i, align 1
  %conv6.i = trunc i32 %7 to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv6.i) #11
  %wDatagramLength.i = getelementptr inbounds %struct.mbim_tx_hdr, ptr %call1.i, i32 0, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %wDatagramLength.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %wDatagramLength.i, align 1
  %arrayidx10.i = getelementptr %struct.mbim_tx_hdr, ptr %call1.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 0, ptr %arrayidx10.i, align 1
  %wDatagramLength14.i = getelementptr %struct.mbim_tx_hdr, ptr %call1.i, i32 0, i32 2, i32 1, i32 1
  %38 = ptrtoint ptr %wDatagramLength14.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 0, ptr %wDatagramLength14.i, align 1
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %mbim_tx_fixup.exit.do.body29_crit_edge, label %if.end, !prof !121

mbim_tx_fixup.exit.do.body29_crit_edge:           ; preds = %mbim_tx_fixup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

if.end:                                           ; preds = %mbim_tx_fixup.exit
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  %call11 = tail call i32 @mhi_queue_skb(ptr noundef %40, i32 noundef 1, ptr noundef nonnull %skb, i32 noundef %42, i32 noundef 2) #11
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call13 = tail call zeroext i1 @mhi_queue_is_full(ptr noundef %44, i32 noundef 1) #11
  br i1 %call13, label %if.then14, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %45 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool16.not = icmp eq i32 %call11, 0
  br i1 %tobool16.not, label %exit_unlock, label %if.end15.do.body29_crit_edge

if.end15.do.body29_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

exit_unlock:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %tx_seq to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %tx_seq, align 2
  %inc = add i16 %48, 1
  store i16 %inc, ptr %tx_seq, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call4) #11
  br label %cleanup

do.body29:                                        ; preds = %if.end15.do.body29_crit_edge, %mbim_tx_fixup.exit.do.body29_crit_edge, %mbim_tx_fixup.exit.thread
  %retval.0.i65.ph = phi ptr [ null, %mbim_tx_fixup.exit.thread ], [ %skb, %if.end15.do.body29_crit_edge ], [ null, %mbim_tx_fixup.exit.do.body29_crit_edge ]
  %err.0.ph = phi i32 [ -12, %mbim_tx_fixup.exit.thread ], [ %call11, %if.end15.do.body29_crit_edge ], [ -12, %mbim_tx_fixup.exit.do.body29_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call4) #11
  %call30 = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body29.do.end40_crit_edge, label %do.end35

do.body29.do.end40_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %ndev, i32 noundef %err.0.ph) #14
  br label %do.end40

do.end40:                                         ; preds = %do.end35, %do.body29.do.end40_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %retval.0.i65.ph, i32 noundef 1) #11
  %tx_syncp = getelementptr i8, ptr %ndev, i32 2380
  tail call fastcc void @u64_stats_update_begin(ptr noundef %tx_syncp)
  %tx_dropped = getelementptr i8, ptr %ndev, i32 2372
  %49 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %tx_dropped, align 8
  %inc.i = add i64 %50, 1
  store i64 %inc.i, ptr %tx_dropped, align 8
  %dep_map.i.i = getelementptr i8, ptr %ndev, i32 2384
  %51 = tail call ptr @llvm.returnaddress(i32 0) #11
  %52 = ptrtoint ptr %51 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %52) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !116
  %53 = ptrtoint ptr %tx_syncp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_syncp, align 4
  %inc.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i, ptr %tx_syncp, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %exit_unlock
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_mbim_ndo_get_stats64(ptr noundef %ndev, ptr nocapture noundef writeonly %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_syncp = getelementptr i8, ptr %ndev, i32 2412
  %rx_packets = getelementptr i8, ptr %ndev, i32 2324
  %rx_bytes = getelementptr i8, ptr %ndev, i32 2332
  %rx_bytes5 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %rx_errors = getelementptr i8, ptr %ndev, i32 2340
  %rx_errors7 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call1 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %rx_syncp)
  %0 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rx_packets, align 8
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %stats, align 8
  %3 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rx_bytes, align 8
  %5 = ptrtoint ptr %rx_bytes5 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %rx_bytes5, align 8
  %6 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rx_errors, align 8
  %8 = ptrtoint ptr %rx_errors7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rx_errors7, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  %9 = ptrtoint ptr %rx_syncp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %rx_syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %10, %call1
  br i1 %cmp.i.i.i.i.not, label %do.body10.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body10.preheader:                              ; preds = %do.body
  %tx_syncp = getelementptr i8, ptr %ndev, i32 2380
  %tx_packets = getelementptr i8, ptr %ndev, i32 2348
  %tx_packets13 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes = getelementptr i8, ptr %ndev, i32 2356
  %tx_bytes15 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %tx_errors = getelementptr i8, ptr %ndev, i32 2364
  %tx_errors17 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %tx_dropped = getelementptr i8, ptr %ndev, i32 2372
  %tx_dropped19 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  br label %do.body10

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %do.body10.preheader
  %call11 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %tx_syncp)
  %11 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tx_packets, align 8
  %13 = ptrtoint ptr %tx_packets13 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %tx_packets13, align 8
  %14 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_bytes, align 8
  %16 = ptrtoint ptr %tx_bytes15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tx_bytes15, align 8
  %17 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tx_errors, align 8
  %19 = ptrtoint ptr %tx_errors17 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %tx_errors17, align 8
  %20 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_dropped, align 8
  %22 = ptrtoint ptr %tx_dropped19 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %tx_dropped19, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  %23 = ptrtoint ptr %tx_syncp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %tx_syncp, align 4
  %cmp.i.i.i.i41.not = icmp eq i32 %24, %call11
  br i1 %cmp.i.i.i.i41.not, label %do.end23, label %do.body10.do.body10_crit_edge

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10

do.end23:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !105) #11
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %5 = tail call i32 @llvm.read_register.i32(metadata !105) #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !126
  %14 = tail call i32 @llvm.read_register.i32(metadata !105) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !105) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !105) #11
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !127
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !128
  %33 = tail call i32 @llvm.read_register.i32(metadata !105) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !122

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #11
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #11
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !131
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !121

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !132
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !134
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !135
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_unprepare_from_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_unregister_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @mhi_net_skb_agg(ptr nocapture noundef %mbim, ptr noundef %skb) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skbagg_head = getelementptr inbounds %struct.mhi_mbim_context, ptr %mbim, i32 0, i32 1
  %0 = ptrtoint ptr %skbagg_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skbagg_head, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %skbagg_head to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %skbagg_head, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %skbagg_tail = getelementptr inbounds %struct.mhi_mbim_context, ptr %mbim, i32 0, i32 2
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
  %22 = load ptr, ptr %skbagg_head, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %22, %if.end ], [ %skb, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104}
!llvm.named.register.sp = !{!105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_mhi_wwan_mbim__350_654_mhi_mbim_driver_init6, !1, !"__initcall__kmod_mhi_wwan_mbim__350_654_mhi_mbim_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 654, i32 1}
!2 = !{ptr @__exitcall_mhi_mbim_driver_exit, !1, !"__exitcall_mhi_mbim_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author351, !4, !"__UNIQUE_ID_author351", i1 false, i1 false}
!4 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 656, i32 1}
!5 = !{ptr @__UNIQUE_ID_description352, !6, !"__UNIQUE_ID_description352", i1 false, i1 false}
!6 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 657, i32 1}
!7 = !{ptr @__UNIQUE_ID_file353, !8, !"__UNIQUE_ID_file353", i1 false, i1 false}
!8 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 658, i32 1}
!9 = !{ptr @__UNIQUE_ID_license354, !8, !"__UNIQUE_ID_license354", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 649, i32 11}
!12 = !{ptr @mhi_mbim_driver, !13, !"mhi_mbim_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 642, i32 26}
!14 = !{ptr @mhi_mbim_id_table, !15, !"mhi_mbim_id_table", i1 false, i1 false}
!15 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 635, i32 35}
!16 = !{ptr @mhi_mbim_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 604, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mhi_mbim_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 609, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mhi_mbim_probe.__key.4, !20, !"__key", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 403, i32 3}
!26 = !{ptr @mhi_mbim_wwan_ops, !27, !"mhi_mbim_wwan_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 587, i32 30}
!28 = !{ptr @mhi_mbim_ndo, !29, !"mhi_mbim_ndo", i1 false, i1 false}
!29 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 529, i32 36}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 166, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mhi_mbim_ndo_xmit._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mhi_mbim_ndo_xmit._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mhi_mbim_newlink.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 545, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mhi_mbim_newlink.__key.11, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 546, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 88, i32 2}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 250, i32 3}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mhi_mbim_rx._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mhi_mbim_rx._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 263, i32 4}
!61 = !{ptr @mhi_mbim_rx._entry.19, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mhi_mbim_rx._entry_ptr.21, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 271, i32 4}
!65 = !{ptr @mhi_mbim_rx._entry.22, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mhi_mbim_rx._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 278, i32 4}
!69 = !{ptr @mhi_mbim_rx._entry.25, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mhi_mbim_rx._entry_ptr.27, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 288, i32 4}
!73 = !{ptr @mhi_mbim_rx._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mhi_mbim_rx._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 322, i32 5}
!77 = !{ptr @mhi_mbim_rx._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mhi_mbim_rx._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 189, i32 3}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mbim_rx_verify_nth16._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @mbim_rx_verify_nth16._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 196, i32 3}
!86 = !{ptr @mbim_rx_verify_nth16._entry.36, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @mbim_rx_verify_nth16._entry_ptr.38, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 204, i32 3}
!90 = !{ptr @mbim_rx_verify_nth16._entry.39, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mbim_rx_verify_nth16._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 212, i32 3}
!94 = !{ptr @mbim_rx_verify_nth16._entry.42, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mbim_rx_verify_nth16._entry_ptr.44, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 225, i32 3}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mbim_rx_verify_ndp16._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @mbim_rx_verify_ndp16._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wwan/mhi_wwan_mbim.c", i32 236, i32 3}
!103 = !{ptr @mbim_rx_verify_ndp16._entry.47, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @mbim_rx_verify_ndp16._entry_ptr.49, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{!"sp"}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!116 = !{i64 2150078446}
!117 = !{!"branch_weights", i32 1, i32 6000, i32 1, i32 1}
!118 = !{!"auto-init"}
!119 = !{i64 2149453325}
!120 = !{i64 2149453591}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 2150419691}
!124 = !{i64 2150077796}
!125 = !{i64 2149970128}
!126 = !{i64 2149975060}
!127 = !{i64 2149996772}
!128 = !{i64 2150001664}
!129 = !{i64 2150078121}
!130 = !{i64 626564, i64 626625}
!131 = !{i64 629296}
!132 = !{i64 629581}
!133 = !{i64 2155182525}
!134 = !{i64 2155182367}
!135 = !{i64 2155182695}
