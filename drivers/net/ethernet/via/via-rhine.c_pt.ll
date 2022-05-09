; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/via/via-rhine.c_pt.bc'
source_filename = "../drivers/net/ethernet/via/via-rhine.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tx_desc = type { i32, i32, i32, i32 }
%struct.rhine_private = type { [128 x i32], ptr, ptr, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], ptr, i32, i32, i32, ptr, %struct.napi_struct, %struct.spinlock, %struct.mutex, i8, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, %struct.rhine_stats, %struct.rhine_stats, i8, i8, i8, %struct.mii_if_info, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.rhine_stats = type { i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
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
%struct.rx_desc = type { i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rhine_skb_dma = type { ptr, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }

@__UNIQUE_ID_author343 = internal constant [50 x i8] c"via_rhine.author=Donald Becker <becker@scyld.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [57 x i8] c"via_rhine.description=VIA Rhine PCI Fast Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [50 x i8] c"via_rhine.file=drivers/net/ethernet/via/via-rhine\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [22 x i8] c"via_rhine.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [16 x i8] c"via_rhine.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype347 = internal constant [29 x i8] c"via_rhine.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [23 x i8] c"via_rhine.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } { i32 1518, [28 x i8] zeroinitializer }, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype348 = internal constant [36 x i8] c"via_rhine.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__param_str_avoid_D3 = internal constant [19 x i8] c"via_rhine.avoid_D3\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@avoid_D3 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_avoid_D3 = internal constant %struct.kernel_param { ptr @__param_str_avoid_D3, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @avoid_D3 } }, section "__param", align 4
@__UNIQUE_ID_avoid_D3type349 = internal constant [33 x i8] c"via_rhine.parmtype=avoid_D3:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug350 = internal constant [51 x i8] c"via_rhine.parm=debug:VIA Rhine debug message flags\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak351 = internal constant [80 x i8] c"via_rhine.parm=rx_copybreak:VIA Rhine copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@__UNIQUE_ID_avoid_D3352 = internal constant [77 x i8] c"via_rhine.parm=avoid_D3:Avoid power state D3 (work-around for broken BIOSes)\00", section ".modinfo", align 1
@rhine_driver_platform = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rhine_init_one_platform, ptr @rhine_remove_one_platform, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rhine_of_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rhine_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@rhine_driver_pci = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rhine_pci_tbl, ptr @rhine_init_one_pci, ptr @rhine_remove_one_pci, ptr null, ptr null, ptr @rhine_shutdown_pci, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rhine_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_via_rhine__365_2630_rhine_init6 = internal global ptr @rhine_init, section ".initcall6.init", align 4
@__exitcall_rhine_cleanup = internal global ptr @rhine_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"via-rhine\00", [22 x i8] zeroinitializer }, align 32
@rhine_of_tbl = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-rhine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vt8500_quirks }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rhine_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rhine_suspend, ptr @rhine_resume, ptr @rhine_suspend, ptr @rhine_resume, ptr @rhine_suspend, ptr @rhine_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rhine_init_one_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 908, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"32-bit DMA addresses not supported by the card!?\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rhine_init_one_common\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/via/via-rhine.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rhine_init_one_common._entry_ptr = internal global ptr @rhine_init_one_common._entry, section ".printk_index", align 4
@rhine_init_one_common.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&rp->tx_stats.syncp)->seq\00", [36 x i8] zeroinitializer }, align 32
@rhine_init_one_common.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&rp->rx_stats.syncp)->seq\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid MAC address: %pM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using random MAC address: %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@rhine_init_one_common.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rp->lock\00", [22 x i8] zeroinitializer }, align 32
@rhine_init_one_common.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rp->task_lock\00", [17 x i8] zeroinitializer }, align 32
@rhine_init_one_common.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&rp->reset_task)\00", [61 x i8] zeroinitializer }, align 32
@rhine_init_one_common.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&rp->slow_event_task)\00", [56 x i8] zeroinitializer }, align 32
@rhine_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @rhine_open, ptr @rhine_close, ptr @rhine_start_tx, ptr null, ptr null, ptr null, ptr @rhine_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rhine_tx_timeout, ptr @rhine_get_stats64, ptr null, ptr null, ptr null, ptr @rhine_vlan_rx_add_vid, ptr @rhine_vlan_rx_kill_vid, ptr @rhine_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr null, ptr null, ptr @rhine_get_wol, ptr @rhine_set_wol, ptr @netdev_get_msglevel, ptr @netdev_set_msglevel, ptr @netdev_nway_reset, ptr @netdev_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_link_ksettings, ptr @netdev_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Rhine\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Rhine II\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Rhine III (Management Adapter)\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rhine III\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VIA %s at %p, %pM, IRQ %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"MII PHY found at address %d, status 0x%04x advertising %04x Link %04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No D3 power state at shutdown\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Magic packet\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Link went up\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Link went down\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unicast packet\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Multicast/broadcast packet\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Woke system up. Reason: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Reset not complete yet. Trying harder.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Reset %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"succeeded\00", [22 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rhine_wait_bit.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"via_rhine\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rhine_wait_bit\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s bit wait (%02x/%02x) cycle count: %04d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@rhine_reload_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016via_rhine: %4d cycles used @ %s:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rhine_reload_eeprom\00", [44 x i8] zeroinitializer }, align 32
@rhine_reload_eeprom._entry_ptr = internal global ptr @rhine_reload_eeprom._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"force_media %d, carrier %d\0A\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCI error\0A\00", [21 x i8] zeroinitializer }, align 32
@rhine_open.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 1, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rhine_open\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s() irq %d\0A\00", [19 x i8] zeroinitializer }, align 32
@rhine_open.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.46, ptr @.str.3, ptr @.str.48, i8 1, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s() Done - status %04x MII status: %04x\0A\00", [54 x i8] zeroinitializer }, align 32
@rhine_interrupt.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 1, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rhine_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Interrupt, status %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Something Wicked happened! %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not allocate DMA memory\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Rx DMA mapping failure\0A\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rhine_close.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 2, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rhine_close\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Shutting down ethercard, status was %04x\0A\00", [54 x i8] zeroinitializer }, align 32
@rhine_start_tx.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 1, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rhine_start_tx\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Transmit frame #%d queued in slot %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Transmit timed out, status %04x, PHY status %04x, resetting...\0A\00", [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Tx still on\0A\00", [19 x i8] zeroinitializer }, align 32
@rhine_rx.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 1, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rhine_rx\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(), entry %d status %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@rhine_rx.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.62, ptr @.str.3, ptr @.str.64, i8 2, i8 0, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s() status %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Oversized Ethernet frame spanned multiple buffers, entry %#x length %d status %08x!\0A\00", [43 x i8] zeroinitializer }, align 32
@rhine_rx.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.62, ptr @.str.3, ptr @.str.66, i8 2, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s() Rx error %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rhine_tx.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 1, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rhine_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Tx scavenge %d status %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@rhine_tx.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.68, ptr @.str.3, ptr @.str.70, i8 1, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Transmit error, Tx status %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@rhine_tx.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.68, ptr @.str.3, ptr @.str.71, i8 1, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"collisions: %1.1x:%1.1x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Abort %08x, frame dropped\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Transmitter underrun, Tx threshold now %02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Tx descriptor write-back race\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unspecified error. Tx threshold now %02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"another error occurred %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@vt8500_quirks = internal global { i32, [28 x i8] } { i32 67, [28 x i8] zeroinitializer }, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@rhine_pci_tbl = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 12355, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 12389, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 12550, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 12371, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rhine_init_one_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 1073, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Insufficient PCI resources, aborting\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rhine_init_one_pci\00", [45 x i8] zeroinitializer }, align 32
@rhine_init_one_pci._entry_ptr = internal global ptr @rhine_init_one_pci._entry, section ".printk_index", align 4
@rhine_init_one_pci._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.3, i32 1091, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ioremap failed for device %s, region 0x%X @ 0x%lX\0A\00", [45 x i8] zeroinitializer }, align 32
@rhine_init_one_pci._entry_ptr.81 = internal global ptr @rhine_init_one_pci._entry.79, section ".printk_index", align 4
@verify_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 688, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MMIO do not match PIO [%02x] (%02x != %02x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"verify_mmio\00", [20 x i8] zeroinitializer }, align 32
@verify_mmio._entry_ptr = internal global ptr @verify_mmio._entry, section ".printk_index", align 4
@rhine_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 2609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014via_rhine: Broken BIOS detected, avoid_D3 enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rhine_init\00", [21 x i8] zeroinitializer }, align 32
@rhine_init._entry_ptr = internal global ptr @rhine_init._entry, section ".printk_index", align 4
@rhine_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.3, i32 2612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016via_rhine: avoid_D3 set\0A\00", [37 x i8] zeroinitializer }, align 32
@rhine_init._entry_ptr.88 = internal global ptr @rhine_init._entry.86, section ".printk_index", align 4
@switch.table.rhine_power_init = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.29, ptr @.str.26, ptr @.str.30, ptr @.str.27, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.28], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 40, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 49, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"avoid_D3\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 56, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant [22 x i8] c"rhine_driver_platform\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2573, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"rhine_driver_pci\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2564, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2577, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [13 x i8] c"rhine_of_tbl\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 284, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant [13 x i8] c"rhine_pm_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2555, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 908, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 929, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 930, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 942, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 944, i32 20 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 952, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 953, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 954, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 955, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"rhine_netdev_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 879, i32 36 }
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2375, i32 33 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 984, i32 10 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 986, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 988, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 990, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 992, i32 19 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1005, i32 9 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1020, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 607, i32 14 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 610, i32 14 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 613, i32 14 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 616, i32 14 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 619, i32 14 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 622, i32 14 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 624, i32 21 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 640, i32 20 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 651, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 534, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 712, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1362, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2199, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1684, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1701, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1893, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1903, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1151, i32 19 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1213, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 326, i32 6 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2412, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1871, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1757, i32 19 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 836, i32 5 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2036, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2048, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2054, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2061, i32 5 }
@___asan_gen_.329 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 271, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1934, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1940, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1963, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 754, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 760, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 765, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 770, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2174, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [14 x i8] c"vt8500_quirks\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 283, i32 12 }
@___asan_gen_.361 = private unnamed_addr constant [14 x i8] c"rhine_pci_tbl\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 271, i32 35 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1073, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1089, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 686, i32 5 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2609, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.401 = private constant [40 x i8] c"../drivers/net/ethernet/via/via-rhine.c\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2612, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant [30 x i8] c"switch.table.rhine_power_init\00", align 1
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_avoid_D3352, ptr @__UNIQUE_ID_avoid_D3type349, ptr @__UNIQUE_ID_debug350, ptr @__UNIQUE_ID_debugtype347, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_rx_copybreak351, ptr @__UNIQUE_ID_rx_copybreaktype348, ptr @__exitcall_rhine_cleanup, ptr @__initcall__kmod_via_rhine__365_2630_rhine_init6, ptr @__param_avoid_D3, ptr @__param_debug, ptr @__param_rx_copybreak, ptr @rhine_cleanup, ptr @rhine_init._entry, ptr @rhine_init._entry.86, ptr @rhine_init._entry_ptr, ptr @rhine_init._entry_ptr.88, ptr @rhine_init_one_common._entry, ptr @rhine_init_one_common._entry_ptr, ptr @rhine_init_one_pci._entry, ptr @rhine_init_one_pci._entry.79, ptr @rhine_init_one_pci._entry_ptr, ptr @rhine_init_one_pci._entry_ptr.81, ptr @rhine_reload_eeprom._entry, ptr @rhine_reload_eeprom._entry_ptr, ptr @verify_mmio._entry, ptr @verify_mmio._entry_ptr, ptr @debug, ptr @rx_copybreak, ptr @avoid_D3, ptr @rhine_driver_platform, ptr @rhine_driver_pci, ptr @.str, ptr @rhine_of_tbl, ptr @rhine_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rhine_init_one_common.__key, ptr @.str.6, ptr @rhine_init_one_common.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @rhine_init_one_common.__key.11, ptr @.str.12, ptr @rhine_init_one_common.__key.13, ptr @.str.14, ptr @rhine_init_one_common.__key.15, ptr @.str.16, ptr @rhine_init_one_common.__key.17, ptr @.str.18, ptr @rhine_netdev_ops, ptr @netdev_ethtool_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @vt8500_quirks, ptr @rhine_pci_tbl, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @switch.table.rhine_power_init], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avoid_D3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_driver_platform to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_driver_pci to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_of_tbl to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_init_one_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_init_one_common.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_init_one_common.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_init_one_common.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_init_one_common.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_init_one_common.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_init_one_common.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_reload_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_quirks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_pci_tbl to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_init_one_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_init_one_pci._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhine_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rhine_power_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rhine_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @rhine_driver_platform) #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @rhine_driver_pci) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @avoid_D3, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool2.not = icmp eq i8 %0, 0
  br i1 %tobool2.not, label %entry.if.end9_crit_edge, label %do.end6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #17
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %entry.if.end9_crit_edge
  %call10 = tail call i32 @__pci_register_driver(ptr noundef nonnull @rhine_driver_pci, ptr noundef null, ptr noundef nonnull @.str.37) #14
  %call11 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rhine_driver_platform, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  %or.cond = select i1 %cmp, i1 %cmp12, i1 false
  %retval.0 = select i1 %or.cond, i32 %call10, i32 0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_init_one_platform(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #14
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call7 = tail call i32 @irq_of_parse_and_map(ptr noundef %2, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %5 = ptrtoint ptr %call1 to i32
  %call12 = tail call fastcc i32 @rhine_init_one_common(ptr noundef %dev, i32 noundef %4, i32 noundef %5, ptr noundef %call1, i32 noundef %call7)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then3 ], [ %call12, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_remove_one_platform(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #14
  %base = getelementptr i8, ptr %1, i32 4748
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %3) #14
  tail call void @free_netdev(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhine_init_one_common(ptr noundef %hwdev, i32 noundef %quirks, i32 noundef %pioaddr, ptr noundef %ioaddr, i32 noundef %irq) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = tail call i32 @dma_set_mask(ptr noundef %hwdev, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hwdev, ptr noundef nonnull @.str.1) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @alloc_etherdev_mqs(i32 noundef 2448, i32 noundef 1, i32 noundef 1) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hwdev, ptr %parent, align 8
  %dev7 = getelementptr i8, ptr %call1, i32 4128
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %dev7, align 8
  %quirks8 = getelementptr i8, ptr %call1, i32 4592
  %8 = ptrtoint ptr %quirks8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %quirks, ptr %quirks8, align 8
  %pioaddr9 = getelementptr i8, ptr %call1, i32 4124
  %9 = ptrtoint ptr %pioaddr9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %pioaddr, ptr %pioaddr9, align 4
  %base = getelementptr i8, ptr %call1, i32 4748
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ioaddr, ptr %base, align 4
  %irq10 = getelementptr i8, ptr %call1, i32 4120
  %11 = ptrtoint ptr %irq10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %irq, ptr %irq10, align 8
  %12 = load i32, ptr @debug, align 4
  %13 = add i32 %12, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %13)
  %14 = icmp ult i32 %13, -31
  %notmask.i = shl nsw i32 -1, %12
  %sub.i = xor i32 %notmask.i, -1
  %retval.0.i = select i1 %14, i32 0, i32 %sub.i
  %msg_enable = getelementptr i8, ptr %call1, i32 4588
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %msg_enable, align 4
  %and = and i32 %quirks, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %not.tobool13.not = xor i1 %tobool13.not, true
  %cond = zext i1 %not.tobool13.not to i32
  %syncp = getelementptr i8, ptr %call1, i32 4680
  %dep_map.i = getelementptr i8, ptr %call1, i32 4684
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @rhine_init_one_common.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %16 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %syncp, align 4
  %syncp18 = getelementptr i8, ptr %call1, i32 4632
  %dep_map.i233 = getelementptr i8, ptr %call1, i32 4636
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i233, ptr noundef nonnull @.str.8, ptr noundef nonnull @rhine_init_one_common.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %17 = ptrtoint ptr %syncp18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %syncp18, align 4
  tail call fastcc void @rhine_power_init(ptr noundef nonnull %call1)
  tail call fastcc void @rhine_chip_reset(ptr noundef nonnull %call1) #14
  %18 = ptrtoint ptr %quirks8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks8, align 8
  %and.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.if.end.i_crit_edge, label %if.then.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @msleep(i32 noundef 5) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end4.if.end.i_crit_edge
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 8
  %bus.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp eq ptr %23, @pci_bus_type
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.rhine_hw_init.exit_crit_edge

if.end.i.rhine_hw_init.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_hw_init.exit

if.then2.i:                                       ; preds = %if.end.i
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !243
  tail call void @arm_heavy_mb() #14
  %add.i.i = add i32 %pioaddr, 116
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %26 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 32) #14, !srcloc !244
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then2.i
  %i.039.i.i = phi i32 [ 0, %if.then2.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !246
  %28 = and i8 %27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i, label %for.end.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.039.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end14.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.end14.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %i.039.i.i)
  %cmp9.i.i = icmp ugt i32 %i.039.i.i, 512
  br i1 %cmp9.i.i, label %for.end.i.i.do.end14.i.i_crit_edge, label %for.end.i.i.if.end17.i.i_crit_edge

for.end.i.i.if.end17.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i.i

for.end.i.i.do.end14.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %for.end.i.i.do.end14.i.i_crit_edge, %for.inc.i.i.do.end14.i.i_crit_edge
  %i.038.i.i = phi i32 [ %i.039.i.i, %for.end.i.i.do.end14.i.i_crit_edge ], [ 1024, %for.inc.i.i.do.end14.i.i_crit_edge ]
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %i.038.i.i, ptr noundef nonnull @.str.43, i32 noundef 712) #17
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %do.end14.i.i, %for.end.i.i.if.end17.i.i_crit_edge
  %29 = ptrtoint ptr %quirks8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quirks8, align 8
  %and.i.i.i = and i32 %30, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end17.i.i.enable_mmio.exit.i.i_crit_edge, label %if.then.i.i.i

if.end17.i.i.enable_mmio.exit.i.i_crit_edge:      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %enable_mmio.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end17.i.i
  %and1.i.i.i = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.else.i.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.i.i.i = add i32 %pioaddr, 120
  %and4.i.i.i = and i32 %add.i.i.i, 1048575
  %add5.i.i.i = or i32 %and4.i.i.i, -18874368
  %31 = inttoptr i32 %add5.i.i.i to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %33 = or i8 %32, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %33) #14, !srcloc !244
  br label %enable_mmio.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add13.i.i.i = add i32 %pioaddr, 123
  %and14.i.i.i = and i32 %add13.i.i.i, 1048575
  %add15.i.i.i = or i32 %and14.i.i.i, -18874368
  %34 = inttoptr i32 %add15.i.i.i to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !249
  %36 = or i8 %35, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !250
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %36) #14, !srcloc !244
  br label %enable_mmio.exit.i.i

enable_mmio.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then3.i.i.i, %if.end17.i.i.enable_mmio.exit.i.i_crit_edge
  %37 = ptrtoint ptr %quirks8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quirks8, align 8
  %and19.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %enable_mmio.exit.i.i.rhine_hw_init.exit_crit_edge, label %if.then21.i.i

enable_mmio.exit.i.i.rhine_hw_init.exit_crit_edge: ; preds = %enable_mmio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_hw_init.exit

if.then21.i.i:                                    ; preds = %enable_mmio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i7.i = getelementptr i8, ptr %25, i32 120
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %40 = and i8 %39, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7.i, i8 %40) #14, !srcloc !244
  br label %rhine_hw_init.exit

rhine_hw_init.exit:                               ; preds = %if.then21.i.i, %enable_mmio.exit.i.i.rhine_hw_init.exit_crit_edge, %if.end.i.rhine_hw_init.exit_crit_edge
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ioaddr) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %addr, align 1
  %add.ptr22.1 = getelementptr i8, ptr %ioaddr, i32 1
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22.1) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %0, align 1
  %add.ptr22.2 = getelementptr i8, ptr %ioaddr, i32 2
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22.2) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %1, align 1
  %add.ptr22.3 = getelementptr i8, ptr %ioaddr, i32 3
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22.3) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %2, align 1
  %add.ptr22.4 = getelementptr i8, ptr %ioaddr, i32 4
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22.4) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %3, align 1
  %add.ptr22.5 = getelementptr i8, ptr %ioaddr, i32 5
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22.5) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef %call1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #14
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 86
  %53 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_addr, align 64
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %57 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i.not.i = icmp eq i32 %57, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %rhine_hw_init.exit.if.then25_crit_edge

rhine_hw_init.exit.if.then25_crit_edge:           ; preds = %rhine_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

is_valid_ether_addr.exit:                         ; preds = %rhine_hw_init.exit
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %59 to i32
  %or.i.i = or i32 %56, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then25_crit_edge, label %is_valid_ether_addr.exit.if.end28_crit_edge

is_valid_ether_addr.exit.if.end28_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

is_valid_ether_addr.exit.if.then25_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

if.then25:                                        ; preds = %is_valid_ether_addr.exit.if.then25_crit_edge, %rhine_hw_init.exit.if.then25_crit_edge
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %call1, ptr noundef nonnull @.str.9, ptr noundef %54) #17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #14
  %60 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #14
  %61 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %addr.i, align 1
  %63 = and i8 %62, -4
  %64 = or i8 %63, 2
  store i8 %64, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %call1, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #14
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 55
  %65 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #14
  %66 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call1, ptr noundef nonnull @.str.10, ptr noundef %67) #17
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %is_valid_ether_addr.exit.if.end28_crit_edge
  br i1 %tobool13.not, label %if.then30, label %if.end28.do.body34_crit_edge

if.end28.do.body34_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body34

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr31 = getelementptr i8, ptr %ioaddr, i32 108
  %68 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr31) #14, !srcloc !245
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %conv = zext i8 %68 to i32
  br label %do.body34

