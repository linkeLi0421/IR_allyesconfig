; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-main.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xgbe_prv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, [48 x i8], %struct.xgbe_hw_if, %struct.xgbe_phy_if, %struct.xgbe_desc_if, %struct.xgbe_i2c_if, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, [16 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [40 x i8], [256 x i32], i32, i16, [6 x i8], i64, %struct.napi_struct, %struct.xgbe_mmc_stats, %struct.xgbe_ext_stats, [128 x i32], ptr, i32, ptr, i32, %struct.spinlock, %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, %struct.cyclecounter, %struct.timecounter, i32, %struct.work_struct, ptr, i64, ptr, ptr, [16 x i32], [8 x i32], [16 x i32], i32, i8, %struct.xgbe_hw_features, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, %struct.xgbe_phy, i32, i32, %struct.completion, i32, [48 x i8], ptr, i32, %struct.work_struct, i32, i32, %struct.mutex, i32, i32, i32, i32, %struct.work_struct, i32, i32, i32, i32, i32, i32, %struct.xgbe_i2c, %struct.mutex, %struct.completion, [48 x i8], i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, i32, i32, i32, i32, i8, i8 }
%struct.xgbe_hw_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_phy_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xgbe_phy_impl_if }
%struct.xgbe_phy_impl_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_desc_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_i2c_if = type { ptr, ptr, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.xgbe_mmc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xgbe_ext_stats = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.xgbe_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xgbe_phy = type { %struct.ethtool_link_ksettings, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.xgbe_i2c = type { i32, i32, i32, i32, %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.127, i32 }
%union.anon.127 = type { ptr }
%struct.xgbe_version_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author351 = internal constant [55 x i8] c"amd_xgbe.author=Tom Lendacky <thomas.lendacky@amd.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [53 x i8] c"amd_xgbe.file=drivers/net/ethernet/amd/xgbe/amd-xgbe\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [30 x i8] c"amd_xgbe.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description354 = internal constant [52 x i8] c"amd_xgbe.description=AMD 10 Gigabit Ethernet Driver\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"amd_xgbe.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype355 = internal constant [28 x i8] c"amd_xgbe.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug356 = internal constant [61 x i8] c"amd_xgbe.parm=debug: Network interface message level setting\00", section ".modinfo", align 1
@xgbe_alloc_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 180, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"alloc_etherdev_mq failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgbe_alloc_pdata\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-main.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgbe_alloc_pdata._entry_ptr = internal global ptr @xgbe_alloc_pdata._entry, section ".printk_index", align 4
@xgbe_alloc_pdata.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pdata->lock\00", [19 x i8] zeroinitializer }, align 32
@xgbe_alloc_pdata.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pdata->xpcs_lock\00", [46 x i8] zeroinitializer }, align 32
@xgbe_alloc_pdata.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pdata->rss_mutex\00", [46 x i8] zeroinitializer }, align 32
@xgbe_alloc_pdata.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&pdata->tstamp_lock\00", [44 x i8] zeroinitializer }, align 32
@xgbe_alloc_pdata.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pdata->i2c_mutex\00", [46 x i8] zeroinitializer }, align 32
@xgbe_set_counts.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xgbe_set_counts\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TX/RX DMA channel count = %u/%u\0A\00", [63 x i8] zeroinitializer }, align 32
@xgbe_set_counts.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TX/RX hardware queue count = %u/%u\0A\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xgbe_config_netdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"software reset failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgbe_config_netdev\00", [45 x i8] zeroinitializer }, align 32
@xgbe_config_netdev._entry_ptr = internal global ptr @xgbe_config_netdev._entry, section ".printk_index", align 4
@xgbe_config_netdev._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 294, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dma_set_mask_and_coherent failed\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_config_netdev._entry_ptr.22 = internal global ptr @xgbe_config_netdev._entry.20, section ".printk_index", align 4
@xgbe_config_netdev.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.2, ptr @.str.23, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"adjusted TX/RX DMA channel count = %u/%u\0A\00", [54 x i8] zeroinitializer }, align 32
@xgbe_config_netdev._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.2, i32 398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net device registration failed\0A\00", [32 x i8] zeroinitializer }, align 32
@xgbe_config_netdev._entry_ptr.26 = internal global ptr @xgbe_config_netdev._entry.24, section ".printk_index", align 4
@xgbe_config_netdev.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.2, ptr @.str.27, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%u Tx software queues\0A\00", [41 x i8] zeroinitializer }, align 32
@xgbe_config_netdev.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.2, ptr @.str.28, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%u Rx software queues\0A\00", [41 x i8] zeroinitializer }, align 32
@xgbe_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @xgbe_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_amd_xgbe__380_489_xgbe_mod_init6 = internal global ptr @xgbe_mod_init, section ".initcall6.init", align 4
@__exitcall_xgbe_mod_exit = internal global ptr @xgbe_mod_exit, section ".exitcall.exit", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 132, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 180, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 188, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 189, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 190, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 191, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 192, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 255, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 257, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 283, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 294, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 319, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 398, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 407, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 409, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"xgbe_netdev_notifier\00", align 1
@___asan_gen_.124 = private constant [45 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-main.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 451, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 87, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_debug356, ptr @__UNIQUE_ID_debugtype355, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_xgbe_mod_exit, ptr @__initcall__kmod_amd_xgbe__380_489_xgbe_mod_init6, ptr @__param_debug, ptr @xgbe_alloc_pdata._entry, ptr @xgbe_alloc_pdata._entry_ptr, ptr @xgbe_config_netdev._entry, ptr @xgbe_config_netdev._entry.20, ptr @xgbe_config_netdev._entry.24, ptr @xgbe_config_netdev._entry_ptr, ptr @xgbe_config_netdev._entry_ptr.22, ptr @xgbe_config_netdev._entry_ptr.26, ptr @xgbe_mod_exit, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xgbe_alloc_pdata.__key, ptr @.str.5, ptr @xgbe_alloc_pdata.__key.6, ptr @.str.7, ptr @xgbe_alloc_pdata.__key.8, ptr @.str.9, ptr @xgbe_alloc_pdata.__key.10, ptr @.str.11, ptr @xgbe_alloc_pdata.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @xgbe_netdev_notifier, ptr @init_completion.__key, ptr @.str.29], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_alloc_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_alloc_pdata.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_alloc_pdata.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_alloc_pdata.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_alloc_pdata.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_alloc_pdata.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_config_netdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_config_netdev._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_config_netdev._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xgbe_alloc_pdata(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 5680, i32 noundef 16, i32 noundef 16) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %add.ptr.i, align 8
  %dev5 = getelementptr i8, ptr %call, i32 2320
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev5, align 8
  %lock = getelementptr i8, ptr %call, i32 2388
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @xgbe_alloc_pdata.__key, i16 noundef signext 3) #5
  %xpcs_lock = getelementptr i8, ptr %call, i32 2432
  tail call void @__raw_spin_lock_init(ptr noundef %xpcs_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @xgbe_alloc_pdata.__key.6, i16 noundef signext 3) #5
  %rss_mutex = getelementptr i8, ptr %call, i32 2496
  tail call void @__mutex_init(ptr noundef %rss_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @xgbe_alloc_pdata.__key.8) #5
  %tstamp_lock = getelementptr i8, ptr %call, i32 6416
  tail call void @__raw_spin_lock_init(ptr noundef %tstamp_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @xgbe_alloc_pdata.__key.10, i16 noundef signext 3) #5
  %i2c_mutex = getelementptr i8, ptr %call, i32 7656
  tail call void @__mutex_init(ptr noundef %i2c_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @xgbe_alloc_pdata.__key.12) #5
  %i2c_complete = getelementptr i8, ptr %call, i32 7748
  %3 = ptrtoint ptr %i2c_complete to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %i2c_complete, align 4
  %wait.i = getelementptr i8, ptr %call, i32 7752
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #5
  %mdio_complete = getelementptr i8, ptr %call, i32 7268
  %4 = ptrtoint ptr %mdio_complete to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mdio_complete, align 4
  %wait.i44 = getelementptr i8, ptr %call, i32 7272
  tail call void @__init_swait_queue_head(ptr noundef %wait.i44, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #5
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %cmp1.i = icmp ugt i32 %5, 31
  br i1 %cmp1.i, label %if.end.netif_msg_init.exit_crit_edge, label %if.end.i

if.end.netif_msg_init.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp eq i32 %5, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %notmask.i = shl nsw i32 -1, %5
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 52, %if.end.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call, i32 7116
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %msg_enable, align 4
  %dev_state = getelementptr i8, ptr %call, i32 2588
  tail call void @_set_bit(i32 noundef 0, ptr noundef %dev_state) #5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %dev_state) #5
  br label %cleanup

cleanup:                                          ; preds = %netif_msg_init.exit, %do.end
  %retval.0 = phi ptr [ %add.ptr.i, %netif_msg_init.exit ], [ inttoptr (i32 -12 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_free_pdata(ptr nocapture noundef readonly %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  tail call void @free_netdev(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_set_counts(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_if.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51
  tail call void @xgbe_init_function_ptrs_dev(ptr noundef %hw_if.i) #5
  %phy_if.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52
  tail call void @xgbe_init_function_ptrs_phy(ptr noundef %phy_if.i) #5
  %i2c_if.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54
  tail call void @xgbe_init_function_ptrs_i2c(ptr noundef %i2c_if.i) #5
  %desc_if.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 53
  tail call void @xgbe_init_function_ptrs_desc(ptr noundef %desc_if.i) #5
  %vdata.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %0 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdata.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %phy_if.i) #5
  tail call void @xgbe_get_all_hw_features(ptr noundef %pdata) #5
  %tx_max_channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 63
  %4 = ptrtoint ptr %tx_max_channel_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_max_channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tx_ch_cnt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 31
  %6 = ptrtoint ptr %tx_ch_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_ch_cnt, align 4
  %8 = ptrtoint ptr %tx_max_channel_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_max_channel_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_max_channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 64
  %9 = ptrtoint ptr %rx_max_channel_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_max_channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rx_ch_cnt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 30
  %11 = ptrtoint ptr %rx_ch_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_ch_cnt, align 8
  %13 = ptrtoint ptr %rx_max_channel_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rx_max_channel_count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %tx_max_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 72
  %14 = ptrtoint ptr %tx_max_q_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_max_q_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %tx_q_cnt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 29
  %16 = ptrtoint ptr %tx_q_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_q_cnt, align 4
  %18 = ptrtoint ptr %tx_max_q_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_max_q_count, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %rx_max_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 73
  %19 = ptrtoint ptr %rx_max_q_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_max_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not = icmp eq i32 %20, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %rx_q_cnt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 28
  %21 = ptrtoint ptr %rx_q_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_q_cnt, align 8
  %23 = ptrtoint ptr %rx_max_q_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx_max_q_count, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %24 = load volatile i32, ptr @__num_online_cpus, align 4
  %tx_ch_cnt18 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 31
  %25 = ptrtoint ptr %tx_ch_cnt18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_ch_cnt18, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %26)
  %tx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 66
  %28 = ptrtoint ptr %tx_max_channel_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_max_channel_count, align 8
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %29)
  %31 = ptrtoint ptr %tx_max_q_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_max_q_count, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %30, i32 %32)
  %34 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tx_ring_count, align 4
  %tx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %35 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %tx_q_count, align 4
  %call.i.i.i154 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %36 = load volatile i32, ptr @__num_online_cpus, align 4
  %rx_ch_cnt40 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 30
  %37 = ptrtoint ptr %rx_ch_cnt40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_ch_cnt40, align 8
  %39 = tail call i32 @llvm.umin.i32(i32 %36, i32 %38)
  %rx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 68
  %40 = ptrtoint ptr %rx_max_channel_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_max_channel_count, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %39, i32 %41)
  %43 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rx_ring_count, align 4
  %rx_q_cnt57 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 28
  %44 = ptrtoint ptr %rx_q_cnt57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_q_cnt57, align 8
  %46 = ptrtoint ptr %rx_max_q_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_max_q_count, align 8
  %48 = tail call i32 @llvm.umin.i32(i32 %45, i32 %47)
  %rx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 75
  %49 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %rx_q_count, align 8
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %50 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_enable, align 4
  %and = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  br i1 %tobool65.not, label %if.end16.if.end94_crit_edge, label %do.body

if.end16.if.end94_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

do.body:                                          ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_set_counts.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_set_counts, %if.then72)) #5
          to label %do.body76 [label %if.then72], !srcloc !86