do.body34:                                        ; preds = %if.then30, %if.end28.do.body34_crit_edge
  %phy_id.0 = phi i32 [ %cond, %if.end28.do.body34_crit_edge ], [ %conv, %if.then30 ]
  %lock = getelementptr i8, ptr %call1, i32 4360
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @rhine_init_one_common.__key.11, i16 noundef signext 3) #14
  %task_lock = getelementptr i8, ptr %call1, i32 4404
  call void @__mutex_init(ptr noundef %task_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @rhine_init_one_common.__key.13) #14
  %reset_task = getelementptr i8, ptr %call1, i32 4544
  call void @__init_work(ptr noundef %reset_task, i32 noundef 0) #14
  %69 = ptrtoint ptr %reset_task to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -64, ptr %reset_task, align 8
  %lockdep_map = getelementptr i8, ptr %call1, i32 4560
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @rhine_init_one_common.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry45 = getelementptr i8, ptr %call1, i32 4548
  %70 = ptrtoint ptr %entry45 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %entry45, ptr %entry45, align 4
  %prev.i = getelementptr i8, ptr %call1, i32 4552
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %entry45, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call1, i32 4556
  %72 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @rhine_reset_task, ptr %func, align 4
  %slow_event_task = getelementptr i8, ptr %call1, i32 4500
  call void @__init_work(ptr noundef %slow_event_task, i32 noundef 0) #14
  %73 = ptrtoint ptr %slow_event_task to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -64, ptr %slow_event_task, align 4
  %lockdep_map55 = getelementptr i8, ptr %call1, i32 4516
  call void @lockdep_init_map_type(ptr noundef %lockdep_map55, ptr noundef nonnull @.str.18, ptr noundef nonnull @rhine_init_one_common.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry57 = getelementptr i8, ptr %call1, i32 4504
  %74 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i234 = getelementptr i8, ptr %call1, i32 4508
  %75 = ptrtoint ptr %prev.i234 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %entry57, ptr %prev.i234, align 4
  %func59 = getelementptr i8, ptr %call1, i32 4512
  %76 = ptrtoint ptr %func59 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @rhine_slow_event_task, ptr %func59, align 4
  %mii_if = getelementptr i8, ptr %call1, i32 4716
  %dev62 = getelementptr i8, ptr %call1, i32 4736
  %77 = ptrtoint ptr %dev62 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call1, ptr %dev62, align 4
  %mdio_read = getelementptr i8, ptr %call1, i32 4740
  %78 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call1, i32 4744
  %79 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call1, i32 4724
  %80 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call1, i32 4728
  %81 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 31, ptr %reg_num_mask, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 16
  %82 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @rhine_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 44
  %83 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 115
  %84 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 200, ptr %watchdog_timeo, align 4
  %napi = getelementptr i8, ptr %call1, i32 4136
  call void @netif_napi_add(ptr noundef %call1, ptr noundef %napi, ptr noundef nonnull @rhine_napipoll, i32 noundef 64) #14
  %85 = ptrtoint ptr %quirks8 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %quirks8, align 8
  %and68 = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body34.if.end71_crit_edge, label %if.then70

do.body34.if.end71_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then70:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  %features = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 23
  %87 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %features, align 16
  %or = or i64 %88, 9
  store i64 %or, ptr %features, align 16
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %do.body34.if.end71_crit_edge
  %89 = ptrtoint ptr %quirks8 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %quirks8, align 8
  %and73 = and i32 %90, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end71.if.end78_crit_edge, label %if.then75

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %features76 = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 23
  %91 = ptrtoint ptr %features76 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %features76, align 16
  %or77 = or i64 %92, 896
  store i64 %or77, ptr %features76, align 16
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end71.if.end78_crit_edge
  %call79 = call i32 @register_netdev(ptr noundef %call1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %err_out_free_netdev

if.end82:                                         ; preds = %if.end78
  %93 = ptrtoint ptr %quirks8 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %quirks8, align 8
  %and84 = and i32 %94, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.else, label %if.end82.if.end99_crit_edge

if.end82.if.end99_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

if.else:                                          ; preds = %if.end82
  %and88 = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.else91, label %if.else.if.end99_crit_edge

if.else.if.end99_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

if.else91:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %and93 = and i32 %94, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  %.str.22..str.21 = select i1 %tobool94.not, ptr @.str.22, ptr @.str.21
  br label %if.end99

if.end99:                                         ; preds = %if.else91, %if.else.if.end99_crit_edge, %if.end82.if.end99_crit_edge
  %name.0 = phi ptr [ @.str.19, %if.end82.if.end99_crit_edge ], [ @.str.20, %if.else.if.end99_crit_edge ], [ %.str.22..str.21, %if.else91 ]
  %95 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_addr, align 64
  %97 = ptrtoint ptr %irq10 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq10, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call1, ptr noundef nonnull @.str.23, ptr noundef nonnull %name.0, ptr noundef %ioaddr, ptr noundef %96, i32 noundef %98) #17
  %driver_data.i = getelementptr inbounds %struct.device, ptr %hwdev, i32 0, i32 8
  %99 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call1, ptr %driver_data.i, align 4
  %call102 = call i32 @mdio_read(ptr noundef %call1, i32 noundef %phy_id.0, i32 noundef 1)
  %call103 = call i32 @mdio_read(ptr noundef %call1, i32 noundef %phy_id.0, i32 noundef 0)
  %conv105 = and i32 %call103, 64511
  call void @mdio_write(ptr noundef %call1, i32 noundef %phy_id.0, i32 noundef 0, i32 noundef %conv105)
  %100 = zext i32 %call102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call102, label %if.then111 [
    i32 65535, label %if.end99.if.end122_crit_edge
    i32 0, label %if.end99.if.end122_crit_edge242
  ]

if.end99.if.end122_crit_edge242:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

if.end99.if.end122_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

if.then111:                                       ; preds = %if.end99
  %call112 = call i32 @mdio_read(ptr noundef %call1, i32 noundef %phy_id.0, i32 noundef 4)
  %advertising = getelementptr i8, ptr %call1, i32 4720
  %101 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call112, ptr %advertising, align 4
  %call116 = call i32 @mdio_read(ptr noundef %call1, i32 noundef %phy_id.0, i32 noundef 5), !range !253
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call1, ptr noundef nonnull @.str.24, i32 noundef %phy_id.0, i32 noundef %call102, i32 noundef %call112, i32 noundef %call116) #17
  %and117 = and i32 %call102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.else120, label %if.then119

if.then119:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #16
  call void @netif_carrier_on(ptr noundef %call1) #14
  br label %if.end122

if.else120:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #16
  call void @netif_carrier_off(ptr noundef %call1) #14
  br label %if.end122

if.end122:                                        ; preds = %if.else120, %if.then119, %if.end99.if.end122_crit_edge, %if.end99.if.end122_crit_edge242
  %102 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %phy_id.0, ptr %mii_if, align 4
  %103 = load i8, ptr @avoid_D3, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool125.not = icmp eq i8 %103, 0
  br i1 %tobool125.not, label %if.end122.cleanup_crit_edge, label %do.body127

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body127:                                       ; preds = %if.end122
  %104 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %msg_enable, align 4
  %and129 = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %do.body127.cleanup_crit_edge, label %if.then131

do.body127.cleanup_crit_edge:                     ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then131:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call1, ptr noundef nonnull @.str.25) #17
  br label %cleanup

err_out_free_netdev:                              ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  call void @free_netdev(ptr noundef %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_netdev, %if.then131, %do.body127.cleanup_crit_edge, %if.end122.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.body127.cleanup_crit_edge ], [ 0, %if.then131 ], [ 0, %if.end122.cleanup_crit_edge ], [ %call, %do.end ], [ %call79, %err_out_free_netdev ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhine_power_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %quirks = getelementptr i8, ptr %dev, i32 4592
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 131
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %5 = and i8 %4, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %5) #14, !srcloc !244
  %add.ptr5 = getelementptr i8, ptr %1, i32 167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 -128) #14, !srcloc !244
  %add.ptr6 = getelementptr i8, ptr %1, i32 164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 -1) #14, !srcloc !244
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 8
  %and8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr11 = getelementptr i8, ptr %1, i32 166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 3) #14, !srcloc !244
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %add.ptr12 = getelementptr i8, ptr %1, i32 168
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %conv14 = zext i8 %8 to i16
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks, align 8
  %and16 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end.if.end25_crit_edge, label %if.then18

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr19 = getelementptr i8, ptr %1, i32 169
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %12 = and i8 %11, 3
  %and22 = zext i8 %12 to i16
  %shl = shl nuw nsw i16 %and22, 8
  %or = or i16 %shl, %conv14
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.end.if.end25_crit_edge
  %wolstat.0 = phi i16 [ %or, %if.then18 ], [ %conv14, %if.end.if.end25_crit_edge ]
  %add.ptr26 = getelementptr i8, ptr %1, i32 172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26, i8 -1) #14, !srcloc !244
  %13 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quirks, align 8
  %and28 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end25.if.end32_crit_edge, label %if.then30

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr31 = getelementptr i8, ptr %1, i32 173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 3) #14, !srcloc !244
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end25.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wolstat.0)
  %tobool33.not = icmp eq i16 %wolstat.0, 0
  br i1 %tobool33.not, label %if.end32.if.end41_crit_edge, label %if.then34

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then34:                                        ; preds = %if.end32
  %conv35 = zext i16 %wolstat.0 to i32
  %15 = add nsw i32 %conv35, -16
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %17 = icmp ult i32 %16, 8
  br i1 %17, label %switch.lookup, label %if.then34.sw.epilog_crit_edge

if.then34.sw.epilog_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.rhine_power_init, i32 0, i32 %16
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then34.sw.epilog_crit_edge
  %reason.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.31, %if.then34.sw.epilog_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull %reason.0) #17
  br label %if.end41

if.end41:                                         ; preds = %sw.epilog, %if.end32.if.end41_crit_edge, %entry.if.end41_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rhine_reset_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %work, i32 -416
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %task_lock = getelementptr i8, ptr %work, i32 -140
  tail call void @mutex_lock_nested(ptr noundef %task_lock, i32 noundef 0) #14
  %task_enable = getelementptr i8, ptr %work, i32 -48
  %2 = ptrtoint ptr %task_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %task_enable, align 8, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end:                                           ; preds = %entry
  %napi = getelementptr i8, ptr %work, i32 -408
  tail call void @napi_disable(ptr noundef %napi) #14
  tail call fastcc void @local_bh_disable() #14
  %4 = tail call i32 @llvm.read_register.i32(metadata !232) #14
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #14
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %8 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13.not.i = icmp eq i32 %9, 0
  br i1 %cmp13.not.i, label %if.end.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.end.netif_tx_disable.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %11, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #14
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %11, i32 %i.014.i, i32 11
  %12 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %7, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %11, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %13 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #14
  %inc.i = add nuw i32 %i.014.i, 1
  %14 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.end.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #14
  tail call fastcc void @local_bh_enable() #14
  %lock = getelementptr i8, ptr %work, i32 -184
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %tx_ring.i = getelementptr i8, ptr %1, i32 2820
  br label %for.body.i18

for.body.i18:                                     ; preds = %if.end16.i.for.body.i18_crit_edge, %netif_tx_disable.exit
  %i.042.i = phi i32 [ 0, %netif_tx_disable.exit ], [ %inc.i19, %if.end16.i.for.body.i18_crit_edge ]
  %18 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx.i = getelementptr %struct.tx_desc, ptr %19, i32 %i.042.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx.i, align 4
  %21 = load ptr, ptr %tx_ring.i, align 4
  %desc_length.i = getelementptr %struct.tx_desc, ptr %21, i32 %i.042.i, i32 1
  %22 = ptrtoint ptr %desc_length.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8445952, ptr %desc_length.i, align 4
  %23 = load ptr, ptr %tx_ring.i, align 4
  %addr.i = getelementptr %struct.tx_desc, ptr %23, i32 %i.042.i, i32 2
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -805249094, ptr %addr.i, align 4
  %arrayidx6.i = getelementptr %struct.rhine_private, ptr %add.ptr.i.i, i32 0, i32 7, i32 %i.042.i
  %25 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %for.body.i18.if.end16.i_crit_edge, label %if.then.i

for.body.i18.if.end16.i_crit_edge:                ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.then.i:                                        ; preds = %for.body.i18
  %arrayidx7.i = getelementptr %struct.rhine_private, ptr %add.ptr.i.i, i32 0, i32 8, i32 %i.042.i
  %27 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool8.not.i = icmp eq i32 %28, 0
  br i1 %tobool8.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then9.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %28, i32 noundef %30, i32 noundef 1, i32 noundef 0) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %if.then.i.if.end.i_crit_edge
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx6.i, align 4
  tail call void @consume_skb(ptr noundef %32) #14
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i, %for.body.i18.if.end16.i_crit_edge
  %33 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx6.i, align 4
  %arrayidx19.i = getelementptr %struct.rhine_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %i.042.i
  %34 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx19.i, align 4
  %inc.i19 = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i19, 64
  br i1 %exitcond.not.i, label %free_tbufs.exit, label %if.end16.i.for.body.i18_crit_edge

if.end16.i.for.body.i18_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i18

free_tbufs.exit:                                  ; preds = %if.end16.i
  %cur_tx.i = getelementptr i8, ptr %1, i32 4600
  %35 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cur_tx.i, align 8
  %dirty_tx.i = getelementptr i8, ptr %1, i32 4604
  %36 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %dirty_tx.i, align 4
  %tx_ring_dma.i = getelementptr i8, ptr %1, i32 2828
  %37 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_ring_dma.i, align 4
  %quirks.i = getelementptr i8, ptr %1, i32 4592
  %tx_bufs.i = getelementptr i8, ptr %1, i32 4112
  br label %for.body.i25

for.body.i25:                                     ; preds = %for.inc.i.for.body.i25_crit_edge, %free_tbufs.exit
  %i.034.i = phi i32 [ 0, %free_tbufs.exit ], [ %inc.i29, %for.inc.i.for.body.i25_crit_edge ]
  %next.033.i = phi i32 [ %38, %free_tbufs.exit ], [ %add.i, %for.inc.i.for.body.i25_crit_edge ]
  %arrayidx.i22 = getelementptr %struct.rhine_private, ptr %add.ptr.i.i, i32 0, i32 7, i32 %i.034.i
  %39 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.i22, align 4
  %40 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx1.i = getelementptr %struct.tx_desc, ptr %41, i32 %i.034.i
  %42 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx1.i, align 4
  %43 = load ptr, ptr %tx_ring.i, align 4
  %desc_length.i23 = getelementptr %struct.tx_desc, ptr %43, i32 %i.034.i, i32 1
  %44 = ptrtoint ptr %desc_length.i23 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8445952, ptr %desc_length.i23, align 4
  %add.i = add i32 %next.033.i, 16
  %45 = tail call i32 @llvm.bswap.i32(i32 %add.i) #14
  %46 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_ring.i, align 4
  %next_desc.i = getelementptr %struct.tx_desc, ptr %47, i32 %i.034.i, i32 3
  %48 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %next_desc.i, align 4
  %49 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i24 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i24, label %for.body.i25.for.inc.i_crit_edge, label %if.then.i28

for.body.i25.for.inc.i_crit_edge:                 ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i28:                                      ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %tx_bufs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_bufs.i, align 8
  %mul.i = mul nuw nsw i32 %i.034.i, 1536
  %arrayidx6.i26 = getelementptr i8, ptr %52, i32 %mul.i
  %arrayidx7.i27 = getelementptr %struct.rhine_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %i.034.i
  %53 = ptrtoint ptr %arrayidx7.i27 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx6.i26, ptr %arrayidx7.i27, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i28, %for.body.i25.for.inc.i_crit_edge
  %inc.i29 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, 64
  br i1 %exitcond.not.i30, label %alloc_tbufs.exit, label %for.inc.i.for.body.i25_crit_edge

for.inc.i.for.body.i25_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i25

alloc_tbufs.exit:                                 ; preds = %for.inc.i
  %54 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_ring_dma.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #14
  %57 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx_ring.i, align 4
  %next_desc11.i = getelementptr %struct.tx_desc, ptr %58, i32 63, i32 3
  %59 = ptrtoint ptr %next_desc11.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %next_desc11.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %60 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %61, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #14
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %61, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i.i) #14
  %cur_rx.i = getelementptr i8, ptr %work, i32 52
  %62 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %cur_rx.i, align 4
  %rx_ring.i = getelementptr i8, ptr %work, i32 -1728
  br label %for.body.i34

for.body.i34:                                     ; preds = %for.body.i34.for.body.i34_crit_edge, %alloc_tbufs.exit
  %i.04.i = phi i32 [ 0, %alloc_tbufs.exit ], [ %inc.i32, %for.body.i34.for.body.i34_crit_edge ]
  %63 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rx_ring.i, align 8
  %arrayidx.i31 = getelementptr %struct.rx_desc, ptr %64, i32 %i.04.i
  %65 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 128, ptr %arrayidx.i31, align 4
  %inc.i32 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i33 = icmp eq i32 %inc.i32, 64
  br i1 %exitcond.not.i33, label %rhine_reset_rbufs.exit, label %for.body.i34.for.body.i34_crit_edge

for.body.i34.for.body.i34_crit_edge:              ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i34

rhine_reset_rbufs.exit:                           ; preds = %for.body.i34
  tail call fastcc void @rhine_chip_reset(ptr noundef %1)
  tail call fastcc void @init_registers(ptr noundef %1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %66 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %67, i32 0, i32 12
  %69 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %68)
  %cmp.not.i.i = icmp eq i32 %70, %68
  br i1 %cmp.not.i.i, label %rhine_reset_rbufs.exit.netif_trans_update.exit_crit_edge, label %do.body5.i.i

rhine_reset_rbufs.exit.netif_trans_update.exit_crit_edge: ; preds = %rhine_reset_rbufs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %rhine_reset_rbufs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 %68, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %rhine_reset_rbufs.exit.netif_trans_update.exit_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %72 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %73, 1
  store i32 %inc, ptr %tx_errors, align 4
  %74 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %75) #14
  br label %out_unlock

out_unlock:                                       ; preds = %netif_trans_update.exit, %entry.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %task_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rhine_slow_event_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %work, i32 -372
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %task_lock = getelementptr i8, ptr %work, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %task_lock, i32 noundef 0) #14
  %task_enable = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %task_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %task_enable, align 8, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end:                                           ; preds = %entry
  %base.i = getelementptr i8, ptr %work, i32 248
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #14, !srcloc !254
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv.i = zext i16 %7 to i32
  %quirks.i = getelementptr i8, ptr %work, i32 92
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.rhine_get_events.exit_crit_edge, label %if.then.i

if.end.rhine_get_events.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_get_events.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr1.i = getelementptr i8, ptr %5, i32 132
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  br label %rhine_get_events.exit

rhine_get_events.exit:                            ; preds = %if.then.i, %if.end.rhine_get_events.exit_crit_edge
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %13 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quirks.i, align 8
  %and.i28 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %rhine_get_events.exit.rhine_ack_events.exit_crit_edge, label %if.then.i32

rhine_get_events.exit.rhine_ack_events.exit_crit_edge: ; preds = %rhine_get_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_ack_events.exit

if.then.i32:                                      ; preds = %rhine_get_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i31 = getelementptr i8, ptr %12, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 0) #14, !srcloc !244
  br label %rhine_ack_events.exit

rhine_ack_events.exit:                            ; preds = %if.then.i32, %rhine_get_events.exit.rhine_ack_events.exit_crit_edge
  %conv1.i = and i16 %7, 16448
  %add.ptr2.i = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv1.i) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %15) #14, !srcloc !257
  %and2 = and i32 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %rhine_ack_events.exit.if.end5_crit_edge, label %if.then4

rhine_ack_events.exit.if.end5_crit_edge:          ; preds = %rhine_ack_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then4:                                         ; preds = %rhine_ack_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rhine_check_media(ptr noundef %1, i32 noundef 0)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %rhine_ack_events.exit.if.end5_crit_edge
  %and6 = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end13_crit_edge, label %do.body

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

do.body:                                          ; preds = %if.end5
  %msg_enable = getelementptr i8, ptr %work, i32 88
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and9 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body.if.end13_crit_edge, label %if.then11

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.45) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.body.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr14 = getelementptr i8, ptr %19, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 -2) #14, !srcloc !257
  br label %out_unlock

out_unlock:                                       ; preds = %if.end13, %entry.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %task_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  tail call fastcc void @rhine_disable_linkmon(ptr noundef %add.ptr.i)
  %conv = trunc i32 %phy_id to i8
  %add.ptr = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #14, !srcloc !244
  %conv1 = trunc i32 %regnum to i8
  %add.ptr2 = getelementptr i8, ptr %1, i32 113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 %conv1) #14, !srcloc !244
  %add.ptr3 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3, i8 64) #14, !srcloc !244
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 112
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.049.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %and41.i.i = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i.i)
  %tobool.i.not.i = icmp eq i8 %and41.i.i, 0
  br i1 %tobool.i.not.i, label %for.end.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #14
  %inc.i.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.049.i.i)
  %cmp10.i.i = icmp ugt i32 %i.049.i.i, 64
  br i1 %cmp10.i.i, label %for.end.i.i.do.body.i.i_crit_edge, label %for.end.i.i.rhine_wait_bit_low.exit_crit_edge

for.end.i.i.rhine_wait_bit_low.exit_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_wait_bit_low.exit

for.end.i.i.do.body.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end.i.i.do.body.i.i_crit_edge, %for.inc.i.i.do.body.i.i_crit_edge
  %i.048.i.i = phi i32 [ %i.049.i.i, %for.end.i.i.do.body.i.i_crit_edge ], [ 1024, %for.inc.i.i.do.body.i.i_crit_edge ]
  %msg_enable.i.i = getelementptr i8, ptr %dev, i32 4588
  %6 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable.i.i, align 4
  %and13.i.i = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body.i.i.rhine_wait_bit_low.exit_crit_edge, label %do.body16.i.i

do.body.i.i.rhine_wait_bit_low.exit_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_wait_bit_low.exit

do.body16.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_wait_bit.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdio_read, %if.then23.i.i)) #14
          to label %rhine_wait_bit_low.exit [label %if.then23.i.i], !srcloc !258

if.then23.i.i:                                    ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr i8, ptr %dev, i32 4128
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_wait_bit.__UNIQUE_ID_ddebug353, ptr noundef %9, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 112, i32 noundef 64, i32 noundef %i.048.i.i) #14
  br label %rhine_wait_bit_low.exit

rhine_wait_bit_low.exit:                          ; preds = %if.then23.i.i, %do.body16.i.i, %do.body.i.i.rhine_wait_bit_low.exit_crit_edge, %for.end.i.i.rhine_wait_bit_low.exit_crit_edge
  %add.ptr4 = getelementptr i8, ptr %1, i32 114
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4) #14, !srcloc !254
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv6 = zext i16 %11 to i32
  tail call fastcc void @rhine_enable_linkmon(ptr noundef %add.ptr.i)
  ret i32 %conv6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %regnum, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  tail call fastcc void @rhine_disable_linkmon(ptr noundef %add.ptr.i)
  %conv = trunc i32 %phy_id to i8
  %add.ptr = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #14, !srcloc !244
  %conv1 = trunc i32 %regnum to i8
  %add.ptr2 = getelementptr i8, ptr %1, i32 113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 %conv1) #14, !srcloc !244
  %conv3 = trunc i32 %value to i16
  %add.ptr4 = getelementptr i8, ptr %1, i32 114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv3) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %2) #14, !srcloc !257
  %add.ptr5 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 32) #14, !srcloc !244
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 112
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.049.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %and41.i.i = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i.i)
  %tobool.i.not.i = icmp eq i8 %and41.i.i, 0
  br i1 %tobool.i.not.i, label %for.end.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #14
  %inc.i.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.049.i.i)
  %cmp10.i.i = icmp ugt i32 %i.049.i.i, 64
  br i1 %cmp10.i.i, label %for.end.i.i.do.body.i.i_crit_edge, label %for.end.i.i.rhine_wait_bit_low.exit_crit_edge

for.end.i.i.rhine_wait_bit_low.exit_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_wait_bit_low.exit

for.end.i.i.do.body.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end.i.i.do.body.i.i_crit_edge, %for.inc.i.i.do.body.i.i_crit_edge
  %i.048.i.i = phi i32 [ %i.049.i.i, %for.end.i.i.do.body.i.i_crit_edge ], [ 1024, %for.inc.i.i.do.body.i.i_crit_edge ]
  %msg_enable.i.i = getelementptr i8, ptr %dev, i32 4588
  %7 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable.i.i, align 4
  %and13.i.i = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body.i.i.rhine_wait_bit_low.exit_crit_edge, label %do.body16.i.i

do.body.i.i.rhine_wait_bit_low.exit_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_wait_bit_low.exit

do.body16.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_wait_bit.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdio_write, %if.then23.i.i)) #14
          to label %rhine_wait_bit_low.exit [label %if.then23.i.i], !srcloc !258

if.then23.i.i:                                    ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr i8, ptr %dev, i32 4128
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_wait_bit.__UNIQUE_ID_ddebug353, ptr noundef %10, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 112, i32 noundef 32, i32 noundef %i.048.i.i) #14
  br label %rhine_wait_bit_low.exit

rhine_wait_bit_low.exit:                          ; preds = %if.then23.i.i, %do.body16.i.i, %do.body.i.i.rhine_wait_bit_low.exit_crit_edge, %for.end.i.i.rhine_wait_bit_low.exit_crit_edge
  tail call fastcc void @rhine_enable_linkmon(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_napipoll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %base = getelementptr i8, ptr %napi, i32 612
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #14, !srcloc !254
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv.i = zext i16 %5 to i32
  %quirks.i = getelementptr i8, ptr %napi, i32 456
  %6 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.rhine_get_events.exit_crit_edge, label %if.then.i

entry.rhine_get_events.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_get_events.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr1.i = getelementptr i8, ptr %3, i32 132
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %conv3.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl.i, %conv.i
  br label %rhine_get_events.exit

rhine_get_events.exit:                            ; preds = %if.then.i, %entry.rhine_get_events.exit_crit_edge
  %intr_status.0.i = phi i32 [ %or.i, %if.then.i ], [ %conv.i, %entry.rhine_get_events.exit_crit_edge ]
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %11 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quirks.i, align 8
  %and.i74 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not.i75 = icmp eq i32 %and.i74, 0
  br i1 %tobool.not.i75, label %rhine_get_events.exit.rhine_ack_events.exit_crit_edge, label %if.then.i78

rhine_get_events.exit.rhine_ack_events.exit_crit_edge: ; preds = %rhine_get_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_ack_events.exit

if.then.i78:                                      ; preds = %rhine_get_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i = lshr i32 %intr_status.0.i, 16
  %conv.i76 = trunc i32 %shr.i to i8
  %add.ptr.i77 = getelementptr i8, ptr %10, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i77, i8 %conv.i76) #14, !srcloc !244
  br label %rhine_ack_events.exit

rhine_ack_events.exit:                            ; preds = %if.then.i78, %rhine_get_events.exit.rhine_ack_events.exit_crit_edge
  %13 = trunc i32 %intr_status.0.i to i16
  %conv1.i = and i16 %13, -16449
  %add.ptr2.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv1.i) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %14) #14, !srcloc !257
  %and2 = and i32 %intr_status.0.i, 39973
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %rhine_ack_events.exit.if.end_crit_edge, label %if.then

rhine_ack_events.exit.if.end_crit_edge:           ; preds = %rhine_ack_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %rhine_ack_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call fastcc i32 @rhine_rx(ptr noundef %1, i32 noundef %budget)
  br label %if.end

if.end:                                           ; preds = %if.then, %rhine_ack_events.exit.if.end_crit_edge
  %work_done.0 = phi i32 [ %call3, %if.then ], [ 0, %rhine_ack_events.exit.if.end_crit_edge ]
  %and4 = and i32 %intr_status.0.i, 533018
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end25_crit_edge, label %if.then6

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then6:                                         ; preds = %if.end
  %and7 = and i32 %intr_status.0.i, 533016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end25.critedge, label %if.then9

if.then9:                                         ; preds = %if.then6
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then9
  %i.049.i.i = phi i32 [ 0, %if.then9 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %and41.i.i = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i.i)
  %tobool.i.not.i = icmp eq i8 %and41.i.i, 0
  br i1 %tobool.i.not.i, label %for.end.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #14
  %inc.i.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.049.i.i)
  %cmp10.i.i = icmp ugt i32 %i.049.i.i, 64
  br i1 %cmp10.i.i, label %for.end.i.i.do.body.i.i_crit_edge, label %for.end.i.i.rhine_wait_bit_low.exit_crit_edge

for.end.i.i.rhine_wait_bit_low.exit_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_wait_bit_low.exit

for.end.i.i.do.body.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end.i.i.do.body.i.i_crit_edge, %for.inc.i.i.do.body.i.i_crit_edge
  %i.048.i.i = phi i32 [ %i.049.i.i, %for.end.i.i.do.body.i.i_crit_edge ], [ 1024, %for.inc.i.i.do.body.i.i_crit_edge ]
  %msg_enable.i.i = getelementptr i8, ptr %napi, i32 452
  %19 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i.i, align 4
  %and13.i.i = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body.i.i.rhine_wait_bit_low.exit_crit_edge, label %do.body16.i.i

do.body.i.i.rhine_wait_bit_low.exit_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_wait_bit_low.exit

do.body16.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_wait_bit.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_napipoll, %if.then23.i.i)) #14
          to label %rhine_wait_bit_low.exit [label %if.then23.i.i], !srcloc !258

if.then23.i.i:                                    ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_wait_bit.__UNIQUE_ID_ddebug353, ptr noundef %22, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 8, i32 noundef 16, i32 noundef %i.048.i.i) #14
  br label %rhine_wait_bit_low.exit

rhine_wait_bit_low.exit:                          ; preds = %if.then23.i.i, %do.body16.i.i, %do.body.i.i.rhine_wait_bit_low.exit_crit_edge, %for.end.i.i.rhine_wait_bit_low.exit_crit_edge
  %add.ptr10 = getelementptr i8, ptr %3, i32 8
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %24 = and i8 %23, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not = icmp eq i8 %24, 0
  br i1 %tobool13.not, label %rhine_wait_bit_low.exit.if.then23_crit_edge, label %do.body

rhine_wait_bit_low.exit.if.then23_crit_edge:      ; preds = %rhine_wait_bit_low.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

do.body:                                          ; preds = %rhine_wait_bit_low.exit
  %msg_enable = getelementptr i8, ptr %napi, i32 452
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable, align 4
  %and15 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body.if.then23_crit_edge, label %if.then17

do.body.if.then23_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.61) #17
  br label %if.then23

if.then23:                                        ; preds = %if.then17, %do.body.if.then23_crit_edge, %rhine_wait_bit_low.exit.if.then23_crit_edge
  tail call fastcc void @rhine_tx(ptr noundef %1)
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 8
  %and.i79 = and i32 %intr_status.0.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i80 = icmp eq i32 %and.i79, 0
  br i1 %tobool.not.i80, label %if.then23.if.end5.i_crit_edge, label %do.body.i

if.then23.if.end5.i_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

do.body.i:                                        ; preds = %if.then23
  %msg_enable.i = getelementptr i8, ptr %napi, i32 452
  %29 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable.i, align 4
  %and2.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.if.end5.i_crit_edge, label %if.then4.i

do.body.i.if.end5.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %28, ptr noundef nonnull @.str.72, i32 noundef %intr_status.0.i) #17
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %do.body.i.if.end5.i_crit_edge, %if.then23.if.end5.i_crit_edge
  %and6.i = and i32 %intr_status.0.i, 528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end17.i_crit_edge, label %if.then8.i

if.end5.i.if.end17.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.then8.i:                                       ; preds = %if.end5.i
  %tx_thresh.i.i = getelementptr i8, ptr %napi, i32 577
  %31 = ptrtoint ptr %tx_thresh.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tx_thresh.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %32)
  %cmp.i.i = icmp ult i8 %32, -32
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then8.i.rhine_kick_tx_threshold.exit.i_crit_edge

if.then8.i.rhine_kick_tx_threshold.exit.i_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_kick_tx_threshold.exit.i

if.then.i.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.i.i = add nuw i8 %32, 32
  %35 = ptrtoint ptr %tx_thresh.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %add.i.i, ptr %tx_thresh.i.i, align 1
  %add.ptr.i.i82 = getelementptr i8, ptr %34, i32 7
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i82) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %37 = and i8 %36, 127
  %38 = ptrtoint ptr %tx_thresh.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_thresh.i.i, align 1
  %or14.i.i = or i8 %39, %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i82, i8 %or14.i.i) #14, !srcloc !244
  br label %rhine_kick_tx_threshold.exit.i

rhine_kick_tx_threshold.exit.i:                   ; preds = %if.then.i.i, %if.then8.i.rhine_kick_tx_threshold.exit.i_crit_edge
  %msg_enable10.i = getelementptr i8, ptr %napi, i32 452
  %40 = ptrtoint ptr %msg_enable10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable10.i, align 4
  %and11.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %rhine_kick_tx_threshold.exit.i.if.end17.i_crit_edge, label %if.then13.i

rhine_kick_tx_threshold.exit.i.if.end17.i_crit_edge: ; preds = %rhine_kick_tx_threshold.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.then13.i:                                      ; preds = %rhine_kick_tx_threshold.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %tx_thresh.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tx_thresh.i.i, align 1
  %conv.i83 = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %28, ptr noundef nonnull @.str.73, i32 noundef %conv.i83) #17
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %rhine_kick_tx_threshold.exit.i.if.end17.i_crit_edge, %if.end5.i.if.end17.i_crit_edge
  %and18.i = and i32 %intr_status.0.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end29.i_crit_edge, label %do.body21.i

if.end17.i.if.end29.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

do.body21.i:                                      ; preds = %if.end17.i
  %msg_enable22.i = getelementptr i8, ptr %napi, i32 452
  %44 = ptrtoint ptr %msg_enable22.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable22.i, align 4
  %and23.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %do.body21.i.if.end29.i_crit_edge, label %if.then25.i

do.body21.i.if.end29.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.then25.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %28, ptr noundef nonnull @.str.74) #17
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %do.body21.i.if.end29.i_crit_edge, %if.end17.i.if.end29.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and7)
  %46 = icmp eq i32 %and7, 8
  br i1 %46, label %if.then34.i, label %if.end29.i.if.end45.i_crit_edge

if.end29.i.if.end45.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.then34.i:                                      ; preds = %if.end29.i
  %tx_thresh.i63.i = getelementptr i8, ptr %napi, i32 577
  %47 = ptrtoint ptr %tx_thresh.i63.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tx_thresh.i63.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %48)
  %cmp.i64.i = icmp ult i8 %48, -32
  br i1 %cmp.i64.i, label %if.then.i69.i, label %if.then34.i.rhine_kick_tx_threshold.exit70.i_crit_edge

if.then34.i.rhine_kick_tx_threshold.exit70.i_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_kick_tx_threshold.exit70.i

if.then.i69.i:                                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.i66.i = add nuw i8 %48, 32
  %51 = ptrtoint ptr %tx_thresh.i63.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %add.i66.i, ptr %tx_thresh.i63.i, align 1
  %add.ptr.i67.i = getelementptr i8, ptr %50, i32 7
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i67.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %53 = and i8 %52, 127
  %54 = ptrtoint ptr %tx_thresh.i63.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tx_thresh.i63.i, align 1
  %or14.i68.i = or i8 %55, %53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i67.i, i8 %or14.i68.i) #14, !srcloc !244
  br label %rhine_kick_tx_threshold.exit70.i

rhine_kick_tx_threshold.exit70.i:                 ; preds = %if.then.i69.i, %if.then34.i.rhine_kick_tx_threshold.exit70.i_crit_edge
  %msg_enable36.i = getelementptr i8, ptr %napi, i32 452
  %56 = ptrtoint ptr %msg_enable36.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable36.i, align 4
  %and37.i = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %rhine_kick_tx_threshold.exit70.i.if.end45.i_crit_edge, label %if.then39.i

rhine_kick_tx_threshold.exit70.i.if.end45.i_crit_edge: ; preds = %rhine_kick_tx_threshold.exit70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.then39.i:                                      ; preds = %rhine_kick_tx_threshold.exit70.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %tx_thresh.i63.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tx_thresh.i63.i, align 1
  %conv41.i = zext i8 %59 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %28, ptr noundef nonnull @.str.75, i32 noundef %conv41.i) #17
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then39.i, %rhine_kick_tx_threshold.exit70.i.if.end45.i_crit_edge, %if.end29.i.if.end45.i_crit_edge
  %base.i71.i = getelementptr i8, ptr %28, i32 4748
  %60 = ptrtoint ptr %base.i71.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i71.i, align 4
  %dirty_tx.i.i = getelementptr i8, ptr %28, i32 4604
  %62 = ptrtoint ptr %dirty_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dirty_tx.i.i, align 4
  %add.ptr.i49.i.i = getelementptr i8, ptr %61, i32 12
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i49.i.i) #14, !srcloc !254
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv.i.i.i = zext i16 %65 to i32
  %quirks.i.i.i = getelementptr i8, ptr %28, i32 4592
  %66 = ptrtoint ptr %quirks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %quirks.i.i.i, align 8
  %and.i.i.i = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end45.i.rhine_get_events.exit.i.i_crit_edge, label %if.then.i.i.i

if.end45.i.rhine_get_events.exit.i.i_crit_edge:   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_get_events.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr1.i.i.i = getelementptr i8, ptr %61, i32 132
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i.i.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %conv3.i.i.i = zext i8 %68 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv3.i.i.i, 16
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  br label %rhine_get_events.exit.i.i

rhine_get_events.exit.i.i:                        ; preds = %if.then.i.i.i, %if.end45.i.rhine_get_events.exit.i.i_crit_edge
  %intr_status.0.i.i.i = phi i32 [ %or.i.i.i, %if.then.i.i.i ], [ %conv.i.i.i, %if.end45.i.rhine_get_events.exit.i.i_crit_edge ]
  %and.i.i = and i32 %intr_status.0.i.i.i, 533016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i72.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i72.i, label %if.then.i75.i, label %do.body26.i.i

if.then.i75.i:                                    ; preds = %rhine_get_events.exit.i.i
  %rem.i.i = and i32 %63, 63
  %tx_ring_dma.i.i = getelementptr i8, ptr %28, i32 2828
  %69 = ptrtoint ptr %tx_ring_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_ring_dma.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %rem.i.i, 4
  %add.i73.i = add i32 %70, %mul.i.i
  %add.ptr.i74.i = getelementptr i8, ptr %61, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  %71 = tail call i32 @llvm.bswap.i32(i32 %add.i73.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 %71) #14, !srcloc !260
  %add.ptr3.i.i = getelementptr i8, ptr %61, i32 8
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %73 = or i8 %72, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i, i8 %73) #14, !srcloc !244
  %tx_ring.i.i = getelementptr i8, ptr %28, i32 2820
  %74 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_ring.i.i, align 4
  %desc_length.i.i = getelementptr %struct.tx_desc, ptr %75, i32 %rem.i.i, i32 1
  %76 = ptrtoint ptr %desc_length.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %desc_length.i.i, align 4
  %and7.i.i = and i32 %77, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i75.i.if.end.i.i_crit_edge, label %do.body.i.i84

if.then.i75.i.if.end.i.i_crit_edge:               ; preds = %if.then.i75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.body.i.i84:                                    ; preds = %if.then.i75.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr9.i.i = getelementptr i8, ptr %61, i32 10
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %79 = or i8 %78, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i, i8 %79) #14, !srcloc !244
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i84, %if.then.i75.i.if.end.i.i_crit_edge
  %add.ptr15.i.i = getelementptr i8, ptr %61, i32 9
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15.i.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %81 = or i8 %80, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i.i, i8 %81) #14, !srcloc !244
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %61) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  br label %if.end25

do.body26.i.i:                                    ; preds = %rhine_get_events.exit.i.i
  %msg_enable.i.i85 = getelementptr i8, ptr %28, i32 4588
  %83 = ptrtoint ptr %msg_enable.i.i85 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %msg_enable.i.i85, align 4
  %and27.i.i = and i32 %84, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %do.body26.i.i.if.end25_crit_edge, label %if.then29.i.i

do.body26.i.i.if.end25_crit_edge:                 ; preds = %do.body26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then29.i.i:                                    ; preds = %do.body26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.76, i32 noundef %intr_status.0.i.i.i) #17
  br label %if.end25

if.end25.critedge:                                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rhine_tx(ptr noundef %1)
  br label %if.end25

if.end25:                                         ; preds = %if.end25.critedge, %if.then29.i.i, %do.body26.i.i.if.end25_crit_edge, %if.end.i.i, %if.end.if.end25_crit_edge
  %and26 = and i32 %intr_status.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end30_crit_edge, label %if.then28

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr i8, ptr %napi, i32 224
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %87 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev1, align 8
  %add.ptr.i87 = getelementptr i8, ptr %86, i32 126
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i87) #14, !srcloc !254
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv.i88 = zext i16 %90 to i32
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 36, i32 12
  %91 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_crc_errors.i, align 4
  %add.i = add i32 %92, %conv.i88
  store i32 %add.i, ptr %rx_crc_errors.i, align 4
  %add.ptr2.i89 = getelementptr i8, ptr %86, i32 124
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i89) #14, !srcloc !254
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv4.i = zext i16 %94 to i32
  %rx_missed_errors.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 36, i32 15
  %95 = ptrtoint ptr %rx_missed_errors.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_missed_errors.i, align 4
  %add5.i = add i32 %96, %conv4.i
  store i32 %add5.i, ptr %rx_missed_errors.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i89, i32 0) #14, !srcloc !260
  %97 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i87) #14, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i89) #14, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25.if.end30_crit_edge
  %and31 = and i32 %intr_status.0.i, 16448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end38_crit_edge, label %if.then33

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %slow_event_task = getelementptr i8, ptr %napi, i32 364
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %99 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %99, ptr noundef %slow_event_task) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end30.if.end38_crit_edge
  %enable_mask.0 = phi i16 [ -16705, %if.then33 ], [ -257, %if.end30.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0, i32 %budget)
  %cmp = icmp slt i32 %work_done.0, %budget
  br i1 %cmp, label %if.then40, label %if.end38.if.end43_crit_edge

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %call41 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0) #14
  %add.ptr42 = getelementptr i8, ptr %3, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  %100 = tail call i16 @llvm.bswap.i16(i16 %enable_mask.0) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42, i16 %100) #14, !srcloc !257
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end38.if.end43_crit_edge
  ret i32 %work_done.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhine_chip_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #14, !srcloc !244
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.33) #17
  %quirks = getelementptr i8, ptr %dev, i32 4592
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 8
  %and5 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr8 = getelementptr i8, ptr %1, i32 129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 64) #14, !srcloc !244
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end
  %i.049.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool.i.not.i = icmp sgt i8 %8, -1
  br i1 %tobool.i.not.i, label %for.end.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #14
  %inc.i.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.049.i.i)
  %cmp10.i.i = icmp ugt i32 %i.049.i.i, 64
  br i1 %cmp10.i.i, label %for.end.i.i.do.body.i.i_crit_edge, label %for.end.i.i.if.end9_crit_edge

for.end.i.i.if.end9_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

for.end.i.i.do.body.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end.i.i.do.body.i.i_crit_edge, %for.inc.i.i.do.body.i.i_crit_edge
  %i.048.i.i = phi i32 [ %i.049.i.i, %for.end.i.i.do.body.i.i_crit_edge ], [ 1024, %for.inc.i.i.do.body.i.i_crit_edge ]
  %msg_enable.i.i = getelementptr i8, ptr %dev, i32 4588
  %10 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i.i, align 4
  %and13.i.i = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body.i.i.if.end9_crit_edge, label %do.body16.i.i

do.body.i.i.if.end9_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

do.body16.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_wait_bit.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_chip_reset, %if.then23.i.i)) #14
          to label %if.end9 [label %if.then23.i.i], !srcloc !258

if.then23.i.i:                                    ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr i8, ptr %dev, i32 4128
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_wait_bit.__UNIQUE_ID_ddebug353, ptr noundef %13, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 9, i32 noundef 128, i32 noundef %i.048.i.i) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then23.i.i, %do.body16.i.i, %do.body.i.i.if.end9_crit_edge, %for.end.i.i.if.end9_crit_edge, %entry.if.end9_crit_edge
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %msg_enable = getelementptr i8, ptr %dev, i32 4588
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and13 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end9.do.end21_crit_edge, label %if.then15

if.end9.do.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool18.not = icmp sgt i8 %14, -1
  %cond = select i1 %tobool18.not, ptr @.str.36, ptr @.str.35
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond) #17
  br label %do.end21

do.end21:                                         ; preds = %if.then15, %if.end9.do.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_registers(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %5) #14, !srcloc !244
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1, align 1
  %add.ptr1.1 = getelementptr i8, ptr %1, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.1, i8 %9) #14, !srcloc !244
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  %add.ptr1.2 = getelementptr i8, ptr %1, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.2, i8 %13) #14, !srcloc !244
  %14 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %add.ptr1.3 = getelementptr i8, ptr %1, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.3, i8 %17) #14, !srcloc !244
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 1
  %add.ptr1.4 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.4, i8 %21) #14, !srcloc !244
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %23, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.5, align 1
  %add.ptr1.5 = getelementptr i8, ptr %1, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.5, i8 %25) #14, !srcloc !244
  %add.ptr2 = getelementptr i8, ptr %1, i32 110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2, i16 1536) #14, !srcloc !257
  %add.ptr3 = getelementptr i8, ptr %1, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3, i8 32) #14, !srcloc !244
  %tx_thresh = getelementptr i8, ptr %dev, i32 4713
  %26 = ptrtoint ptr %tx_thresh to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 32, ptr %tx_thresh, align 1
  %rx_thresh = getelementptr i8, ptr %dev, i32 4714
  %27 = ptrtoint ptr %rx_thresh to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 96, ptr %rx_thresh, align 2
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2824
  %28 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_ring_dma, align 8
  %add.ptr4 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %30) #14, !srcloc !260
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2828
  %31 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_ring_dma, align 4
  %add.ptr5 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %33) #14, !srcloc !260
  tail call void @rhine_set_rx_mode(ptr noundef %dev)
  %quirks = getelementptr i8, ptr %dev, i32 4592
  %34 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %quirks, align 8
  %and = and i32 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %37, i32 146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 3) #14, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !261
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.i = getelementptr i8, ptr %37, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #14, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 0) #14, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 1) #14, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #14, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17.i, i8 0) #14, !srcloc !244
  %add.ptr.i27 = getelementptr i8, ptr %37, i32 7
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i27) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %39 = or i8 %38, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i27, i8 %39) #14, !srcloc !244
  %add.ptr5.i = getelementptr i8, ptr %37, i32 111
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %41 = and i8 %40, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %41) #14, !srcloc !244
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %napi = getelementptr i8, ptr %dev, i32 4136
  tail call void @napi_enable(ptr noundef %napi) #14
  %add.ptr6 = getelementptr i8, ptr %1, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 -2) #14, !srcloc !257
  %add.ptr7 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 6664) #14, !srcloc !257
  tail call fastcc void @rhine_check_media(ptr noundef %dev, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rhine_set_rx_mode(ptr noundef readonly %dev) #2 align 64 {
entry:
  %mc_filter = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #14
  %2 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mc_filter, align 8, !annotation !263
  %3 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #14, !srcloc !260
  %add.ptr1 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -1) #14, !srcloc !260
  br label %if.end86

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %7)
  %cmp = icmp slt i32 %7, 33
  %and3 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %cmp, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr6 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1) #14, !srcloc !260
  %add.ptr7 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -1) #14, !srcloc !260
  br label %if.end86