if.then72:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  %54 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_ring_count, align 4
  %56 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_ring_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_set_counts.__UNIQUE_ID_ddebug369, ptr noundef %53, ptr noundef nonnull @.str.16, i32 noundef %55, i32 noundef %57) #5
  br label %do.body76

do.body76:                                        ; preds = %if.then72, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_set_counts.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_set_counts, %if.then88)) #5
          to label %if.end94 [label %if.then88], !srcloc !86

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  %dev89 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %58 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev89, align 8
  %60 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_q_count, align 4
  %62 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_q_count, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_set_counts.__UNIQUE_ID_ddebug370, ptr noundef %59, ptr noundef nonnull @.str.17, i32 noundef %61, i32 noundef %63) #5
  br label %if.end94

if.end94:                                         ; preds = %if.then88, %do.body76, %if.end16.if.end94_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_get_all_hw_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgbe_config_netdev(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %dev2 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %dev_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 42
  %4 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_irq, align 8
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq, align 4
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %7 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xgmac_regs, align 4
  %9 = ptrtoint ptr %8 to i32
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %base_addr, align 32
  %mac_addr = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 103
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %tx_sec_period = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 30
  %12 = ptrtoint ptr %tx_sec_period to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tx_sec_period, align 8
  %13 = load volatile i32, ptr @jiffies, align 128
  %tx_ded_period = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 31
  %14 = ptrtoint ptr %tx_ded_period to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_ded_period, align 4
  %15 = load volatile i32, ptr @jiffies, align 128
  %rx_sec_period = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 32
  %16 = ptrtoint ptr %rx_sec_period to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rx_sec_period, align 8
  %17 = load volatile i32, ptr @jiffies, align 128
  %rx_ded_period = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 33
  %18 = ptrtoint ptr %rx_ded_period to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rx_ded_period, align 4
  %19 = load volatile i32, ptr @jiffies, align 128
  %desc_sec_period = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 34
  %20 = ptrtoint ptr %desc_sec_period to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %desc_sec_period, align 8
  %21 = load volatile i32, ptr @jiffies, align 128
  %desc_ded_period = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 35
  %22 = ptrtoint ptr %desc_ded_period to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %desc_ded_period, align 4
  %exit = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 27
  %23 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %exit, align 4
  %call = tail call i32 %24(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %blen.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 76
  %25 = ptrtoint ptr %blen.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 64, ptr %blen.i, align 4
  %pbl.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 77
  %26 = ptrtoint ptr %pbl.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 128, ptr %pbl.i, align 8
  %aal.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 78
  %27 = ptrtoint ptr %aal.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %aal.i, align 4
  %rd_osr_limit.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 79
  %28 = ptrtoint ptr %rd_osr_limit.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %rd_osr_limit.i, align 8
  %wr_osr_limit.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 80
  %29 = ptrtoint ptr %wr_osr_limit.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %wr_osr_limit.i, align 4
  %tx_sf_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 81
  %30 = ptrtoint ptr %tx_sf_mode.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %tx_sf_mode.i, align 8
  %tx_threshold.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 82
  %31 = ptrtoint ptr %tx_threshold.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tx_threshold.i, align 4
  %tx_osp_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 83
  %32 = ptrtoint ptr %tx_osp_mode.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %tx_osp_mode.i, align 8
  %rx_sf_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 85
  %33 = ptrtoint ptr %rx_sf_mode.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %rx_sf_mode.i, align 8
  %rx_threshold.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 86
  %34 = ptrtoint ptr %rx_threshold.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rx_threshold.i, align 4
  %pause_autoneg.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 94
  %35 = ptrtoint ptr %pause_autoneg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %pause_autoneg.i, align 4
  %tx_pause.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 95
  %36 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %tx_pause.i, align 8
  %rx_pause.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 96
  %37 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %rx_pause.i, align 4
  %phy_speed.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 137
  %38 = ptrtoint ptr %phy_speed.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %phy_speed.i, align 8
  %power_down.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 133
  %39 = ptrtoint ptr %power_down.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %power_down.i, align 8
  %dma_width = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 19
  %40 = ptrtoint ptr %dma_width to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %41)
  %cmp = icmp eq i32 %41, 64
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sh_prom = zext i32 %41 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.end.cond.end_crit_edge ]
  %call.i = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end11, label %do.end10

do.end10:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end11:                                         ; preds = %cond.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef %cond) #5
  %tx_max_fifo_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 84
  %42 = ptrtoint ptr %tx_max_fifo_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_max_fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool12.not = icmp eq i32 %43, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %tx_fifo_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 17
  %44 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_fifo_size, align 4
  %46 = ptrtoint ptr %tx_max_fifo_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tx_max_fifo_size, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %rx_max_fifo_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 87
  %47 = ptrtoint ptr %rx_max_fifo_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_max_fifo_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool17.not = icmp eq i32 %48, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.do.end24_crit_edge

if.end16.do.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %rx_fifo_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 16
  %49 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_fifo_size, align 8
  %51 = ptrtoint ptr %rx_max_fifo_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %rx_max_fifo_size, align 8
  br label %do.end24

do.end24:                                         ; preds = %if.then18, %if.end16.do.end24_crit_edge
  %tx_desc_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 67
  %52 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 512, ptr %tx_desc_count, align 8
  %rx_desc_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 69
  %53 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 512, ptr %rx_desc_count, align 8
  %channel_irq_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 48
  %54 = ptrtoint ptr %channel_irq_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %channel_irq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool28.not = icmp eq i32 %55, 0
  br i1 %tobool28.not, label %do.end24.if.end61_crit_edge, label %if.then29