if.else8:                                         ; preds = %if.else
  %quirks = getelementptr i8, ptr %dev, i32 4592
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks, align 8
  %and9 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else25, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else8
  %10 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %10)
  %ha.0171 = load ptr, ptr %mc, align 4
  %cmp17.not172 = icmp eq ptr %ha.0171, %mc
  br i1 %cmp17.not172, label %for.cond.preheader.for.end_crit_edge, label %if.end.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.lr.ph:                                     ; preds = %for.cond.preheader
  %add.ptr.i168 = getelementptr i8, ptr %1, i32 146
  %add.ptr1.i = getelementptr i8, ptr %1, i32 147
  %add.ptr3.i = getelementptr i8, ptr %1, i32 16
  %add.ptr4.1.i = getelementptr i8, ptr %1, i32 17
  %add.ptr4.2.i = getelementptr i8, ptr %1, i32 18
  %add.ptr4.3.i = getelementptr i8, ptr %1, i32 19
  %add.ptr4.4.i = getelementptr i8, ptr %1, i32 20
  %add.ptr4.5.i = getelementptr i8, ptr %1, i32 21
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.lr.ph
  %ha.0175 = phi ptr [ %ha.0171, %if.end.lr.ph ], [ %ha.0, %if.end.if.end_crit_edge ]
  %i.0174 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %if.end.if.end_crit_edge ]
  %mCAMmask.0173 = phi i32 [ 0, %if.end.lr.ph ], [ %or, %if.end.if.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0175, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i168, i8 1) #14, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !264
  tail call void @arm_heavy_mb() #14
  %11 = trunc i32 %i.0174 to i8
  %conv.i = and i8 %11, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 %conv.i) #14, !srcloc !244
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %13) #14, !srcloc !244
  %incdec.ptr.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0175, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.1.i, i8 %15) #14, !srcloc !244
  %incdec.ptr.1.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0175, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.1.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.2.i, i8 %17) #14, !srcloc !244
  %incdec.ptr.2.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0175, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.3.i, i8 %19) #14, !srcloc !244
  %incdec.ptr.3.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0175, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.3.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.4.i, i8 %21) #14, !srcloc !244
  %incdec.ptr.4.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0175, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.4.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.5.i, i8 %23) #14, !srcloc !244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i168, i8 5) #14, !srcloc !244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i168, i8 0) #14, !srcloc !244
  %shl = shl nuw i32 1, %i.0174
  %or = or i32 %shl, %mCAMmask.0173
  %inc = add nuw nsw i32 %i.0174, 1
  %26 = ptrtoint ptr %ha.0175 to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.0 = load ptr, ptr %ha.0175, align 4
  %cmp17.not = icmp eq ptr %ha.0, %mc
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc)
  %cmp18 = icmp eq i32 %inc, 32
  %or.cond167 = select i1 %cmp17.not, i1 true, i1 %cmp18
  br i1 %or.cond167, label %if.end.for.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mCAMmask.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %or, %if.end.for.end_crit_edge ]
  %add.ptr.i169 = getelementptr i8, ptr %1, i32 146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i169, i8 1) #14, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i170 = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %mCAMmask.0.lcssa) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i170, i32 %27) #14, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i169, i8 0) #14, !srcloc !244
  br label %if.end86

if.else25:                                        ; preds = %if.else8
  %28 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %mc_filter, align 8
  %29 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %29)
  %ha.1176 = load ptr, ptr %mc, align 4
  %cmp37.not177 = icmp eq ptr %ha.1176, %mc
  br i1 %cmp37.not177, label %if.else25.for.end79_crit_edge, label %if.else25.cond.end_crit_edge

if.else25.cond.end_crit_edge:                     ; preds = %if.else25
  br label %cond.end

if.else25.for.end79_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end79

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else25.cond.end_crit_edge
  %ha.1178 = phi ptr [ %ha.1, %cond.end.cond.end_crit_edge ], [ %ha.1176, %if.else25.cond.end_crit_edge ]
  %addr40 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1178, i32 0, i32 2
  %call42 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr40, i32 noundef 6) #18
  %30 = and i32 %call42, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %32 to i32
  %shr68 = lshr i32 %conv2.i.i, 2
  %and69 = and i32 %shr68, 31
  %shl70 = shl nuw i32 1, %and69
  %33 = lshr i32 %conv2.i.i, 7
  %arrayidx = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %or72 = or i32 %shl70, %35
  store i32 %or72, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %ha.1178 to i32
  call void @__asan_load4_noabort(i32 %36)
  %ha.1 = load ptr, ptr %ha.1178, align 4
  %cmp37.not = icmp eq ptr %ha.1, %mc
  br i1 %cmp37.not, label %cond.end.for.end79_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.end.for.end79_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end79

for.end79:                                        ; preds = %cond.end.for.end79_crit_edge, %if.else25.for.end79_crit_edge
  %37 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mc_filter, align 8
  %add.ptr81 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %39) #14, !srcloc !260
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %add.ptr83 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %42) #14, !srcloc !260
  br label %if.end86

if.end86:                                         ; preds = %for.end79, %for.end, %if.then5, %if.then
  %rx_mode.0 = phi i8 [ 28, %if.then ], [ 12, %if.then5 ], [ 12, %for.end ], [ 12, %for.end79 ]
  %quirks87 = getelementptr i8, ptr %dev, i32 4592
  %43 = ptrtoint ptr %quirks87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %quirks87, align 8
  %and88 = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end86.do.body112_crit_edge, label %if.then90

if.end86.do.body112_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body112

if.then90:                                        ; preds = %if.end86
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 8
  %and92 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %add.ptr102 = getelementptr i8, ptr %1, i32 111
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr102) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  br i1 %tobool93.not, label %do.body101, label %do.body

do.body:                                          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #16
  %48 = and i8 %47, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr102, i8 %48) #14, !srcloc !244
  br label %do.body112

do.body101:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #16
  %49 = or i8 %47, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr102, i8 %49) #14, !srcloc !244
  br label %do.body112

do.body112:                                       ; preds = %do.body101, %do.body, %if.end86.do.body112_crit_edge
  %add.ptr113 = getelementptr i8, ptr %1, i32 6
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr113) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %or117 = or i8 %50, %rx_mode.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr113, i8 %or117) #14, !srcloc !244
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhine_check_media(ptr noundef %dev, i32 noundef %init_media) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %force_media = getelementptr i8, ptr %dev, i32 4732
  %2 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %force_media, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mii_if = getelementptr i8, ptr %dev, i32 4716
  %msg_enable = getelementptr i8, ptr %dev, i32 4588
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 4
  %call2 = tail call i32 @mii_check_media(ptr noundef %mii_if, i32 noundef %and, i32 noundef %init_media) #14
  %6 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load4.pr = load i8, ptr %force_media, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bf.load4 = phi i8 [ %bf.load4.pr, %if.then ], [ %bf.load, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load4)
  %tobool7.not = icmp sgt i8 %bf.load4, -1
  %add.ptr12 = getelementptr i8, ptr %1, i32 9
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = or i8 %7, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %8) #14, !srcloc !244
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = and i8 %7, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %9) #14, !srcloc !244
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then8
  %msg_enable19 = getelementptr i8, ptr %dev, i32 4588
  %10 = ptrtoint ptr %msg_enable19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable19, align 4
  %and20 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body.do.end_crit_edge, label %if.then22

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load25 = load i8, ptr %force_media, align 4
  %bf.lshr26 = lshr i8 %bf.load25, 6
  %bf.clear27 = and i8 %bf.lshr26, 1
  %bf.cast28 = zext i8 %bf.clear27 to i32
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %15 = lshr i32 %14, 2
  %.lobit = and i32 %15, 1
  %16 = xor i32 %.lobit, 1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %bf.cast28, i32 noundef %16) #17
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body.do.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhine_disable_linkmon(ptr nocapture noundef readonly %rp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.rhine_private, ptr %rp, i32 0, i32 33
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #14, !srcloc !244
  %quirks = getelementptr inbounds %struct.rhine_private, ptr %rp, i32 0, i32 22
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %1, i32 113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 1) #14, !srcloc !244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #14, !srcloc !244
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 113
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then
  %i.049.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %and41.i.i = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i.i)
  %tobool.i.not.i = icmp eq i8 %and41.i.i, 0
  br i1 %tobool.i.not.i, label %for.inc.i.i, label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #14
  %inc.i.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.049.i.i)
  %cmp10.i.i = icmp ugt i32 %i.049.i.i, 64
  br i1 %cmp10.i.i, label %for.end.i.i.do.body.i.i_crit_edge, label %for.end.i.i.rhine_wait_bit_high.exit_crit_edge

for.end.i.i.rhine_wait_bit_high.exit_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_wait_bit_high.exit

for.end.i.i.do.body.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end.i.i.do.body.i.i_crit_edge, %for.inc.i.i.do.body.i.i_crit_edge
  %i.048.i.i = phi i32 [ %i.049.i.i, %for.end.i.i.do.body.i.i_crit_edge ], [ 1024, %for.inc.i.i.do.body.i.i_crit_edge ]
  %msg_enable.i.i = getelementptr inbounds %struct.rhine_private, ptr %rp, i32 0, i32 21
  %9 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable.i.i, align 4
  %and13.i.i = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body.i.i.rhine_wait_bit_high.exit_crit_edge, label %do.body16.i.i

do.body.i.i.rhine_wait_bit_high.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_wait_bit_high.exit

do.body16.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_wait_bit.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_disable_linkmon, %if.then23.i.i)) #14
          to label %rhine_wait_bit_high.exit [label %if.then23.i.i], !srcloc !258

if.then23.i.i:                                    ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr inbounds %struct.rhine_private, ptr %rp, i32 0, i32 14
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_wait_bit.__UNIQUE_ID_ddebug353, ptr noundef %12, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.41, i32 noundef 113, i32 noundef 32, i32 noundef %i.048.i.i) #14
  br label %rhine_wait_bit_high.exit

rhine_wait_bit_high.exit:                         ; preds = %if.then23.i.i, %do.body16.i.i, %do.body.i.i.rhine_wait_bit_high.exit_crit_edge, %for.end.i.i.rhine_wait_bit_high.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #14, !srcloc !244
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %14, i32 113
  br label %for.body.i.i15

for.body.i.i15:                                   ; preds = %for.inc.i.i18.for.body.i.i15_crit_edge, %if.else
  %i.049.i.i12 = phi i32 [ 0, %if.else ], [ %inc.i.i16, %for.inc.i.i18.for.body.i.i15_crit_edge ]
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i11) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool.i.not.i14 = icmp sgt i8 %15, -1
  br i1 %tobool.i.not.i14, label %for.inc.i.i18, label %for.end.i.i20

for.inc.i.i18:                                    ; preds = %for.body.i.i15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #14
  %inc.i.i16 = add nuw nsw i32 %i.049.i.i12, 1
  %exitcond.not.i.i17 = icmp eq i32 %inc.i.i16, 1024
  br i1 %exitcond.not.i.i17, label %for.inc.i.i18.do.body.i.i25_crit_edge, label %for.inc.i.i18.for.body.i.i15_crit_edge

for.inc.i.i18.for.body.i.i15_crit_edge:           ; preds = %for.inc.i.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i15

for.inc.i.i18.do.body.i.i25_crit_edge:            ; preds = %for.inc.i.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i25

for.end.i.i20:                                    ; preds = %for.body.i.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.049.i.i12)
  %cmp10.i.i19 = icmp ugt i32 %i.049.i.i12, 64
  br i1 %cmp10.i.i19, label %for.end.i.i20.do.body.i.i25_crit_edge, label %for.end.i.i20.if.end_crit_edge

for.end.i.i20.if.end_crit_edge:                   ; preds = %for.end.i.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.end.i.i20.do.body.i.i25_crit_edge:            ; preds = %for.end.i.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i25

do.body.i.i25:                                    ; preds = %for.end.i.i20.do.body.i.i25_crit_edge, %for.inc.i.i18.do.body.i.i25_crit_edge
  %i.048.i.i21 = phi i32 [ %i.049.i.i12, %for.end.i.i20.do.body.i.i25_crit_edge ], [ 1024, %for.inc.i.i18.do.body.i.i25_crit_edge ]
  %msg_enable.i.i22 = getelementptr inbounds %struct.rhine_private, ptr %rp, i32 0, i32 21
  %17 = ptrtoint ptr %msg_enable.i.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable.i.i22, align 4
  %and13.i.i23 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i23)
  %tobool14.not.i.i24 = icmp eq i32 %and13.i.i23, 0
  br i1 %tobool14.not.i.i24, label %do.body.i.i25.if.end_crit_edge, label %do.body16.i.i26

do.body.i.i25.if.end_crit_edge:                   ; preds = %do.body.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body16.i.i26:                                  ; preds = %do.body.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_wait_bit.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_disable_linkmon, %if.then23.i.i28)) #14
          to label %if.end [label %if.then23.i.i28], !srcloc !258

if.then23.i.i28:                                  ; preds = %do.body16.i.i26
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i27 = getelementptr inbounds %struct.rhine_private, ptr %rp, i32 0, i32 14
  %19 = ptrtoint ptr %dev.i.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i27, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_wait_bit.__UNIQUE_ID_ddebug353, ptr noundef %20, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.41, i32 noundef 113, i32 noundef 128, i32 noundef %i.048.i.i21) #14
  br label %if.end

if.end:                                           ; preds = %if.then23.i.i28, %do.body16.i.i26, %do.body.i.i25.if.end_crit_edge, %for.end.i.i20.if.end_crit_edge, %rhine_wait_bit_high.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhine_enable_linkmon(ptr nocapture noundef readonly %rp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.rhine_private, ptr %rp, i32 0, i32 33
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #14, !srcloc !244
  %add.ptr1 = getelementptr i8, ptr %1, i32 113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 1) #14, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #14, !srcloc !244
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 113
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.049.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %and41.i.i = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i.i)
  %tobool.i.not.i = icmp eq i8 %and41.i.i, 0
  br i1 %tobool.i.not.i, label %for.inc.i.i, label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #14
  %inc.i.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.049.i.i)
  %cmp10.i.i = icmp ugt i32 %i.049.i.i, 64
  br i1 %cmp10.i.i, label %for.end.i.i.do.body.i.i_crit_edge, label %for.end.i.i.rhine_wait_bit_high.exit_crit_edge

for.end.i.i.rhine_wait_bit_high.exit_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_wait_bit_high.exit

for.end.i.i.do.body.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end.i.i.do.body.i.i_crit_edge, %for.inc.i.i.do.body.i.i_crit_edge
  %i.048.i.i = phi i32 [ %i.049.i.i, %for.end.i.i.do.body.i.i_crit_edge ], [ 1024, %for.inc.i.i.do.body.i.i_crit_edge ]
  %msg_enable.i.i = getelementptr inbounds %struct.rhine_private, ptr %rp, i32 0, i32 21
  %6 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable.i.i, align 4
  %and13.i.i = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body.i.i.rhine_wait_bit_high.exit_crit_edge, label %do.body16.i.i

do.body.i.i.rhine_wait_bit_high.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_wait_bit_high.exit

do.body16.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_wait_bit.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_enable_linkmon, %if.then23.i.i)) #14
          to label %rhine_wait_bit_high.exit [label %if.then23.i.i], !srcloc !258

if.then23.i.i:                                    ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr inbounds %struct.rhine_private, ptr %rp, i32 0, i32 14
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_wait_bit.__UNIQUE_ID_ddebug353, ptr noundef %9, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.41, i32 noundef 113, i32 noundef 32, i32 noundef %i.048.i.i) #14
  br label %rhine_wait_bit_high.exit

rhine_wait_bit_high.exit:                         ; preds = %if.then23.i.i, %do.body16.i.i, %do.body.i.i.rhine_wait_bit_high.exit_crit_edge, %for.end.i.i.rhine_wait_bit_high.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 65) #14, !srcloc !244
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_open(ptr noundef %dev) #2 align 64 {
entry:
  %sd.i = alloca %struct.rhine_skb_dma, align 4
  %ring_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %irq = getelementptr i8, ptr %dev, i32 4120
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @rhine_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 4588
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end14_crit_edge, label %do.body4

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_open.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_open, %if.then9)) #14
          to label %do.end14 [label %if.then9], !srcloc !258

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_open.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %7) #14
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %do.body4, %do.body.do.end14_crit_edge
  %parent.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ring_dma.i) #14
  %10 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %ring_dma.i, align 4, !annotation !263
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 2048, ptr noundef nonnull %ring_dma.i, i32 noundef 2592, i32 noundef 0) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #17
  br label %alloc_ring.exit.thread

if.end.i:                                         ; preds = %do.end14
  %quirks.i = getelementptr i8, ptr %dev, i32 4592
  %11 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end17_crit_edge, label %if.then4.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then4.i:                                       ; preds = %if.end.i
  %tx_bufs_dma.i = getelementptr i8, ptr %dev, i32 4116
  %call.i27.i = call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 98304, ptr noundef %tx_bufs_dma.i, i32 noundef 2592, i32 noundef 0) #14
  %tx_bufs.i = getelementptr i8, ptr %dev, i32 4112
  %13 = ptrtoint ptr %tx_bufs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i27.i, ptr %tx_bufs.i, align 8
  %cmp.i = icmp eq ptr %call.i27.i, null
  br i1 %cmp.i, label %if.then7.i, label %if.then4.i.if.end17_crit_edge

if.then4.i.if.end17_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %9, i32 noundef 2048, ptr noundef nonnull %call.i.i, i32 noundef %15, i32 noundef 0) #14
  br label %alloc_ring.exit.thread

alloc_ring.exit.thread:                           ; preds = %if.then7.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ring_dma.i) #14
  br label %out_free_irq

if.end17:                                         ; preds = %if.then4.i.if.end17_crit_edge, %if.end.i.if.end17_crit_edge
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2816
  %16 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %rx_ring.i, align 8
  %add.ptr.i79 = getelementptr i8, ptr %call.i.i, i32 1024
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2820
  %17 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i79, ptr %tx_ring.i, align 4
  %18 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ring_dma.i, align 4
  %rx_ring_dma.i = getelementptr i8, ptr %dev, i32 2824
  %20 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rx_ring_dma.i, align 8
  %add.i = add i32 %19, 1024
  %tx_ring_dma.i = getelementptr i8, ptr %dev, i32 2828
  %21 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %tx_ring_dma.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ring_dma.i) #14
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %22 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %23)
  %cmp.i81 = icmp ult i32 %23, 1501
  %add.i82 = add i32 %23, 32
  %spec.select.i = select i1 %cmp.i81, i32 1536, i32 %add.i82
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 4608
  %24 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select.i, ptr %rx_buf_sz.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end17
  %i.064.i = phi i32 [ 0, %if.end17 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %next.063.i = phi i32 [ %19, %if.end17 ], [ %add6.i, %for.body.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_ring.i, align 8
  %arrayidx.i = getelementptr %struct.rx_desc, ptr %26, i32 %i.064.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx.i, align 4
  %28 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_buf_sz.i, align 8
  %30 = call i32 @llvm.bswap.i32(i32 %29) #14
  %31 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_ring.i, align 8
  %desc_length.i = getelementptr %struct.rx_desc, ptr %32, i32 %i.064.i, i32 1
  %33 = ptrtoint ptr %desc_length.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %desc_length.i, align 4
  %add6.i = add i32 %next.063.i, 16
  %34 = call i32 @llvm.bswap.i32(i32 %add6.i) #14
  %35 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_ring.i, align 8
  %next_desc.i = getelementptr %struct.rx_desc, ptr %36, i32 %i.064.i, i32 3
  %37 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %next_desc.i, align 4
  %arrayidx9.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 5, i32 %i.064.i
  %38 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx9.i, align 4
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %39 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_ring_dma.i, align 8
  %41 = call i32 @llvm.bswap.i32(i32 %40) #14
  %42 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_ring.i, align 8
  %next_desc13.i = getelementptr %struct.rx_desc, ptr %43, i32 63, i32 3
  %44 = ptrtoint ptr %next_desc13.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %next_desc13.i, align 4
  %45 = getelementptr inbounds %struct.rhine_skb_dma, ptr %sd.i, i32 0, i32 1
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.inc19.i.for.body16.i_crit_edge, %for.end.i
  %i.165.i = phi i32 [ 0, %for.end.i ], [ %inc20.i, %for.inc19.i.for.body16.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sd.i) #14
  %46 = ptrtoint ptr %sd.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %sd.i, align 4, !annotation !263
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %45, align 4, !annotation !263
  %call17.i = call fastcc i32 @rhine_skb_dma_init(ptr noundef %dev, ptr noundef nonnull %sd.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.then.i85, label %for.inc19.i

if.then.i85:                                      ; preds = %for.body16.i
  %48 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then.i85
  %i.024.i.i = phi i32 [ 0, %if.then.i85 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %50 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_ring.i, align 8
  %arrayidx.i.i = getelementptr %struct.rx_desc, ptr %51, i32 %i.024.i.i
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx.i.i, align 4
  %53 = load ptr, ptr %rx_ring.i, align 8
  %addr.i.i = getelementptr %struct.rx_desc, ptr %53, i32 %i.024.i.i, i32 2
  %54 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -805249094, ptr %addr.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 5, i32 %i.024.i.i
  %55 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5.i.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.024.i.i
  %57 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx5.i.i, align 4
  %59 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_buf_sz.i, align 8
  call void @dma_unmap_page_attrs(ptr noundef %49, i32 noundef %58, i32 noundef %60, i32 noundef 2, i32 noundef 0) #14
  %61 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx4.i.i, align 4
  call void @consume_skb(ptr noundef %62) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %63 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx4.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.024.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %cleanup.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

cleanup.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sd.i) #14
  br label %alloc_rbufs.exit

for.inc19.i:                                      ; preds = %for.body16.i
  %64 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %45, align 4
  %arrayidx.i52.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.165.i
  %66 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx.i52.i, align 4
  %67 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sd.i, align 4
  %arrayidx2.i.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 5, i32 %i.165.i
  %69 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %arrayidx2.i.i, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %65) #14
  %71 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rx_ring.i, align 8
  %addr.i54.i = getelementptr %struct.rx_desc, ptr %72, i32 %i.165.i, i32 2
  %73 = ptrtoint ptr %addr.i54.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %addr.i54.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sd.i) #14
  %inc20.i = add nuw nsw i32 %i.165.i, 1
  %exitcond68.not.i = icmp eq i32 %inc20.i, 64
  br i1 %exitcond68.not.i, label %for.end21.i, label %for.inc19.i.for.body16.i_crit_edge

for.inc19.i.for.body16.i_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i

for.end21.i:                                      ; preds = %for.inc19.i
  %cur_rx.i.i = getelementptr i8, ptr %dev, i32 4596
  %74 = ptrtoint ptr %cur_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %cur_rx.i.i, align 4
  br label %for.body.i59.i

for.body.i59.i:                                   ; preds = %for.body.i59.i.for.body.i59.i_crit_edge, %for.end21.i
  %i.04.i.i = phi i32 [ 0, %for.end21.i ], [ %inc.i57.i, %for.body.i59.i.for.body.i59.i_crit_edge ]
  %75 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_ring.i, align 8
  %arrayidx.i56.i = getelementptr %struct.rx_desc, ptr %76, i32 %i.04.i.i
  %77 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 128, ptr %arrayidx.i56.i, align 4
  %inc.i57.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i58.i = icmp eq i32 %inc.i57.i, 64
  br i1 %exitcond.not.i58.i, label %for.body.i59.i.alloc_rbufs.exit_crit_edge, label %for.body.i59.i.for.body.i59.i_crit_edge

for.body.i59.i.for.body.i59.i_crit_edge:          ; preds = %for.body.i59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i59.i

for.body.i59.i.alloc_rbufs.exit_crit_edge:        ; preds = %for.body.i59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %alloc_rbufs.exit

alloc_rbufs.exit:                                 ; preds = %for.body.i59.i.alloc_rbufs.exit_crit_edge, %cleanup.i
  br i1 %cmp18.i, label %out_free_ring, label %if.end21

if.end21:                                         ; preds = %alloc_rbufs.exit
  %cur_tx.i = getelementptr i8, ptr %dev, i32 4600
  %78 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %cur_tx.i, align 8
  %dirty_tx.i = getelementptr i8, ptr %dev, i32 4604
  %79 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %dirty_tx.i, align 4
  %80 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_ring_dma.i, align 4
  %tx_bufs.i90 = getelementptr i8, ptr %dev, i32 4112
  br label %for.body.i97

for.body.i97:                                     ; preds = %for.inc.i.for.body.i97_crit_edge, %if.end21
  %i.034.i = phi i32 [ 0, %if.end21 ], [ %inc.i99, %for.inc.i.for.body.i97_crit_edge ]
  %next.033.i = phi i32 [ %81, %if.end21 ], [ %add.i93, %for.inc.i.for.body.i97_crit_edge ]
  %arrayidx.i91 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.034.i
  %82 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %arrayidx.i91, align 4
  %83 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx1.i = getelementptr %struct.tx_desc, ptr %84, i32 %i.034.i
  %85 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx1.i, align 4
  %86 = load ptr, ptr %tx_ring.i, align 4
  %desc_length.i92 = getelementptr %struct.tx_desc, ptr %86, i32 %i.034.i, i32 1
  %87 = ptrtoint ptr %desc_length.i92 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 8445952, ptr %desc_length.i92, align 4
  %add.i93 = add i32 %next.033.i, 16
  %88 = call i32 @llvm.bswap.i32(i32 %add.i93) #14
  %89 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tx_ring.i, align 4
  %next_desc.i94 = getelementptr %struct.tx_desc, ptr %90, i32 %i.034.i, i32 3
  %91 = ptrtoint ptr %next_desc.i94 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %88, ptr %next_desc.i94, align 4
  %92 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %quirks.i, align 8
  %and.i95 = and i32 %93, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not.i96 = icmp eq i32 %and.i95, 0
  br i1 %tobool.not.i96, label %for.body.i97.for.inc.i_crit_edge, label %if.then.i98

for.body.i97.for.inc.i_crit_edge:                 ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i98:                                      ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %tx_bufs.i90 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx_bufs.i90, align 8
  %mul.i = mul nuw nsw i32 %i.034.i, 1536
  %arrayidx6.i = getelementptr i8, ptr %95, i32 %mul.i
  %arrayidx7.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.034.i
  %96 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %arrayidx6.i, ptr %arrayidx7.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i98, %for.body.i97.for.inc.i_crit_edge
  %inc.i99 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i100 = icmp eq i32 %inc.i99, 64
  br i1 %exitcond.not.i100, label %alloc_tbufs.exit, label %for.inc.i.for.body.i97_crit_edge

for.inc.i.for.body.i97_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i97

alloc_tbufs.exit:                                 ; preds = %for.inc.i
  %97 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_ring_dma.i, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %98) #14
  %100 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tx_ring.i, align 4
  %next_desc11.i = getelementptr %struct.tx_desc, ptr %101, i32 63, i32 3
  %102 = ptrtoint ptr %next_desc11.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %99, ptr %next_desc11.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %103 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %104, i32 0, i32 13
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #14
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %104, i32 0, i32 15
  call void @dql_reset(ptr noundef %dql.i.i.i) #14
  %pioaddr = getelementptr i8, ptr %dev, i32 4124
  %105 = ptrtoint ptr %pioaddr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pioaddr, align 4
  %107 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %quirks.i, align 8
  %and.i102 = and i32 %108, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.not.i103 = icmp eq i32 %and.i102, 0
  br i1 %tobool.not.i103, label %alloc_tbufs.exit.enable_mmio.exit_crit_edge, label %if.then.i104