do.end24.if.end61_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then29:                                        ; preds = %do.end24
  %tx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 66
  %56 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_ring_count, align 4
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 %55)
  %59 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tx_ring_count, align 4
  %rx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 68
  %60 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_ring_count, align 4
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 %55)
  %63 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %rx_ring_count, align 4
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %64 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable, align 4
  %and = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %if.then29.if.end61_crit_edge, label %do.body47

if.then29.if.end61_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

do.body47:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_netdev.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_netdev, %if.then53)) #5
          to label %if.end61 [label %if.then53], !srcloc !86

if.then53:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev2, align 8
  %68 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_ring_count, align 4
  %70 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_ring_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_config_netdev.__UNIQUE_ID_ddebug377, ptr noundef %67, ptr noundef nonnull @.str.23, i32 noundef %69, i32 noundef %71) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then53, %do.body47, %if.then29.if.end61_crit_edge, %do.end24.if.end61_crit_edge
  %rss_key = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99
  tail call void @netdev_rss_key_fill(ptr noundef %rss_key, i32 noundef 40) #5
  %rss_options = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 101
  %72 = ptrtoint ptr %rss_options to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rss_options, align 8
  %or79 = or i32 %73, 14
  store i32 %or79, ptr %rss_options, align 8
  %vdata = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %74 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vdata, align 4
  %an_cdr_workaround = getelementptr inbounds %struct.xgbe_version_data, ptr %75, i32 0, i32 11
  %76 = ptrtoint ptr %an_cdr_workaround to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %an_cdr_workaround, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool82 = icmp ne i32 %77, 0
  %debugfs_an_cdr_workaround = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 179
  %frombool83 = zext i1 %tobool82 to i8
  %78 = ptrtoint ptr %debugfs_an_cdr_workaround to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %frombool83, ptr %debugfs_an_cdr_workaround, align 4
  %phy_if = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52
  %79 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %phy_if, align 4
  %call84 = tail call i32 %80(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end87:                                         ; preds = %if.end61
  %call88 = tail call ptr @xgbe_get_netdev_ops() #5
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %81 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call88, ptr %netdev_ops, align 8
  %call89 = tail call ptr @xgbe_get_ethtool_ops() #5
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %82 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call89, ptr %ethtool_ops, align 16
  %call90 = tail call ptr @xgbe_get_dcbnl_ops() #5
  %dcbnl_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 139
  %83 = ptrtoint ptr %dcbnl_ops to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call90, ptr %dcbnl_ops, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 24
  %84 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 1099512759187, ptr %hw_features, align 8
  %rss = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 24
  %85 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool92.not = icmp eq i32 %86, 0
  %spec.store.select = select i1 %tobool92.not, i64 1099512759187, i64 1649268573075
  %87 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %spec.store.select, ptr %hw_features, align 8
  %vxn = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 15
  %88 = ptrtoint ptr %vxn to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vxn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool98.not = icmp eq i32 %89, 0
  br i1 %tobool98.not, label %if.end87.if.end103_crit_edge, label %if.then99

if.end87.if.end103_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then99:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 27
  %90 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 1099714084883, ptr %hw_enc_features, align 16
  %or101 = or i64 %spec.store.select, 201326592
  %91 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %or101, ptr %hw_features, align 8
  %call102 = tail call ptr @xgbe_get_udp_tunnel_info() #5
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 152
  %92 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call102, ptr %udp_tunnel_nic_info, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %if.end87.if.end103_crit_edge
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 26
  %93 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %vlan_features, align 8
  %or104 = or i64 %94, 1114131
  store i64 %or104, ptr %vlan_features, align 8
  %95 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %97 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %features, align 16
  %or106 = or i64 %98, %96
  store i64 %or106, ptr %features, align 16
  %netdev_features = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 104
  %99 = ptrtoint ptr %netdev_features to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %or106, ptr %netdev_features, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %100 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %priv_flags, align 16
  %or108 = or i64 %101, 4096
  store i64 %or108, ptr %priv_flags, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 30
  %102 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 31
  %103 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 9000, ptr %max_mtu, align 4
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 115
  %104 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %watchdog_timeo, align 4
  tail call void @xgbe_init_rx_coalesce(ptr noundef %pdata) #5
  tail call void @xgbe_init_tx_coalesce(ptr noundef %pdata) #5
  tail call void @netif_carrier_off(ptr noundef %1) #5
  %call109 = tail call i32 @register_netdev(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end115, label %do.end114

do.end114:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end115:                                        ; preds = %if.end103
  tail call void @xgbe_ptp_register(ptr noundef %pdata) #5
  tail call void @xgbe_debugfs_init(ptr noundef %pdata) #5
  %msg_enable117 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %105 = ptrtoint ptr %msg_enable117 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %msg_enable117, align 4
  %and118 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end115.do.body142_crit_edge, label %do.body121

if.end115.do.body142_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body142

do.body121:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_netdev.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_netdev, %if.then133)) #5
          to label %do.body142 [label %if.then133], !srcloc !86

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdata, align 8
  %tx_ring_count135 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 66
  %109 = ptrtoint ptr %tx_ring_count135 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_ring_count135, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_config_netdev.__UNIQUE_ID_ddebug378, ptr noundef %108, ptr noundef nonnull @.str.27, i32 noundef %110) #5
  br label %do.body142

do.body142:                                       ; preds = %if.then133, %do.body121, %if.end115.do.body142_crit_edge
  %111 = ptrtoint ptr %msg_enable117 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %msg_enable117, align 4
  %and144 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body142.cleanup_crit_edge, label %do.body147

do.body142.cleanup_crit_edge:                     ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body147:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_netdev.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_netdev, %if.then159)) #5
          to label %cleanup [label %if.then159], !srcloc !86

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #7
  %113 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdata, align 8
  %rx_ring_count161 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 68
  %115 = ptrtoint ptr %rx_ring_count161 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_ring_count161, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_config_netdev.__UNIQUE_ID_ddebug379, ptr noundef %114, ptr noundef nonnull @.str.28, i32 noundef %116) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then159, %do.body147, %do.body142.cleanup_crit_edge, %do.end114, %if.end61.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %do.end10 ], [ %call109, %do.end114 ], [ %call84, %if.end61.cleanup_crit_edge ], [ 0, %if.then159 ], [ 0, %do.body142.cleanup_crit_edge ], [ 0, %do.body147 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xgbe_get_netdev_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xgbe_get_ethtool_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xgbe_get_dcbnl_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xgbe_get_udp_tunnel_info() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_init_rx_coalesce(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_init_tx_coalesce(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_ptp_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_debugfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_deconfig_netdev(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  tail call void @xgbe_debugfs_exit(ptr noundef %pdata) #5
  tail call void @xgbe_ptp_unregister(ptr noundef %pdata) #5
  tail call void @unregister_netdev(ptr noundef %1) #5
  %phy_exit = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 1
  %2 = ptrtoint ptr %phy_exit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_exit, align 4
  tail call void %3(ptr noundef %pdata) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_debugfs_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_ptp_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_mod_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xgbe_pci_exit() #5
  tail call void @xgbe_platform_exit() #5
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @xgbe_netdev_notifier) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_pci_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_platform_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_mod_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @xgbe_netdev_notifier) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xgbe_platform_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_platform_init_crit_edge

if.end.err_platform_init_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_platform_init

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @xgbe_pci_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %err_pci_init

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_pci_init:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xgbe_platform_exit() #5
  br label %err_platform_init

err_platform_init:                                ; preds = %err_pci_init, %if.end.err_platform_init_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_platform_init_crit_edge ], [ %call5, %err_pci_init ]
  %call9 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @xgbe_netdev_notifier) #5
  br label %cleanup