alloc_tbufs.exit.enable_mmio.exit_crit_edge:      ; preds = %alloc_tbufs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %enable_mmio.exit

if.then.i104:                                     ; preds = %alloc_tbufs.exit
  %and1.i = and i32 %108, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #16
  %add.i105 = add i32 %106, 120
  %and4.i = and i32 %add.i105, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %109 = inttoptr i32 %add5.i to ptr
  %110 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %109) #14, !srcloc !245
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %111 = or i8 %110, 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 %111) #14, !srcloc !244
  br label %enable_mmio.exit

if.else.i:                                        ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #16
  %add13.i = add i32 %106, 123
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %112 = inttoptr i32 %add15.i to ptr
  %113 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %112) #14, !srcloc !245
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !249
  %114 = or i8 %113, -128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !250
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 %114) #14, !srcloc !244
  br label %enable_mmio.exit

enable_mmio.exit:                                 ; preds = %if.else.i, %if.then3.i, %alloc_tbufs.exit.enable_mmio.exit_crit_edge
  call fastcc void @rhine_power_init(ptr noundef %dev)
  call fastcc void @rhine_chip_reset(ptr noundef %dev)
  %task_lock.i = getelementptr i8, ptr %dev, i32 4404
  call void @mutex_lock_nested(ptr noundef %task_lock.i, i32 noundef 0) #14
  %task_enable.i = getelementptr i8, ptr %dev, i32 4496
  %115 = ptrtoint ptr %task_enable.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %task_enable.i, align 8
  call void @mutex_unlock(ptr noundef %task_lock.i) #14
  call fastcc void @init_registers(ptr noundef %dev)
  %116 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %msg_enable, align 4
  %and24 = and i32 %117, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %enable_mmio.exit.do.end47_crit_edge, label %do.body27

enable_mmio.exit.do.end47_crit_edge:              ; preds = %enable_mmio.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end47

do.body27:                                        ; preds = %enable_mmio.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_open.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_open, %if.then39)) #14
          to label %do.end47 [label %if.then39], !srcloc !258

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %118 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #14, !srcloc !254
  %119 = call i16 @llvm.bswap.i16(i16 %118) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv = zext i16 %119 to i32
  %mii_if = getelementptr i8, ptr %dev, i32 4716
  %120 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mii_if, align 4
  %call41 = call i32 @mdio_read(ptr noundef %dev, i32 noundef %121, i32 noundef 1), !range !253
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_open.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %call41) #14
  br label %do.end47

do.end47:                                         ; preds = %if.then39, %do.body27, %enable_mmio.exit.do.end47_crit_edge
  %122 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %123, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %out

out:                                              ; preds = %out_free_irq, %do.end47, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %rc.1, %out_free_irq ], [ %call17.i, %do.end47 ]
  ret i32 %rc.0

out_free_ring:                                    ; preds = %alloc_rbufs.exit
  %124 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %parent.i, align 8
  %126 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rx_ring.i, align 8
  %128 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rx_ring_dma.i, align 8
  call void @dma_free_attrs(ptr noundef %125, i32 noundef 2048, ptr noundef %127, i32 noundef %129, i32 noundef 0) #14
  %130 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %tx_ring.i, align 4
  %tx_bufs.i110 = getelementptr i8, ptr %dev, i32 4112
  %131 = ptrtoint ptr %tx_bufs.i110 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tx_bufs.i110, align 8
  %tobool.not.i111 = icmp eq ptr %132, null
  br i1 %tobool.not.i111, label %out_free_ring.free_ring.exit_crit_edge, label %if.then.i113

out_free_ring.free_ring.exit_crit_edge:           ; preds = %out_free_ring
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_ring.exit

if.then.i113:                                     ; preds = %out_free_ring
  call void @__sanitizer_cov_trace_pc() #16
  %tx_bufs_dma.i112 = getelementptr i8, ptr %dev, i32 4116
  %133 = ptrtoint ptr %tx_bufs_dma.i112 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tx_bufs_dma.i112, align 4
  call void @dma_free_attrs(ptr noundef %125, i32 noundef 98304, ptr noundef nonnull %132, i32 noundef %134, i32 noundef 0) #14
  br label %free_ring.exit

free_ring.exit:                                   ; preds = %if.then.i113, %out_free_ring.free_ring.exit_crit_edge
  %135 = ptrtoint ptr %tx_bufs.i110 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %tx_bufs.i110, align 8
  br label %out_free_irq

out_free_irq:                                     ; preds = %free_ring.exit, %alloc_ring.exit.thread
  %rc.1 = phi i32 [ %call17.i, %free_ring.exit ], [ -12, %alloc_ring.exit.thread ]
  %136 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %irq, align 8
  %call49 = call ptr @free_irq(i32 noundef %137, ptr noundef %dev) #14
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %task_lock.i = getelementptr i8, ptr %dev, i32 4404
  tail call void @mutex_lock_nested(ptr noundef %task_lock.i, i32 noundef 0) #14
  %task_enable.i = getelementptr i8, ptr %dev, i32 4496
  %2 = ptrtoint ptr %task_enable.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %task_enable.i, align 8
  tail call void @mutex_unlock(ptr noundef %task_lock.i) #14
  %slow_event_task.i = getelementptr i8, ptr %dev, i32 4500
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %slow_event_task.i) #14
  %reset_task.i = getelementptr i8, ptr %dev, i32 4544
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_task.i) #14
  %napi = getelementptr i8, ptr %dev, i32 4136
  tail call void @napi_disable(ptr noundef %napi) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %msg_enable = getelementptr i8, ptr %dev, i32 4588
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_close.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_close, %if.then6)) #14
          to label %do.end10 [label %if.then6], !srcloc !258

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #14, !srcloc !254
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_close.__UNIQUE_ID_ddebug364, ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %conv) #14
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body1, %entry.do.end10_crit_edge
  %tx_thresh = getelementptr i8, ptr %dev, i32 4713
  %9 = ptrtoint ptr %tx_thresh to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_thresh, align 1
  %11 = or i8 %10, 2
  %add.ptr13 = getelementptr i8, ptr %1, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 %11) #14, !srcloc !244
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr.i30 = getelementptr i8, ptr %13, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i30, i16 0) #14, !srcloc !257
  %add.ptr14 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 1024) #14, !srcloc !257
  %irq = getelementptr i8, ptr %dev, i32 4120
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 8
  %call15 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %dev) #14
  %parent.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2816
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 4608
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.end10
  %i.024.i = phi i32 [ 0, %do.end10 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_ring.i, align 8
  %arrayidx.i = getelementptr %struct.rx_desc, ptr %19, i32 %i.024.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx.i, align 4
  %21 = load ptr, ptr %rx_ring.i, align 8
  %addr.i = getelementptr %struct.rx_desc, ptr %21, i32 %i.024.i, i32 2
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -805249094, ptr %addr.i, align 4
  %arrayidx4.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 5, i32 %i.024.i
  %23 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx4.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.024.i
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx5.i, align 4
  %27 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_buf_sz.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %26, i32 noundef %28, i32 noundef 2, i32 noundef 0) #14
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx4.i, align 4
  tail call void @consume_skb(ptr noundef %30) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx4.i, align 4
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %free_rbufs.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

free_rbufs.exit:                                  ; preds = %if.end.i
  %32 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i, align 8
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2820
  br label %for.body.i36

for.body.i36:                                     ; preds = %if.end16.i.for.body.i36_crit_edge, %free_rbufs.exit
  %i.042.i = phi i32 [ 0, %free_rbufs.exit ], [ %inc.i39, %if.end16.i.for.body.i36_crit_edge ]
  %34 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx.i33 = getelementptr %struct.tx_desc, ptr %35, i32 %i.042.i
  %36 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx.i33, align 4
  %37 = load ptr, ptr %tx_ring.i, align 4
  %desc_length.i = getelementptr %struct.tx_desc, ptr %37, i32 %i.042.i, i32 1
  %38 = ptrtoint ptr %desc_length.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8445952, ptr %desc_length.i, align 4
  %39 = load ptr, ptr %tx_ring.i, align 4
  %addr.i34 = getelementptr %struct.tx_desc, ptr %39, i32 %i.042.i, i32 2
  %40 = ptrtoint ptr %addr.i34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -805249094, ptr %addr.i34, align 4
  %arrayidx6.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.042.i
  %41 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i35 = icmp eq ptr %42, null
  br i1 %tobool.not.i35, label %for.body.i36.if.end16.i_crit_edge, label %if.then.i37

for.body.i36.if.end16.i_crit_edge:                ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.then.i37:                                      ; preds = %for.body.i36
  %arrayidx7.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.042.i
  %43 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool8.not.i = icmp eq i32 %44, 0
  br i1 %tobool8.not.i, label %if.then.i37.if.end.i38_crit_edge, label %if.then9.i

if.then.i37.if.end.i38_crit_edge:                 ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i38

if.then9.i:                                       ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #16
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 6
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %33, i32 noundef %44, i32 noundef %46, i32 noundef 1, i32 noundef 0) #14
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.then9.i, %if.then.i37.if.end.i38_crit_edge
  %47 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx6.i, align 4
  tail call void @consume_skb(ptr noundef %48) #14
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i38, %for.body.i36.if.end16.i_crit_edge
  %49 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %arrayidx6.i, align 4
  %arrayidx19.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.042.i
  %50 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx19.i, align 4
  %inc.i39 = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i40 = icmp eq i32 %inc.i39, 64
  br i1 %exitcond.not.i40, label %free_tbufs.exit, label %if.end16.i.for.body.i36_crit_edge

if.end16.i.for.body.i36_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i36

free_tbufs.exit:                                  ; preds = %if.end16.i
  %51 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent.i, align 8
  %53 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_ring.i, align 8
  %rx_ring_dma.i = getelementptr i8, ptr %dev, i32 2824
  %55 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_ring_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %52, i32 noundef 2048, ptr noundef %54, i32 noundef %56, i32 noundef 0) #14
  %57 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %tx_ring.i, align 4
  %tx_bufs.i = getelementptr i8, ptr %dev, i32 4112
  %58 = ptrtoint ptr %tx_bufs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_bufs.i, align 8
  %tobool.not.i44 = icmp eq ptr %59, null
  br i1 %tobool.not.i44, label %free_tbufs.exit.free_ring.exit_crit_edge, label %if.then.i45

free_tbufs.exit.free_ring.exit_crit_edge:         ; preds = %free_tbufs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_ring.exit

if.then.i45:                                      ; preds = %free_tbufs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %tx_bufs_dma.i = getelementptr i8, ptr %dev, i32 4116
  %60 = ptrtoint ptr %tx_bufs_dma.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_bufs_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %52, i32 noundef 98304, ptr noundef nonnull %59, i32 noundef %61, i32 noundef 0) #14
  br label %free_ring.exit

free_ring.exit:                                   ; preds = %if.then.i45, %free_tbufs.exit.free_ring.exit_crit_edge
  %62 = ptrtoint ptr %tx_bufs.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %tx_bufs.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_start_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %base = getelementptr i8, ptr %dev, i32 4748
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %cur_tx = getelementptr i8, ptr %dev, i32 4600
  %4 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_tx, align 8
  %rem = and i32 %5, 63
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %7)
  %cmp.i = icmp ugt i32 %7, 59
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %skb_padto.exit, !prof !267

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

skb_padto.exit:                                   ; preds = %entry
  %sub.i = sub nuw nsw i32 60, %7
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %skb_padto.exit.if.end_crit_edge, label %skb_padto.exit.cleanup_crit_edge

skb_padto.exit.cleanup_crit_edge:                 ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

skb_padto.exit.if.end_crit_edge:                  ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %skb_padto.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 7, i32 %rem
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %arrayidx, align 4
  %quirks = getelementptr i8, ptr %dev, i32 4592
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks, align 8
  %and = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  %and5 = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %land.lhs.true.if.then13_crit_edge

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

lor.lhs.false:                                    ; preds = %land.lhs.true
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not = icmp eq i8 %17, 0
  br i1 %cmp.not, label %lor.lhs.false9, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %18 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %ip_summed, align 8
  %19 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %19)
  %cmp11 = icmp eq i16 %19, 1536
  br i1 %cmp11, label %lor.lhs.false9.if.then13_crit_edge, label %lor.lhs.false9.if.else_crit_edge

lor.lhs.false9.if.else_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

lor.lhs.false9.if.then13_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false9.if.then13_crit_edge, %lor.lhs.false.if.then13_crit_edge, %land.lhs.true.if.then13_crit_edge
  %20 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %21)
  %cmp14 = icmp ugt i32 %21, 1536
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %23 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.then13
  %arrayidx20 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 9, i32 %rem
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx20, align 4
  tail call void @skb_copy_and_csum_dev(ptr noundef %skb, ptr noundef %26) #14
  %27 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %28)
  %cmp22 = icmp ult i32 %28, 60
  br i1 %cmp22, label %if.then24, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx20, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %28
  %sub = sub nuw nsw i32 60, %28
  %31 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end19.if.end29_crit_edge
  %arrayidx30 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 8, i32 %rem
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx30, align 4
  %tx_bufs_dma = getelementptr i8, ptr %dev, i32 4116
  %33 = ptrtoint ptr %tx_bufs_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_bufs_dma, align 4
  %35 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx20, align 4
  %tx_bufs = getelementptr i8, ptr %dev, i32 4112
  %37 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_bufs, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %38 to i32
  %sub.ptr.sub = add i32 %34, %sub.ptr.lhs.cast
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  br label %if.end55

if.else:                                          ; preds = %lor.lhs.false9.if.else_crit_edge, %if.end.if.else_crit_edge
  %data34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data34, align 4
  %41 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len1.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %40) #14
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.else
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !267

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #14
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %46, %if.end.i.i ], [ %44, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef %40, i32 noundef %42) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %47 = load ptr, ptr @mem_map, align 4
  %48 = ptrtoint ptr %40 to i32
  %sub.i242 = add i32 %48, 1073741824
  %shr.i = lshr i32 %sub.i242, 12
  %add.ptr.i243 = getelementptr %struct.page, ptr %47, i32 %shr.i
  %and.i = and i32 %48, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i243, i32 noundef %and.i, i32 noundef %42, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i244 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %arrayidx38 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 8, i32 %rem
  %49 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.0.i244, ptr %arrayidx38, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef %retval.0.i244) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i244)
  %cmp.i245 = icmp eq i32 %retval.0.i244, -1
  br i1 %cmp.i245, label %if.then43, label %if.end49

if.then43:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  %50 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx38, align 4
  %tx_dropped47 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %51 = ptrtoint ptr %tx_dropped47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_dropped47, align 4
  %inc48 = add i32 %52, 1
  store i32 %inc48, ptr %tx_dropped47, align 4
  br label %cleanup

if.end49:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx38, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end49, %if.end29
  %.sink261 = phi i32 [ %54, %if.end49 ], [ %add, %if.end29 ]
  %55 = tail call i32 @llvm.bswap.i32(i32 %.sink261)
  %tx_ring52 = getelementptr i8, ptr %dev, i32 2820
  %56 = ptrtoint ptr %tx_ring52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_ring52, align 4
  %addr54 = getelementptr %struct.tx_desc, ptr %57, i32 %rem, i32 2
  %58 = ptrtoint ptr %addr54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %55, ptr %addr54, align 4
  %59 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %60)
  %cmp57 = icmp ugt i32 %60, 59
  %phi.bo = or i32 %60, 14712832
  %spec.select = select i1 %cmp57, i32 %phi.bo, i32 14712892
  %61 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %tx_ring60 = getelementptr i8, ptr %dev, i32 2820
  %62 = ptrtoint ptr %tx_ring60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_ring60, align 4
  %desc_length = getelementptr %struct.tx_desc, ptr %63, i32 %rem, i32 1
  %64 = ptrtoint ptr %desc_length to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %61, ptr %desc_length, align 4
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %65 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %bf.load62 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load62)
  %tobool65.not = icmp sgt i32 %bf.load62, -1
  br i1 %tobool65.not, label %if.else82, label %if.then68, !prof !267

if.then68:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %66 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vlan_tci, align 2
  %and70 = and i16 %67, 4095
  %and72 = lshr i16 %67, 1
  %68 = and i16 %and72, 28672
  %or73 = or i16 %68, %and70
  %69 = tail call i16 @llvm.bswap.i16(i16 %or73)
  %70 = zext i16 %69 to i32
  %71 = ptrtoint ptr %tx_ring60 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_ring60, align 4
  %arrayidx77 = getelementptr %struct.tx_desc, ptr %72, i32 %rem
  %73 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %arrayidx77, align 4
  %74 = load ptr, ptr %tx_ring60, align 4
  %desc_length80 = getelementptr %struct.tx_desc, ptr %74, i32 %rem, i32 1
  %75 = ptrtoint ptr %desc_length80 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %desc_length80, align 4
  %or81 = or i32 %76, 512
  store i32 %or81, ptr %desc_length80, align 4
  br label %if.end86

if.else82:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %tx_ring60 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_ring60, align 4
  %arrayidx84 = getelementptr %struct.tx_desc, ptr %78, i32 %rem
  %79 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %arrayidx84, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else82, %if.then68
  %80 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len1.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %82 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %_tx.i.i, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %83, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %81)
  %cmp.i.i.i = icmp ugt i32 %81, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !268

do.body2.i.i.i:                                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !269
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end86
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %83, i32 0, i32 15, i32 2
  %84 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %81, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !270
  %85 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %86, %81
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %83, i32 0, i32 15, i32 1
  %87 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %89 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %88, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i, label %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge, label %if.end.i.i246, !prof !267

dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_sent_queue.exit

if.end.i.i246:                                    ; preds = %dql_queued.exit.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %83, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !271
  %90 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %92 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %91, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i246.netdev_sent_queue.exit_crit_edge, !prof !268

if.end.i.i246.netdev_sent_queue.exit_crit_edge:   ; preds = %if.end.i.i246
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_sent_queue.exit

if.then14.i.i:                                    ; preds = %if.end.i.i246
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #14
  br label %netdev_sent_queue.exit

netdev_sent_queue.exit:                           ; preds = %if.then14.i.i, %if.end.i.i246.netdev_sent_queue.exit_crit_edge, %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !272
  %94 = ptrtoint ptr %tx_ring60 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx_ring60, align 4
  %arrayidx89 = getelementptr %struct.tx_desc, ptr %95, i32 %rem
  %96 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx89, align 4
  %or91 = or i32 %97, 128
  store i32 %or91, ptr %arrayidx89, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !273
  tail call void @arm_heavy_mb() #14
  %98 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cur_tx, align 8
  %inc93 = add i32 %99, 1
  store i32 %inc93, ptr %cur_tx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !274
  %100 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %bf.load101 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load101)
  %tobool104.not = icmp sgt i32 %bf.load101, -1
  br i1 %tobool104.not, label %netdev_sent_queue.exit.if.end115_crit_edge, label %do.body106

netdev_sent_queue.exit.if.end115_crit_edge:       ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

do.body106:                                       ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr107 = getelementptr i8, ptr %3, i32 10
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr107) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %102 = or i8 %101, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr107, i8 %102) #14, !srcloc !244
  br label %if.end115

if.end115:                                        ; preds = %do.body106, %netdev_sent_queue.exit.if.end115_crit_edge
  %add.ptr116 = getelementptr i8, ptr %3, i32 9
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr116) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %104 = or i8 %103, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr116, i8 %104) #14, !srcloc !244
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %106 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cur_tx, align 8
  %dirty_tx.i = getelementptr i8, ptr %dev, i32 4604
  %108 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dirty_tx.i, align 4
  %sub.i247 = sub i32 %107, %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %sub.i247)
  %cmp.i248 = icmp ugt i32 %sub.i247, 57
  br i1 %cmp.i248, label %if.then128, label %if.end115.do.body139_crit_edge

if.end115.do.body139_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body139

if.then128:                                       ; preds = %if.end115
  %110 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i250 = getelementptr inbounds %struct.netdev_queue, ptr %111, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i250) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !275
  %112 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cur_tx, align 8
  %114 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dirty_tx.i, align 4
  %sub.i253 = sub i32 %113, %115
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %sub.i253)
  %cmp.i254 = icmp ugt i32 %sub.i253, 57
  br i1 %cmp.i254, label %if.then128.do.body139_crit_edge, label %if.then136

if.then128.do.body139_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body139

if.then136:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #16
  %116 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %117) #14
  br label %do.body139

do.body139:                                       ; preds = %if.then136, %if.then128.do.body139_crit_edge, %if.end115.do.body139_crit_edge
  %msg_enable = getelementptr i8, ptr %dev, i32 4588
  %118 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %msg_enable, align 4
  %and140 = and i32 %119, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body139.cleanup_crit_edge, label %do.body143

do.body139.cleanup_crit_edge:                     ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body143:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_start_tx.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_start_tx, %if.then152)) #14
          to label %cleanup [label %if.then152], !srcloc !258

if.then152:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cur_tx, align 8
  %sub154 = add i32 %121, -1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_start_tx.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %sub154, i32 noundef %rem) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then152, %do.body143, %do.body139.cleanup_crit_edge, %if.then43, %if.then16, %skb_padto.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %task_lock = getelementptr i8, ptr %dev, i32 4404
  tail call void @mutex_lock_nested(ptr noundef %task_lock, i32 noundef 0) #14
  %mii_if = getelementptr i8, ptr %dev, i32 4716
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call3 = tail call i32 @generic_mii_ioctl(ptr noundef %mii_if, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #14
  %dev1.i = getelementptr i8, ptr %dev, i32 4736
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %force_media.i = getelementptr i8, ptr %dev, i32 4732
  %4 = ptrtoint ptr %force_media.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %force_media.i, align 4
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.if.end4.i_crit_edge, label %if.then.i

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end4.i_crit_edge, label %if.then3.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_on(ptr noundef %3) #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  tail call fastcc void @rhine_check_media(ptr noundef %3, i32 noundef 0) #14
  %msg_enable.i = getelementptr i8, ptr %3, i32 4588
  %9 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.rhine_set_carrier.exit_crit_edge, label %if.then6.i

if.end4.i.rhine_set_carrier.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_set_carrier.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %force_media.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load8.i = load i8, ptr %force_media.i, align 4
  %bf.lshr9.i = lshr i8 %bf.load8.i, 6
  %bf.clear10.i = and i8 %bf.lshr9.i, 1
  %bf.cast11.i = zext i8 %bf.clear10.i to i32
  %state.i21.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %state.i21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i21.i, align 4
  %14 = lshr i32 %13, 2
  %.lobit.i = and i32 %14, 1
  %15 = xor i32 %.lobit.i, 1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.44, i32 noundef %bf.cast11.i, i32 noundef %15) #17
  br label %rhine_set_carrier.exit

rhine_set_carrier.exit:                           ; preds = %if.then6.i, %if.end4.i.rhine_set_carrier.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %task_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %rhine_set_carrier.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %rhine_set_carrier.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rhine_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #14, !srcloc !254
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv = zext i16 %3 to i32
  %mii_if = getelementptr i8, ptr %dev, i32 4716
  %4 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_if, align 4
  %call2 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %5, i32 noundef 1), !range !253
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %conv, i32 noundef %call2) #17
  %reset_task = getelementptr i8, ptr %dev, i32 4544
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %reset_task) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rhine_get_stats64(ptr noundef %dev, ptr noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 4360
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %base.i = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %dev.i = getelementptr i8, ptr %dev, i32 4128
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %add.ptr.i37 = getelementptr i8, ptr %1, i32 126
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i37) #14, !srcloc !254
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv.i = zext i16 %5 to i32
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 12
  %6 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_crc_errors.i, align 4
  %add.i = add i32 %7, %conv.i
  store i32 %add.i, ptr %rx_crc_errors.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 124
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #14, !srcloc !254
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv4.i = zext i16 %9 to i32
  %rx_missed_errors.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 15
  %10 = ptrtoint ptr %rx_missed_errors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_missed_errors.i, align 4
  %add5.i = add i32 %11, %conv4.i
  store i32 %add5.i, ptr %rx_missed_errors.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #14, !srcloc !260
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i37) #14, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #14, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %stats2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  tail call void @netdev_stats_to_stats64(ptr noundef %stats, ptr noundef %stats2) #14
  %rx_stats = getelementptr i8, ptr %dev, i32 4616
  %syncp = getelementptr i8, ptr %dev, i32 4632
  %bytes = getelementptr i8, ptr %dev, i32 4624
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call3 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %14 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_stats, align 8
  %16 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %stats, align 8
  %17 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bytes, align 8
  %19 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %rx_bytes, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !276
  %20 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %21, %call3
  br i1 %cmp.i.i.i.i.not, label %do.body9.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body9.preheader:                               ; preds = %do.body
  %tx_stats = getelementptr i8, ptr %dev, i32 4664
  %syncp10 = getelementptr i8, ptr %dev, i32 4680
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %bytes15 = getelementptr i8, ptr %dev, i32 4672
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  br label %do.body9

do.body9:                                         ; preds = %do.body9.do.body9_crit_edge, %do.body9.preheader
  %call11 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp10)
  %22 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_stats, align 8
  %24 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %tx_packets, align 8
  %25 = ptrtoint ptr %bytes15 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bytes15, align 8
  %27 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %tx_bytes, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !276
  %28 = ptrtoint ptr %syncp10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %syncp10, align 4
  %cmp.i.i.i.i38.not = icmp eq i32 %29, %call11
  br i1 %cmp.i.i.i.i38.not, label %do.end20, label %do.body9.do.body9_crit_edge

do.body9.do.body9_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body9

do.end20:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_vlan_rx_add_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 4360
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %conv = zext i16 %vid to i32
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %add.ptr.i) #14
  tail call fastcc void @rhine_update_vcam(ptr noundef %dev)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_vlan_rx_kill_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 4360
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %conv = zext i16 %vid to i32
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %add.ptr.i) #14
  tail call fastcc void @rhine_update_vcam(ptr noundef %dev)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rhine_poll(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr i8, ptr %dev, i32 4120
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq1, align 8
  tail call void @disable_irq(i32 noundef %1) #14
  %call2 = tail call i32 @rhine_interrupt(i32 noundef %1, ptr noundef %dev)
  tail call void @enable_irq(i32 noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr i8, ptr %dev_instance, i32 4748
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i37) #14, !srcloc !254
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %conv.i = zext i16 %3 to i32
  %quirks.i = getelementptr i8, ptr %dev_instance, i32 4592
  %4 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.rhine_get_events.exit_crit_edge, label %if.then.i

entry.rhine_get_events.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_get_events.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr1.i = getelementptr i8, ptr %1, i32 132
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %conv3.i = zext i8 %6 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl.i, %conv.i
  br label %rhine_get_events.exit

rhine_get_events.exit:                            ; preds = %if.then.i, %entry.rhine_get_events.exit_crit_edge
  %intr_status.0.i = phi i32 [ %or.i, %if.then.i ], [ %conv.i, %entry.rhine_get_events.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %dev_instance, i32 4588
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rhine_get_events.exit.do.end10_crit_edge, label %do.body2

rhine_get_events.exit.do.end10_crit_edge:         ; preds = %rhine_get_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

do.body2:                                         ; preds = %rhine_get_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_interrupt.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_interrupt, %if.then7)) #14
          to label %do.end10 [label %if.then7], !srcloc !258

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_interrupt.__UNIQUE_ID_ddebug357, ptr noundef %dev_instance, ptr noundef nonnull @.str.50, i32 noundef %intr_status.0.i) #14
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %rhine_get_events.exit.do.end10_crit_edge
  %and11 = and i32 %intr_status.0.i, 589567
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.end10.if.end14_crit_edge, label %if.then13

do.end10.if.end14_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then13:                                        ; preds = %do.end10
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %10, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i39, i16 0) #14, !srcloc !257
  %napi = getelementptr i8, ptr %dev_instance, i32 4136
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #14
  br i1 %call.i, label %if.then.i40, label %if.then13.if.end14_crit_edge

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then.i40:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__napi_schedule(ptr noundef %napi) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then.i40, %if.then13.if.end14_crit_edge, %do.end10.if.end14_crit_edge
  %and15 = and i32 %intr_status.0.i, -589504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end26_crit_edge, label %do.body18

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.body18:                                        ; preds = %if.end14
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and20 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body18.if.end26_crit_edge, label %if.then22

do.body18.if.end26_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_instance, ptr noundef nonnull @.str.51, i32 noundef %intr_status.0.i) #17
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %do.body18.if.end26_crit_edge, %if.end14.if.end26_crit_edge
  %not.tobool12.not = xor i1 %tobool12.not, true
  %cond = zext i1 %not.tobool12.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhine_skb_dma_init(ptr noundef %dev, ptr nocapture noundef %sd) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 4608
  %2 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_buf_sz, align 8
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %3, i32 noundef 2592) #14
  %4 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %sd, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call.i30 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %6) #14
  br i1 %call.i30, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !267

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #14
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %dma33 = getelementptr inbounds %struct.rhine_skb_dma, ptr %sd, i32 0, i32 1
  %11 = ptrtoint ptr %dma33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %dma33, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef -1) #14
  br label %do.body

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef %6, i32 noundef %3) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %6 to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i31 = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i31, i32 noundef %and.i, i32 noundef %3, i32 noundef 2, i32 noundef 0) #14
  %dma = getelementptr inbounds %struct.rhine_skb_dma, ptr %sd, i32 0, i32 1
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call41.i, ptr %dma, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef %call41.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.body_crit_edge, label %dma_map_single_attrs.exit.cleanup_crit_edge

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

dma_map_single_attrs.exit.do.body_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %dma_map_single_attrs.exit.do.body_crit_edge, %dma_map_single_attrs.exit.thread
  %msg_enable = getelementptr i8, ptr %dev, i32 4588
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body.do.end_crit_edge, label %if.then13

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.53) #17
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body.do.end_crit_edge
  %17 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %18, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dma_map_single_attrs.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_copy_and_csum_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_stats_to_stats64(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !277
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #14
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #14
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #14
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !278
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !268

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !279
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !280
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !281
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !282
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhine_update_vcam(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 4748
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef 4096, i32 noundef 0) #14
  %conv221 = and i32 %call1, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv221)
  %cmp22 = icmp eq i32 %conv221, 0
  br i1 %cmp22, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.i17 = getelementptr i8, ptr %1, i32 146
  %add.ptr1.i = getelementptr i8, ptr %1, i32 147
  %add.ptr3.i = getelementptr i8, ptr %1, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %vCAMmask.024 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.inc.for.body_crit_edge ]
  %storemerge.in23 = phi i32 [ %call1, %for.body.lr.ph ], [ %call9, %for.inc.for.body_crit_edge ]
  %storemerge = trunc i32 %storemerge.in23 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 3) #14, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !283
  tail call void @arm_heavy_mb() #14
  %2 = trunc i32 %i.025 to i8
  %conv.i = and i8 %2, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 %conv.i) #14, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  %3 = tail call i16 @llvm.bswap.i16(i16 %storemerge) #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 %3) #14, !srcloc !257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !284
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 5) #14, !srcloc !244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 0) #14, !srcloc !244
  %shl = shl nuw i32 1, %i.025
  %or = or i32 %shl, %vCAMmask.024
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.025)
  %exitcond = icmp eq i32 %i.025, 31
  br i1 %exitcond, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.025, 1
  %conv8 = and i32 %storemerge.in23, 65535
  %add = add nuw nsw i32 %conv8, 1
  %call9 = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef 4096, i32 noundef %add) #14
  %conv2 = and i32 %call9, 61440
  %cmp = icmp eq i32 %conv2, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %vCAMmask.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ], [ %or, %for.inc.for.end_crit_edge ]
  %add.ptr.i18 = getelementptr i8, ptr %1, i32 146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18, i8 3) #14, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !261
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i19 = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %vCAMmask.1) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i19, i32 %6) #14, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18, i8 0) #14, !srcloc !244
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #14
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rhine_get_wol(ptr noundef %dev, ptr nocapture noundef writeonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr i8, ptr %dev, i32 4592
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr i8, ptr %dev, i32 4360
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 47, ptr %supported, align 4
  %wolopts = getelementptr i8, ptr %dev, i32 4712
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wolopts, align 8
  %conv = zext i8 %4 to i32
  %wolopts1 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %5 = ptrtoint ptr %wolopts1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %wolopts1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_set_wol(ptr noundef %dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr i8, ptr %dev, i32 4592
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %and1 = and i32 %3, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr i8, ptr %dev, i32 4360
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %conv = trunc i32 %5 to i8
  %wolopts6 = getelementptr i8, ptr %dev, i32 4712
  %6 = ptrtoint ptr %wolopts6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %wolopts6, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netdev_get_msglevel(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 4588
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @netdev_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %value) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 4588
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 4716
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii_if) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 4716
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii_if) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %task_lock = getelementptr i8, ptr %dev, i32 4404
  tail call void @mutex_lock_nested(ptr noundef %task_lock, i32 noundef 0) #14
  %mii_if = getelementptr i8, ptr %dev, i32 4716
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #14
  tail call void @mutex_unlock(ptr noundef %task_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %task_lock = getelementptr i8, ptr %dev, i32 4404
  tail call void @mutex_lock_nested(ptr noundef %task_lock, i32 noundef 0) #14
  %mii_if = getelementptr i8, ptr %dev, i32 4716
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #14
  %dev1.i = getelementptr i8, ptr %dev, i32 4736
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %force_media.i = getelementptr i8, ptr %dev, i32 4732
  %2 = ptrtoint ptr %force_media.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %force_media.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end4.i_crit_edge, label %if.then.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then.i:                                        ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end4.i_crit_edge, label %if.then3.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_on(ptr noundef %1) #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  tail call fastcc void @rhine_check_media(ptr noundef %1, i32 noundef 0) #14
  %msg_enable.i = getelementptr i8, ptr %1, i32 4588
  %7 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.rhine_set_carrier.exit_crit_edge, label %if.then6.i

if.end4.i.rhine_set_carrier.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhine_set_carrier.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %force_media.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load8.i = load i8, ptr %force_media.i, align 4
  %bf.lshr9.i = lshr i8 %bf.load8.i, 6
  %bf.clear10.i = and i8 %bf.lshr9.i, 1
  %bf.cast11.i = zext i8 %bf.clear10.i to i32
  %state.i21.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state.i21.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i21.i, align 4
  %12 = lshr i32 %11, 2
  %.lobit.i = and i32 %12, 1
  %13 = xor i32 %.lobit.i, 1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %bf.cast11.i, i32 noundef %13) #17
  br label %rhine_set_carrier.exit

rhine_set_carrier.exit:                           ; preds = %if.then6.i, %if.end4.i.rhine_set_carrier.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %task_lock) #14
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhine_rx(ptr noundef %dev, i32 noundef %limit) unnamed_addr #2 align 64 {
entry:
  %sd = alloca %struct.rhine_skb_dma, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %cur_rx = getelementptr i8, ptr %dev, i32 4596
  %2 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_rx, align 4
  %rem = and i32 %3, 63
  %msg_enable = getelementptr i8, ptr %dev, i32 4588
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body3

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_rx.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_rx, %if.then8)) #14
          to label %do.end11 [label %if.then8], !srcloc !258

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  %rx_ring = getelementptr i8, ptr %dev, i32 2816
  %6 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring, align 8
  %arrayidx = getelementptr %struct.rx_desc, ptr %7, i32 %rem
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_rx.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i32 noundef %rem, i32 noundef %10) #14
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3, %entry.do.end11_crit_edge
  %rx_ring12 = getelementptr i8, ptr %dev, i32 2816
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit)
  %cmp254 = icmp sgt i32 %limit, 0
  br i1 %cmp254, label %for.body.lr.ph, label %do.end11.cleanup162_crit_edge

do.end11.cleanup162_crit_edge:                    ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup162

for.body.lr.ph:                                   ; preds = %do.end11
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %lock = getelementptr i8, ptr %dev, i32 4360
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %11 = getelementptr inbounds %struct.rhine_skb_dma, ptr %sd, i32 0, i32 1
  %rx_buf_sz140 = getelementptr i8, ptr %dev, i32 4608
  %rx_stats = getelementptr i8, ptr %dev, i32 4616
  %syncp = getelementptr i8, ptr %dev, i32 4632
  %bytes = getelementptr i8, ptr %dev, i32 4624
  %dep_map.i.i = getelementptr i8, ptr %dev, i32 4636
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  br label %for.body

for.body:                                         ; preds = %give_descriptor_to_nic.for.body_crit_edge, %for.body.lr.ph
  %entry2.0256 = phi i32 [ %rem, %for.body.lr.ph ], [ %rem158, %give_descriptor_to_nic.for.body_crit_edge ]
  %count.0255 = phi i32 [ 0, %for.body.lr.ph ], [ %inc159, %give_descriptor_to_nic.for.body_crit_edge ]
  %12 = ptrtoint ptr %rx_ring12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ring12, align 8
  %add.ptr = getelementptr %struct.rx_desc, ptr %13, i32 %entry2.0256
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shr = lshr i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool15.not = icmp sgt i32 %16, -1
  br i1 %tobool15.not, label %do.body18, label %for.body.cleanup162_crit_edge

for.body.cleanup162_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup162

do.body18:                                        ; preds = %for.body
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 4
  %and20 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body18.do.end41_crit_edge, label %do.body23

do.body18.do.end41_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

do.body23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_rx.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_rx, %if.then35)) #14
          to label %do.end41 [label %if.then35], !srcloc !258

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_rx.__UNIQUE_ID_ddebug362, ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, i32 noundef %16) #14
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %do.body23, %do.body18.do.end41_crit_edge
  %and42 = and i32 %16, 911
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and42)
  %cmp43.not = icmp eq i32 %and42, 768
  br i1 %cmp43.not, label %if.else105, label %if.then44

if.then44:                                        ; preds = %do.end41
  %and45 = and i32 %16, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and45)
  %cmp46.not = icmp eq i32 %and45, 768
  br i1 %cmp46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %entry2.0256, i32 noundef %shr, i32 noundef %16) #17
  %19 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_length_errors, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %rx_length_errors, align 8
  br label %give_descriptor_to_nic

if.else:                                          ; preds = %if.then44
  %and48 = and i32 %16, 143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else.give_descriptor_to_nic_crit_edge, label %do.body51

if.else.give_descriptor_to_nic_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %give_descriptor_to_nic

do.body51:                                        ; preds = %if.else
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 4
  %and53 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body51.do.end74_crit_edge, label %do.body56

do.body51.do.end74_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end74

do.body56:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_rx.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_rx, %if.then68)) #14
          to label %do.end74 [label %if.then68], !srcloc !258

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_rx.__UNIQUE_ID_ddebug363, ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.62, i32 noundef %16) #14
  br label %do.end74

do.end74:                                         ; preds = %if.then68, %do.body56, %do.body51.do.end74_crit_edge
  %23 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_errors, align 8
  %inc76 = add i32 %24, 1
  store i32 %inc76, ptr %rx_errors, align 8
  %and77 = and i32 %16, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.end74.if.end83_crit_edge, label %if.then79

do.end74.if.end83_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then79:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_length_errors, align 8
  %inc82 = add i32 %26, 1
  store i32 %inc82, ptr %rx_length_errors, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %do.end74.if.end83_crit_edge
  %and84 = and i32 %16, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end89_crit_edge, label %if.then86

if.end83.if.end89_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_fifo_errors, align 8
  %inc88 = add i32 %28, 1
  store i32 %inc88, ptr %rx_fifo_errors, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end83.if.end89_crit_edge
  %and90 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end95_crit_edge, label %if.then92

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_frame_errors, align 4
  %inc94 = add i32 %30, 1
  store i32 %inc94, ptr %rx_frame_errors, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end89.if.end95_crit_edge
  %and96 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.give_descriptor_to_nic_crit_edge, label %if.then98

if.end95.give_descriptor_to_nic_crit_edge:        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %give_descriptor_to_nic

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %31 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_crc_errors, align 8
  %inc100 = add i32 %32, 1
  store i32 %inc100, ptr %rx_crc_errors, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %give_descriptor_to_nic

if.else105:                                       ; preds = %do.end41
  %sub = add nsw i32 %shr, -4
  %33 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %33)
  %cmp106 = icmp slt i32 %sub, %33
  br i1 %cmp106, label %if.then107, label %if.else125

if.then107:                                       ; preds = %if.else105
  %add.i.i = add nsw i32 %shr, -2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add.i.i, i32 noundef 2592) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then107.drop_crit_edge, label %if.end119

if.then107.drop_crit_edge:                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop

if.end119:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %37, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %arrayidx120 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 6, i32 %entry2.0256
  %38 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx120, align 4
  %40 = ptrtoint ptr %rx_buf_sz140 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_buf_sz140, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %1, i32 noundef %39, i32 noundef %41, i32 noundef 2) #14
  %arrayidx121 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 5, i32 %entry2.0256
  %42 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx121, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i.i, align 4
  %48 = call ptr @memcpy(ptr %47, ptr %45, i32 %sub)
  %49 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx120, align 4
  %51 = ptrtoint ptr %rx_buf_sz140 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_buf_sz140, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %50, i32 noundef %52, i32 noundef 2) #14
  br label %if.end141

if.else125:                                       ; preds = %if.else105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sd) #14
  %53 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %sd, align 4, !annotation !263
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %11, align 4, !annotation !263
  %call126 = call fastcc i32 @rhine_skb_dma_init(ptr noundef %dev, ptr noundef nonnull %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %cleanup.thread, label %cleanup, !prof !268

cleanup.thread:                                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sd) #14
  br label %drop

cleanup:                                          ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx137 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 5, i32 %entry2.0256
  %55 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx137, align 4
  %arrayidx139 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 6, i32 %entry2.0256
  %57 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx139, align 4
  %59 = ptrtoint ptr %rx_buf_sz140 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_buf_sz140, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %58, i32 noundef %60, i32 noundef 2, i32 noundef 0) #14
  %61 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %11, align 4
  %63 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx139, align 4
  %64 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sd, align 4
  %66 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %arrayidx137, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %62) #14
  %68 = ptrtoint ptr %rx_ring12 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_ring12, align 8
  %addr.i = getelementptr %struct.rx_desc, ptr %69, i32 %entry2.0256, i32 2
  %70 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sd) #14
  br label %if.end141

if.end141:                                        ; preds = %cleanup, %if.end119
  %skb.1 = phi ptr [ %call.i.i, %if.end119 ], [ %56, %cleanup ]
  %call142 = tail call ptr @skb_put(ptr noundef %skb.1, i32 noundef %sub) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !285
  %desc_length.i = getelementptr %struct.rx_desc, ptr %13, i32 %entry2.0256, i32 1
  %71 = ptrtoint ptr %desc_length.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %desc_length.i, align 4
  %and.i = and i32 %72, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end141.cleanup150_crit_edge, label %if.then.i, !prof !267

if.end141.cleanup150_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup150

if.then.i:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %73 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i, align 4
  %add.i.i247 = add nuw nsw i32 %shr, 3
  %and.i.i = and i32 %add.i.i247, 131068
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %and.i.i
  %75 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr1.i.i, align 2
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 15, i32 0, i32 9
  %77 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 15, i32 0, i32 10
  %78 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %76, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 15, i32 0, i32 3
  %79 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %cleanup150