cleanup:                                          ; preds = %err_platform_init, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_platform_init ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_init_function_ptrs_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_init_function_ptrs_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_init_function_ptrs_i2c(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_init_function_ptrs_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_netdev_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %call2 = tail call ptr @xgbe_get_netdev_ops() #5
  %cmp.not = icmp eq ptr %3, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %event)
  %cond = icmp eq i32 %event, 11
  %or.cond = and i1 %cond, %cmp.not
  br i1 %or.cond, label %sw.bb, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @xgbe_debugfs_rename(ptr noundef %add.ptr.i) #5
  br label %out

out:                                              ; preds = %sw.bb, %entry.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_debugfs_rename(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgbe_platform_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgbe_pci_init() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !69, !70, !72, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__UNIQUE_ID_author351, !1, !"__UNIQUE_ID_author351", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 128, i32 1}
!2 = !{ptr @__UNIQUE_ID_file352, !3, !"__UNIQUE_ID_file352", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 129, i32 1}
!4 = !{ptr @__UNIQUE_ID_license353, !3, !"__UNIQUE_ID_license353", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description354, !6, !"__UNIQUE_ID_description354", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 130, i32 1}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 133, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype355, !8, !"__UNIQUE_ID_debugtype355", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug356, !11, !"__UNIQUE_ID_debug356", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 134, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 180, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @xgbe_alloc_pdata._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @xgbe_alloc_pdata._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @xgbe_alloc_pdata.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 188, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @xgbe_alloc_pdata.__key.6, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 189, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @xgbe_alloc_pdata.__key.8, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 190, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @xgbe_alloc_pdata.__key.10, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 191, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @xgbe_alloc_pdata.__key.12, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 192, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 255, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @xgbe_set_counts.__UNIQUE_ID_ddebug369, !36, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 257, i32 3}
!42 = !{ptr @xgbe_set_counts.__UNIQUE_ID_ddebug370, !41, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 283, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @xgbe_config_netdev._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @xgbe_config_netdev._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 294, i32 3}
!50 = !{ptr @xgbe_config_netdev._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @xgbe_config_netdev._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 319, i32 4}
!54 = !{ptr @xgbe_config_netdev.__UNIQUE_ID_ddebug377, !53, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 398, i32 3}
!57 = !{ptr @xgbe_config_netdev._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @xgbe_config_netdev._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 407, i32 2}
!61 = !{ptr @xgbe_config_netdev.__UNIQUE_ID_ddebug378, !60, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 409, i32 2}
!64 = !{ptr @xgbe_config_netdev.__UNIQUE_ID_ddebug379, !63, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!65 = !{ptr @__initcall__kmod_amd_xgbe__380_489_xgbe_mod_init6, !66, !"__initcall__kmod_amd_xgbe__380_489_xgbe_mod_init6", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 489, i32 1}
!67 = !{ptr @__exitcall_xgbe_mod_exit, !68, !"__exitcall_xgbe_mod_exit", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 490, i32 1}
!69 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!70 = !{ptr @debug, !71, !"debug", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 132, i32 12}
!72 = !{ptr @init_completion.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../include/linux/completion.h", i32 87, i32 2}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @xgbe_netdev_notifier, !76, !"xgbe_netdev_notifier", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-main.c", i32 451, i32 30}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2148967713, i64 2148967718, i64 2148967731, i64 2148967775, i64 2148967809, i64 2148967830}