cleanup150:                                       ; preds = %if.then.i, %if.end141.cleanup150_crit_edge
  %call143 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.1, ptr noundef %dev) #14
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 15, i32 0, i32 18
  %80 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %call143, ptr %protocol, align 8
  %call144 = tail call i32 @netif_receive_skb(ptr noundef %skb.1) #14
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %conv = sext i32 %sub to i64
  %81 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %bytes, align 8
  %add = add i64 %82, %conv
  store i64 %add, ptr %bytes, align 8
  %83 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %rx_stats, align 8
  %inc147 = add i64 %84, 1
  store i64 %inc147, ptr %rx_stats, align 8
  %85 = tail call ptr @llvm.returnaddress(i32 0) #14
  %86 = ptrtoint ptr %85 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %86) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !286
  %87 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %88, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %give_descriptor_to_nic

give_descriptor_to_nic:                           ; preds = %drop, %cleanup150, %if.then98, %if.end95.give_descriptor_to_nic_crit_edge, %if.else.give_descriptor_to_nic_crit_edge, %if.then47
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 128, ptr %add.ptr, align 4
  %90 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cur_rx, align 4
  %inc157 = add i32 %91, 1
  store i32 %inc157, ptr %cur_rx, align 4
  %rem158 = and i32 %inc157, 63
  %inc159 = add nuw nsw i32 %count.0255, 1
  %exitcond.not = icmp eq i32 %inc159, %limit
  br i1 %exitcond.not, label %give_descriptor_to_nic.cleanup162_crit_edge, label %give_descriptor_to_nic.for.body_crit_edge

give_descriptor_to_nic.for.body_crit_edge:        ; preds = %give_descriptor_to_nic
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

give_descriptor_to_nic.cleanup162_crit_edge:      ; preds = %give_descriptor_to_nic
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup162

drop:                                             ; preds = %cleanup.thread, %if.then107.drop_crit_edge
  %92 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rx_dropped, align 8
  %inc161 = add i32 %93, 1
  store i32 %inc161, ptr %rx_dropped, align 8
  br label %give_descriptor_to_nic

cleanup162:                                       ; preds = %give_descriptor_to_nic.cleanup162_crit_edge, %for.body.cleanup162_crit_edge, %do.end11.cleanup162_crit_edge
  %count.0.lcssa = phi i32 [ 0, %do.end11.cleanup162_crit_edge ], [ %limit, %give_descriptor_to_nic.cleanup162_crit_edge ], [ %count.0255, %for.body.cleanup162_crit_edge ]
  ret i32 %count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhine_tx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %dirty_tx2 = getelementptr i8, ptr %dev, i32 4604
  %2 = ptrtoint ptr %dirty_tx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_tx2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !287
  %cur_tx6 = getelementptr i8, ptr %dev, i32 4600
  %4 = ptrtoint ptr %cur_tx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_tx6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not266 = icmp eq i32 %3, %5
  br i1 %cmp.not266, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tx_ring = getelementptr i8, ptr %dev, i32 2820
  %msg_enable = getelementptr i8, ptr %dev, i32 4588
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 19
  %quirks = getelementptr i8, ptr %dev, i32 4592
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %tx_stats = getelementptr i8, ptr %dev, i32 4664
  %syncp = getelementptr i8, ptr %dev, i32 4680
  %bytes = getelementptr i8, ptr %dev, i32 4672
  %dep_map.i.i = getelementptr i8, ptr %dev, i32 4684
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %bytes_compl.0269 = phi i32 [ 0, %while.body.lr.ph ], [ %add146, %cleanup.while.body_crit_edge ]
  %dirty_tx.0267 = phi i32 [ %3, %while.body.lr.ph ], [ %inc150, %cleanup.while.body_crit_edge ]
  %rem = and i32 %dirty_tx.0267, 63
  %6 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.tx_desc, ptr %7, i32 %rem
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.do.end19_crit_edge, label %do.body9

while.body.do.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

do.body9:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_tx.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_tx, %if.then14)) #14
          to label %do.end19 [label %if.then14], !srcloc !258

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_tx.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %rem, i32 noundef %10) #14
  br label %do.end19

do.end19:                                         ; preds = %if.then14, %do.body9, %while.body.do.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool21.not = icmp sgt i32 %10, -1
  br i1 %tobool21.not, label %if.end23, label %do.end19.while.end_crit_edge

do.end19.while.end_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end23:                                         ; preds = %do.end19
  %arrayidx24 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 7, i32 %rem
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx24, align 4
  %and25 = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else, label %do.body28

do.body28:                                        ; preds = %if.end23
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and30 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body28.do.end51_crit_edge, label %do.body33

do.body28.do.end51_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end51

do.body33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_tx.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_tx, %if.then45)) #14
          to label %do.end51 [label %if.then45], !srcloc !258

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_tx.__UNIQUE_ID_ddebug359, ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %10) #14
  br label %do.end51

do.end51:                                         ; preds = %if.then45, %do.body33, %do.body28.do.end51_crit_edge
  %17 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %tx_errors, align 4
  %and52 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.end51.if.end57_crit_edge, label %if.then54

do.end51.if.end57_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then54:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_carrier_errors, align 4
  %inc56 = add i32 %20, 1
  store i32 %inc56, ptr %tx_carrier_errors, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %do.end51.if.end57_crit_edge
  %and58 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end63_crit_edge, label %if.then60

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_window_errors, align 8
  %inc62 = add i32 %22, 1
  store i32 %inc62, ptr %tx_window_errors, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end57.if.end63_crit_edge
  %and64 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end69_crit_edge, label %if.then66

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_aborted_errors, align 8
  %inc68 = add i32 %24, 1
  store i32 %inc68, ptr %tx_aborted_errors, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end63.if.end69_crit_edge
  %and70 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end75_crit_edge, label %if.then72

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_heartbeat_errors, align 4
  %inc74 = add i32 %26, 1
  store i32 %inc74, ptr %tx_heartbeat_errors, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end69.if.end75_crit_edge
  %27 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %quirks, align 8
  %and76 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %and78 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %or.cond = select i1 %tobool77.not, i1 true, i1 %tobool79.not
  %and80 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %or.cond237 = select i1 %or.cond, i1 %tobool81.not, i1 false
  %and83 = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %or.cond238 = select i1 %or.cond237, i1 %tobool84.not, i1 false
  br i1 %or.cond238, label %if.end75.if.end137_crit_edge, label %if.then85

if.end75.if.end137_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end137

if.then85:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %29 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_fifo_errors, align 8
  %inc87 = add i32 %30, 1
  store i32 %inc87, ptr %tx_fifo_errors, align 8
  %31 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_ring, align 4
  %arrayidx89 = getelementptr %struct.tx_desc, ptr %32, i32 %rem
  %33 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 128, ptr %arrayidx89, align 4
  br label %while.end

if.else:                                          ; preds = %if.end23
  %34 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %quirks, align 8
  %and93 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  %shr = lshr i32 %10, 3
  %shr.sink = select i1 %tobool94.not, i32 %10, i32 %shr
  %and96 = and i32 %shr.sink, 15
  %36 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %collisions, align 4
  %add = add i32 %37, %and96
  store i32 %add, ptr %collisions, align 4
  %38 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable, align 4
  %and106 = and i32 %39, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.else.do.end130_crit_edge, label %do.body109

if.else.do.end130_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end130

do.body109:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rhine_tx.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rhine_tx, %if.then121)) #14
          to label %do.end130 [label %if.then121], !srcloc !258

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #16
  %shr122 = lshr i32 %10, 3
  %and123 = and i32 %shr122, 15
  %and124 = and i32 %10, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rhine_tx.__UNIQUE_ID_ddebug360, ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %and123, i32 noundef %and124) #14
  br label %do.end130

do.end130:                                        ; preds = %if.then121, %do.body109, %if.else.do.end130_crit_edge
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %conv = zext i32 %41 to i64
  %42 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %bytes, align 8
  %add132 = add i64 %43, %conv
  store i64 %add132, ptr %bytes, align 8
  %44 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tx_stats, align 8
  %inc134 = add i64 %45, 1
  store i64 %inc134, ptr %tx_stats, align 8
  %46 = tail call ptr @llvm.returnaddress(i32 0) #14
  %47 = ptrtoint ptr %46 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %47) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !286
  %48 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %if.end137

if.end137:                                        ; preds = %do.end130, %if.end75.if.end137_crit_edge
  %arrayidx138 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 8, i32 %rem
  %50 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool139.not = icmp eq i32 %51, 0
  br i1 %tobool139.not, label %if.end137.cleanup_crit_edge, label %if.then140

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then140:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  %len143 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %52 = ptrtoint ptr %len143 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len143, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %51, i32 noundef %53, i32 noundef 1, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then140, %if.end137.cleanup_crit_edge
  %len145 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %54 = ptrtoint ptr %len145 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len145, align 4
  %add146 = add i32 %55, %bytes_compl.0269
  tail call void @__dev_kfree_skb_any(ptr noundef %14, i32 noundef 0) #14
  %56 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx24, align 4
  %inc150 = add i32 %dirty_tx.0267, 1
  %cmp.not = icmp eq i32 %inc150, %5
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then85, %do.end19.while.end_crit_edge, %entry.while.end_crit_edge
  %dirty_tx.0265 = phi i32 [ %dirty_tx.0267, %if.then85 ], [ %3, %entry.while.end_crit_edge ], [ %5, %cleanup.while.end_crit_edge ], [ %dirty_tx.0267, %do.end19.while.end_crit_edge ]
  %bytes_compl.0263 = phi i32 [ %bytes_compl.0269, %if.then85 ], [ 0, %entry.while.end_crit_edge ], [ %add146, %cleanup.while.end_crit_edge ], [ %bytes_compl.0269, %do.end19.while.end_crit_edge ]
  %57 = ptrtoint ptr %dirty_tx2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %dirty_tx.0265, ptr %dirty_tx2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !288
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %58 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %_tx.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_compl.0263)
  %tobool.not.i.i = icmp eq i32 %bytes_compl.0263, 0
  br i1 %tobool.not.i.i, label %while.end.netdev_completed_queue.exit_crit_edge, label %if.end.i.i, !prof !268

while.end.netdev_completed_queue.exit_crit_edge:  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_completed_queue.exit

if.end.i.i:                                       ; preds = %while.end
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %bytes_compl.0263) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !289
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 15, i32 1
  %60 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %62 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %61, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.netdev_completed_queue.exit_crit_edge, label %if.end14.i.i, !prof !268

if.end.i.i.netdev_completed_queue.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_completed_queue.exit

if.end14.i.i:                                     ; preds = %if.end.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 13
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.netdev_completed_queue.exit_crit_edge, label %if.then17.i.i

if.end14.i.i.netdev_completed_queue.exit_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_completed_queue.exit

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_schedule_queue(ptr noundef %59) #14
  br label %netdev_completed_queue.exit

netdev_completed_queue.exit:                      ; preds = %if.then17.i.i, %if.end14.i.i.netdev_completed_queue.exit_crit_edge, %if.end.i.i.netdev_completed_queue.exit_crit_edge, %while.end.netdev_completed_queue.exit_crit_edge
  %64 = ptrtoint ptr %cur_tx6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cur_tx6, align 8
  %66 = ptrtoint ptr %dirty_tx2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dirty_tx2, align 4
  %sub.i = sub i32 %65, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 57
  br i1 %cmp.i, label %netdev_completed_queue.exit.if.end173_crit_edge, label %land.lhs.true160

netdev_completed_queue.exit.if.end173_crit_edge:  ; preds = %netdev_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

land.lhs.true160:                                 ; preds = %netdev_completed_queue.exit
  %68 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i246 = getelementptr inbounds %struct.netdev_queue, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %state.i.i246 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %state.i.i246, align 4
  %and1.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %land.lhs.true160.if.end173_crit_edge, label %if.then163

land.lhs.true160.if.end173_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

if.then163:                                       ; preds = %land.lhs.true160
  tail call void @netif_tx_wake_queue(ptr noundef %69) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !290
  %72 = ptrtoint ptr %cur_tx6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cur_tx6, align 8
  %74 = ptrtoint ptr %dirty_tx2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dirty_tx2, align 4
  %sub.i250 = sub i32 %73, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %sub.i250)
  %cmp.i251 = icmp ugt i32 %sub.i250, 57
  br i1 %cmp.i251, label %if.then171, label %if.then163.if.end173_crit_edge

if.then163.if.end173_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

if.then171:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i253 = getelementptr inbounds %struct.netdev_queue, ptr %77, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i253) #14
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %if.then163.if.end173_crit_edge, %land.lhs.true160.if.end173_crit_edge, %netdev_completed_queue.exit.if.end173_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !232) #14
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !291
  %5 = tail call i32 @llvm.read_register.i32(metadata !232) #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !292
  %14 = tail call i32 @llvm.read_register.i32(metadata !232) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !232) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !232) #14
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !293
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !294
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !267

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !295
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #14
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_suspend(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %task_lock.i = getelementptr i8, ptr %1, i32 4404
  tail call void @mutex_lock_nested(ptr noundef %task_lock.i, i32 noundef 0) #14
  %task_enable.i = getelementptr i8, ptr %1, i32 4496
  %4 = ptrtoint ptr %task_enable.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %task_enable.i, align 8
  tail call void @mutex_unlock(ptr noundef %task_lock.i) #14
  %slow_event_task.i = getelementptr i8, ptr %1, i32 4500
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %slow_event_task.i) #14
  %reset_task.i = getelementptr i8, ptr %1, i32 4544
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_task.i) #14
  %base.i = getelementptr i8, ptr %1, i32 4748
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %6, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12, i16 0) #14, !srcloc !257
  %napi = getelementptr i8, ptr %1, i32 4136
  tail call void @napi_disable(ptr noundef %napi) #14
  tail call void @netif_device_detach(ptr noundef %1) #14
  %bus = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 5
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %8, @pci_bus_type
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %device, i32 -136
  tail call void @rhine_shutdown_pci(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_resume(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pioaddr = getelementptr i8, ptr %1, i32 4124
  %4 = ptrtoint ptr %pioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pioaddr, align 4
  %quirks = getelementptr i8, ptr %1, i32 4592
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 8
  %and.i = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.enable_mmio.exit_crit_edge, label %if.then.i

if.end.enable_mmio.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %enable_mmio.exit

if.then.i:                                        ; preds = %if.end
  %and1.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = add i32 %5, 120
  %and4.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %8 = inttoptr i32 %add5.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %10 = or i8 %9, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %10) #14, !srcloc !244
  br label %enable_mmio.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %add13.i = add i32 %5, 123
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %11 = inttoptr i32 %add15.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !249
  %13 = or i8 %12, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !250
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %13) #14, !srcloc !244
  br label %enable_mmio.exit

enable_mmio.exit:                                 ; preds = %if.else.i, %if.then3.i, %if.end.enable_mmio.exit_crit_edge
  tail call fastcc void @rhine_power_init(ptr noundef %1)
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  %tx_ring.i = getelementptr i8, ptr %1, i32 2820
  br label %for.body.i

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %enable_mmio.exit
  %i.042.i = phi i32 [ 0, %enable_mmio.exit ], [ %inc.i, %if.end16.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx.i = getelementptr %struct.tx_desc, ptr %17, i32 %i.042.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx.i, align 4
  %19 = load ptr, ptr %tx_ring.i, align 4
  %desc_length.i = getelementptr %struct.tx_desc, ptr %19, i32 %i.042.i, i32 1
  %20 = ptrtoint ptr %desc_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8445952, ptr %desc_length.i, align 4
  %21 = load ptr, ptr %tx_ring.i, align 4
  %addr.i = getelementptr %struct.tx_desc, ptr %21, i32 %i.042.i, i32 2
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -805249094, ptr %addr.i, align 4
  %arrayidx6.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.042.i
  %23 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i16 = icmp eq ptr %24, null
  br i1 %tobool.not.i16, label %for.body.i.if.end16.i_crit_edge, label %if.then.i17

for.body.i.if.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.then.i17:                                      ; preds = %for.body.i
  %arrayidx7.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.042.i
  %25 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool8.not.i = icmp eq i32 %26, 0
  br i1 %tobool8.not.i, label %if.then.i17.if.end.i_crit_edge, label %if.then9.i

if.then.i17.if.end.i_crit_edge:                   ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then9.i:                                       ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #16
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %26, i32 noundef %28, i32 noundef 1, i32 noundef 0) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %if.then.i17.if.end.i_crit_edge
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx6.i, align 4
  tail call void @consume_skb(ptr noundef %30) #14
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i, %for.body.i.if.end16.i_crit_edge
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx6.i, align 4
  %arrayidx19.i = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.042.i
  %32 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx19.i, align 4
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %free_tbufs.exit, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

free_tbufs.exit:                                  ; preds = %if.end16.i
  %cur_tx.i = getelementptr i8, ptr %1, i32 4600
  %33 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cur_tx.i, align 8
  %dirty_tx.i = getelementptr i8, ptr %1, i32 4604
  %34 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %dirty_tx.i, align 4
  %tx_ring_dma.i = getelementptr i8, ptr %1, i32 2828
  %35 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_ring_dma.i, align 4
  %tx_bufs.i = getelementptr i8, ptr %1, i32 4112
  br label %for.body.i25

for.body.i25:                                     ; preds = %for.inc.i.for.body.i25_crit_edge, %free_tbufs.exit
  %i.034.i = phi i32 [ 0, %free_tbufs.exit ], [ %inc.i29, %for.inc.i.for.body.i25_crit_edge ]
  %next.033.i = phi i32 [ %36, %free_tbufs.exit ], [ %add.i22, %for.inc.i.for.body.i25_crit_edge ]
  %arrayidx.i20 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.034.i
  %37 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx.i20, align 4
  %38 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx1.i = getelementptr %struct.tx_desc, ptr %39, i32 %i.034.i
  %40 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx1.i, align 4
  %41 = load ptr, ptr %tx_ring.i, align 4
  %desc_length.i21 = getelementptr %struct.tx_desc, ptr %41, i32 %i.034.i, i32 1
  %42 = ptrtoint ptr %desc_length.i21 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8445952, ptr %desc_length.i21, align 4
  %add.i22 = add i32 %next.033.i, 16
  %43 = tail call i32 @llvm.bswap.i32(i32 %add.i22) #14
  %44 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_ring.i, align 4
  %next_desc.i = getelementptr %struct.tx_desc, ptr %45, i32 %i.034.i, i32 3
  %46 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %next_desc.i, align 4
  %47 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %quirks, align 8
  %and.i23 = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i24 = icmp eq i32 %and.i23, 0
  br i1 %tobool.not.i24, label %for.body.i25.for.inc.i_crit_edge, label %if.then.i28

for.body.i25.for.inc.i_crit_edge:                 ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i28:                                      ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %tx_bufs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_bufs.i, align 8
  %mul.i = mul nuw nsw i32 %i.034.i, 1536
  %arrayidx6.i26 = getelementptr i8, ptr %50, i32 %mul.i
  %arrayidx7.i27 = getelementptr %struct.rhine_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.034.i
  %51 = ptrtoint ptr %arrayidx7.i27 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx6.i26, ptr %arrayidx7.i27, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i28, %for.body.i25.for.inc.i_crit_edge
  %inc.i29 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, 64
  br i1 %exitcond.not.i30, label %alloc_tbufs.exit, label %for.inc.i.for.body.i25_crit_edge

for.inc.i.for.body.i25_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i25

alloc_tbufs.exit:                                 ; preds = %for.inc.i
  %52 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_ring_dma.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #14
  %55 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_ring.i, align 4
  %next_desc11.i = getelementptr %struct.tx_desc, ptr %56, i32 63, i32 3
  %57 = ptrtoint ptr %next_desc11.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %54, ptr %next_desc11.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %58 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #14
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i.i) #14
  %cur_rx.i = getelementptr i8, ptr %1, i32 4596
  %60 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %cur_rx.i, align 4
  %rx_ring.i = getelementptr i8, ptr %1, i32 2816
  br label %for.body.i34

for.body.i34:                                     ; preds = %for.body.i34.for.body.i34_crit_edge, %alloc_tbufs.exit
  %i.04.i = phi i32 [ 0, %alloc_tbufs.exit ], [ %inc.i32, %for.body.i34.for.body.i34_crit_edge ]
  %61 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_ring.i, align 8
  %arrayidx.i31 = getelementptr %struct.rx_desc, ptr %62, i32 %i.04.i
  %63 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 128, ptr %arrayidx.i31, align 4
  %inc.i32 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i33 = icmp eq i32 %inc.i32, 64
  br i1 %exitcond.not.i33, label %rhine_reset_rbufs.exit, label %for.body.i34.for.body.i34_crit_edge

for.body.i34.for.body.i34_crit_edge:              ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i34

rhine_reset_rbufs.exit:                           ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #16
  %task_lock.i = getelementptr i8, ptr %1, i32 4404
  tail call void @mutex_lock_nested(ptr noundef %task_lock.i, i32 noundef 0) #14
  %task_enable.i = getelementptr i8, ptr %1, i32 4496
  %64 = ptrtoint ptr %task_enable.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %task_enable.i, align 8
  tail call void @mutex_unlock(ptr noundef %task_lock.i) #14
  %lock = getelementptr i8, ptr %1, i32 4360
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  tail call fastcc void @init_registers(ptr noundef %1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  tail call void @netif_device_attach(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %rhine_reset_rbufs.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rhine_shutdown_pci(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr i8, ptr %1, i32 4748
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %quirks = getelementptr i8, ptr %1, i32 4592
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @rhine_power_init(ptr noundef %1)
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 8
  %and3 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %3, i32 167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 4) #14, !srcloc !244
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %lock = getelementptr i8, ptr %1, i32 4360
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %wolopts = getelementptr i8, ptr %1, i32 4712
  %8 = ptrtoint ptr %wolopts to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wolopts, align 8
  %10 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.end6.if.end16_crit_edge, label %if.then9

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr10 = getelementptr i8, ptr %3, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 32) #14, !srcloc !244
  %add.ptr11 = getelementptr i8, ptr %3, i32 120
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %12 = or i8 %11, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %12) #14, !srcloc !244
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end6.if.end16_crit_edge
  %13 = ptrtoint ptr %wolopts to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wolopts, align 8
  %15 = and i8 %14, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool20.not = icmp eq i8 %15, 0
  br i1 %tobool20.not, label %if.end16.if.end23_crit_edge, label %if.then21

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr22 = getelementptr i8, ptr %3, i32 163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 48) #14, !srcloc !244
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  %16 = ptrtoint ptr %wolopts to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wolopts, align 8
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool27.not = icmp eq i8 %18, 0
  br i1 %tobool27.not, label %if.end23.if.end30_crit_edge, label %if.then28

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr29 = getelementptr i8, ptr %3, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29, i8 -64) #14, !srcloc !244
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end23.if.end30_crit_edge
  %19 = ptrtoint ptr %wolopts to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wolopts, align 8
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool34.not = icmp eq i8 %21, 0
  br i1 %tobool34.not, label %if.end30.if.end37_crit_edge, label %if.then35

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr36 = getelementptr i8, ptr %3, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 16) #14, !srcloc !244
  %22 = ptrtoint ptr %wolopts to i32
  call void @__asan_load1_noabort(i32 %22)
  %.pr = load i8, ptr %wolopts, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end30.if.end37_crit_edge
  %23 = phi i8 [ %.pr, %if.then35 ], [ %20, %if.end30.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool39.not = icmp eq i8 %23, 0
  br i1 %tobool39.not, label %if.end37.if.end48_crit_edge, label %if.then40

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr41 = getelementptr i8, ptr %3, i32 161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41, i8 1) #14, !srcloc !244
  %add.ptr42 = getelementptr i8, ptr %3, i32 131
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr42) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %25 = or i8 %24, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42, i8 %25) #14, !srcloc !244
  br label %if.end48

if.end48:                                         ; preds = %if.then40, %if.end37.if.end48_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %26 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp = icmp eq i32 %26, 5
  br i1 %cmp, label %land.lhs.true, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end48
  %27 = load i8, ptr @avoid_D3, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool51.not = icmp eq i8 %27, 0
  br i1 %tobool51.not, label %if.then52, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr53 = getelementptr i8, ptr %3, i32 131
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr53) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  %29 = or i8 %28, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53, i8 %29) #14, !srcloc !244
  %call59 = tail call i32 @pci_wake_from_d3(ptr noundef %pdev, i1 noundef zeroext true) #14
  %call60 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %land.lhs.true.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rhine_init_one_pci(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp = icmp ult i8 %1, 32
  %cond = select i1 %cmp, i32 128, i32 256
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp4 = icmp ult i8 %3, 32
  br i1 %cmp4, label %if.end.if.end37_crit_edge, label %if.else

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %3)
  %cmp9 = icmp ugt i8 %3, 63
  br i1 %cmp9, label %if.then11, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp15 = icmp sgt i8 %3, -1
  br i1 %cmp15, label %if.then11.if.end37_crit_edge, label %if.else19

if.then11.if.end37_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.else19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %3)
  %cmp23 = icmp ugt i8 %3, -126
  %spec.select = select i1 %cmp23, i32 2627, i32 2563
  call void @__sanitizer_cov_trace_const_cmp1(i8 -113, i8 %3)
  %cmp30 = icmp ugt i8 %3, -113
  %or33 = or i32 %spec.select, 1024
  %spec.select152 = select i1 %cmp30, i32 %or33, i32 %spec.select
  br label %if.end37

if.end37:                                         ; preds = %if.else19, %if.then11.if.end37_crit_edge, %if.else.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %quirks.1 = phi i32 [ 2048, %if.else.if.end37_crit_edge ], [ 2304, %if.end.if.end37_crit_edge ], [ 2179, %if.then11.if.end37_crit_edge ], [ %spec.select152, %if.else19 ]
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp38 = icmp eq i32 %5, 0
  br i1 %cmp38, label %if.end37.if.then67_crit_edge, label %cond.end

if.end37.if.then67_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

cond.end:                                         ; preds = %if.end37
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resource, align 8
  %sub = add i32 %5, 1
  %add = sub i32 %sub, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond)
  %cmp46 = icmp ult i32 %add, %cond
  br i1 %cmp46, label %cond.end.if.then67_crit_edge, label %lor.lhs.false

cond.end.if.then67_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

lor.lhs.false:                                    ; preds = %cond.end
  %arrayidx49 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %end50 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %8 = ptrtoint ptr %end50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp51 = icmp eq i32 %9, 0
  br i1 %cmp51, label %lor.lhs.false.if.then67_crit_edge, label %cond.end63

lor.lhs.false.if.then67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

cond.end63:                                       ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx49, align 8
  %sub61 = add i32 %9, 1
  %add62 = sub i32 %sub61, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add62, i32 %cond)
  %cmp65 = icmp ult i32 %add62, %cond
  br i1 %cmp65, label %cond.end63.if.then67_crit_edge, label %if.end68

cond.end63.if.then67_crit_edge:                   ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67

if.then67:                                        ; preds = %cond.end63.if.then67_crit_edge, %lor.lhs.false.if.then67_crit_edge, %cond.end.if.then67_crit_edge, %if.end37.if.then67_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77) #17
  br label %err_out_pci_disable

if.end68:                                         ; preds = %cond.end63
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource, align 8
  %14 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx49, align 8
  tail call void @pci_set_master(ptr noundef %pdev) #14
  %call75 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end68.err_out_pci_disable_crit_edge

if.end68.err_out_pci_disable_crit_edge:           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_pci_disable

if.end78:                                         ; preds = %if.end68
  %call81 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef %cond) #14
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %if.then83, label %if.end88

if.then83:                                        ; preds = %if.end78
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then83.dev_name.exit_crit_edge

if.then83.dev_name.exit_crit_edge:                ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then83.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %if.then83.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, ptr noundef %retval.0.i, i32 noundef %cond, i32 noundef %15) #17
  br label %err_out_free_res

if.end88:                                         ; preds = %if.end78
  %and.i = and i32 %quirks.1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i153 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i153, label %if.end88.if.end92_crit_edge, label %if.then.i

if.end88.if.end92_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

if.then.i:                                        ; preds = %if.end88
  %and1.i = and i32 %quirks.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = add i32 %13, 120
  %and4.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %20 = inttoptr i32 %add5.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %22 = or i8 %21, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %22) #14, !srcloc !244
  br label %while.cond.preheader.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %add13.i = add i32 %13, 123
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %23 = inttoptr i32 %add15.i to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !249
  %25 = or i8 %24, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !250
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %25) #14, !srcloc !244
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.else.i, %if.then3.i
  %add.i156 = add i32 %13, 6
  %and3.i = and i32 %add.i156, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %26 = inttoptr i32 %add4.i to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %add.ptr.i = getelementptr i8, ptr %call81, i32 6
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !297
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %28)
  %cmp.not.i = icmp eq i8 %27, %28
  br i1 %cmp.not.i, label %while.cond.1.i, label %while.cond.preheader.i.verify_mmio.exit_crit_edge

while.cond.preheader.i.verify_mmio.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %verify_mmio.exit

while.cond.1.i:                                   ; preds = %while.cond.preheader.i
  %add.1.i = add i32 %13, 7
  %and3.1.i = and i32 %add.1.i, 1048575
  %add4.1.i = or i32 %and3.1.i, -18874368
  %29 = inttoptr i32 %add4.1.i to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %add.ptr.1.i = getelementptr i8, ptr %call81, i32 7
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.1.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !297
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %31)
  %cmp.not.1.i = icmp eq i8 %30, %31
  br i1 %cmp.not.1.i, label %while.cond.2.i, label %while.cond.1.i.verify_mmio.exit_crit_edge

while.cond.1.i.verify_mmio.exit_crit_edge:        ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %verify_mmio.exit

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %add.2.i = add i32 %13, 14
  %and3.2.i = and i32 %add.2.i, 1048575
  %add4.2.i = or i32 %and3.2.i, -18874368
  %32 = inttoptr i32 %add4.2.i to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %add.ptr.2.i = getelementptr i8, ptr %call81, i32 14
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.2.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !297
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %34)
  %cmp.not.2.i = icmp eq i8 %33, %34
  br i1 %cmp.not.2.i, label %while.cond.3.i, label %while.cond.2.i.verify_mmio.exit_crit_edge

while.cond.2.i.verify_mmio.exit_crit_edge:        ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %verify_mmio.exit

while.cond.3.i:                                   ; preds = %while.cond.2.i
  %add.3.i = add i32 %13, 120
  %and3.3.i = and i32 %add.3.i, 1048575
  %add4.3.i = or i32 %and3.3.i, -18874368
  %35 = inttoptr i32 %add4.3.i to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %add.ptr.3.i = getelementptr i8, ptr %call81, i32 120
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.3.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !297
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %37)
  %cmp.not.3.i = icmp eq i8 %36, %37
  br i1 %cmp.not.3.i, label %while.cond.4.i, label %while.cond.3.i.verify_mmio.exit_crit_edge

while.cond.3.i.verify_mmio.exit_crit_edge:        ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %verify_mmio.exit

while.cond.4.i:                                   ; preds = %while.cond.3.i
  %add.4.i = add i32 %13, 121
  %and3.4.i = and i32 %add.4.i, 1048575
  %add4.4.i = or i32 %and3.4.i, -18874368
  %38 = inttoptr i32 %add4.4.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %add.ptr.4.i = getelementptr i8, ptr %call81, i32 121
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.4.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !297
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %40)
  %cmp.not.4.i = icmp eq i8 %39, %40
  br i1 %cmp.not.4.i, label %while.cond.5.i, label %while.cond.4.i.verify_mmio.exit_crit_edge

while.cond.4.i.verify_mmio.exit_crit_edge:        ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %verify_mmio.exit

while.cond.5.i:                                   ; preds = %while.cond.4.i
  %add.5.i = add i32 %13, 122
  %and3.5.i = and i32 %add.5.i, 1048575
  %add4.5.i = or i32 %and3.5.i, -18874368
  %41 = inttoptr i32 %add4.5.i to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %add.ptr.5.i = getelementptr i8, ptr %call81, i32 122
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.5.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !297
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %43)
  %cmp.not.5.i = icmp eq i8 %42, %43
  br i1 %cmp.not.5.i, label %while.cond.6.i, label %while.cond.5.i.verify_mmio.exit_crit_edge

while.cond.5.i.verify_mmio.exit_crit_edge:        ; preds = %while.cond.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %verify_mmio.exit

while.cond.6.i:                                   ; preds = %while.cond.5.i
  %add.6.i = add i32 %13, 123
  %and3.6.i = and i32 %add.6.i, 1048575
  %add4.6.i = or i32 %and3.6.i, -18874368
  %44 = inttoptr i32 %add4.6.i to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %add.ptr.6.i = getelementptr i8, ptr %call81, i32 123
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.6.i) #14, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !297
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %46)
  %cmp.not.6.i = icmp eq i8 %45, %46
  br i1 %cmp.not.6.i, label %while.cond.6.i.if.end92_crit_edge, label %while.cond.6.i.verify_mmio.exit_crit_edge

while.cond.6.i.verify_mmio.exit_crit_edge:        ; preds = %while.cond.6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %verify_mmio.exit

while.cond.6.i.if.end92_crit_edge:                ; preds = %while.cond.6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

verify_mmio.exit:                                 ; preds = %while.cond.6.i.verify_mmio.exit_crit_edge, %while.cond.5.i.verify_mmio.exit_crit_edge, %while.cond.4.i.verify_mmio.exit_crit_edge, %while.cond.3.i.verify_mmio.exit_crit_edge, %while.cond.2.i.verify_mmio.exit_crit_edge, %while.cond.1.i.verify_mmio.exit_crit_edge, %while.cond.preheader.i.verify_mmio.exit_crit_edge
  %.lcssa31.i = phi i32 [ 6, %while.cond.preheader.i.verify_mmio.exit_crit_edge ], [ 7, %while.cond.1.i.verify_mmio.exit_crit_edge ], [ 14, %while.cond.2.i.verify_mmio.exit_crit_edge ], [ 120, %while.cond.3.i.verify_mmio.exit_crit_edge ], [ 121, %while.cond.4.i.verify_mmio.exit_crit_edge ], [ 122, %while.cond.5.i.verify_mmio.exit_crit_edge ], [ 123, %while.cond.6.i.verify_mmio.exit_crit_edge ]
  %.lcssa30.i = phi i8 [ %27, %while.cond.preheader.i.verify_mmio.exit_crit_edge ], [ %30, %while.cond.1.i.verify_mmio.exit_crit_edge ], [ %33, %while.cond.2.i.verify_mmio.exit_crit_edge ], [ %36, %while.cond.3.i.verify_mmio.exit_crit_edge ], [ %39, %while.cond.4.i.verify_mmio.exit_crit_edge ], [ %42, %while.cond.5.i.verify_mmio.exit_crit_edge ], [ %45, %while.cond.6.i.verify_mmio.exit_crit_edge ]
  %.lcssa.i = phi i8 [ %28, %while.cond.preheader.i.verify_mmio.exit_crit_edge ], [ %31, %while.cond.1.i.verify_mmio.exit_crit_edge ], [ %34, %while.cond.2.i.verify_mmio.exit_crit_edge ], [ %37, %while.cond.3.i.verify_mmio.exit_crit_edge ], [ %40, %while.cond.4.i.verify_mmio.exit_crit_edge ], [ %43, %while.cond.5.i.verify_mmio.exit_crit_edge ], [ %46, %while.cond.6.i.verify_mmio.exit_crit_edge ]
  %conv10.i = zext i8 %.lcssa.i to i32
  %conv.i = zext i8 %.lcssa30.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %.lcssa31.i, i32 noundef %conv.i, i32 noundef %conv10.i) #17
  br label %err_out_unmap

if.end92:                                         ; preds = %while.cond.6.i.if.end92_crit_edge, %if.end88.if.end92_crit_edge
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  %call94 = tail call fastcc i32 @rhine_init_one_common(ptr noundef %dev, i32 noundef %quirks.1, i32 noundef %13, ptr noundef nonnull %call81, i32 noundef %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end92.cleanup_crit_edge, label %if.end92.err_out_unmap_crit_edge

if.end92.err_out_unmap_crit_edge:                 ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_unmap

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_out_unmap:                                    ; preds = %if.end92.err_out_unmap_crit_edge, %verify_mmio.exit
  %rc.0 = phi i32 [ -5, %verify_mmio.exit ], [ %call94, %if.end92.err_out_unmap_crit_edge ]
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call81) #14
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %err_out_unmap, %dev_name.exit
  %rc.1 = phi i32 [ %rc.0, %err_out_unmap ], [ -5, %dev_name.exit ]
  tail call void @pci_release_regions(ptr noundef %pdev) #14
  br label %err_out_pci_disable

err_out_pci_disable:                              ; preds = %err_out_free_res, %if.end68.err_out_pci_disable_crit_edge, %if.then67
  %rc.2 = phi i32 [ -5, %if.then67 ], [ %call75, %if.end68.err_out_pci_disable_crit_edge ], [ %rc.1, %err_out_free_res ]
  tail call void @pci_disable_device(ptr noundef %pdev) #14
  br label %cleanup

cleanup:                                          ; preds = %err_out_pci_disable, %if.end92.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end92.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %rc.2, %err_out_pci_disable ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rhine_remove_one_pci(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #14
  %base = getelementptr i8, ptr %1, i32 4748
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #14
  tail call void @pci_release_regions(ptr noundef %pdev) #14
  tail call void @free_netdev(ptr noundef %1) #14
  tail call void @pci_disable_device(ptr noundef %pdev) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !34, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !50, !52, !53, !55, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !105, !106, !107, !108, !109, !110, !112, !113, !114, !115, !117, !119, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !136, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !154, !156, !158, !159, !160, !162, !163, !165, !167, !168, !170, !171, !173, !174, !175, !177, !178, !180, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !219, !220, !221, !222, !224, !225, !226, !228, !230}
!llvm.named.register.sp = !{!232}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @__UNIQUE_ID_author343, !1, !"__UNIQUE_ID_author343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 118, i32 1}
!2 = !{ptr @__UNIQUE_ID_description344, !3, !"__UNIQUE_ID_description344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 119, i32 1}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 120, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 122, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype347, !8, !"__UNIQUE_ID_debugtype347", i1 false, i1 false}
!10 = !{ptr @__param_rx_copybreak, !11, !"__param_rx_copybreak", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 123, i32 1}
!12 = !{ptr @__UNIQUE_ID_rx_copybreaktype348, !11, !"__UNIQUE_ID_rx_copybreaktype348", i1 false, i1 false}
!13 = !{ptr @__param_avoid_D3, !14, !"__param_avoid_D3", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 124, i32 1}
!15 = !{ptr @__UNIQUE_ID_avoid_D3type349, !14, !"__UNIQUE_ID_avoid_D3type349", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_debug350, !17, !"__UNIQUE_ID_debug350", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 125, i32 1}
!18 = !{ptr @__UNIQUE_ID_rx_copybreak351, !19, !"__UNIQUE_ID_rx_copybreak351", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 126, i32 1}
!20 = !{ptr @__UNIQUE_ID_avoid_D3352, !21, !"__UNIQUE_ID_avoid_D3352", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 127, i32 1}
!22 = !{ptr @__initcall__kmod_via_rhine__365_2630_rhine_init6, !23, !"__initcall__kmod_via_rhine__365_2630_rhine_init6", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2630, i32 1}
!24 = !{ptr @__exitcall_rhine_cleanup, !25, !"__exitcall_rhine_cleanup", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2631, i32 1}
!26 = !{ptr @avoid_D3, !27, !"avoid_D3", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 56, i32 13}
!28 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!29 = !{ptr @debug, !30, !"debug", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 40, i32 12}
!31 = !{ptr @__param_str_rx_copybreak, !11, !"__param_str_rx_copybreak", i1 false, i1 false}
!32 = !{ptr @rx_copybreak, !33, !"rx_copybreak", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 49, i32 12}
!34 = !{ptr @__param_str_avoid_D3, !14, !"__param_str_avoid_D3", i1 false, i1 false}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2577, i32 11}
!37 = !{ptr @rhine_driver_platform, !38, !"rhine_driver_platform", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2573, i32 31}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 908, i32 3}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rhine_init_one_common._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @rhine_init_one_common._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @rhine_init_one_common.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 929, i32 2}
!49 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rhine_init_one_common.__key.7, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 930, i32 2}
!52 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 942, i32 19}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 944, i32 20}
!57 = !{ptr @rhine_init_one_common.__key.11, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 952, i32 2}
!59 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rhine_init_one_common.__key.13, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 953, i32 2}
!62 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rhine_init_one_common.__key.15, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 954, i32 2}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rhine_init_one_common.__key.17, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 955, i32 2}
!68 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 984, i32 10}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 986, i32 10}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 988, i32 10}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 990, i32 10}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 992, i32 19}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1005, i32 9}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1020, i32 3}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 607, i32 14}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 610, i32 14}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 613, i32 14}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 616, i32 14}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 619, i32 14}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 622, i32 14}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 624, i32 21}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 640, i32 20}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 651, i32 2}
!101 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 534, i32 3}
!105 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @rhine_wait_bit.__UNIQUE_ID_ddebug353, !104, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!108 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 712, i32 3}
!112 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @rhine_reload_eeprom._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @rhine_reload_eeprom._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1362, i32 2}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2199, i32 3}
!119 = !{ptr @rhine_netdev_ops, !120, !"rhine_netdev_ops", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 879, i32 36}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1684, i32 2}
!123 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @rhine_open.__UNIQUE_ID_ddebug354, !122, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1701, i32 2}
!127 = !{ptr @rhine_open.__UNIQUE_ID_ddebug355, !126, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1893, i32 2}
!130 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @rhine_interrupt.__UNIQUE_ID_ddebug357, !129, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1903, i32 3}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1151, i32 19}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1213, i32 3}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!140 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2412, i32 2}
!144 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @rhine_close.__UNIQUE_ID_ddebug364, !143, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1871, i32 2}
!148 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @rhine_start_tx.__UNIQUE_ID_ddebug356, !147, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1757, i32 19}
!152 = !{ptr @netdev_ethtool_ops, !153, !"netdev_ethtool_ops", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2375, i32 33}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 836, i32 5}
!156 = !{ptr @.str.62, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2036, i32 2}
!158 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @rhine_rx.__UNIQUE_ID_ddebug361, !157, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2048, i32 3}
!162 = !{ptr @rhine_rx.__UNIQUE_ID_ddebug362, !161, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!163 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2054, i32 2}
!165 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2061, i32 5}
!167 = !{ptr @rhine_rx.__UNIQUE_ID_ddebug363, !166, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!170 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1934, i32 3}
!173 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @rhine_tx.__UNIQUE_ID_ddebug358, !172, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!175 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1940, i32 4}
!177 = !{ptr @rhine_tx.__UNIQUE_ID_ddebug359, !176, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!178 = !{ptr @.str.71, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1963, i32 4}
!180 = !{ptr @rhine_tx.__UNIQUE_ID_ddebug360, !179, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!181 = !{ptr @.str.72, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 754, i32 3}
!183 = !{ptr @.str.73, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 760, i32 3}
!185 = !{ptr @.str.74, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 765, i32 3}
!187 = !{ptr @.str.75, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 770, i32 3}
!189 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2174, i32 3}
!191 = !{ptr @rhine_of_tbl, !192, !"rhine_of_tbl", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 284, i32 34}
!193 = !{ptr @vt8500_quirks, !194, !"vt8500_quirks", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 283, i32 12}
!195 = !{ptr @rhine_pm_ops, !196, !"rhine_pm_ops", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2555, i32 8}
!197 = !{ptr @rhine_driver_pci, !198, !"rhine_driver_pci", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2564, i32 26}
!199 = !{ptr @rhine_pci_tbl, !200, !"rhine_pci_tbl", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 271, i32 35}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1073, i32 3}
!203 = !{ptr @.str.78, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @rhine_init_one_pci._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @rhine_init_one_pci._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.80, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 1089, i32 3}
!208 = !{ptr @rhine_init_one_pci._entry.79, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @rhine_init_one_pci._entry_ptr.81, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.82, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 686, i32 5}
!212 = !{ptr @.str.83, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @verify_mmio._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @verify_mmio._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = distinct !{null, !216, !"mmio_verify_registers", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 349, i32 18}
!217 = !{ptr @.str.84, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2609, i32 3}
!219 = !{ptr @.str.85, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @rhine_init._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @rhine_init._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.87, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2612, i32 3}
!224 = !{ptr @rhine_init._entry.86, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @rhine_init._entry_ptr.88, !223, !"_entry_ptr", i1 false, i1 false}
!226 = distinct !{null, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2585, i32 12}
!228 = distinct !{null, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2592, i32 12}
!230 = distinct !{null, !231, !"rhine_dmi_table", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/via/via-rhine.c", i32 2583, i32 35}
!232 = !{!"sp"}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = !{i8 0, i8 2}
!243 = !{i64 2156830031}
!244 = !{i64 4704121}
!245 = !{i64 4704516}
!246 = !{i64 2156830464}
!247 = !{i64 2156826354}
!248 = !{i64 2156826570}
!249 = !{i64 2156826991}
!250 = !{i64 2156827207}
!251 = !{i64 2152243861}
!252 = !{i64 2152245466}
!253 = !{i32 0, i32 65536}
!254 = !{i64 4703898}
!255 = !{i64 2152244473}
!256 = !{i64 2152245890}
!257 = !{i64 4703698}
!258 = !{i64 2149022246, i64 2149022251, i64 2149022264, i64 2149022308, i64 2149022342, i64 2149022363}
!259 = !{i64 2152246440}
!260 = !{i64 4704318}
!261 = !{i64 2156858226}
!262 = !{i64 2156858050}
!263 = !{!"auto-init"}
!264 = !{i64 2156855193}
!265 = !{i64 2156855904}
!266 = !{i64 2156852463}
!267 = !{!"branch_weights", i32 2000, i32 1}
!268 = !{!"branch_weights", i32 1, i32 2000}
!269 = !{i64 2154827004, i64 2154827504, i64 2154827041, i64 2154827097, i64 2154827131, i64 2154827155, i64 2154827196, i64 2154827217, i64 2154827245, i64 2154827279}
!270 = !{i64 2154828348}
!271 = !{i64 2156332326}
!272 = !{i64 2156869112}
!273 = !{i64 2156869363}
!274 = !{i64 2156869519}
!275 = !{i64 2156869893}
!276 = !{i64 2150040695}
!277 = !{i64 812569, i64 812630}
!278 = !{i64 815301}
!279 = !{i64 815586}
!280 = !{i64 2155008257}
!281 = !{i64 2155008099}
!282 = !{i64 2155008427}
!283 = !{i64 2156856621}
!284 = !{i64 2156857333}
!285 = !{i64 2156885457}
!286 = !{i64 2150041345}
!287 = !{i64 2156876495}
!288 = !{i64 2156884845}
!289 = !{i64 2156333397}
!290 = !{i64 2156885010}
!291 = !{i64 2149933027}
!292 = !{i64 2149937959}
!293 = !{i64 2149959671}
!294 = !{i64 2149964563}
!295 = !{i64 2150041020}
!296 = !{i64 2156827785}
!297 = !{i64 2156828003}
