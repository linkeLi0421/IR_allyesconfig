; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/fealnx.c_pt.bc'
source_filename = "../drivers/net/ethernet/fealnx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.chip_info = type { ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
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
%struct.netdev_private = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, [2 x i8], %struct.mii_if_info, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.fealnx_desc = type { i32, i32, i32, i32, ptr, ptr, i32, i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author341 = internal constant [31 x i8] c"fealnx.author=Myson or whoever\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [69 x i8] c"fealnx.description=Myson MTD-8xx 100/10M Ethernet PCI Adapter Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [40 x i8] c"fealnx.file=drivers/net/ethernet/fealnx\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [19 x i8] c"fealnx.license=GPL\00", section ".modinfo", align 1
@__param_str_max_interrupt_work = internal constant [26 x i8] c"fealnx.max_interrupt_work\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_interrupt_work = internal global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@__param_max_interrupt_work = internal constant %struct.kernel_param { ptr @__param_str_max_interrupt_work, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_interrupt_work } }, section "__param", align 4
@__UNIQUE_ID_max_interrupt_worktype345 = internal constant [39 x i8] c"fealnx.parmtype=max_interrupt_work:int\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"fealnx.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype346 = internal constant [26 x i8] c"fealnx.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [20 x i8] c"fealnx.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype347 = internal constant [33 x i8] c"fealnx.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__param_str_multicast_filter_limit = internal constant [30 x i8] c"fealnx.multicast_filter_limit\00", align 1
@multicast_filter_limit = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_multicast_filter_limit = internal constant %struct.kernel_param { ptr @__param_str_multicast_filter_limit, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @multicast_filter_limit } }, section "__param", align 4
@__UNIQUE_ID_multicast_filter_limittype348 = internal constant [43 x i8] c"fealnx.parmtype=multicast_filter_limit:int\00", section ".modinfo", align 1
@__param_str_options = internal constant [15 x i8] c"fealnx.options\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_options = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @options }, align 4
@__param_options = internal constant %struct.kernel_param { ptr @__param_str_options, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_options } }, section "__param", align 4
@__UNIQUE_ID_optionstype349 = internal constant [37 x i8] c"fealnx.parmtype=options:array of int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [19 x i8] c"fealnx.full_duplex\00", align 1
@__param_arr_full_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @full_duplex }, align 4
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype350 = internal constant [41 x i8] c"fealnx.parmtype=full_duplex:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_interrupt_work351 = internal constant [75 x i8] c"fealnx.parm=max_interrupt_work:fealnx maximum events handled per interrupt\00", section ".modinfo", align 1
@__UNIQUE_ID_debug352 = internal constant [48 x i8] c"fealnx.parm=debug:fealnx enable debugging (0-1)\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak353 = internal constant [74 x i8] c"fealnx.parm=rx_copybreak:fealnx copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@__UNIQUE_ID_multicast_filter_limit354 = internal constant [89 x i8] c"fealnx.parm=multicast_filter_limit:fealnx maximum number of filtered multicast addresses\00", section ".modinfo", align 1
@__UNIQUE_ID_options355 = internal constant [70 x i8] c"fealnx.parm=options:fealnx: Bits 0-3: media type, bit 17: full duplex\00", section ".modinfo", align 1
@__UNIQUE_ID_full_duplex356 = internal constant [58 x i8] c"fealnx.parm=full_duplex:fealnx full duplex setting(s) (1)\00", section ".modinfo", align 1
@__initcall__kmod_fealnx__357_1953_fealnx_driver_init6 = internal global ptr @fealnx_driver_init, section ".initcall6.init", align 4
@fealnx_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @fealnx_pci_tbl, ptr @fealnx_init_one, ptr @fealnx_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_fealnx_driver_exit = internal global ptr @fealnx_driver_exit, section ".exitcall.exit", align 4
@options = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@full_duplex = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fealnx\00", [25 x i8] zeroinitializer }, align 32
@fealnx_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 5398, i32 2048, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5398, i32 2051, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5398, i32 2193, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@fealnx_init_one.card_idx = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fealnx%d\00", [23 x i8] zeroinitializer }, align 32
@fealnx_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 504, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"region size %ld too small, aborting\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fealnx_init_one\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/ethernet/fealnx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fealnx_init_one._entry_ptr = internal global ptr @fealnx_init_one._entry, section ".printk_index", align 4
@fealnx_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&np->lock\00", [22 x i8] zeroinitializer }, align 32
@skel_netdrv_tbl = internal constant { [3 x %struct.chip_info], [40 x i8] } { [3 x %struct.chip_info] [%struct.chip_info { ptr @.str.22, i32 0 }, %struct.chip_info { ptr @.str.22, i32 1 }, %struct.chip_info { ptr @.str.23, i32 0 }], [40 x i8] zeroinitializer }, align 32
@fealnx_init_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 578, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MII PHY found at address %d, status 0x%4.4x.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fealnx_init_one._entry_ptr.11 = internal global ptr @fealnx_init_one._entry.8, section ".printk_index", align 4
@fealnx_init_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 604, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"MII PHY not found -- this device may not operate correctly.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fealnx_init_one._entry_ptr.15 = internal global ptr @fealnx_init_one._entry.12, section ".printk_index", align 4
@fealnx_init_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 630, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Media type forced to Full Duplex.\0A\00", [61 x i8] zeroinitializer }, align 32
@fealnx_init_one._entry_ptr.18 = internal global ptr @fealnx_init_one._entry.16, section ".printk_index", align 4
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @netdev_open, ptr @netdev_close, ptr @start_tx, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @mii_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fealnx_tx_timeout, ptr null, ptr null, ptr null, ptr @get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_msglevel, ptr @netdev_set_msglevel, ptr @netdev_nway_reset, ptr @netdev_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_link_ksettings, ptr @netdev_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@fealnx_init_one._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: %s at %p, %pM, IRQ %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@fealnx_init_one._entry_ptr.21 = internal global ptr @fealnx_init_one._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"100/10M Ethernet PCI Adapter\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"1000/100/10M Ethernet PCI Adapter\00", [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@netdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Done netdev_open().\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netdev_open\00", [20 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr = internal global ptr @netdev_open._entry, section ".printk_index", align 4
@netdev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&np->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@netdev_open.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&np->reset_timer)\00", [45 x i8] zeroinitializer }, align 32
@intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 1448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Interrupt, status %4.4x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intr_handler\00", [19 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr = internal global ptr @intr_handler._entry, section ".printk_index", align 4
@intr_handler._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: Too much work at interrupt, status=0x%4.4x.\0A\00", [45 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr.33 = internal global ptr @intr_handler._entry.31, section ".printk_index", align 4
@intr_handler._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.4, i32 1596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: exiting interrupt, status=%#4.4x.\0A\00", [55 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr.36 = internal global ptr @intr_handler._entry.34, section ".printk_index", align 4
@netdev_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 1621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017  netdev_rx() status was %8.8x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"netdev_rx\00", [22 x i8] zeroinitializer }, align 32
@netdev_rx._entry_ptr = internal global ptr @netdev_rx._entry, section ".printk_index", align 4
@netdev_rx._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 1629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Receive error, Rx status %8.8x.\0A\00", [57 x i8] zeroinitializer }, align 32
@netdev_rx._entry_ptr.41 = internal global ptr @netdev_rx._entry.39, section ".printk_index", align 4
@netdev_rx._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.4, i32 1669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: I'm scared\0A\00", [46 x i8] zeroinitializer }, align 32
@netdev_rx._entry_ptr.44 = internal global ptr @netdev_rx._entry.42, section ".printk_index", align 4
@netdev_rx._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.4, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017  netdev_rx() normal Rx pkt length %d status %x.\0A\00", [44 x i8] zeroinitializer }, align 32
@netdev_rx._entry_ptr.47 = internal global ptr @netdev_rx._entry.45, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@netdev_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 1087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: Media selection timer tick, status %8.8x config %8.8x.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_timer\00", [19 x i8] zeroinitializer }, align 32
@netdev_timer._entry_ptr = internal global ptr @netdev_timer._entry, section ".printk_index", align 4
@reset_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: resetting tx and rx machinery\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset_timer\00", [20 x i8] zeroinitializer }, align 32
@reset_timer._entry_ptr = internal global ptr @reset_timer._entry, section ".printk_index", align 4
@fealnx_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: Transmit timed out, status %8.8x, resetting...\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fealnx_tx_timeout\00", [46 x i8] zeroinitializer }, align 32
@fealnx_tx_timeout._entry_ptr = internal global ptr @fealnx_tx_timeout._entry, section ".printk_index", align 4
@fealnx_tx_timeout._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 1200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017  Rx ring %p: \00", [47 x i8] zeroinitializer }, align 32
@fealnx_tx_timeout._entry_ptr.58 = internal global ptr @fealnx_tx_timeout._entry.56, section ".printk_index", align 4
@fealnx_tx_timeout._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.4, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c %8.8x\00", [23 x i8] zeroinitializer }, align 32
@fealnx_tx_timeout._entry_ptr.61 = internal global ptr @fealnx_tx_timeout._entry.59, section ".printk_index", align 4
@fealnx_tx_timeout._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.4, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@fealnx_tx_timeout._entry_ptr.64 = internal global ptr @fealnx_tx_timeout._entry.62, section ".printk_index", align 4
@fealnx_tx_timeout._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.4, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017  Tx ring %p: \00", [47 x i8] zeroinitializer }, align 32
@fealnx_tx_timeout._entry_ptr.67 = internal global ptr @fealnx_tx_timeout._entry.65, section ".printk_index", align 4
@fealnx_tx_timeout._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.55, ptr @.str.4, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c %4.4x\00", [23 x i8] zeroinitializer }, align 32
@fealnx_tx_timeout._entry_ptr.70 = internal global ptr @fealnx_tx_timeout._entry.68, section ".printk_index", align 4
@fealnx_tx_timeout._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.4, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fealnx_tx_timeout._entry_ptr.72 = internal global ptr @fealnx_tx_timeout._entry.71, section ".printk_index", align 4
@fealnx_remove_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013fealnx: remove for unknown device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fealnx_remove_one\00", [46 x i8] zeroinitializer }, align 32
@fealnx_remove_one._entry_ptr = internal global ptr @fealnx_remove_one._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 19, i64 22, i64 34, i64 321, i64 770]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.77 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 49152]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"max_interrupt_work\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 30, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 29, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 37, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"multicast_filter_limit\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 33, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"fealnx_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1946, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 44, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 45, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1953, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"fealnx_pci_tbl\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1937, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [9 x i8] c"card_idx\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 477, i32 13 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 493, i32 21 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 503, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 538, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"skel_netdrv_tbl\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 146, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 576, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 602, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 630, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 460, i32 36 }
@___asan_gen_.168 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1863, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 656, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 147, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 149, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 901, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 904, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 910, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1447, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1566, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1595, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1621, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1627, i32 6 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1668, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1691, i32 5 }
@___asan_gen_.256 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 326, i32 6 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1085, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1170, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1195, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1200, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1202, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1204, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1205, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1207, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1208, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.325 = private constant [33 x i8] c"../drivers/net/ethernet/fealnx.c\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 694, i32 3 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_debug352, ptr @__UNIQUE_ID_debugtype346, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_full_duplex356, ptr @__UNIQUE_ID_full_duplextype350, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_max_interrupt_work351, ptr @__UNIQUE_ID_max_interrupt_worktype345, ptr @__UNIQUE_ID_multicast_filter_limit354, ptr @__UNIQUE_ID_multicast_filter_limittype348, ptr @__UNIQUE_ID_options355, ptr @__UNIQUE_ID_optionstype349, ptr @__UNIQUE_ID_rx_copybreak353, ptr @__UNIQUE_ID_rx_copybreaktype347, ptr @__exitcall_fealnx_driver_exit, ptr @__initcall__kmod_fealnx__357_1953_fealnx_driver_init6, ptr @__param_debug, ptr @__param_full_duplex, ptr @__param_max_interrupt_work, ptr @__param_multicast_filter_limit, ptr @__param_options, ptr @__param_rx_copybreak, ptr @fealnx_driver_exit, ptr @fealnx_init_one._entry, ptr @fealnx_init_one._entry.12, ptr @fealnx_init_one._entry.16, ptr @fealnx_init_one._entry.19, ptr @fealnx_init_one._entry.8, ptr @fealnx_init_one._entry_ptr, ptr @fealnx_init_one._entry_ptr.11, ptr @fealnx_init_one._entry_ptr.15, ptr @fealnx_init_one._entry_ptr.18, ptr @fealnx_init_one._entry_ptr.21, ptr @fealnx_remove_one._entry, ptr @fealnx_remove_one._entry_ptr, ptr @fealnx_tx_timeout._entry, ptr @fealnx_tx_timeout._entry.56, ptr @fealnx_tx_timeout._entry.59, ptr @fealnx_tx_timeout._entry.62, ptr @fealnx_tx_timeout._entry.65, ptr @fealnx_tx_timeout._entry.68, ptr @fealnx_tx_timeout._entry.71, ptr @fealnx_tx_timeout._entry_ptr, ptr @fealnx_tx_timeout._entry_ptr.58, ptr @fealnx_tx_timeout._entry_ptr.61, ptr @fealnx_tx_timeout._entry_ptr.64, ptr @fealnx_tx_timeout._entry_ptr.67, ptr @fealnx_tx_timeout._entry_ptr.70, ptr @fealnx_tx_timeout._entry_ptr.72, ptr @intr_handler._entry, ptr @intr_handler._entry.31, ptr @intr_handler._entry.34, ptr @intr_handler._entry_ptr, ptr @intr_handler._entry_ptr.33, ptr @intr_handler._entry_ptr.36, ptr @netdev_open._entry, ptr @netdev_open._entry_ptr, ptr @netdev_rx._entry, ptr @netdev_rx._entry.39, ptr @netdev_rx._entry.42, ptr @netdev_rx._entry.45, ptr @netdev_rx._entry_ptr, ptr @netdev_rx._entry_ptr.41, ptr @netdev_rx._entry_ptr.44, ptr @netdev_rx._entry_ptr.47, ptr @netdev_timer._entry, ptr @netdev_timer._entry_ptr, ptr @reset_timer._entry, ptr @reset_timer._entry_ptr, ptr @max_interrupt_work, ptr @debug, ptr @rx_copybreak, ptr @multicast_filter_limit, ptr @fealnx_driver, ptr @options, ptr @full_duplex, ptr @.str, ptr @fealnx_pci_tbl, ptr @fealnx_init_one.card_idx, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fealnx_init_one.__key, ptr @.str.7, ptr @skel_netdrv_tbl, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @netdev_ops, ptr @netdev_ethtool_ops, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @netdev_open.__key, ptr @.str.26, ptr @netdev_open.__key.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_interrupt_work to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multicast_filter_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @options to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_init_one.card_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skel_netdrv_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_init_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_init_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_init_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_init_one._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_rx._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_rx._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_rx._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_tx_timeout._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_tx_timeout._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_tx_timeout._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_tx_timeout._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_tx_timeout._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_tx_timeout._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fealnx_remove_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fealnx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @fealnx_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fealnx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @fealnx_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fealnx_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %boardname = alloca [12 x i8], align 1
  %ring_dma = alloca i32, align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %boardname) #12
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = call ptr @memset(ptr %boardname, i32 255, i32 12)
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ring_dma) #12
  %3 = ptrtoint ptr %ring_dma to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ring_dma, align 4, !annotation !205
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %9 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %10 = load i32, ptr @fealnx_init_one.card_idx, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @fealnx_init_one.card_idx, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %boardname, ptr noundef nonnull @.str.1, i32 noundef %inc)
  %11 = load i32, ptr @fealnx_init_one.card_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp = icmp slt i32 %11, 8
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [8 x i32], ptr @options, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %14 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3 = icmp eq i32 %15, 0
  br i1 %cmp3, label %if.end.do.end_crit_edge, label %cond.end11

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

cond.end11:                                       ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource, align 8
  %sub = sub i32 %15, %17
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %add)
  %cmp13 = icmp ult i32 %add, 136
  br i1 %cmp13, label %cond.end11.do.end_crit_edge, label %if.end16

cond.end11.do.end_crit_edge:                      ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %cond.end11.do.end_crit_edge, %if.end.do.end_crit_edge
  %cond12373 = phi i32 [ %add, %cond.end11.do.end_crit_edge ], [ 0, %if.end.do.end_crit_edge ]
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.2, i32 noundef %cond12373) #15
  br label %cleanup

if.end16:                                         ; preds = %cond.end11
  %call18 = call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull %boardname) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %irq22 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %18 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq22, align 4
  %call23 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef %add) #12
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end21.err_out_res_crit_edge, label %if.end26

if.end21.err_out_res_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_res

if.end26:                                         ; preds = %if.end21
  %call27 = call ptr @alloc_etherdev_mqs(i32 noundef 284, i32 noundef 1, i32 noundef 1) #12
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.err_out_unmap_crit_edge, label %if.end30

if.end26.err_out_unmap_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_unmap

if.end30:                                         ; preds = %if.end26
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 133, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev31, ptr %parent, align 8
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call23) #12, !srcloc !206
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %addr, align 1
  %add.ptr34.1 = getelementptr i8, ptr %call23, i32 1
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr34.1) #12, !srcloc !206
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %4, align 1
  %add.ptr34.2 = getelementptr i8, ptr %call23, i32 2
  %25 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr34.2) #12, !srcloc !206
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %5, align 1
  %add.ptr34.3 = getelementptr i8, ptr %call23, i32 3
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr34.3) #12, !srcloc !206
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %6, align 1
  %add.ptr34.4 = getelementptr i8, ptr %call23, i32 4
  %29 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr34.4) #12, !srcloc !206
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %7, align 1
  %add.ptr34.5 = getelementptr i8, ptr %call23, i32 5
  %31 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr34.5) #12, !srcloc !206
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %8, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call27, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  %add.ptr39 = getelementptr i8, ptr %call23, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 16777216) #12, !srcloc !209
  %add.ptr.i = getelementptr i8, ptr %call27, i32 2304
  %mem = getelementptr i8, ptr %call27, i32 2584
  %33 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call23, ptr %mem, align 4
  %lock = getelementptr i8, ptr %call27, i32 2320
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @fealnx_init_one.__key, i16 noundef signext 3) #12
  %pci_dev = getelementptr i8, ptr %call27, i32 2476
  %34 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pdev, ptr %pci_dev, align 4
  %arrayidx45 = getelementptr [3 x %struct.chip_info], ptr @skel_netdrv_tbl, i32 0, i32 %2
  %flags = getelementptr [3 x %struct.chip_info], ptr @skel_netdrv_tbl, i32 0, i32 %2, i32 1
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %flags46 = getelementptr i8, ptr %call27, i32 2472
  %37 = ptrtoint ptr %flags46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %flags46, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call27, ptr %driver_data.i.i, align 4
  %mii = getelementptr i8, ptr %call27, i32 2552
  %dev47 = getelementptr i8, ptr %call27, i32 2572
  %39 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call27, ptr %dev47, align 4
  %mdio_read = getelementptr i8, ptr %call27, i32 2576
  %40 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call27, i32 2580
  %41 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call27, i32 2560
  %42 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call27, i32 2564
  %43 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 31, ptr %reg_num_mask, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev31, i32 noundef 384, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #12
  %tobool54.not = icmp eq ptr %call.i, null
  br i1 %tobool54.not, label %if.end30.err_out_free_dev_crit_edge, label %if.end56

if.end30.err_out_free_dev_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_free_dev

if.end56:                                         ; preds = %if.end30
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %add.ptr.i, align 4
  %45 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ring_dma, align 4
  %rx_ring_dma = getelementptr i8, ptr %call27, i32 2312
  %47 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rx_ring_dma, align 4
  %call.i370 = call ptr @dma_alloc_attrs(ptr noundef %dev31, i32 noundef 192, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #12
  %tobool59.not = icmp eq ptr %call.i370, null
  br i1 %tobool59.not, label %if.end56.err_out_free_rx_crit_edge, label %if.end61

if.end56.err_out_free_rx_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_free_rx

if.end61:                                         ; preds = %if.end56
  %tx_ring = getelementptr i8, ptr %call27, i32 2308
  %48 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i370, ptr %tx_ring, align 4
  %49 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ring_dma, align 4
  %tx_ring_dma = getelementptr i8, ptr %call27, i32 2316
  %51 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tx_ring_dma, align 4
  %52 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp63 = icmp eq i32 %53, 0
  %phys = getelementptr i8, ptr %call27, i32 2548
  br i1 %cmp63, label %for.cond65.preheader, label %if.else124

for.cond65.preheader:                             ; preds = %if.end61
  %PHYType104 = getelementptr i8, ptr %call27, i32 2540
  br label %for.body68

for.body68:                                       ; preds = %if.end112.for.body68_crit_edge, %for.cond65.preheader
  %phy_idx.0377 = phi i32 [ 0, %for.cond65.preheader ], [ %phy_idx.1, %if.end112.for.body68_crit_edge ]
  %phy.0375 = phi i32 [ 1, %for.cond65.preheader ], [ %inc114, %if.end112.for.body68_crit_edge ]
  %call69 = call i32 @mdio_read(ptr noundef nonnull %call27, i32 noundef %phy.0375, i32 noundef 1)
  %54 = zext i32 %call69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call69, label %if.then72 [
    i32 65535, label %for.body68.if.end112_crit_edge
    i32 0, label %for.body68.if.end112_crit_edge378
  ]

for.body68.if.end112_crit_edge378:                ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

for.body68.if.end112_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.then72:                                        ; preds = %for.body68
  %conv = trunc i32 %phy.0375 to i8
  %inc73 = add nuw nsw i32 %phy_idx.0377, 1
  %arrayidx74 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 29, i32 %phy_idx.0377
  %55 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv, ptr %arrayidx74, align 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull @.str.9, i32 noundef %phy.0375, i32 noundef %call69) #15
  %56 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %phys, align 4
  %conv81 = zext i8 %57 to i32
  %call82 = call i32 @mdio_read(ptr noundef nonnull %call27, i32 noundef %conv81, i32 noundef 2)
  %58 = zext i32 %call82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call82, label %if.else105 [
    i32 22, label %if.then72.if.end112.sink.split_crit_edge
    i32 34, label %if.then88
    i32 321, label %if.then93
    i32 770, label %if.then98
    i32 19, label %if.then103
  ]

if.then72.if.end112.sink.split_crit_edge:         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.sink.split

if.then88:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.sink.split

if.then93:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.sink.split

if.then98:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.sink.split

if.then103:                                       ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.sink.split

if.else105:                                       ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.sink.split

if.end112.sink.split:                             ; preds = %if.else105, %if.then103, %if.then98, %if.then93, %if.then88, %if.then72.if.end112.sink.split_crit_edge
  %.sink = phi i32 [ 4, %if.then93 ], [ 6, %if.then103 ], [ 10, %if.else105 ], [ 5, %if.then98 ], [ 2, %if.then88 ], [ 3, %if.then72.if.end112.sink.split_crit_edge ]
  %59 = ptrtoint ptr %PHYType104 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink, ptr %PHYType104, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %for.body68.if.end112_crit_edge, %for.body68.if.end112_crit_edge378
  %phy_idx.1 = phi i32 [ %phy_idx.0377, %for.body68.if.end112_crit_edge ], [ %phy_idx.0377, %for.body68.if.end112_crit_edge378 ], [ %inc73, %if.end112.sink.split ]
  %inc114 = add nuw nsw i32 %phy.0375, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %phy.0375)
  %cmp66 = icmp ult i32 %phy.0375, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %phy_idx.1)
  %cmp67 = icmp ult i32 %phy_idx.1, 2
  %or.cond = select i1 %cmp66, i1 %cmp67, i1 false
  br i1 %or.cond, label %if.end112.for.body68_crit_edge, label %for.end115

if.end112.for.body68_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body68

for.end115:                                       ; preds = %if.end112
  %mii_cnt = getelementptr i8, ptr %call27, i32 2544
  %60 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %phy_idx.1, ptr %mii_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_idx.1)
  %cmp116 = icmp eq i32 %phy_idx.1, 0
  br i1 %cmp116, label %do.end121, label %for.end115.if.end136_crit_edge

for.end115.if.end136_crit_edge:                   ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

do.end121:                                        ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev31, ptr noundef nonnull @.str.13) #15
  br label %if.end136

if.else124:                                       ; preds = %if.end61
  %61 = ptrtoint ptr %phys to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 32, ptr %phys, align 4
  %add.ptr127 = getelementptr i8, ptr %call23, i32 80
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127) #12, !srcloc !210
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 33751248, i32 %62)
  %cmp129 = icmp eq i32 %62, 33751248
  %PHYType132 = getelementptr i8, ptr %call27, i32 2540
  br i1 %cmp129, label %if.then131, label %if.else133

if.then131:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %PHYType132 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %PHYType132, align 4
  br label %if.end136

if.else133:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %PHYType132 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 10, ptr %PHYType132, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.else133, %if.then131, %do.end121, %for.end115.if.end136_crit_edge
  %phys137 = getelementptr i8, ptr %call27, i32 2548
  %65 = ptrtoint ptr %phys137 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %phys137, align 4
  %conv139 = zext i8 %66 to i32
  %67 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv139, ptr %mii, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 4
  %68 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mem_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool141.not = icmp eq i32 %69, 0
  %spec.select = select i1 %tobool141.not, i32 %cond, i32 %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp145 = icmp sgt i32 %spec.select, 0
  br i1 %cmp145, label %if.then147, label %if.end136.if.end156_crit_edge

if.end136.if.end156_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end156

if.then147:                                       ; preds = %if.end136
  %and = and i32 %spec.select, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool148.not = icmp eq i32 %and, 0
  br i1 %tobool148.not, label %if.then147.if.end151_crit_edge, label %if.then149

if.then147.if.end151_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

if.then149:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  %full_duplex = getelementptr i8, ptr %call27, i32 2568
  %70 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load = load i8, ptr %full_duplex, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %full_duplex, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.then147.if.end151_crit_edge
  %default_port = getelementptr i8, ptr %call27, i32 2536
  %71 = trunc i32 %spec.select to i8
  %72 = ptrtoint ptr %default_port to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load153 = load i8, ptr %default_port, align 4
  %bf.shl = shl i8 %71, 4
  %bf.clear154 = and i8 %bf.load153, 15
  %bf.set155 = or i8 %bf.clear154, %bf.shl
  store i8 %bf.set155, ptr %default_port, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.end151, %if.end136.if.end156_crit_edge
  %73 = load i32, ptr @fealnx_init_one.card_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %73)
  %cmp157 = icmp slt i32 %73, 8
  br i1 %cmp157, label %land.lhs.true159, label %if.end156.if.end173_crit_edge

if.end156.if.end173_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

land.lhs.true159:                                 ; preds = %if.end156
  %arrayidx160 = getelementptr [8 x i32], ptr @full_duplex, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp161 = icmp sgt i32 %75, 0
  br i1 %cmp161, label %if.then163, label %land.lhs.true159.if.end173_crit_edge

land.lhs.true159.if.end173_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then163:                                       ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #14
  %full_duplex166 = getelementptr i8, ptr %call27, i32 2568
  %76 = trunc i32 %75 to i8
  %77 = ptrtoint ptr %full_duplex166 to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load167 = load i8, ptr %full_duplex166, align 4
  %bf.shl169 = shl i8 %76, 7
  %bf.clear170 = and i8 %bf.load167, 127
  %bf.set171 = or i8 %bf.clear170, %bf.shl169
  store i8 %bf.set171, ptr %full_duplex166, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then163, %land.lhs.true159.if.end173_crit_edge, %if.end156.if.end173_crit_edge
  %full_duplex175 = getelementptr i8, ptr %call27, i32 2568
  %78 = ptrtoint ptr %full_duplex175 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load176 = load i8, ptr %full_duplex175, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load176)
  %tobool177.not = icmp sgt i8 %bf.load176, -1
  br i1 %tobool177.not, label %if.end173.if.end214_crit_edge, label %do.end181

if.end173.if.end214_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end214

do.end181:                                        ; preds = %if.end173
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull @.str.17) #15
  %PHYType183 = getelementptr i8, ptr %call27, i32 2540
  %79 = ptrtoint ptr %PHYType183 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %PHYType183, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %80, label %do.end181.if.end199_crit_edge [
    i32 4, label %do.end181.if.then189_crit_edge
    i32 6, label %do.end181.if.then189_crit_edge379
  ]

do.end181.if.then189_crit_edge379:                ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then189

do.end181.if.then189_crit_edge:                   ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then189

do.end181.if.end199_crit_edge:                    ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

if.then189:                                       ; preds = %do.end181.if.then189_crit_edge, %do.end181.if.then189_crit_edge379
  %82 = ptrtoint ptr %phys137 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %phys137, align 4
  %conv193 = zext i8 %83 to i32
  %call194 = call i32 @mdio_read(ptr noundef nonnull %call27, i32 noundef %conv193, i32 noundef 9)
  %and195 = and i32 %call194, 64767
  %or = or i32 %and195, 512
  %84 = ptrtoint ptr %phys137 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %phys137, align 4
  %conv198 = zext i8 %85 to i32
  call void @mdio_write(ptr noundef nonnull %call27, i32 noundef %conv198, i32 noundef 9, i32 noundef %or)
  br label %if.end199

if.end199:                                        ; preds = %if.then189, %do.end181.if.end199_crit_edge
  %86 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp201 = icmp eq i32 %87, 0
  br i1 %cmp201, label %if.then203, label %if.else207

if.then203:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %phys137 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %phys137, align 4
  %conv206 = zext i8 %89 to i32
  call void @mdio_write(ptr noundef nonnull %call27, i32 noundef %conv206, i32 noundef 4, i32 noundef 321)
  br label %if.end209

if.else207:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr208 = getelementptr i8, ptr %call23, i32 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 1090584576) #12, !srcloc !209
  br label %if.end209

if.end209:                                        ; preds = %if.else207, %if.then203
  %90 = ptrtoint ptr %full_duplex175 to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load211 = load i8, ptr %full_duplex175, align 4
  %bf.set213 = or i8 %bf.load211, 64
  store i8 %bf.set213, ptr %full_duplex175, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.end209, %if.end173.if.end214_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 16
  %91 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 44
  %92 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 115
  %93 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 200, ptr %watchdog_timeo, align 4
  %call215 = call i32 @register_netdev(ptr noundef nonnull %call27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %do.end221, label %err_out_free_tx

do.end221:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx45, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 86
  %96 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_addr, align 64
  %call224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %call27, ptr noundef %95, ptr noundef nonnull %call23, ptr noundef %97, i32 noundef %19) #15
  br label %cleanup

err_out_free_tx:                                  ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tx_ring, align 4
  %100 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev31, i32 noundef 192, ptr noundef %99, i32 noundef %101, i32 noundef 0) #12
  br label %err_out_free_rx

err_out_free_rx:                                  ; preds = %err_out_free_tx, %if.end56.err_out_free_rx_crit_edge
  %err.0 = phi i32 [ %call215, %err_out_free_tx ], [ -12, %if.end56.err_out_free_rx_crit_edge ]
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 4
  %104 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev31, i32 noundef 384, ptr noundef %103, i32 noundef %105, i32 noundef 0) #12
  br label %err_out_free_dev

err_out_free_dev:                                 ; preds = %err_out_free_rx, %if.end30.err_out_free_dev_crit_edge
  %err.1 = phi i32 [ %err.0, %err_out_free_rx ], [ -12, %if.end30.err_out_free_dev_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call27) #12
  br label %err_out_unmap

err_out_unmap:                                    ; preds = %err_out_free_dev, %if.end26.err_out_unmap_crit_edge
  %err.2 = phi i32 [ %err.1, %err_out_free_dev ], [ -12, %if.end26.err_out_unmap_crit_edge ]
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call23) #12
  br label %err_out_res

err_out_res:                                      ; preds = %err_out_unmap, %if.end21.err_out_res_crit_edge
  %err.3 = phi i32 [ %err.2, %err_out_unmap ], [ -12, %if.end21.err_out_res_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out_res, %do.end221, %if.end16.cleanup_crit_edge, %do.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %err.3, %err_out_res ], [ 0, %do.end221 ], [ %call1, %cond.end.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ring_dma) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %boardname) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fealnx_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %tx_ring = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 4
  %tx_ring_dma = getelementptr i8, ptr %1, i32 2316
  %4 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 192, ptr noundef %3, i32 noundef %5, i32 noundef 0) #12
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %rx_ring_dma = getelementptr i8, ptr %1, i32 2312
  %8 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 384, ptr noundef %7, i32 noundef %9, i32 noundef 0) #12
  tail call void @unregister_netdev(ptr noundef nonnull %1) #12
  %mem = getelementptr i8, ptr %1, i32 2584
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %11) #12
  tail call void @free_netdev(ptr noundef nonnull %1) #12
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phyad, i32 noundef %regad) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %call1 = tail call fastcc i32 @m80x_send_cmd_to_phy(ptr noundef %add.ptr, i32 noundef 24576, i32 noundef %phyad, i32 noundef %regad)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %data.023 = phi i32 [ 0, %entry ], [ %spec.select, %while.body.while.body_crit_edge ]
  %mask.022 = phi i32 [ 32768, %entry ], [ %shr, %while.body.while.body_crit_edge ]
  %miir.021 = phi i32 [ %call1, %entry ], [ %or5, %while.body.while.body_crit_edge ]
  %and = and i32 %miir.021, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !209
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !210
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %and3 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or = select i1 %tobool4.not, i32 0, i32 %mask.022
  %spec.select = or i32 %or, %data.023
  %or5 = or i32 %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %or5) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #12, !srcloc !209
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 6442440) #12
  %shr = lshr i32 %mask.022, 1
  %tobool.not = icmp ult i32 %mask.022, 2
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %and6 = and i32 %4, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %and6) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #12, !srcloc !209
  %and7 = and i32 %spec.select, 65535
  ret i32 %and7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phyad, i32 noundef %regad, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %call1 = tail call fastcc i32 @m80x_send_cmd_to_phy(ptr noundef %add.ptr, i32 noundef 20482, i32 noundef %phyad, i32 noundef %regad)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %mask.018 = phi i32 [ 32768, %entry ], [ %shr, %while.body.while.body_crit_edge ]
  %miir.017 = phi i32 [ %call1, %entry ], [ %or4, %while.body.while.body_crit_edge ]
  %and = and i32 %miir.017, -6
  %and2 = and i32 %mask.018, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or = or i32 %and, 4
  %spec.select = select i1 %tobool3.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !209
  %or4 = or i32 %spec.select, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %3 = tail call i32 @llvm.bswap.i32(i32 %or4) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #12, !srcloc !209
  %shr = lshr i32 %mask.018, 1
  %tobool.not = icmp ult i32 %mask.018, 2
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !209
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m80x_send_cmd_to_phy(ptr noundef %miiport, i32 noundef %opcode, i32 noundef %phyad, i32 noundef %regad) unnamed_addr #2 align 64 {
for.body.peel.next:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miiport) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %1 = and i32 %0, -251658241
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %or = or i32 %2, 12
  %3 = or i32 %2, 13
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miiport, i32 %5) #12, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miiport, i32 %4) #12, !srcloc !209
  %and1 = and i32 %3, -4
  %6 = tail call i32 @llvm.bswap.i32(i32 %and1) #12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.peel.next
  %i.038 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miiport, i32 %6) #12, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miiport, i32 %4) #12, !srcloc !209
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge, !llvm.loop !212

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %shl = shl i32 %phyad, 7
  %or3 = or i32 %shl, %opcode
  %shl4 = shl i32 %regad, 2
  %or5 = or i32 %or3, %shl4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %opcode)
  %cmp12 = icmp eq i32 %opcode, 24576
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end
  %mask.040 = phi i32 [ 32768, %for.end ], [ %shr, %while.body.while.body_crit_edge ]
  %miir.139 = phi i32 [ %3, %for.end ], [ %miir.3, %while.body.while.body_crit_edge ]
  %and6 = and i32 %miir.139, -6
  %and7 = and i32 %mask.040, %or5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or9 = or i32 %and6, 4
  %spec.select = select i1 %tobool8.not, i32 %and6, i32 %or9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miiport, i32 %7) #12, !srcloc !209
  %or10 = or i32 %spec.select, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %or10) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miiport, i32 %8) #12, !srcloc !209
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 6442440) #12
  %shr = lshr i32 %mask.040, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp11 = icmp eq i32 %shr, 2
  %or.cond = and i1 %cmp12, %cmp11
  %and14 = and i32 %or10, -9
  %miir.3 = select i1 %or.cond, i32 %and14, i32 %or10
  %tobool.not = icmp ult i32 %mask.040, 2
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 %miir.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mem = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 2476
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #12, !srcloc !209
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @intr_handler, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  tail call void @arm_heavy_mb() #12
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %10) #12, !srcloc !215
  %11 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i16, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.1, align 2
  %add.ptr4.1 = getelementptr i8, ptr %1, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  tail call void @arm_heavy_mb() #12
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.1, i16 %15) #12, !srcloc !215
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i16, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.2, align 2
  %add.ptr4.2 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  tail call void @arm_heavy_mb() #12
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.2, i16 %20) #12, !srcloc !215
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %21 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %22)
  %cmp.i = icmp ult i32 %22, 1501
  %add.i = add i32 %22, 32
  %spec.select.i = select i1 %cmp.i, i32 1536, i32 %add.i
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 2520
  %23 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select.i, ptr %rx_buf_sz.i, align 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  %cur_rx.i = getelementptr i8, ptr %dev, i32 2492
  %26 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %cur_rx.i, align 4
  %lack_rxbuf.i = getelementptr i8, ptr %dev, i32 2496
  %27 = ptrtoint ptr %lack_rxbuf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %lack_rxbuf.i, align 4
  %really_rx_count.i = getelementptr i8, ptr %dev, i32 2500
  %28 = ptrtoint ptr %really_rx_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %really_rx_count.i, align 4
  %rx_ring_dma.i = getelementptr i8, ptr %dev, i32 2312
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader
  %i.0175.i = phi i32 [ 0, %for.cond.preheader ], [ %add9.i, %for.body.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx5.i = getelementptr %struct.fealnx_desc, ptr %30, i32 %i.0175.i
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx5.i, align 4
  %32 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_buf_sz.i, align 4
  %34 = load ptr, ptr %add.ptr.i, align 4
  %control.i = getelementptr %struct.fealnx_desc, ptr %34, i32 %i.0175.i, i32 1
  %35 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %control.i, align 4
  %36 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_ring_dma.i, align 4
  %add9.i = add nuw nsw i32 %i.0175.i, 1
  %mul.i = shl i32 %add9.i, 5
  %add10.i = add i32 %37, %mul.i
  %38 = load ptr, ptr %add.ptr.i, align 4
  %next_desc.i = getelementptr %struct.fealnx_desc, ptr %38, i32 %i.0175.i, i32 3
  %39 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add10.i, ptr %next_desc.i, align 4
  %40 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx15.i = getelementptr %struct.fealnx_desc, ptr %40, i32 %add9.i
  %next_desc_logical.i = getelementptr %struct.fealnx_desc, ptr %40, i32 %i.0175.i, i32 4
  %41 = ptrtoint ptr %next_desc_logical.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx15.i, ptr %next_desc_logical.i, align 4
  %42 = load ptr, ptr %add.ptr.i, align 4
  %skbuff.i = getelementptr %struct.fealnx_desc, ptr %42, i32 %i.0175.i, i32 5
  %43 = ptrtoint ptr %skbuff.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %skbuff.i, align 4
  %exitcond.not.i = icmp eq i32 %add9.i, 12
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %44 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_ring_dma.i, align 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  %next_desc23.i = getelementptr %struct.fealnx_desc, ptr %47, i32 11, i32 3
  %48 = ptrtoint ptr %next_desc23.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %next_desc23.i, align 4
  %49 = load ptr, ptr %add.ptr.i, align 4
  %next_desc_logical28.i = getelementptr %struct.fealnx_desc, ptr %49, i32 11, i32 4
  %50 = ptrtoint ptr %next_desc_logical28.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %next_desc_logical28.i, align 4
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc54.i.for.body31.i_crit_edge, %for.end.i
  %i.1176.i = phi i32 [ 0, %for.end.i ], [ %inc55.i, %for.inc54.i.for.body31.i_crit_edge ]
  %51 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %52, i32 noundef 2592) #12
  %cmp34.i = icmp eq ptr %call.i.i, null
  br i1 %cmp34.i, label %cleanup.i, label %if.end.i

if.end.i:                                         ; preds = %for.body31.i
  %53 = ptrtoint ptr %really_rx_count.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %really_rx_count.i, align 4
  %inc39.i = add i32 %54, 1
  store i32 %inc39.i, ptr %really_rx_count.i, align 4
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 4
  %skbuff42.i = getelementptr %struct.fealnx_desc, ptr %56, i32 %i.1176.i, i32 5
  %57 = ptrtoint ptr %skbuff42.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i.i, ptr %skbuff42.i, align 4
  %58 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pci_dev, align 4
  %dev43.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i, align 4
  %62 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i170.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %61) #12
  br i1 %call.i170.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.for.inc54.i_crit_edge, label %if.then.i.i, !prof !216

land.rhs.i.i.for.inc54.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc54.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev43.i) #12
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44, i32 3
  %64 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev43.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %67, %if.end.i.i.i ], [ %65, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %for.inc54.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev43.i, ptr noundef %61, i32 noundef %63) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %68 = load ptr, ptr @mem_map, align 4
  %69 = ptrtoint ptr %61 to i32
  %sub.i.i = add i32 %69, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i171.i = getelementptr %struct.page, ptr %68, i32 %shr.i.i
  %and.i.i = and i32 %69, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev43.i, ptr noundef %add.ptr.i171.i, i32 noundef %and.i.i, i32 noundef %63, i32 noundef 2, i32 noundef 0) #12
  br label %for.inc54.i

cleanup.i:                                        ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx36.i = getelementptr %struct.fealnx_desc, ptr %71, i32 %i.1176.i
  %72 = ptrtoint ptr %lack_rxbuf.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx36.i, ptr %lack_rxbuf.i, align 4
  br label %init_ring.exit

for.inc54.i:                                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.for.inc54.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.for.inc54.i_crit_edge ]
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i, align 4
  %buffer.i = getelementptr %struct.fealnx_desc, ptr %74, i32 %i.1176.i, i32 2
  %75 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.0.i.i, ptr %buffer.i, align 4
  %76 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx49.i = getelementptr %struct.fealnx_desc, ptr %76, i32 %i.1176.i
  %77 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -2147483648, ptr %arrayidx49.i, align 4
  %78 = load ptr, ptr %add.ptr.i, align 4
  %control53.i = getelementptr %struct.fealnx_desc, ptr %78, i32 %i.1176.i, i32 1
  %79 = ptrtoint ptr %control53.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %control53.i, align 4
  %or.i = or i32 %80, 8388608
  store i32 %or.i, ptr %control53.i, align 4
  %inc55.i = add nuw nsw i32 %i.1176.i, 1
  %exitcond179.not.i = icmp eq i32 %inc55.i, 12
  br i1 %exitcond179.not.i, label %for.inc54.i.init_ring.exit_crit_edge, label %for.inc54.i.for.body31.i_crit_edge

for.inc54.i.for.body31.i_crit_edge:               ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31.i

for.inc54.i.init_ring.exit_crit_edge:             ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_ring.exit

init_ring.exit:                                   ; preds = %for.inc54.i.init_ring.exit_crit_edge, %cleanup.i
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %81 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tx_ring.i, align 4
  %cur_tx.i = getelementptr i8, ptr %dev, i32 2504
  %83 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %cur_tx.i, align 4
  %cur_tx_copy.i = getelementptr i8, ptr %dev, i32 2508
  %84 = ptrtoint ptr %cur_tx_copy.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %82, ptr %cur_tx_copy.i, align 4
  %really_tx_count.i = getelementptr i8, ptr %dev, i32 2512
  %85 = ptrtoint ptr %really_tx_count.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %really_tx_count.i, align 4
  %free_tx_count.i = getelementptr i8, ptr %dev, i32 2516
  %86 = ptrtoint ptr %free_tx_count.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 6, ptr %free_tx_count.i, align 4
  %tx_ring_dma.i = getelementptr i8, ptr %dev, i32 2316
  %87 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %82, align 4
  %88 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_ring_dma.i, align 4
  %add68.i = add i32 %89, 32
  %90 = load ptr, ptr %tx_ring.i, align 4
  %next_desc71.i = getelementptr %struct.fealnx_desc, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %next_desc71.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add68.i, ptr %next_desc71.i, align 4
  %92 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx74.i = getelementptr %struct.fealnx_desc, ptr %92, i32 1
  %next_desc_logical77.i = getelementptr %struct.fealnx_desc, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %next_desc_logical77.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %arrayidx74.i, ptr %next_desc_logical77.i, align 4
  %94 = load ptr, ptr %tx_ring.i, align 4
  %skbuff80.i = getelementptr %struct.fealnx_desc, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %skbuff80.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %skbuff80.i, align 4
  %96 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx64.1.i = getelementptr %struct.fealnx_desc, ptr %96, i32 1
  %97 = ptrtoint ptr %arrayidx64.1.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %arrayidx64.1.i, align 4
  %98 = load i32, ptr %tx_ring_dma.i, align 4
  %add68.1.i = add i32 %98, 64
  %99 = load ptr, ptr %tx_ring.i, align 4
  %next_desc71.1.i = getelementptr %struct.fealnx_desc, ptr %99, i32 1, i32 3
  %100 = ptrtoint ptr %next_desc71.1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add68.1.i, ptr %next_desc71.1.i, align 4
  %101 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx74.1.i = getelementptr %struct.fealnx_desc, ptr %101, i32 2
  %next_desc_logical77.1.i = getelementptr %struct.fealnx_desc, ptr %101, i32 1, i32 4
  %102 = ptrtoint ptr %next_desc_logical77.1.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %arrayidx74.1.i, ptr %next_desc_logical77.1.i, align 4
  %103 = load ptr, ptr %tx_ring.i, align 4
  %skbuff80.1.i = getelementptr %struct.fealnx_desc, ptr %103, i32 1, i32 5
  %104 = ptrtoint ptr %skbuff80.1.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %skbuff80.1.i, align 4
  %105 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx64.2.i = getelementptr %struct.fealnx_desc, ptr %105, i32 2
  %106 = ptrtoint ptr %arrayidx64.2.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %arrayidx64.2.i, align 4
  %107 = load i32, ptr %tx_ring_dma.i, align 4
  %add68.2.i = add i32 %107, 96
  %108 = load ptr, ptr %tx_ring.i, align 4
  %next_desc71.2.i = getelementptr %struct.fealnx_desc, ptr %108, i32 2, i32 3
  %109 = ptrtoint ptr %next_desc71.2.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add68.2.i, ptr %next_desc71.2.i, align 4
  %110 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx74.2.i = getelementptr %struct.fealnx_desc, ptr %110, i32 3
  %next_desc_logical77.2.i = getelementptr %struct.fealnx_desc, ptr %110, i32 2, i32 4
  %111 = ptrtoint ptr %next_desc_logical77.2.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %arrayidx74.2.i, ptr %next_desc_logical77.2.i, align 4
  %112 = load ptr, ptr %tx_ring.i, align 4
  %skbuff80.2.i = getelementptr %struct.fealnx_desc, ptr %112, i32 2, i32 5
  %113 = ptrtoint ptr %skbuff80.2.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %skbuff80.2.i, align 4
  %114 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx64.3.i = getelementptr %struct.fealnx_desc, ptr %114, i32 3
  %115 = ptrtoint ptr %arrayidx64.3.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %arrayidx64.3.i, align 4
  %116 = load i32, ptr %tx_ring_dma.i, align 4
  %add68.3.i = add i32 %116, 128
  %117 = load ptr, ptr %tx_ring.i, align 4
  %next_desc71.3.i = getelementptr %struct.fealnx_desc, ptr %117, i32 3, i32 3
  %118 = ptrtoint ptr %next_desc71.3.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add68.3.i, ptr %next_desc71.3.i, align 4
  %119 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx74.3.i = getelementptr %struct.fealnx_desc, ptr %119, i32 4
  %next_desc_logical77.3.i = getelementptr %struct.fealnx_desc, ptr %119, i32 3, i32 4
  %120 = ptrtoint ptr %next_desc_logical77.3.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %arrayidx74.3.i, ptr %next_desc_logical77.3.i, align 4
  %121 = load ptr, ptr %tx_ring.i, align 4
  %skbuff80.3.i = getelementptr %struct.fealnx_desc, ptr %121, i32 3, i32 5
  %122 = ptrtoint ptr %skbuff80.3.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %skbuff80.3.i, align 4
  %123 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx64.4.i = getelementptr %struct.fealnx_desc, ptr %123, i32 4
  %124 = ptrtoint ptr %arrayidx64.4.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %arrayidx64.4.i, align 4
  %125 = load i32, ptr %tx_ring_dma.i, align 4
  %add68.4.i = add i32 %125, 160
  %126 = load ptr, ptr %tx_ring.i, align 4
  %next_desc71.4.i = getelementptr %struct.fealnx_desc, ptr %126, i32 4, i32 3
  %127 = ptrtoint ptr %next_desc71.4.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add68.4.i, ptr %next_desc71.4.i, align 4
  %128 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx74.4.i = getelementptr %struct.fealnx_desc, ptr %128, i32 5
  %next_desc_logical77.4.i = getelementptr %struct.fealnx_desc, ptr %128, i32 4, i32 4
  %129 = ptrtoint ptr %next_desc_logical77.4.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %arrayidx74.4.i, ptr %next_desc_logical77.4.i, align 4
  %130 = load ptr, ptr %tx_ring.i, align 4
  %skbuff80.4.i = getelementptr %struct.fealnx_desc, ptr %130, i32 4, i32 5
  %131 = ptrtoint ptr %skbuff80.4.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %skbuff80.4.i, align 4
  %132 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx64.5.i = getelementptr %struct.fealnx_desc, ptr %132, i32 5
  %133 = ptrtoint ptr %arrayidx64.5.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %arrayidx64.5.i, align 4
  %134 = load i32, ptr %tx_ring_dma.i, align 4
  %add68.5.i = add i32 %134, 192
  %135 = load ptr, ptr %tx_ring.i, align 4
  %next_desc71.5.i = getelementptr %struct.fealnx_desc, ptr %135, i32 5, i32 3
  %136 = ptrtoint ptr %next_desc71.5.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %add68.5.i, ptr %next_desc71.5.i, align 4
  %137 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx74.5.i = getelementptr %struct.fealnx_desc, ptr %137, i32 6
  %next_desc_logical77.5.i = getelementptr %struct.fealnx_desc, ptr %137, i32 5, i32 4
  %138 = ptrtoint ptr %next_desc_logical77.5.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %arrayidx74.5.i, ptr %next_desc_logical77.5.i, align 4
  %139 = load ptr, ptr %tx_ring.i, align 4
  %skbuff80.5.i = getelementptr %struct.fealnx_desc, ptr %139, i32 5, i32 5
  %140 = ptrtoint ptr %skbuff80.5.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %skbuff80.5.i, align 4
  %141 = load i32, ptr %tx_ring_dma.i, align 4
  %142 = load ptr, ptr %tx_ring.i, align 4
  %next_desc88.i = getelementptr %struct.fealnx_desc, ptr %142, i32 5, i32 3
  %143 = ptrtoint ptr %next_desc88.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %141, ptr %next_desc88.i, align 4
  %144 = load ptr, ptr %tx_ring.i, align 4
  %next_desc_logical94.i = getelementptr %struct.fealnx_desc, ptr %144, i32 5, i32 4
  %145 = ptrtoint ptr %next_desc_logical94.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %144, ptr %next_desc_logical94.i, align 4
  %146 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rx_ring_dma.i, align 4
  %add.ptr5 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %148) #12, !srcloc !209
  %149 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tx_ring_dma.i, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %151) #12, !srcloc !209
  %bcrvalue = getelementptr i8, ptr %dev, i32 2484
  %152 = ptrtoint ptr %bcrvalue to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 20, ptr %bcrvalue, align 4
  %crvalue = getelementptr i8, ptr %dev, i32 2480
  %153 = ptrtoint ptr %crvalue to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 3584, ptr %crvalue, align 4
  %imrvalue = getelementptr i8, ptr %dev, i32 2488
  %154 = ptrtoint ptr %imrvalue to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1132, ptr %imrvalue, align 4
  %155 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pci_dev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %156, i32 0, i32 8
  %157 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2193, i16 %158)
  %cmp9 = icmp eq i16 %158, 2193
  br i1 %cmp9, label %if.then11, label %init_ring.exit.if.end18_crit_edge

init_ring.exit.if.end18_crit_edge:                ; preds = %init_ring.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then11:                                        ; preds = %init_ring.exit
  call void @__sanitizer_cov_trace_pc() #14
  %159 = ptrtoint ptr %bcrvalue to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 532, ptr %bcrvalue, align 4
  %160 = ptrtoint ptr %crvalue to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 33558016, ptr %crvalue, align 4
  %161 = ptrtoint ptr %imrvalue to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 1388, ptr %imrvalue, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %init_ring.exit.if.end18_crit_edge
  %162 = ptrtoint ptr %bcrvalue to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %bcrvalue, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %164) #12, !srcloc !209
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %165 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %cmp22 = icmp eq i8 %166, 0
  br i1 %cmp22, label %if.then24, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %default_port = getelementptr i8, ptr %dev, i32 2536
  %167 = ptrtoint ptr %default_port to i32
  call void @__asan_load1_noabort(i32 %167)
  %bf.load = load i8, ptr %default_port, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %168 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %bf.lshr, ptr %if_port, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end18.if.end27_crit_edge
  %add.ptr28 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #12, !srcloc !209
  %169 = ptrtoint ptr %crvalue to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %crvalue, align 4
  %or30 = or i32 %170, 14942209
  store i32 %or30, ptr %crvalue, align 4
  %force_media = getelementptr i8, ptr %dev, i32 2568
  %171 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %171)
  %bf.load31 = load i8, ptr %force_media, align 4
  %172 = shl i8 %bf.load31, 1
  %bf.shl = and i8 %172, -128
  %bf.clear36 = and i8 %bf.load31, 127
  %bf.set = or i8 %bf.shl, %bf.clear36
  store i8 %bf.set, ptr %force_media, align 4
  %linkok.i = getelementptr i8, ptr %dev, i32 2524
  %173 = ptrtoint ptr %linkok.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %linkok.i, align 4
  %PHYType.i = getelementptr i8, ptr %dev, i32 2540
  %174 = ptrtoint ptr %PHYType.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %PHYType.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %175)
  %cmp.i106 = icmp eq i32 %175, 1
  br i1 %cmp.i106, label %if.end27.for.body.i108_crit_edge, label %for.cond5.preheader.i

if.end27.for.body.i108_crit_edge:                 ; preds = %if.end27
  br label %for.body.i108

for.cond5.preheader.i:                            ; preds = %if.end27
  %phys.i = getelementptr i8, ptr %dev, i32 2548
  br label %for.body7.i

for.body.i108:                                    ; preds = %if.end.i109.for.body.i108_crit_edge, %if.end27.for.body.i108_crit_edge
  %i.032.i = phi i32 [ %inc.i, %if.end.i109.for.body.i108_crit_edge ], [ 0, %if.end27.for.body.i108_crit_edge ]
  %176 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mem, align 4
  %add.ptr.i107 = getelementptr i8, ptr %177, i32 76
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %179 = and i32 %178, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.not.i = icmp eq i32 %179, 0
  br i1 %tobool.not.i, label %if.end.i109, label %for.body.i108.getlinkstatus.exit.thread_crit_edge

for.body.i108.getlinkstatus.exit.thread_crit_edge: ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %getlinkstatus.exit.thread

if.end.i109:                                      ; preds = %for.body.i108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %180(i32 noundef 21474800) #12
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond34.not.i = icmp eq i32 %inc.i, 4096
  br i1 %exitcond34.not.i, label %if.end.i109.getlinkstatus.exit_crit_edge, label %if.end.i109.for.body.i108_crit_edge

if.end.i109.for.body.i108_crit_edge:              ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i108

if.end.i109.getlinkstatus.exit_crit_edge:         ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %getlinkstatus.exit

for.body7.i:                                      ; preds = %if.end13.i.for.body7.i_crit_edge, %for.cond5.preheader.i
  %i.131.i = phi i32 [ 0, %for.cond5.preheader.i ], [ %inc15.i, %if.end13.i.for.body7.i_crit_edge ]
  %181 = ptrtoint ptr %phys.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %phys.i, align 4
  %conv.i = zext i8 %182 to i32
  %call8.i = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv.i, i32 noundef 1) #12
  %and9.i = and i32 %call8.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %for.body7.i.getlinkstatus.exit.thread_crit_edge

for.body7.i.getlinkstatus.exit.thread_crit_edge:  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %getlinkstatus.exit.thread

if.end13.i:                                       ; preds = %for.body7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %183 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %183(i32 noundef 21474800) #12
  %inc15.i = add nuw nsw i32 %i.131.i, 1
  %exitcond.not.i110 = icmp eq i32 %inc15.i, 4096
  br i1 %exitcond.not.i110, label %if.end13.i.getlinkstatus.exit_crit_edge, label %if.end13.i.for.body7.i_crit_edge

if.end13.i.for.body7.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7.i

if.end13.i.getlinkstatus.exit_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %getlinkstatus.exit

getlinkstatus.exit.thread:                        ; preds = %for.body7.i.getlinkstatus.exit.thread_crit_edge, %for.body.i108.getlinkstatus.exit.thread_crit_edge
  %184 = ptrtoint ptr %linkok.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 1, ptr %linkok.i, align 4
  br label %if.then38

getlinkstatus.exit:                               ; preds = %if.end13.i.getlinkstatus.exit_crit_edge, %if.end.i109.getlinkstatus.exit_crit_edge
  %185 = ptrtoint ptr %linkok.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %.pr = load i32, ptr %linkok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool37.not = icmp eq i32 %.pr, 0
  br i1 %tobool37.not, label %getlinkstatus.exit.if.end39_crit_edge, label %getlinkstatus.exit.if.then38_crit_edge

getlinkstatus.exit.if.then38_crit_edge:           ; preds = %getlinkstatus.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

getlinkstatus.exit.if.end39_crit_edge:            ; preds = %getlinkstatus.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then38:                                        ; preds = %getlinkstatus.exit.if.then38_crit_edge, %getlinkstatus.exit.thread
  tail call fastcc void @getlinktype(ptr noundef %dev)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %getlinkstatus.exit.if.end39_crit_edge
  tail call fastcc void @__set_rx_mode(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %186 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %187, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %add.ptr40 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 1814298624) #12, !srcloc !209
  %188 = ptrtoint ptr %imrvalue to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %imrvalue, align 4
  %add.ptr42 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %190) #12, !srcloc !209
  %191 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool43.not = icmp eq i32 %191, 0
  br i1 %tobool43.not, label %if.end39.do.body49_crit_edge, label %do.end

if.end39.do.body49_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body49

do.end:                                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %dev) #15
  br label %do.body49

do.body49:                                        ; preds = %do.end, %if.end39.do.body49_crit_edge
  %timer = getelementptr i8, ptr %dev, i32 2364
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @netdev_timer, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @netdev_open.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %192 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %192, 300
  %expires = getelementptr i8, ptr %dev, i32 2372
  %193 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #12
  %reset_timer = getelementptr i8, ptr %dev, i32 2412
  tail call void @init_timer_key(ptr noundef %reset_timer, ptr noundef nonnull @reset_timer, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @netdev_open.__key.27) #12
  %reset_timer_armed = getelementptr i8, ptr %dev, i32 2460
  %194 = ptrtoint ptr %reset_timer_armed to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %reset_timer_armed, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body49 ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mem = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !209
  %add.ptr.i63 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 0) #12, !srcloc !209
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %delay.0.i = phi i32 [ 4096, %entry ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %delay.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.i.stop_nic_rxtx.exit_crit_edge, label %while.body.i

while.cond.i.stop_nic_rxtx.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rxtx.exit

while.body.i:                                     ; preds = %while.cond.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %5 = and i32 %4, 8388612
  %cmp.i = icmp eq i32 %5, 8388612
  br i1 %cmp.i, label %while.body.i.stop_nic_rxtx.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.stop_nic_rxtx.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rxtx.exit

stop_nic_rxtx.exit:                               ; preds = %while.body.i.stop_nic_rxtx.exit_crit_edge, %while.cond.i.stop_nic_rxtx.exit_crit_edge
  %timer = getelementptr i8, ptr %dev, i32 2364
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #12
  %reset_timer = getelementptr i8, ptr %dev, i32 2412
  %call2 = tail call i32 @del_timer_sync(ptr noundef %reset_timer) #12
  %pci_dev = getelementptr i8, ptr %dev, i32 2476
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %dev) #12
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 2520
  br label %for.body

for.cond13.preheader:                             ; preds = %if.end
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_ring, align 4
  %skbuff18 = getelementptr %struct.fealnx_desc, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %skbuff18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skbuff18, align 4
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %for.cond13.preheader.if.end29_crit_edge, label %if.then20

for.cond13.preheader.if.end29_crit_edge:          ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

for.body:                                         ; preds = %if.end.for.body_crit_edge, %stop_nic_rxtx.exit
  %i.064 = phi i32 [ 0, %stop_nic_rxtx.exit ], [ %inc, %if.end.for.body_crit_edge ]
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.fealnx_desc, ptr %15, i32 %i.064
  %skbuff = getelementptr %struct.fealnx_desc, ptr %15, i32 %i.064, i32 5
  %16 = ptrtoint ptr %skbuff to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skbuff, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %buffer = getelementptr %struct.fealnx_desc, ptr %22, i32 %i.064, i32 2
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buffer, align 4
  %25 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev7, i32 noundef %24, i32 noundef %26, i32 noundef 2, i32 noundef 0) #12
  tail call void @consume_skb(ptr noundef nonnull %17) #12
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %skbuff12 = getelementptr %struct.fealnx_desc, ptr %28, i32 %i.064, i32 5
  %29 = ptrtoint ptr %skbuff12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %skbuff12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.cond13.preheader, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.then20:                                        ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci_dev, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %buffer25 = getelementptr %struct.fealnx_desc, ptr %11, i32 0, i32 2
  %32 = ptrtoint ptr %buffer25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer25, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22, i32 noundef %33, i32 noundef %35, i32 noundef 1, i32 noundef 0) #12
  tail call void @consume_skb(ptr noundef nonnull %13) #12
  %36 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_ring, align 4
  %skbuff28 = getelementptr %struct.fealnx_desc, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %skbuff28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %skbuff28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then20, %for.cond13.preheader.if.end29_crit_edge
  %39 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_ring, align 4
  %skbuff18.1 = getelementptr %struct.fealnx_desc, ptr %40, i32 1, i32 5
  %41 = ptrtoint ptr %skbuff18.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skbuff18.1, align 4
  %tobool19.not.1 = icmp eq ptr %42, null
  br i1 %tobool19.not.1, label %if.end29.if.end29.1_crit_edge, label %if.then20.1

if.end29.if.end29.1_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.1

if.then20.1:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_dev, align 4
  %dev22.1 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %buffer25.1 = getelementptr %struct.fealnx_desc, ptr %40, i32 1, i32 2
  %45 = ptrtoint ptr %buffer25.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buffer25.1, align 4
  %len.1 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 6
  %47 = ptrtoint ptr %len.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.1, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22.1, i32 noundef %46, i32 noundef %48, i32 noundef 1, i32 noundef 0) #12
  tail call void @consume_skb(ptr noundef nonnull %42) #12
  %49 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_ring, align 4
  %skbuff28.1 = getelementptr %struct.fealnx_desc, ptr %50, i32 1, i32 5
  %51 = ptrtoint ptr %skbuff28.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %skbuff28.1, align 4
  br label %if.end29.1

if.end29.1:                                       ; preds = %if.then20.1, %if.end29.if.end29.1_crit_edge
  %52 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_ring, align 4
  %skbuff18.2 = getelementptr %struct.fealnx_desc, ptr %53, i32 2, i32 5
  %54 = ptrtoint ptr %skbuff18.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skbuff18.2, align 4
  %tobool19.not.2 = icmp eq ptr %55, null
  br i1 %tobool19.not.2, label %if.end29.1.if.end29.2_crit_edge, label %if.then20.2

if.end29.1.if.end29.2_crit_edge:                  ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.2

if.then20.2:                                      ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci_dev, align 4
  %dev22.2 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %buffer25.2 = getelementptr %struct.fealnx_desc, ptr %53, i32 2, i32 2
  %58 = ptrtoint ptr %buffer25.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buffer25.2, align 4
  %len.2 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 6
  %60 = ptrtoint ptr %len.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.2, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22.2, i32 noundef %59, i32 noundef %61, i32 noundef 1, i32 noundef 0) #12
  tail call void @consume_skb(ptr noundef nonnull %55) #12
  %62 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_ring, align 4
  %skbuff28.2 = getelementptr %struct.fealnx_desc, ptr %63, i32 2, i32 5
  %64 = ptrtoint ptr %skbuff28.2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %skbuff28.2, align 4
  br label %if.end29.2

if.end29.2:                                       ; preds = %if.then20.2, %if.end29.1.if.end29.2_crit_edge
  %65 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_ring, align 4
  %skbuff18.3 = getelementptr %struct.fealnx_desc, ptr %66, i32 3, i32 5
  %67 = ptrtoint ptr %skbuff18.3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %skbuff18.3, align 4
  %tobool19.not.3 = icmp eq ptr %68, null
  br i1 %tobool19.not.3, label %if.end29.2.if.end29.3_crit_edge, label %if.then20.3

if.end29.2.if.end29.3_crit_edge:                  ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.3

if.then20.3:                                      ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pci_dev, align 4
  %dev22.3 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %buffer25.3 = getelementptr %struct.fealnx_desc, ptr %66, i32 3, i32 2
  %71 = ptrtoint ptr %buffer25.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buffer25.3, align 4
  %len.3 = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 6
  %73 = ptrtoint ptr %len.3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.3, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22.3, i32 noundef %72, i32 noundef %74, i32 noundef 1, i32 noundef 0) #12
  tail call void @consume_skb(ptr noundef nonnull %68) #12
  %75 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_ring, align 4
  %skbuff28.3 = getelementptr %struct.fealnx_desc, ptr %76, i32 3, i32 5
  %77 = ptrtoint ptr %skbuff28.3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %skbuff28.3, align 4
  br label %if.end29.3

if.end29.3:                                       ; preds = %if.then20.3, %if.end29.2.if.end29.3_crit_edge
  %78 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tx_ring, align 4
  %skbuff18.4 = getelementptr %struct.fealnx_desc, ptr %79, i32 4, i32 5
  %80 = ptrtoint ptr %skbuff18.4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skbuff18.4, align 4
  %tobool19.not.4 = icmp eq ptr %81, null
  br i1 %tobool19.not.4, label %if.end29.3.if.end29.4_crit_edge, label %if.then20.4

if.end29.3.if.end29.4_crit_edge:                  ; preds = %if.end29.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.4

if.then20.4:                                      ; preds = %if.end29.3
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pci_dev, align 4
  %dev22.4 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %buffer25.4 = getelementptr %struct.fealnx_desc, ptr %79, i32 4, i32 2
  %84 = ptrtoint ptr %buffer25.4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buffer25.4, align 4
  %len.4 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 6
  %86 = ptrtoint ptr %len.4 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.4, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22.4, i32 noundef %85, i32 noundef %87, i32 noundef 1, i32 noundef 0) #12
  tail call void @consume_skb(ptr noundef nonnull %81) #12
  %88 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tx_ring, align 4
  %skbuff28.4 = getelementptr %struct.fealnx_desc, ptr %89, i32 4, i32 5
  %90 = ptrtoint ptr %skbuff28.4 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %skbuff28.4, align 4
  br label %if.end29.4

if.end29.4:                                       ; preds = %if.then20.4, %if.end29.3.if.end29.4_crit_edge
  %91 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tx_ring, align 4
  %skbuff18.5 = getelementptr %struct.fealnx_desc, ptr %92, i32 5, i32 5
  %93 = ptrtoint ptr %skbuff18.5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %skbuff18.5, align 4
  %tobool19.not.5 = icmp eq ptr %94, null
  br i1 %tobool19.not.5, label %if.end29.4.if.end29.5_crit_edge, label %if.then20.5

if.end29.4.if.end29.5_crit_edge:                  ; preds = %if.end29.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.5

if.then20.5:                                      ; preds = %if.end29.4
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pci_dev, align 4
  %dev22.5 = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44
  %buffer25.5 = getelementptr %struct.fealnx_desc, ptr %92, i32 5, i32 2
  %97 = ptrtoint ptr %buffer25.5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buffer25.5, align 4
  %len.5 = getelementptr inbounds %struct.sk_buff, ptr %94, i32 0, i32 6
  %99 = ptrtoint ptr %len.5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.5, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22.5, i32 noundef %98, i32 noundef %100, i32 noundef 1, i32 noundef 0) #12
  tail call void @consume_skb(ptr noundef nonnull %94) #12
  %101 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tx_ring, align 4
  %skbuff28.5 = getelementptr %struct.fealnx_desc, ptr %102, i32 5, i32 5
  %103 = ptrtoint ptr %skbuff28.5 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %skbuff28.5, align 4
  br label %if.end29.5

if.end29.5:                                       ; preds = %if.then20.5, %if.end29.4.if.end29.5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2320
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %cur_tx_copy = getelementptr i8, ptr %dev, i32 2508
  %0 = ptrtoint ptr %cur_tx_copy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_tx_copy, align 4
  %skbuff = getelementptr inbounds %struct.fealnx_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %skbuff to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %skbuff, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 2476
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %6) #12
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !216

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev6) #12
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev6, ptr noundef %6, i32 noundef %8) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %6 to i32
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i55 = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %14, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev6, ptr noundef %add.ptr.i55, i32 noundef %and.i, i32 noundef %8, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %15 = ptrtoint ptr %cur_tx_copy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur_tx_copy, align 4
  %buffer = getelementptr inbounds %struct.fealnx_desc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %buffer, align 4
  %18 = load ptr, ptr %cur_tx_copy, align 4
  %control = getelementptr inbounds %struct.fealnx_desc, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1140850688, ptr %control, align 4
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %shl = shl i32 %21, 11
  %22 = load ptr, ptr %cur_tx_copy, align 4
  %control12 = getelementptr inbounds %struct.fealnx_desc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %control12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %control12, align 4
  %or = or i32 %24, %shl
  store i32 %or, ptr %control12, align 4
  %25 = load i32, ptr %len, align 4
  %26 = load ptr, ptr %cur_tx_copy, align 4
  %control16 = getelementptr inbounds %struct.fealnx_desc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %control16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %control16, align 4
  %or17 = or i32 %28, %25
  store i32 %or17, ptr %control16, align 4
  %29 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2193, i16 %32)
  %cmp20 = icmp eq i16 %32, 2193
  br i1 %cmp20, label %if.then, label %dma_map_single_attrs.exit.if.end_crit_edge

dma_map_single_attrs.exit.if.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %cur_tx_copy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur_tx_copy, align 4
  %control23 = getelementptr inbounds %struct.fealnx_desc, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %control23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %control23, align 4
  %or24 = or i32 %36, 1107296256
  store i32 %or24, ptr %control23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dma_map_single_attrs.exit.if.end_crit_edge
  %37 = ptrtoint ptr %cur_tx_copy to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur_tx_copy, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -2147483648, ptr %38, align 4
  %40 = load ptr, ptr %cur_tx_copy, align 4
  %next_desc_logical = getelementptr inbounds %struct.fealnx_desc, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %next_desc_logical to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %next_desc_logical, align 4
  store ptr %42, ptr %cur_tx_copy, align 4
  %free_tx_count = getelementptr i8, ptr %dev, i32 2516
  %43 = ptrtoint ptr %free_tx_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %free_tx_count, align 4
  %dec = add i32 %44, -1
  store i32 %dec, ptr %free_tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec)
  %cmp29 = icmp slt i32 %dec, 2
  br i1 %cmp29, label %if.then31, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %45 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end.if.end32_crit_edge
  %really_tx_count = getelementptr i8, ptr %dev, i32 2512
  %47 = ptrtoint ptr %really_tx_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %really_tx_count, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %really_tx_count, align 4
  %mem = getelementptr i8, ptr %dev, i32 2584
  %49 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %50, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !209
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2320
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call fastcc void @__set_rx_mode(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mii_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %mii = getelementptr i8, ptr %dev, i32 2552
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call3 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fealnx_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mem = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !210
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %dev, i32 noundef %3) #15
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %5) #15
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %9) #15
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.1 = getelementptr %struct.fealnx_desc, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  %call13.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %13) #15
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.2 = getelementptr %struct.fealnx_desc, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.2, align 4
  %call13.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %17) #15
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.3 = getelementptr %struct.fealnx_desc, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.3, align 4
  %call13.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %21) #15
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.4 = getelementptr %struct.fealnx_desc, ptr %23, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.4, align 4
  %call13.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %25) #15
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.5 = getelementptr %struct.fealnx_desc, ptr %27, i32 5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.5, align 4
  %call13.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %29) #15
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.6 = getelementptr %struct.fealnx_desc, ptr %31, i32 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.6, align 4
  %call13.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %33) #15
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.7 = getelementptr %struct.fealnx_desc, ptr %35, i32 7
  %36 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.7, align 4
  %call13.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %37) #15
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.8 = getelementptr %struct.fealnx_desc, ptr %39, i32 8
  %40 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.8, align 4
  %call13.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %41) #15
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.9 = getelementptr %struct.fealnx_desc, ptr %43, i32 9
  %44 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.9, align 4
  %call13.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %45) #15
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.10 = getelementptr %struct.fealnx_desc, ptr %47, i32 10
  %48 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.10, align 4
  %call13.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %49) #15
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.11 = getelementptr %struct.fealnx_desc, ptr %51, i32 11
  %52 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.11, align 4
  %call13.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %53) #15
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #15
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %54 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_ring, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %55) #15
  %56 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_ring, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %59) #15
  %60 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_ring, align 4
  %arrayidx32.1 = getelementptr %struct.fealnx_desc, ptr %61, i32 1
  %62 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx32.1, align 4
  %call34.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %63) #15
  %64 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_ring, align 4
  %arrayidx32.2 = getelementptr %struct.fealnx_desc, ptr %65, i32 2
  %66 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx32.2, align 4
  %call34.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %67) #15
  %68 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx_ring, align 4
  %arrayidx32.3 = getelementptr %struct.fealnx_desc, ptr %69, i32 3
  %70 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx32.3, align 4
  %call34.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %71) #15
  %72 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tx_ring, align 4
  %arrayidx32.4 = getelementptr %struct.fealnx_desc, ptr %73, i32 4
  %74 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx32.4, align 4
  %call34.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %75) #15
  %76 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_ring, align 4
  %arrayidx32.5 = getelementptr %struct.fealnx_desc, ptr %77, i32 5
  %78 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx32.5, align 4
  %call34.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %79) #15
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #15
  %lock = getelementptr i8, ptr %dev, i32 2320
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call fastcc void @reset_and_disable_rxtx(ptr noundef %dev)
  %80 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tx_ring, align 4
  %cur_tx.i = getelementptr i8, ptr %dev, i32 2504
  %82 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %cur_tx.i, align 4
  %cur_tx_copy.i = getelementptr i8, ptr %dev, i32 2508
  %83 = ptrtoint ptr %cur_tx_copy.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %81, ptr %cur_tx_copy.i, align 4
  %really_tx_count.i = getelementptr i8, ptr %dev, i32 2512
  %84 = ptrtoint ptr %really_tx_count.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %really_tx_count.i, align 4
  %free_tx_count.i = getelementptr i8, ptr %dev, i32 2516
  %85 = ptrtoint ptr %free_tx_count.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 6, ptr %free_tx_count.i, align 4
  %pci_dev.i = getelementptr i8, ptr %dev, i32 2476
  %tx_ring_dma.i = getelementptr i8, ptr %dev, i32 2316
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.047.i = phi i32 [ 0, %entry ], [ %add.i, %if.end.i.for.body.i_crit_edge ]
  %86 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tx_ring, align 4
  %arrayidx4.i = getelementptr %struct.fealnx_desc, ptr %87, i32 %i.047.i
  %skbuff.i = getelementptr %struct.fealnx_desc, ptr %87, i32 %i.047.i, i32 5
  %88 = ptrtoint ptr %skbuff.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %skbuff.i, align 4
  %tobool.not.i = icmp eq ptr %89, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pci_dev.i, align 4
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %buffer.i = getelementptr %struct.fealnx_desc, ptr %87, i32 %i.047.i, i32 2
  %92 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %buffer.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 6
  %94 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev5.i, i32 noundef %93, i32 noundef %95, i32 noundef 1, i32 noundef 0) #12
  %96 = ptrtoint ptr %skbuff.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %skbuff.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %97, i32 noundef 1) #12
  %98 = ptrtoint ptr %skbuff.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %skbuff.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %99 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx4.i, align 4
  %control.i = getelementptr %struct.fealnx_desc, ptr %87, i32 %i.047.i, i32 1
  %100 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %control.i, align 4
  %101 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tx_ring_dma.i, align 4
  %add.i = add nuw nsw i32 %i.047.i, 1
  %mul.i = shl i32 %add.i, 5
  %add9.i = add i32 %102, %mul.i
  %next_desc.i = getelementptr %struct.fealnx_desc, ptr %87, i32 %i.047.i, i32 3
  %103 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add9.i, ptr %next_desc.i, align 4
  %104 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_ring, align 4
  %arrayidx12.i = getelementptr %struct.fealnx_desc, ptr %105, i32 %add.i
  %next_desc_logical.i = getelementptr %struct.fealnx_desc, ptr %87, i32 %i.047.i, i32 4
  %106 = ptrtoint ptr %next_desc_logical.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %arrayidx12.i, ptr %next_desc_logical.i, align 4
  %exitcond.not.i = icmp eq i32 %add.i, 6
  br i1 %exitcond.not.i, label %reset_tx_descriptors.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

reset_tx_descriptors.exit:                        ; preds = %if.end.i
  %107 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_ring_dma.i, align 4
  %109 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tx_ring, align 4
  %next_desc16.i = getelementptr %struct.fealnx_desc, ptr %110, i32 5, i32 3
  %111 = ptrtoint ptr %next_desc16.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %108, ptr %next_desc16.i, align 4
  %112 = load ptr, ptr %tx_ring, align 4
  %next_desc_logical21.i = getelementptr %struct.fealnx_desc, ptr %112, i32 5, i32 4
  %113 = ptrtoint ptr %next_desc_logical21.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %next_desc_logical21.i, align 4
  tail call fastcc void @enable_rxtx(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call48) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %114 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %116 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %115, i32 0, i32 12
  %117 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %116)
  %cmp.not.i.i = icmp eq i32 %118, %116
  br i1 %cmp.not.i.i, label %reset_tx_descriptors.exit.netif_trans_update.exit_crit_edge, label %do.body5.i.i

reset_tx_descriptors.exit.netif_trans_update.exit_crit_edge: ; preds = %reset_tx_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %reset_tx_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 %116, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %reset_tx_descriptors.exit.netif_trans_update.exit_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %120 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_errors, align 4
  %inc54 = add i32 %121, 1
  store i32 %inc54, ptr %tx_errors, align 4
  %122 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %123) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %1, i32 68
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %5 = and i32 %4, -8454144
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %7 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %8, %6
  store i32 %add, ptr %rx_missed_errors, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !210
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %and5 = lshr i32 %10, 16
  %shr = and i32 %and5, 32767
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %11 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_crc_errors, align 8
  %add7 = add i32 %shr, %12
  store i32 %add7, ptr %rx_crc_errors, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stats8 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intr_handler(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev_instance, i32 2584
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %2 = load i32, ptr @max_interrupt_work, align 4
  %lock = getelementptr i8, ptr %dev_instance, i32 2320
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !209
  %add.ptr1 = getelementptr i8, ptr %1, i32 52
  %imrvalue = getelementptr i8, ptr %dev_instance, i32 2488
  %add.ptr12 = getelementptr i8, ptr %1, i32 32
  %add.ptr17 = getelementptr i8, ptr %1, i32 68
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 15
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 12
  %cur_rx.i = getelementptr i8, ptr %dev_instance, i32 2492
  %really_rx_count.i = getelementptr i8, ptr %dev_instance, i32 2500
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 4
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 10
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 13
  %pci_dev.i = getelementptr i8, ptr %dev_instance, i32 2476
  %rx_buf_sz.i = getelementptr i8, ptr %dev_instance, i32 2520
  %stats146.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 2
  %crvalue.i = getelementptr i8, ptr %dev_instance, i32 2480
  %add.ptr.i334 = getelementptr i8, ptr %1, i32 24
  %really_tx_count = getelementptr i8, ptr %dev_instance, i32 2512
  %cur_tx = getelementptr i8, ptr %dev_instance, i32 2504
  %tx_bytes104 = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 3
  %tx_packets107 = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 1
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 5
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 16
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 17
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 20
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 18
  %full_duplex = getelementptr i8, ptr %dev_instance, i32 2568
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 19
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 9
  %free_tx_count = getelementptr i8, ptr %dev_instance, i32 2516
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 103
  %add.ptr149 = getelementptr i8, ptr %1, i32 72
  br label %do.body

do.body:                                          ; preds = %if.end170.do.body_crit_edge, %entry
  %handled.0 = phi i32 [ 0, %entry ], [ 1, %if.end170.do.body_crit_edge ]
  %num_tx.0 = phi i32 [ 0, %entry ], [ %num_tx.1.lcssa, %if.end170.do.body_crit_edge ]
  %boguscnt.0 = phi i32 [ %2, %entry ], [ %dec171, %if.end170.do.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #12, !srcloc !210
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %3) #12, !srcloc !209
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %do.end

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %dev_instance, i32 noundef %4) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  %6 = ptrtoint ptr %imrvalue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %imrvalue, align 4
  %and = and i32 %7, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.do.end197_crit_edge, label %if.end8

if.end.do.end197_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end197

if.end8:                                          ; preds = %if.end
  %and9 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #12, !srcloc !209
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %and14 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end25_crit_edge, label %if.then16

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %9 = and i32 %8, -8454144
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %12, %10
  store i32 %add, ptr %rx_missed_errors, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #12, !srcloc !210
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %and22 = lshr i32 %14, 16
  %shr = and i32 %and22, 32767
  %15 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_crc_errors, align 8
  %add24 = add i32 %shr, %16
  store i32 %add24, ptr %rx_crc_errors, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %if.end13.if.end25_crit_edge
  %and26 = and i32 %4, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end36_crit_edge, label %if.then28

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then28:                                        ; preds = %if.end25
  %and29 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then28
  %17 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem, align 4
  %19 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur_rx.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool.not21.i = icmp sgt i32 %22, -1
  br i1 %tobool.not21.i, label %if.then31.land.rhs.i_crit_edge, label %if.then31.netdev_rx.exit_crit_edge

if.then31.netdev_rx.exit_crit_edge:               ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_rx.exit

if.then31.land.rhs.i_crit_edge:                   ; preds = %if.then31
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup155.i.land.rhs.i_crit_edge, %if.then31.land.rhs.i_crit_edge
  %23 = phi i32 [ %125, %cleanup155.i.land.rhs.i_crit_edge ], [ %22, %if.then31.land.rhs.i_crit_edge ]
  %24 = phi ptr [ %123, %cleanup155.i.land.rhs.i_crit_edge ], [ %20, %if.then31.land.rhs.i_crit_edge ]
  %skbuff.i = getelementptr inbounds %struct.fealnx_desc, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %skbuff.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skbuff.i, align 4
  %tobool2.not.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i, label %land.rhs.i.netdev_rx.exit_crit_edge, label %while.body.i

land.rhs.i.netdev_rx.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_rx.exit

while.body.i:                                     ; preds = %land.rhs.i
  %27 = ptrtoint ptr %really_rx_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %really_rx_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  br i1 %cmp.i, label %while.body.i.netdev_rx.exit_crit_edge, label %if.end.i

while.body.i.netdev_rx.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_rx.exit

if.end.i:                                         ; preds = %while.body.i
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not.i = icmp eq i32 %29, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end8.i_crit_edge, label %do.end.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %23) #15
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %if.end.i.if.end8.i_crit_edge
  %and9.i = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %30 = and i32 %23, 3200
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %30)
  %31 = icmp eq i32 %30, 3072
  br i1 %31, label %if.else98.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end8.i
  %and13.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.then15.i
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool19.not.i = icmp eq i32 %32, 0
  br i1 %tobool19.not.i, label %if.then18.i.if.end26.i_crit_edge, label %do.end23.i

if.then18.i.if.end26.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

do.end23.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %dev_instance, i32 noundef %23) #15
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end23.i, %if.then18.i.if.end26.i_crit_edge
  %33 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %and27.i = and i32 %23, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end32.i_crit_edge, label %if.then29.i

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_length_errors.i, align 8
  %inc31.i = add i32 %36, 1
  store i32 %inc31.i, ptr %rx_length_errors.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end32.i_crit_edge
  %and33.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end38.i_crit_edge, label %if.then35.i

if.end32.i.if.end38.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_frame_errors.i, align 4
  %inc37.i = add i32 %38, 1
  store i32 %inc37.i, ptr %rx_frame_errors.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end38.i_crit_edge
  %and39.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end151.i_crit_edge, label %if.end38.i.if.end151.sink.split.i_crit_edge

if.end38.i.if.end151.sink.split.i_crit_edge:      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151.sink.split.i

if.end38.i.if.end151.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151.i

if.else.i:                                        ; preds = %if.then15.i
  br i1 %tobool10.not.i, label %if.else.i.if.else93.i_crit_edge, label %while.cond49.preheader.i

if.else.i.if.else93.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else93.i

while.cond49.preheader.i:                         ; preds = %if.else.i
  %39 = ptrtoint ptr %really_rx_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %really_rx_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp51.not13.i = icmp slt i32 %40, 0
  br i1 %cmp51.not13.i, label %while.cond49.preheader.i.if.else93.i_crit_edge, label %while.cond49.preheader.i.while.body52.i_crit_edge

while.cond49.preheader.i.while.body52.i_crit_edge: ; preds = %while.cond49.preheader.i
  br label %while.body52.i

while.cond49.preheader.i.if.else93.i_crit_edge:   ; preds = %while.cond49.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else93.i

while.body52.i:                                   ; preds = %while.body52.i.while.body52.i_crit_edge, %while.cond49.preheader.i.while.body52.i_crit_edge
  %cur.015.in.i = phi ptr [ %next_desc_logical.i, %while.body52.i.while.body52.i_crit_edge ], [ %cur_rx.i, %while.cond49.preheader.i.while.body52.i_crit_edge ]
  %desno.014.i = phi i32 [ %inc53.i, %while.body52.i.while.body52.i_crit_edge ], [ 0, %while.cond49.preheader.i.while.body52.i_crit_edge ]
  %41 = ptrtoint ptr %cur.015.in.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %cur.015.i = load ptr, ptr %cur.015.in.i, align 4
  %inc53.i = add i32 %desno.014.i, 1
  %42 = ptrtoint ptr %cur.015.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cur.015.i, align 4
  %44 = and i32 %43, -2147482624
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %44)
  %.not.i = icmp eq i32 %44, 1024
  %next_desc_logical.i = getelementptr inbounds %struct.fealnx_desc, ptr %cur.015.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc53.i, i32 %40)
  %cmp51.not.i = icmp sgt i32 %inc53.i, %40
  %or.cond.i = select i1 %.not.i, i1 true, i1 %cmp51.not.i
  br i1 %or.cond.i, label %while.end.i, label %while.body52.i.while.body52.i_crit_edge

while.body52.i.while.body52.i_crit_edge:          ; preds = %while.body52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body52.i

while.end.i:                                      ; preds = %while.body52.i
  br i1 %cmp51.not.i, label %while.end.i.if.else93.i_crit_edge, label %if.then70.i

while.end.i.if.else93.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else93.i

if.then70.i:                                      ; preds = %while.end.i
  %45 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_length_errors.i, align 8
  %inc73.i = add i32 %46, 1
  store i32 %inc73.i, ptr %rx_length_errors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %desno.014.i)
  %cmp7419.i = icmp ult i32 %desno.014.i, 2147483647
  br i1 %cmp7419.i, label %if.then70.i.for.body.i_crit_edge, label %if.then70.i.cleanup155.i_crit_edge

if.then70.i.cleanup155.i_crit_edge:               ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup155.i

if.then70.i.for.body.i_crit_edge:                 ; preds = %if.then70.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end86.i.for.body.i_crit_edge, %if.then70.i.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc92.i, %if.end86.i.for.body.i_crit_edge ], [ 0, %if.then70.i.for.body.i_crit_edge ]
  %47 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur_rx.i, align 4
  %skbuff76.i = getelementptr inbounds %struct.fealnx_desc, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %skbuff76.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %skbuff76.i, align 4
  %tobool77.not.i = icmp eq ptr %50, null
  br i1 %tobool77.not.i, label %do.end81.i, label %if.end86.i

do.end81.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %dev_instance) #15
  br label %cleanup155.i

if.end86.i:                                       ; preds = %for.body.i
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -2147483648, ptr %48, align 4
  %52 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_rx.i, align 4
  %next_desc_logical90.i = getelementptr inbounds %struct.fealnx_desc, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %next_desc_logical90.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %next_desc_logical90.i, align 4
  store ptr %55, ptr %cur_rx.i, align 4
  %inc92.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %i.020.i, %desno.014.i
  br i1 %exitcond.not.i, label %if.end86.i.cleanup155.i_crit_edge, label %if.end86.i.for.body.i_crit_edge

if.end86.i.for.body.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end86.i.cleanup155.i_crit_edge:                ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup155.i

if.else93.i:                                      ; preds = %while.end.i.if.else93.i_crit_edge, %while.cond49.preheader.i.if.else93.i_crit_edge, %if.else.i.if.else93.i_crit_edge
  %56 = ptrtoint ptr %crvalue.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crvalue.i, align 4
  %and.i.i = and i32 %57, -2
  %add.ptr.i3.i = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %58 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %58) #12, !srcloc !209
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.else93.i
  %delay.0.i.i = phi i32 [ 4096, %if.else93.i ], [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %delay.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.stop_nic_rx.exit.i_crit_edge, label %while.body.i.i

while.cond.i.i.stop_nic_rx.exit.i_crit_edge:      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rx.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %60 = and i32 %59, 8388608
  %cmp.not.i.i = icmp eq i32 %60, 0
  br i1 %cmp.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.stop_nic_rx.exit.i_crit_edge

while.body.i.i.stop_nic_rx.exit.i_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rx.exit.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

stop_nic_rx.exit.i:                               ; preds = %while.body.i.i.stop_nic_rx.exit.i_crit_edge, %while.cond.i.i.stop_nic_rx.exit.i_crit_edge
  tail call fastcc void @reset_rx_descriptors(ptr noundef %dev_instance) #12
  %61 = ptrtoint ptr %crvalue.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %crvalue.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %63) #12, !srcloc !209
  br label %netdev_rx.exit

if.else98.i:                                      ; preds = %if.end8.i
  %and99.i = lshr i32 %23, 16
  %64 = and i32 %and99.i, 4095
  %conv.i = add nsw i32 %64, -4
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool100.not.i = icmp eq i32 %65, 0
  br i1 %tobool100.not.i, label %if.else98.i.if.end108.i_crit_edge, label %do.end104.i

if.else98.i.if.end108.i_crit_edge:                ; preds = %if.else98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108.i

do.end104.i:                                      ; preds = %if.else98.i
  call void @__sanitizer_cov_trace_pc() #14
  %call107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv.i, i32 noundef %23) #15
  br label %if.end108.i

if.end108.i:                                      ; preds = %do.end104.i, %if.else98.i.if.end108.i_crit_edge
  %66 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv.i)
  %cmp110.i = icmp sgt i32 %66, %conv.i
  br i1 %cmp110.i, label %land.lhs.true112.i, label %if.end108.i.if.else130.i_crit_edge

if.end108.i.if.else130.i_crit_edge:               ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else130.i

land.lhs.true112.i:                               ; preds = %if.end108.i
  %add.i = add nsw i32 %64, -2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_instance, i32 noundef %add.i, i32 noundef 2592) #12
  %cmp115.not.i = icmp eq ptr %call.i.i, null
  br i1 %cmp115.not.i, label %land.lhs.true112.i.if.else130.i_crit_edge, label %if.then117.i

land.lhs.true112.i.if.else130.i_crit_edge:        ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else130.i

if.then117.i:                                     ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %67 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %68, i32 2
  store ptr %add.ptr.i4.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %69 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %70, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %71 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci_dev.i, align 4
  %dev118.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %73 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur_rx.i, align 4
  %buffer.i = getelementptr inbounds %struct.fealnx_desc, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %buffer.i, align 4
  %77 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev118.i, i32 noundef %76, i32 noundef %78, i32 noundef 2) #12
  %79 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur_rx.i, align 4
  %skbuff121.i = getelementptr inbounds %struct.fealnx_desc, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %skbuff121.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %skbuff121.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 19
  %83 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i, align 4
  %85 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i, align 4
  %87 = call ptr @memcpy(ptr %86, ptr %84, i32 %conv.i)
  %call124.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv.i) #12
  %88 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pci_dev.i, align 4
  %dev126.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  %90 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur_rx.i, align 4
  %buffer128.i = getelementptr inbounds %struct.fealnx_desc, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %buffer128.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %buffer128.i, align 4
  %94 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev126.i, i32 noundef %93, i32 noundef %95, i32 noundef 2) #12
  br label %if.end143.i

if.else130.i:                                     ; preds = %land.lhs.true112.i.if.else130.i_crit_edge, %if.end108.i.if.else130.i_crit_edge
  %96 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pci_dev.i, align 4
  %dev132.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %98 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur_rx.i, align 4
  %buffer134.i = getelementptr inbounds %struct.fealnx_desc, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %buffer134.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %buffer134.i, align 4
  %102 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev132.i, i32 noundef %101, i32 noundef %103, i32 noundef 2, i32 noundef 0) #12
  %104 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur_rx.i, align 4
  %skbuff137.i = getelementptr inbounds %struct.fealnx_desc, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %skbuff137.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %skbuff137.i, align 4
  %call139.i = tail call ptr @skb_put(ptr noundef %107, i32 noundef %conv.i) #12
  %108 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cur_rx.i, align 4
  %skbuff141.i = getelementptr inbounds %struct.fealnx_desc, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %skbuff141.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %skbuff141.i, align 4
  %111 = ptrtoint ptr %really_rx_count.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %really_rx_count.i, align 4
  %dec.i = add i32 %112, -1
  store i32 %dec.i, ptr %really_rx_count.i, align 4
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.else130.i, %if.then117.i
  %skb.0.i = phi ptr [ %call.i.i, %if.then117.i ], [ %107, %if.else130.i ]
  %call144.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0.i, ptr noundef %dev_instance) #12
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %113 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %call144.i, ptr %protocol.i, align 8
  %call145.i = tail call i32 @netif_rx(ptr noundef %skb.0.i) #12
  %114 = ptrtoint ptr %stats146.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %stats146.i, align 8
  %inc147.i = add i32 %115, 1
  store i32 %inc147.i, ptr %stats146.i, align 8
  br label %if.end151.sink.split.i

if.end151.sink.split.i:                           ; preds = %if.end143.i, %if.end38.i.if.end151.sink.split.i_crit_edge
  %rx_crc_errors.sink29.i = phi ptr [ %rx_bytes.i, %if.end143.i ], [ %rx_crc_errors, %if.end38.i.if.end151.sink.split.i_crit_edge ]
  %.sink28.i = phi i32 [ %conv.i, %if.end143.i ], [ 1, %if.end38.i.if.end151.sink.split.i_crit_edge ]
  %116 = ptrtoint ptr %rx_crc_errors.sink29.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_crc_errors.sink29.i, align 8
  %inc43.i = add i32 %117, %.sink28.i
  store i32 %inc43.i, ptr %rx_crc_errors.sink29.i, align 8
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.end151.sink.split.i, %if.end38.i.if.end151.i_crit_edge
  %118 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cur_rx.i, align 4
  %next_desc_logical153.i = getelementptr inbounds %struct.fealnx_desc, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %next_desc_logical153.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %next_desc_logical153.i, align 4
  store ptr %121, ptr %cur_rx.i, align 4
  br label %cleanup155.i

cleanup155.i:                                     ; preds = %if.end151.i, %if.end86.i.cleanup155.i_crit_edge, %do.end81.i, %if.then70.i.cleanup155.i_crit_edge
  %122 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur_rx.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %tobool.not.i = icmp sgt i32 %125, -1
  br i1 %tobool.not.i, label %cleanup155.i.land.rhs.i_crit_edge, label %cleanup155.i.netdev_rx.exit_crit_edge

cleanup155.i.netdev_rx.exit_crit_edge:            ; preds = %cleanup155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_rx.exit

cleanup155.i.land.rhs.i_crit_edge:                ; preds = %cleanup155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

netdev_rx.exit:                                   ; preds = %cleanup155.i.netdev_rx.exit_crit_edge, %stop_nic_rx.exit.i, %while.body.i.netdev_rx.exit_crit_edge, %land.rhs.i.netdev_rx.exit_crit_edge, %if.then31.netdev_rx.exit_crit_edge
  tail call fastcc void @allocate_rx_buffers(ptr noundef %dev_instance) #12
  br label %if.end36

if.else:                                          ; preds = %if.then28
  %126 = ptrtoint ptr %crvalue.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %crvalue.i, align 4
  %and.i = and i32 %127, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %128 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334, i32 %128) #12, !srcloc !209
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i337.while.cond.i_crit_edge, %if.else
  %delay.0.i = phi i32 [ 4096, %if.else ], [ %dec.i335, %while.body.i337.while.cond.i_crit_edge ]
  %dec.i335 = add nsw i32 %delay.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i335)
  %tobool.not.i336 = icmp eq i32 %dec.i335, 0
  br i1 %tobool.not.i336, label %while.cond.i.stop_nic_rx.exit_crit_edge, label %while.body.i337

while.cond.i.stop_nic_rx.exit_crit_edge:          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rx.exit

while.body.i337:                                  ; preds = %while.cond.i
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i334) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %130 = and i32 %129, 8388608
  %cmp.not.i = icmp eq i32 %130, 0
  br i1 %cmp.not.i, label %while.body.i337.while.cond.i_crit_edge, label %while.body.i337.stop_nic_rx.exit_crit_edge

while.body.i337.stop_nic_rx.exit_crit_edge:       ; preds = %while.body.i337
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rx.exit

while.body.i337.while.cond.i_crit_edge:           ; preds = %while.body.i337
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

stop_nic_rx.exit:                                 ; preds = %while.body.i337.stop_nic_rx.exit_crit_edge, %while.cond.i.stop_nic_rx.exit_crit_edge
  tail call fastcc void @reset_rx_descriptors(ptr noundef %dev_instance)
  %131 = ptrtoint ptr %crvalue.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %crvalue.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334, i32 %133) #12, !srcloc !209
  br label %if.end36

if.end36:                                         ; preds = %stop_nic_rx.exit, %netdev_rx.exit, %if.end25.if.end36_crit_edge
  %134 = ptrtoint ptr %really_tx_count to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %really_tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool37.not363 = icmp eq i32 %135, 0
  br i1 %tobool37.not363, label %if.end36.while.end_crit_edge, label %if.end36.while.body_crit_edge

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  br label %while.body

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end36.while.body_crit_edge
  %num_tx.1364 = phi i32 [ %inc137, %cleanup.while.body_crit_edge ], [ %num_tx.0, %if.end36.while.body_crit_edge ]
  %136 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur_tx, align 4
  %control = getelementptr inbounds %struct.fealnx_desc, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %control, align 4
  %and39 = and i32 %139, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then41, label %while.body.if.end45_crit_edge

while.body.if.end45_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then41:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %next_desc_logical = getelementptr inbounds %struct.fealnx_desc, ptr %137, i32 0, i32 4
  %140 = ptrtoint ptr %next_desc_logical to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %next_desc_logical, align 4
  %control44 = getelementptr inbounds %struct.fealnx_desc, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %control44 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %control44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %while.body.if.end45_crit_edge
  %tx_status.0.in = phi ptr [ %137, %while.body.if.end45_crit_edge ], [ %141, %if.then41 ]
  %tx_control.0 = phi i32 [ %139, %while.body.if.end45_crit_edge ], [ %143, %if.then41 ]
  %144 = ptrtoint ptr %tx_status.0.in to i32
  call void @__asan_load4_noabort(i32 %144)
  %tx_status.0 = load i32, ptr %tx_status.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %tx_status.0)
  %tobool47.not = icmp sgt i32 %tx_status.0, -1
  br i1 %tobool47.not, label %if.end49, label %if.end45.while.end_crit_edge

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end49:                                         ; preds = %if.end45
  %145 = ptrtoint ptr %crvalue.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %crvalue.i, align 4
  %and51 = and i32 %146, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.then53, label %if.else100

if.then53:                                        ; preds = %if.end49
  %and54 = and i32 %tx_status.0, 15616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else88, label %if.then56

if.then56:                                        ; preds = %if.then53
  %147 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %148, 1
  store i32 %inc, ptr %tx_errors, align 4
  %and58 = and i32 %tx_status.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then56.if.end63_crit_edge, label %if.then60

if.then56.if.end63_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %149 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tx_aborted_errors, align 8
  %inc62 = add i32 %150, 1
  store i32 %inc62, ptr %tx_aborted_errors, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.then56.if.end63_crit_edge
  %and64 = and i32 %tx_status.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end69_crit_edge, label %if.then66

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %151 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tx_carrier_errors, align 4
  %inc68 = add i32 %152, 1
  store i32 %inc68, ptr %tx_carrier_errors, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end63.if.end69_crit_edge
  %and70 = and i32 %tx_status.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end75_crit_edge, label %if.then72

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_window_errors, align 8
  %inc74 = add i32 %154, 1
  store i32 %inc74, ptr %tx_window_errors, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end69.if.end75_crit_edge
  %and76 = and i32 %tx_status.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end81_crit_edge, label %if.then78

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %155 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tx_fifo_errors, align 8
  %inc80 = add i32 %156, 1
  store i32 %inc80, ptr %tx_fifo_errors, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end75.if.end81_crit_edge
  %and82 = and i32 %tx_status.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end81.if.end109_crit_edge, label %land.lhs.true

if.end81.if.end109_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

land.lhs.true:                                    ; preds = %if.end81
  %157 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %157)
  %bf.load = load i8, ptr %full_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp = icmp sgt i8 %bf.load, -1
  br i1 %cmp, label %land.lhs.true.if.end109.sink.split_crit_edge, label %land.lhs.true.if.end109_crit_edge

land.lhs.true.if.end109_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

land.lhs.true.if.end109.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109.sink.split

if.else88:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  %and89 = lshr i32 %tx_control.0, 11
  %158 = and i32 %and89, 2047
  %159 = ptrtoint ptr %tx_bytes104 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %tx_bytes104, align 4
  %add92 = add i32 %160, %158
  store i32 %add92, ptr %tx_bytes104, align 4
  %and93 = and i32 %tx_status.0, 255
  br label %if.end109.sink.split.sink.split

if.else100:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %and101 = lshr i32 %tx_control.0, 11
  %161 = and i32 %and101, 2047
  br label %if.end109.sink.split.sink.split

if.end109.sink.split.sink.split:                  ; preds = %if.else100, %if.else88
  %tx_bytes104.sink375 = phi ptr [ %tx_bytes104, %if.else100 ], [ %collisions, %if.else88 ]
  %.sink374 = phi i32 [ %161, %if.else100 ], [ %and93, %if.else88 ]
  %162 = ptrtoint ptr %tx_bytes104.sink375 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %tx_bytes104.sink375, align 4
  %add105 = add i32 %163, %.sink374
  store i32 %add105, ptr %tx_bytes104.sink375, align 4
  br label %if.end109.sink.split

if.end109.sink.split:                             ; preds = %if.end109.sink.split.sink.split, %land.lhs.true.if.end109.sink.split_crit_edge
  %tx_packets107.sink371 = phi ptr [ %tx_heartbeat_errors, %land.lhs.true.if.end109.sink.split_crit_edge ], [ %tx_packets107, %if.end109.sink.split.sink.split ]
  %164 = ptrtoint ptr %tx_packets107.sink371 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tx_packets107.sink371, align 4
  %inc98 = add i32 %165, 1
  store i32 %inc98, ptr %tx_packets107.sink371, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.end109.sink.split, %land.lhs.true.if.end109_crit_edge, %if.end81.if.end109_crit_edge
  %166 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pci_dev.i, align 4
  %dev110 = getelementptr inbounds %struct.pci_dev, ptr %167, i32 0, i32 44
  %168 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %cur_tx, align 4
  %buffer = getelementptr inbounds %struct.fealnx_desc, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %buffer, align 4
  %skbuff = getelementptr inbounds %struct.fealnx_desc, ptr %169, i32 0, i32 5
  %172 = ptrtoint ptr %skbuff to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %skbuff, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %173, i32 0, i32 6
  %174 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev110, i32 noundef %171, i32 noundef %175, i32 noundef 1, i32 noundef 0) #12
  %176 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cur_tx, align 4
  %skbuff114 = getelementptr inbounds %struct.fealnx_desc, ptr %177, i32 0, i32 5
  %178 = ptrtoint ptr %skbuff114 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %skbuff114, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %179, i32 noundef 0) #12
  %180 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cur_tx, align 4
  %skbuff116 = getelementptr inbounds %struct.fealnx_desc, ptr %181, i32 0, i32 5
  %182 = ptrtoint ptr %skbuff116 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %skbuff116, align 4
  %183 = ptrtoint ptr %really_tx_count to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %really_tx_count, align 4
  %dec = add i32 %184, -1
  store i32 %dec, ptr %really_tx_count, align 4
  %185 = load ptr, ptr %cur_tx, align 4
  %control119 = getelementptr inbounds %struct.fealnx_desc, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %control119 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %control119, align 4
  %and120 = and i32 %187, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.else127, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else127:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %next_desc_logical129 = getelementptr inbounds %struct.fealnx_desc, ptr %185, i32 0, i32 4
  %188 = ptrtoint ptr %next_desc_logical129 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %next_desc_logical129, align 4
  %190 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %189, ptr %cur_tx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else127, %if.end109.cleanup_crit_edge
  %.sink = phi ptr [ %189, %if.else127 ], [ %185, %if.end109.cleanup_crit_edge ]
  %.sink372 = phi i32 [ 2, %if.else127 ], [ 1, %if.end109.cleanup_crit_edge ]
  %next_desc_logical124 = getelementptr inbounds %struct.fealnx_desc, ptr %.sink, i32 0, i32 4
  %191 = ptrtoint ptr %next_desc_logical124 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %next_desc_logical124, align 4
  %193 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %192, ptr %cur_tx, align 4
  %194 = ptrtoint ptr %free_tx_count to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %free_tx_count, align 4
  %inc126 = add i32 %195, %.sink372
  store i32 %inc126, ptr %free_tx_count, align 4
  %inc137 = add i32 %num_tx.1364, 1
  %196 = ptrtoint ptr %really_tx_count to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %really_tx_count, align 4
  %tobool37.not = icmp eq i32 %197, 0
  br i1 %tobool37.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end45.while.end_crit_edge, %if.end36.while.end_crit_edge
  %num_tx.1.lcssa = phi i32 [ %num_tx.0, %if.end36.while.end_crit_edge ], [ %num_tx.1364, %if.end45.while.end_crit_edge ], [ %inc137, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_tx.1.lcssa)
  %tobool139.not = icmp eq i32 %num_tx.1.lcssa, 0
  br i1 %tobool139.not, label %while.end.if.end144_crit_edge, label %land.lhs.true140

while.end.if.end144_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

land.lhs.true140:                                 ; preds = %while.end
  %198 = ptrtoint ptr %free_tx_count to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %free_tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %199)
  %cmp142 = icmp sgt i32 %199, 1
  br i1 %cmp142, label %if.then143, label %land.lhs.true140.if.end144_crit_edge

land.lhs.true140.if.end144_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.then143:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #14
  %200 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %201) #12
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %land.lhs.true140.if.end144_crit_edge, %while.end.if.end144_crit_edge
  %202 = ptrtoint ptr %crvalue.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %crvalue.i, align 4
  %and146 = and i32 %203, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end144.if.end170_crit_edge, label %if.then148

if.end144.if.end170_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

if.then148:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149) #12, !srcloc !210
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %shr152 = lshr i32 %205, 24
  %206 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %tx_errors, align 4
  %add155 = add i32 %207, %shr152
  store i32 %add155, ptr %tx_errors, align 4
  %208 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %tx_aborted_errors, align 8
  %add160 = add i32 %209, %shr152
  store i32 %add160, ptr %tx_aborted_errors, align 8
  %and161 = lshr i32 %205, 16
  %210 = and i32 %and161, 255
  %211 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %tx_window_errors, align 8
  %add165 = add i32 %212, %210
  store i32 %add165, ptr %tx_window_errors, align 8
  %and166 = and i32 %205, 65535
  %213 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %collisions, align 4
  %add169 = add i32 %214, %and166
  store i32 %add169, ptr %collisions, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.then148, %if.end144.if.end170_crit_edge
  %dec171 = add i32 %boguscnt.0, -1
  %cmp172 = icmp slt i32 %dec171, 0
  br i1 %cmp172, label %do.end176, label %if.end170.do.body_crit_edge

if.end170.do.body_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end176:                                        ; preds = %if.end170
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %dev_instance, i32 noundef %4) #15
  %reset_timer_armed = getelementptr i8, ptr %dev_instance, i32 2460
  %215 = ptrtoint ptr %reset_timer_armed to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %reset_timer_armed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool181.not = icmp eq i32 %216, 0
  br i1 %tobool181.not, label %if.then182, label %do.end176.do.end197_crit_edge

do.end176.do.end197_crit_edge:                    ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end197

if.then182:                                       ; preds = %do.end176
  %217 = ptrtoint ptr %reset_timer_armed to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1, ptr %reset_timer_armed, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %218 = load volatile i32, ptr @jiffies, align 128
  %add184 = add i32 %218, 50
  %reset_timer = getelementptr i8, ptr %dev_instance, i32 2412
  %expires = getelementptr i8, ptr %dev_instance, i32 2420
  %219 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %add184, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %reset_timer) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334, i32 0) #12, !srcloc !209
  br label %while.cond.i343

while.cond.i343:                                  ; preds = %while.body.i345.while.cond.i343_crit_edge, %if.then182
  %delay.0.i340 = phi i32 [ 4096, %if.then182 ], [ %dec.i341, %while.body.i345.while.cond.i343_crit_edge ]
  %dec.i341 = add nsw i32 %delay.0.i340, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i341)
  %tobool.not.i342 = icmp eq i32 %dec.i341, 0
  br i1 %tobool.not.i342, label %while.cond.i343.stop_nic_rxtx.exit_crit_edge, label %while.body.i345

while.cond.i343.stop_nic_rxtx.exit_crit_edge:     ; preds = %while.cond.i343
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rxtx.exit

while.body.i345:                                  ; preds = %while.cond.i343
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i334) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %221 = and i32 %220, 8388612
  %cmp.i344 = icmp eq i32 %221, 8388612
  br i1 %cmp.i344, label %while.body.i345.stop_nic_rxtx.exit_crit_edge, label %while.body.i345.while.cond.i343_crit_edge

while.body.i345.while.cond.i343_crit_edge:        ; preds = %while.body.i345
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i343

while.body.i345.stop_nic_rxtx.exit_crit_edge:     ; preds = %while.body.i345
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rxtx.exit

stop_nic_rxtx.exit:                               ; preds = %while.body.i345.stop_nic_rxtx.exit_crit_edge, %while.cond.i343.stop_nic_rxtx.exit_crit_edge
  %222 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %223, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %224 = ptrtoint ptr %crvalue.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %crvalue.i, align 4
  %crvalue_sv = getelementptr i8, ptr %dev_instance, i32 2464
  %226 = ptrtoint ptr %crvalue_sv to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %crvalue_sv, align 4
  %227 = ptrtoint ptr %imrvalue to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %imrvalue, align 4
  %imrvalue_sv = getelementptr i8, ptr %dev_instance, i32 2468
  %229 = ptrtoint ptr %imrvalue_sv to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %imrvalue_sv, align 4
  %and189 = and i32 %225, -262146
  store i32 %and189, ptr %crvalue.i, align 4
  store i32 0, ptr %imrvalue, align 4
  br label %do.end197

do.end197:                                        ; preds = %stop_nic_rxtx.exit, %do.end176.do.end197_crit_edge, %if.end.do.end197_crit_edge
  %handled.1.ph = phi i32 [ 1, %do.end176.do.end197_crit_edge ], [ 1, %stop_nic_rxtx.exit ], [ %handled.0, %if.end.do.end197_crit_edge ]
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %231 = and i32 %230, -8454144
  %232 = tail call i32 @llvm.bswap.i32(i32 %231)
  %233 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %rx_missed_errors, align 4
  %add203 = add i32 %234, %232
  store i32 %add203, ptr %rx_missed_errors, align 4
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #12, !srcloc !210
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %and206 = lshr i32 %236, 16
  %shr207 = and i32 %and206, 32767
  %237 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %rx_crc_errors, align 8
  %add210 = add i32 %shr207, %238
  store i32 %add210, ptr %rx_crc_errors, align 8
  %239 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool211.not = icmp eq i32 %239, 0
  br i1 %tobool211.not, label %do.end197.if.end222_crit_edge, label %do.end215

do.end197.if.end222_crit_edge:                    ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end222

do.end215:                                        ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #14
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #12, !srcloc !210
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %call221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %dev_instance, i32 noundef %241) #15
  br label %if.end222

if.end222:                                        ; preds = %do.end215, %do.end197.if.end222_crit_edge
  %242 = ptrtoint ptr %imrvalue to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %imrvalue, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %244 = tail call i32 @llvm.bswap.i32(i32 %243) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %244) #12, !srcloc !209
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1.ph)
  %tobool226.not = icmp ne i32 %handled.1.ph, 0
  %cond = zext i1 %tobool226.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @getlinktype(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %PHYType = getelementptr i8, ptr %dev, i32 2540
  %0 = ptrtoint ptr %PHYType to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %PHYType, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %1, label %entry.if.end146_crit_edge [
    i32 1, label %if.then
    i32 3, label %if.then16
    i32 2, label %if.then36
    i32 4, label %if.then60
    i32 5, label %if.then91
    i32 6, label %if.then115
  ]

entry.if.end146_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146

if.then:                                          ; preds = %entry
  %mem = getelementptr i8, ptr %dev, i32 2584
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %6 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  %7 = getelementptr i8, ptr %dev, i32 2532
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  %9 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %12 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  %line_speed11 = getelementptr i8, ptr %dev, i32 2528
  br i1 %tobool8.not, label %if.else10, label %if.then9

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %line_speed11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %line_speed11, align 4
  br label %if.end169

if.else10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %line_speed11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %line_speed11, align 4
  br label %if.end169

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %phys = getelementptr i8, ptr %dev, i32 2548
  %15 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %phys, align 4
  %conv = zext i8 %16 to i32
  %call17 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv, i32 noundef 18)
  %and18 = and i32 %call17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %spec.select236 = select i1 %tobool19.not, i32 1, i32 2
  %17 = getelementptr i8, ptr %dev, i32 2528
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select236, ptr %17, align 4
  %and25 = and i32 %call17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %. = select i1 %tobool26.not, i32 1, i32 2
  br label %if.end146.sink.split

if.then36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %phys38 = getelementptr i8, ptr %dev, i32 2548
  %19 = ptrtoint ptr %phys38 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %phys38, align 4
  %conv40 = zext i8 %20 to i32
  %call41 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv40, i32 noundef 18)
  %and42 = and i32 %call41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %spec.select237 = select i1 %tobool43.not, i32 1, i32 2
  %21 = getelementptr i8, ptr %dev, i32 2528
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select237, ptr %21, align 4
  %and49 = and i32 %call41, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %.243 = select i1 %tobool50.not, i32 1, i32 2
  br label %if.end146.sink.split

if.then60:                                        ; preds = %entry
  %phys62 = getelementptr i8, ptr %dev, i32 2548
  %23 = ptrtoint ptr %phys62 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %phys62, align 4
  %conv64 = zext i8 %24 to i32
  %call65 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv64, i32 noundef 17)
  %and66 = and i32 %call65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %spec.select238 = select i1 %tobool67.not, i32 1, i32 2
  %25 = getelementptr i8, ptr %dev, i32 2532
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select238, ptr %25, align 4
  %27 = trunc i32 %call65 to i16
  %trunc230 = and i16 %27, -16384
  %28 = zext i16 %trunc230 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %trunc230, label %if.else83 [
    i16 -32768, label %if.then60.if.end146.sink.split_crit_edge
    i16 16384, label %if.then81
  ]

if.then60.if.end146.sink.split_crit_edge:         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.sink.split

if.then81:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.sink.split

if.else83:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.sink.split

if.then91:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %phys93 = getelementptr i8, ptr %dev, i32 2548
  %29 = ptrtoint ptr %phys93 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %phys93, align 4
  %conv95 = zext i8 %30 to i32
  %call96 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv95, i32 noundef 18)
  %and97 = and i32 %call96, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  %spec.select239 = select i1 %tobool98.not, i32 1, i32 2
  %31 = getelementptr i8, ptr %dev, i32 2528
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select239, ptr %31, align 4
  %and104 = and i32 %call96, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %.244 = select i1 %tobool105.not, i32 1, i32 2
  br label %if.end146.sink.split

if.then115:                                       ; preds = %entry
  %phys117 = getelementptr i8, ptr %dev, i32 2548
  %33 = ptrtoint ptr %phys117 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %phys117, align 4
  %conv119 = zext i8 %34 to i32
  %call120 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv119, i32 noundef 17)
  %and121 = and i32 %call120, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  %spec.select240 = select i1 %tobool122.not, i32 1, i32 2
  %35 = getelementptr i8, ptr %dev, i32 2532
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select240, ptr %35, align 4
  %37 = trunc i32 %call120 to i16
  %trunc = and i16 %37, -16384
  %38 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %trunc, label %if.else138 [
    i16 -16384, label %if.then115.if.end146.sink.split_crit_edge
    i16 -32768, label %if.then136
  ]

if.then115.if.end146.sink.split_crit_edge:        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.sink.split

if.then136:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.sink.split

if.else138:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.sink.split

if.end146.sink.split:                             ; preds = %if.else138, %if.then136, %if.then115.if.end146.sink.split_crit_edge, %if.then91, %if.else83, %if.then81, %if.then60.if.end146.sink.split_crit_edge, %if.then36, %if.then16
  %.sink241 = phi i32 [ 2528, %if.else138 ], [ 2528, %if.then136 ], [ 2528, %if.else83 ], [ 2528, %if.then81 ], [ 2532, %if.then16 ], [ 2532, %if.then36 ], [ 2528, %if.then60.if.end146.sink.split_crit_edge ], [ 2532, %if.then91 ], [ 2528, %if.then115.if.end146.sink.split_crit_edge ]
  %.sink = phi i32 [ 1, %if.else138 ], [ 2, %if.then136 ], [ 1, %if.else83 ], [ 2, %if.then81 ], [ %., %if.then16 ], [ %.243, %if.then36 ], [ 3, %if.then60.if.end146.sink.split_crit_edge ], [ %.244, %if.then91 ], [ 3, %if.then115.if.end146.sink.split_crit_edge ]
  %line_speed132 = getelementptr i8, ptr %dev, i32 %.sink241
  %39 = ptrtoint ptr %line_speed132 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %line_speed132, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.end146.sink.split, %entry.if.end146_crit_edge
  %crvalue = getelementptr i8, ptr %dev, i32 2480
  %40 = ptrtoint ptr %crvalue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crvalue, align 4
  %and147 = and i32 %41, -1638401
  store i32 %and147, ptr %crvalue, align 4
  %line_speed148 = getelementptr i8, ptr %dev, i32 2528
  %42 = ptrtoint ptr %line_speed148 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %line_speed148, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %43, label %if.end146.if.end161_crit_edge [
    i32 1, label %if.end146.if.end161.sink.split_crit_edge
    i32 3, label %if.then157
  ]

if.end146.if.end161.sink.split_crit_edge:         ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161.sink.split

if.end146.if.end161_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161

if.then157:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161.sink.split

if.end161.sink.split:                             ; preds = %if.then157, %if.end146.if.end161.sink.split_crit_edge
  %.sink242 = phi i32 [ 65536, %if.then157 ], [ 524288, %if.end146.if.end161.sink.split_crit_edge ]
  %or159 = or i32 %and147, %.sink242
  %45 = ptrtoint ptr %crvalue to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or159, ptr %crvalue, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.end161.sink.split, %if.end146.if.end161_crit_edge
  %duplexmode162 = getelementptr i8, ptr %dev, i32 2532
  %46 = ptrtoint ptr %duplexmode162 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %duplexmode162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp163 = icmp eq i32 %47, 2
  br i1 %cmp163, label %if.then165, label %if.end161.if.end169_crit_edge

if.end161.if.end169_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169

if.then165:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %crvalue to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %crvalue, align 4
  %or167 = or i32 %49, 1048576
  store i32 %or167, ptr %crvalue, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then165, %if.end161.if.end169_crit_edge, %if.else10, %if.then9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__set_rx_mode(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %mc_filter = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #12
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %mc_filter, align 8
  br label %if.end47

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  %7 = load i32, ptr @multicast_filter_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp = icmp sle i32 %6, %7
  %and2 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %cmp, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %mc_filter, align 8
  br label %if.end47

if.else6:                                         ; preds = %if.else
  %9 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %mc_filter, align 8
  %10 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %10)
  %ha.086 = load ptr, ptr %mc, align 4
  %cmp12.not87 = icmp eq ptr %ha.086, %mc
  br i1 %cmp12.not87, label %if.else6.if.end47_crit_edge, label %if.else6.cond.end_crit_edge

if.else6.cond.end_crit_edge:                      ; preds = %if.else6
  br label %cond.end

if.else6.if.end47_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else6.cond.end_crit_edge
  %ha.088 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.086, %if.else6.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.088, i32 0, i32 2
  %call14 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #16
  %11 = and i32 %call14, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %13 to i32
  %14 = shl nuw i32 %conv2.i.i, 24
  %15 = xor i32 %14, -1
  %xor = lshr i32 %15, 26
  %shl39 = shl nuw i32 1, %xor
  %shr40 = lshr i32 %15, 31
  %arrayidx = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %shr40
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %or41 = or i32 %shl39, %17
  store i32 %or41, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %ha.088 to i32
  call void @__asan_load4_noabort(i32 %18)
  %ha.0 = load ptr, ptr %ha.088, align 4
  %cmp12.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp12.not, label %cond.end.if.end47_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.end.if.end47_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.end47:                                         ; preds = %cond.end.if.end47_crit_edge, %if.else6.if.end47_crit_edge, %if.then4, %if.then
  %rx_mode.0 = phi i32 [ 224, %if.then ], [ 96, %if.then4 ], [ 96, %if.else6.if.end47_crit_edge ], [ 96, %cond.end.if.end47_crit_edge ]
  %crvalue = getelementptr i8, ptr %dev, i32 2480
  %19 = ptrtoint ptr %crvalue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crvalue, align 4
  %and.i = and i32 %20, -262146
  %add.ptr.i85 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %21) #12, !srcloc !209
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end47
  %delay.0.i = phi i32 [ 4096, %if.end47 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %delay.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.i.stop_nic_rxtx.exit_crit_edge, label %while.body.i

while.cond.i.stop_nic_rxtx.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rxtx.exit

while.body.i:                                     ; preds = %while.cond.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %23 = and i32 %22, 8388612
  %cmp.i = icmp eq i32 %23, 8388612
  br i1 %cmp.i, label %while.body.i.stop_nic_rxtx.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.stop_nic_rxtx.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rxtx.exit

stop_nic_rxtx.exit:                               ; preds = %while.body.i.stop_nic_rxtx.exit_crit_edge, %while.cond.i.stop_nic_rxtx.exit_crit_edge
  %24 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %25 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mc_filter, align 8
  %add.ptr49 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %27) #12, !srcloc !209
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %24, align 4
  %add.ptr51 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %30) #12, !srcloc !209
  %31 = ptrtoint ptr %crvalue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %crvalue, align 4
  %and53 = and i32 %32, -225
  %or55 = or i32 %and53, %rx_mode.0
  store i32 %or55, ptr %crvalue, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %33 = tail call i32 @llvm.bswap.i32(i32 %or55) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %33) #12, !srcloc !209
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 208
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %mem = getelementptr i8, ptr %t, i32 220
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %crvalue = getelementptr i8, ptr %t, i32 116
  %4 = ptrtoint ptr %crvalue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crvalue, align 4
  %linkok = getelementptr i8, ptr %t, i32 160
  %6 = ptrtoint ptr %linkok to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %linkok, align 4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.end

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr3 = getelementptr i8, ptr %3, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #12, !srcloc !210
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %add.ptr4 = getelementptr i8, ptr %3, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #12, !srcloc !210
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %1, i32 noundef %10, i32 noundef %12) #15
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge
  %lock = getelementptr i8, ptr %t, i32 -44
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %flags16 = getelementptr i8, ptr %t, i32 108
  %13 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp17 = icmp eq i32 %14, 0
  br i1 %cmp17, label %if.then19, label %do.body8.if.end35_crit_edge

do.body8.if.end35_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then19:                                        ; preds = %do.body8
  %linkok.i = getelementptr i8, ptr %1, i32 2524
  %15 = ptrtoint ptr %linkok.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %linkok.i, align 4
  %PHYType.i = getelementptr i8, ptr %1, i32 2540
  %16 = ptrtoint ptr %PHYType.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %PHYType.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp eq i32 %17, 1
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %if.then19
  %phys.i = getelementptr i8, ptr %1, i32 2548
  br label %for.body7.i

for.cond.preheader.i:                             ; preds = %if.then19
  %mem.i = getelementptr i8, ptr %1, i32 2584
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.032.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 76
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %21 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 21474800) #12
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond34.not.i = icmp eq i32 %inc.i, 4096
  br i1 %exitcond34.not.i, label %if.end.i.getlinkstatus.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i.getlinkstatus.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %getlinkstatus.exit

for.body7.i:                                      ; preds = %if.end13.i.for.body7.i_crit_edge, %for.cond5.preheader.i
  %i.131.i = phi i32 [ 0, %for.cond5.preheader.i ], [ %inc15.i, %if.end13.i.for.body7.i_crit_edge ]
  %23 = ptrtoint ptr %phys.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %phys.i, align 4
  %conv.i = zext i8 %24 to i32
  %call8.i = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %conv.i, i32 noundef 1) #12
  %and9.i = and i32 %call8.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %for.body7.i.cleanup.sink.split.i_crit_edge

for.body7.i.cleanup.sink.split.i_crit_edge:       ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end13.i:                                       ; preds = %for.body7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 21474800) #12
  %inc15.i = add nuw nsw i32 %i.131.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, 4096
  br i1 %exitcond.not.i, label %if.end13.i.getlinkstatus.exit_crit_edge, label %if.end13.i.for.body7.i_crit_edge

if.end13.i.for.body7.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7.i

if.end13.i.getlinkstatus.exit_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %getlinkstatus.exit

cleanup.sink.split.i:                             ; preds = %for.body7.i.cleanup.sink.split.i_crit_edge, %for.body.i.cleanup.sink.split.i_crit_edge
  %26 = ptrtoint ptr %linkok.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %linkok.i, align 4
  br label %getlinkstatus.exit

getlinkstatus.exit:                               ; preds = %cleanup.sink.split.i, %if.end13.i.getlinkstatus.exit_crit_edge, %if.end.i.getlinkstatus.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp20 = icmp eq i32 %7, 0
  br i1 %cmp20, label %land.lhs.true, label %getlinkstatus.exit.if.end35_crit_edge

getlinkstatus.exit.if.end35_crit_edge:            ; preds = %getlinkstatus.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true:                                    ; preds = %getlinkstatus.exit
  %27 = ptrtoint ptr %linkok to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %linkok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp23 = icmp eq i32 %28, 1
  br i1 %cmp23, label %if.then25, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then25:                                        ; preds = %land.lhs.true
  tail call fastcc void @getlinktype(ptr noundef %1)
  %29 = ptrtoint ptr %crvalue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crvalue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %5)
  %cmp27.not = icmp eq i32 %30, %5
  br i1 %cmp27.not, label %if.then25.if.end35_crit_edge, label %if.then29

if.then25.if.end35_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then29:                                        ; preds = %if.then25
  %and.i = and i32 %30, -262146
  %add.ptr.i56 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %31 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %31) #12, !srcloc !209
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then29
  %delay.0.i = phi i32 [ 4096, %if.then29 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %delay.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i57 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i57, label %while.cond.i.stop_nic_rxtx.exit_crit_edge, label %while.body.i

while.cond.i.stop_nic_rxtx.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rxtx.exit

while.body.i:                                     ; preds = %while.cond.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %33 = and i32 %32, 8388612
  %cmp.i58 = icmp eq i32 %33, 8388612
  br i1 %cmp.i58, label %while.body.i.stop_nic_rxtx.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.stop_nic_rxtx.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rxtx.exit

stop_nic_rxtx.exit:                               ; preds = %while.body.i.stop_nic_rxtx.exit_crit_edge, %while.cond.i.stop_nic_rxtx.exit_crit_edge
  %34 = ptrtoint ptr %crvalue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crvalue, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %36) #12, !srcloc !209
  br label %if.end35

if.end35:                                         ; preds = %stop_nic_rxtx.exit, %if.then25.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %getlinkstatus.exit.if.end35_crit_edge, %do.body8.if.end35_crit_edge
  tail call fastcc void @allocate_rx_buffers(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %37, 1000
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %38 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reset_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 160
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %1) #15
  %lock = getelementptr i8, ptr %t, i32 -92
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %crvalue_sv = getelementptr i8, ptr %t, i32 52
  %2 = ptrtoint ptr %crvalue_sv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crvalue_sv, align 4
  %crvalue = getelementptr i8, ptr %t, i32 68
  %4 = ptrtoint ptr %crvalue to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %crvalue, align 4
  %imrvalue_sv = getelementptr i8, ptr %t, i32 56
  %5 = ptrtoint ptr %imrvalue_sv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %imrvalue_sv, align 4
  %imrvalue = getelementptr i8, ptr %t, i32 76
  %7 = ptrtoint ptr %imrvalue to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %imrvalue, align 4
  tail call fastcc void @reset_and_disable_rxtx(ptr noundef %1)
  tail call fastcc void @enable_rxtx(ptr noundef %1)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %reset_timer_armed = getelementptr i8, ptr %t, i32 48
  %10 = ptrtoint ptr %reset_timer_armed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %reset_timer_armed, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_rx_descriptors(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_rx = getelementptr i8, ptr %dev, i32 2492
  %0 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_rx, align 4
  tail call fastcc void @allocate_rx_buffers(ptr noundef %dev)
  %skbuff = getelementptr inbounds %struct.fealnx_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %skbuff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skbuff, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2147483648, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %next_desc_logical = getelementptr inbounds %struct.fealnx_desc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %next_desc_logical to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next_desc_logical, align 4
  %skbuff.1 = getelementptr inbounds %struct.fealnx_desc, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %skbuff.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skbuff.1, align 4
  %tobool.not.1 = icmp eq ptr %8, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147483648, ptr %6, align 4
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %next_desc_logical.1 = getelementptr inbounds %struct.fealnx_desc, ptr %6, i32 0, i32 4
  %10 = ptrtoint ptr %next_desc_logical.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next_desc_logical.1, align 4
  %skbuff.2 = getelementptr inbounds %struct.fealnx_desc, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %skbuff.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skbuff.2, align 4
  %tobool.not.2 = icmp eq ptr %13, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -2147483648, ptr %11, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %next_desc_logical.2 = getelementptr inbounds %struct.fealnx_desc, ptr %11, i32 0, i32 4
  %15 = ptrtoint ptr %next_desc_logical.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next_desc_logical.2, align 4
  %skbuff.3 = getelementptr inbounds %struct.fealnx_desc, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %skbuff.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skbuff.3, align 4
  %tobool.not.3 = icmp eq ptr %18, null
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -2147483648, ptr %16, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %next_desc_logical.3 = getelementptr inbounds %struct.fealnx_desc, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %next_desc_logical.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next_desc_logical.3, align 4
  %skbuff.4 = getelementptr inbounds %struct.fealnx_desc, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %skbuff.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skbuff.4, align 4
  %tobool.not.4 = icmp eq ptr %23, null
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2147483648, ptr %21, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %next_desc_logical.4 = getelementptr inbounds %struct.fealnx_desc, ptr %21, i32 0, i32 4
  %25 = ptrtoint ptr %next_desc_logical.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next_desc_logical.4, align 4
  %skbuff.5 = getelementptr inbounds %struct.fealnx_desc, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %skbuff.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skbuff.5, align 4
  %tobool.not.5 = icmp eq ptr %28, null
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -2147483648, ptr %26, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %next_desc_logical.5 = getelementptr inbounds %struct.fealnx_desc, ptr %26, i32 0, i32 4
  %30 = ptrtoint ptr %next_desc_logical.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %next_desc_logical.5, align 4
  %skbuff.6 = getelementptr inbounds %struct.fealnx_desc, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %skbuff.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skbuff.6, align 4
  %tobool.not.6 = icmp eq ptr %33, null
  br i1 %tobool.not.6, label %if.end.5.if.end.6_crit_edge, label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -2147483648, ptr %31, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %next_desc_logical.6 = getelementptr inbounds %struct.fealnx_desc, ptr %31, i32 0, i32 4
  %35 = ptrtoint ptr %next_desc_logical.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %next_desc_logical.6, align 4
  %skbuff.7 = getelementptr inbounds %struct.fealnx_desc, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %skbuff.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skbuff.7, align 4
  %tobool.not.7 = icmp eq ptr %38, null
  br i1 %tobool.not.7, label %if.end.6.if.end.7_crit_edge, label %if.then.7

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.7

if.then.7:                                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -2147483648, ptr %36, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.end.6.if.end.7_crit_edge
  %next_desc_logical.7 = getelementptr inbounds %struct.fealnx_desc, ptr %36, i32 0, i32 4
  %40 = ptrtoint ptr %next_desc_logical.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %next_desc_logical.7, align 4
  %skbuff.8 = getelementptr inbounds %struct.fealnx_desc, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %skbuff.8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skbuff.8, align 4
  %tobool.not.8 = icmp eq ptr %43, null
  br i1 %tobool.not.8, label %if.end.7.if.end.8_crit_edge, label %if.then.8

if.end.7.if.end.8_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.8

if.then.8:                                        ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -2147483648, ptr %41, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.8, %if.end.7.if.end.8_crit_edge
  %next_desc_logical.8 = getelementptr inbounds %struct.fealnx_desc, ptr %41, i32 0, i32 4
  %45 = ptrtoint ptr %next_desc_logical.8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %next_desc_logical.8, align 4
  %skbuff.9 = getelementptr inbounds %struct.fealnx_desc, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %skbuff.9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skbuff.9, align 4
  %tobool.not.9 = icmp eq ptr %48, null
  br i1 %tobool.not.9, label %if.end.8.if.end.9_crit_edge, label %if.then.9

if.end.8.if.end.9_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.9

if.then.9:                                        ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -2147483648, ptr %46, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.9, %if.end.8.if.end.9_crit_edge
  %next_desc_logical.9 = getelementptr inbounds %struct.fealnx_desc, ptr %46, i32 0, i32 4
  %50 = ptrtoint ptr %next_desc_logical.9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %next_desc_logical.9, align 4
  %skbuff.10 = getelementptr inbounds %struct.fealnx_desc, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %skbuff.10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skbuff.10, align 4
  %tobool.not.10 = icmp eq ptr %53, null
  br i1 %tobool.not.10, label %if.end.9.if.end.10_crit_edge, label %if.then.10

if.end.9.if.end.10_crit_edge:                     ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.10

if.then.10:                                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -2147483648, ptr %51, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.10, %if.end.9.if.end.10_crit_edge
  %next_desc_logical.10 = getelementptr inbounds %struct.fealnx_desc, ptr %51, i32 0, i32 4
  %55 = ptrtoint ptr %next_desc_logical.10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %next_desc_logical.10, align 4
  %skbuff.11 = getelementptr inbounds %struct.fealnx_desc, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %skbuff.11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skbuff.11, align 4
  %tobool.not.11 = icmp eq ptr %58, null
  br i1 %tobool.not.11, label %if.end.10.if.end.11_crit_edge, label %if.then.11

if.end.10.if.end.11_crit_edge:                    ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.11

if.then.11:                                       ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -2147483648, ptr %56, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.11, %if.end.10.if.end.11_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2312
  %60 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_ring_dma, align 4
  %62 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur_rx, align 4
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %63 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %65 to i32
  %sub.ptr.sub = add i32 %61, %sub.ptr.lhs.cast
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %mem = getelementptr i8, ptr %dev, i32 2584
  %66 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %67, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %68 = tail call i32 @llvm.bswap.i32(i32 %add) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %68) #12, !srcloc !209
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allocate_rx_buffers(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 2520
  %really_rx_count = getelementptr i8, ptr %dev, i32 2500
  %0 = ptrtoint ptr %really_rx_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %really_rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp.not36 = icmp eq i32 %1, 12
  br i1 %cmp.not36, label %entry.while.end15_crit_edge, label %while.body.lr.ph

entry.while.end15_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end15

while.body.lr.ph:                                 ; preds = %entry
  %lack_rxbuf = getelementptr i8, ptr %dev, i32 2496
  %pci_dev = getelementptr i8, ptr %dev, i32 2476
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_buf_sz, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %3, i32 noundef 2592) #12
  %cmp2 = icmp eq ptr %call.i, null
  br i1 %cmp2, label %while.body.while.end15_crit_edge, label %while.cond3.preheader

while.body.while.end15_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end15

while.cond3.preheader:                            ; preds = %while.body
  %4 = ptrtoint ptr %lack_rxbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lack_rxbuf, align 4
  %skbuff33 = getelementptr inbounds %struct.fealnx_desc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %skbuff33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skbuff33, align 4
  %tobool.not34 = icmp eq ptr %7, null
  br i1 %tobool.not34, label %while.cond3.preheader.while.end_crit_edge, label %while.cond3.preheader.while.body4_crit_edge

while.cond3.preheader.while.body4_crit_edge:      ; preds = %while.cond3.preheader
  br label %while.body4

while.cond3.preheader.while.end_crit_edge:        ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body4:                                      ; preds = %while.body4.while.body4_crit_edge, %while.cond3.preheader.while.body4_crit_edge
  %8 = phi ptr [ %10, %while.body4.while.body4_crit_edge ], [ %5, %while.cond3.preheader.while.body4_crit_edge ]
  %next_desc_logical = getelementptr inbounds %struct.fealnx_desc, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %next_desc_logical to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next_desc_logical, align 4
  %11 = ptrtoint ptr %lack_rxbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %lack_rxbuf, align 4
  %skbuff = getelementptr inbounds %struct.fealnx_desc, ptr %10, i32 0, i32 5
  %12 = ptrtoint ptr %skbuff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skbuff, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %while.body4.while.end_crit_edge, label %while.body4.while.body4_crit_edge

while.body4.while.body4_crit_edge:                ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body4

while.body4.while.end_crit_edge:                  ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body4.while.end_crit_edge, %while.cond3.preheader.while.end_crit_edge
  %.lcssa = phi ptr [ %5, %while.cond3.preheader.while.end_crit_edge ], [ %10, %while.body4.while.end_crit_edge ]
  %skbuff.le = getelementptr inbounds %struct.fealnx_desc, ptr %.lcssa, i32 0, i32 5
  %14 = ptrtoint ptr %skbuff.le to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %skbuff.le, align 4
  %15 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_buf_sz, align 4
  %call.i29 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %18) #12
  br i1 %call.i29, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %while.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !216

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev9) #12
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %cleanup

if.end39.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev9, ptr noundef %18, i32 noundef %20) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %18 to i32
  %sub.i = add i32 %26, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i30 = getelementptr %struct.page, ptr %25, i32 %shr.i
  %and.i = and i32 %26, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev9, ptr noundef %add.ptr.i30, i32 noundef %and.i, i32 noundef %20, i32 noundef 2, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.cleanup_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.cleanup_crit_edge ]
  %27 = ptrtoint ptr %lack_rxbuf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lack_rxbuf, align 4
  %buffer = getelementptr inbounds %struct.fealnx_desc, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i, ptr %buffer, align 4
  %30 = load ptr, ptr %lack_rxbuf, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -2147483648, ptr %30, align 4
  %32 = ptrtoint ptr %really_rx_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %really_rx_count, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %really_rx_count, align 4
  %cmp.not = icmp eq i32 %inc, 12
  br i1 %cmp.not, label %cleanup.while.end15_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.while.end15_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end15

while.end15:                                      ; preds = %cleanup.while.end15_crit_edge, %while.body.while.end15_crit_edge, %entry.while.end15_crit_edge
  ret void
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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_and_disable_rxtx(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr.i7 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #12, !srcloc !209
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %delay.0.i = phi i32 [ 4096, %entry ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %delay.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.i.stop_nic_rxtx.exit_crit_edge, label %while.body.i

while.cond.i.stop_nic_rxtx.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rxtx.exit

while.body.i:                                     ; preds = %while.cond.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  %3 = and i32 %2, 8388612
  %cmp.i = icmp eq i32 %3, 8388612
  br i1 %cmp.i, label %while.body.i.stop_nic_rxtx.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.stop_nic_rxtx.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_nic_rxtx.exit

stop_nic_rxtx.exit:                               ; preds = %while.body.i.stop_nic_rxtx.exit_crit_edge, %while.cond.i.stop_nic_rxtx.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !209
  %add.ptr1 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 16777216) #12, !srcloc !209
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %stop_nic_rxtx.exit
  %dec8 = phi i32 [ 50, %stop_nic_rxtx.exit ], [ %dec, %while.body.while.body_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !217
  %dec = add nsw i32 %dec8, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_rxtx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mem = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  tail call fastcc void @reset_rx_descriptors(ptr noundef %dev)
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ring_dma, align 4
  %cur_tx = getelementptr i8, ptr %dev, i32 2504
  %4 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_tx, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = add i32 %3, %sub.ptr.lhs.cast
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %add.ptr = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %add) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #12, !srcloc !209
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2312
  %9 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_ring_dma, align 4
  %cur_rx = getelementptr i8, ptr %dev, i32 2492
  %11 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_rx, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %sub.ptr.lhs.cast1 = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast2 = ptrtoint ptr %14 to i32
  %sub.ptr.sub3 = add i32 %10, %sub.ptr.lhs.cast1
  %add4 = sub i32 %sub.ptr.sub3, %sub.ptr.rhs.cast2
  %add.ptr5 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %add4) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %15) #12, !srcloc !209
  %bcrvalue = getelementptr i8, ptr %dev, i32 2484
  %16 = ptrtoint ptr %bcrvalue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bcrvalue, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %18) #12, !srcloc !209
  %add.ptr7 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #12, !srcloc !209
  tail call fastcc void @__set_rx_mode(ptr noundef %dev)
  %add.ptr8 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 1814298624) #12, !srcloc !209
  %imrvalue = getelementptr i8, ptr %dev, i32 2488
  %19 = ptrtoint ptr %imrvalue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %imrvalue, align 4
  %add.ptr9 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %21) #12, !srcloc !209
  %add.ptr10 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #12, !srcloc !209
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #12
  %pci_dev = getelementptr i8, ptr %dev, i32 2476
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netdev_get_msglevel(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @netdev_set_msglevel(ptr nocapture noundef readnone %dev, i32 noundef %value) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %value, ptr @debug, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2552
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2552
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %mii = getelementptr i8, ptr %dev, i32 2552
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %mii = getelementptr i8, ptr %dev, i32 2552
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !65, !67, !69, !71, !72, !73, !74, !75, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !191, !193, !194, !195}
!llvm.module.flags = !{!196, !197, !198, !199, !200, !201, !202, !203}
!llvm.ident = !{!204}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/fealnx.c", i32 103, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/fealnx.c", i32 104, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/fealnx.c", i32 105, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__param_max_interrupt_work, !8, !"__param_max_interrupt_work", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/fealnx.c", i32 106, i32 1}
!9 = !{ptr @__UNIQUE_ID_max_interrupt_worktype345, !8, !"__UNIQUE_ID_max_interrupt_worktype345", i1 false, i1 false}
!10 = !{ptr @__param_debug, !11, !"__param_debug", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/fealnx.c", i32 107, i32 1}
!12 = !{ptr @__UNIQUE_ID_debugtype346, !11, !"__UNIQUE_ID_debugtype346", i1 false, i1 false}
!13 = !{ptr @__param_rx_copybreak, !14, !"__param_rx_copybreak", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/fealnx.c", i32 108, i32 1}
!15 = !{ptr @__UNIQUE_ID_rx_copybreaktype347, !14, !"__UNIQUE_ID_rx_copybreaktype347", i1 false, i1 false}
!16 = !{ptr @__param_multicast_filter_limit, !17, !"__param_multicast_filter_limit", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/fealnx.c", i32 109, i32 1}
!18 = !{ptr @__UNIQUE_ID_multicast_filter_limittype348, !17, !"__UNIQUE_ID_multicast_filter_limittype348", i1 false, i1 false}
!19 = !{ptr @__param_options, !20, !"__param_options", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/fealnx.c", i32 110, i32 1}
!21 = !{ptr @__UNIQUE_ID_optionstype349, !20, !"__UNIQUE_ID_optionstype349", i1 false, i1 false}
!22 = !{ptr @__param_full_duplex, !23, !"__param_full_duplex", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/fealnx.c", i32 111, i32 1}
!24 = !{ptr @__UNIQUE_ID_full_duplextype350, !23, !"__UNIQUE_ID_full_duplextype350", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_max_interrupt_work351, !26, !"__UNIQUE_ID_max_interrupt_work351", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/fealnx.c", i32 112, i32 1}
!27 = !{ptr @__UNIQUE_ID_debug352, !28, !"__UNIQUE_ID_debug352", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/fealnx.c", i32 113, i32 1}
!29 = !{ptr @__UNIQUE_ID_rx_copybreak353, !30, !"__UNIQUE_ID_rx_copybreak353", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/fealnx.c", i32 114, i32 1}
!31 = !{ptr @__UNIQUE_ID_multicast_filter_limit354, !32, !"__UNIQUE_ID_multicast_filter_limit354", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/fealnx.c", i32 115, i32 1}
!33 = !{ptr @__UNIQUE_ID_options355, !34, !"__UNIQUE_ID_options355", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/fealnx.c", i32 116, i32 1}
!35 = !{ptr @__UNIQUE_ID_full_duplex356, !36, !"__UNIQUE_ID_full_duplex356", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/fealnx.c", i32 117, i32 1}
!37 = !{ptr @__initcall__kmod_fealnx__357_1953_fealnx_driver_init6, !38, !"__initcall__kmod_fealnx__357_1953_fealnx_driver_init6", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/fealnx.c", i32 1953, i32 1}
!39 = !{ptr @__exitcall_fealnx_driver_exit, !38, !"__exitcall_fealnx_driver_exit", i1 false, i1 false}
!40 = !{ptr @debug, !41, !"debug", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/fealnx.c", i32 29, i32 12}
!42 = !{ptr @rx_copybreak, !43, !"rx_copybreak", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/fealnx.c", i32 37, i32 12}
!44 = !{ptr @__param_str_max_interrupt_work, !8, !"__param_str_max_interrupt_work", i1 false, i1 false}
!45 = !{ptr @max_interrupt_work, !46, !"max_interrupt_work", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/fealnx.c", i32 30, i32 12}
!47 = !{ptr @__param_str_debug, !11, !"__param_str_debug", i1 false, i1 false}
!48 = !{ptr @__param_str_rx_copybreak, !14, !"__param_str_rx_copybreak", i1 false, i1 false}
!49 = !{ptr @__param_str_multicast_filter_limit, !17, !"__param_str_multicast_filter_limit", i1 false, i1 false}
!50 = !{ptr @multicast_filter_limit, !51, !"multicast_filter_limit", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/fealnx.c", i32 33, i32 12}
!52 = !{ptr @__param_str_options, !20, !"__param_str_options", i1 false, i1 false}
!53 = !{ptr @__param_arr_options, !20, !"__param_arr_options", i1 false, i1 false}
!54 = !{ptr @options, !55, !"options", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/fealnx.c", i32 44, i32 12}
!56 = !{ptr @__param_str_full_duplex, !23, !"__param_str_full_duplex", i1 false, i1 false}
!57 = !{ptr @__param_arr_full_duplex, !23, !"__param_arr_full_duplex", i1 false, i1 false}
!58 = !{ptr @full_duplex, !59, !"full_duplex", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/fealnx.c", i32 45, i32 12}
!60 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @fealnx_driver, !62, !"fealnx_driver", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/fealnx.c", i32 1946, i32 26}
!63 = !{ptr @fealnx_pci_tbl, !64, !"fealnx_pci_tbl", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/fealnx.c", i32 1937, i32 35}
!65 = !{ptr @fealnx_init_one.card_idx, !66, !"card_idx", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/fealnx.c", i32 477, i32 13}
!67 = !{ptr @.str.1, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/fealnx.c", i32 493, i32 21}
!69 = !{ptr @.str.2, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/fealnx.c", i32 503, i32 3}
!71 = !{ptr @.str.3, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.5, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.6, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @fealnx_init_one._entry, !70, !"_entry", i1 false, i1 false}
!76 = !{ptr @fealnx_init_one._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @fealnx_init_one.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/fealnx.c", i32 538, i32 2}
!79 = !{ptr @.str.7, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.9, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/fealnx.c", i32 576, i32 5}
!82 = !{ptr @.str.10, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @fealnx_init_one._entry.8, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @fealnx_init_one._entry_ptr.11, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.13, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/fealnx.c", i32 602, i32 4}
!87 = !{ptr @.str.14, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @fealnx_init_one._entry.12, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @fealnx_init_one._entry_ptr.15, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.17, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/fealnx.c", i32 630, i32 3}
!92 = !{ptr @fealnx_init_one._entry.16, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @fealnx_init_one._entry_ptr.18, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/fealnx.c", i32 656, i32 2}
!96 = !{ptr @fealnx_init_one._entry.19, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @fealnx_init_one._entry_ptr.21, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.22, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/fealnx.c", i32 147, i32 4}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/fealnx.c", i32 149, i32 4}
!102 = !{ptr @skel_netdrv_tbl, !103, !"skel_netdrv_tbl", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/fealnx.c", i32 146, i32 31}
!104 = !{ptr @netdev_ops, !105, !"netdev_ops", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/fealnx.c", i32 460, i32 36}
!106 = !{ptr @.str.24, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/fealnx.c", i32 901, i32 3}
!108 = !{ptr @.str.25, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @netdev_open._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @netdev_open._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @netdev_open.__key, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/fealnx.c", i32 904, i32 2}
!113 = !{ptr @.str.26, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @netdev_open.__key.27, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/fealnx.c", i32 910, i32 2}
!116 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.29, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/fealnx.c", i32 1447, i32 4}
!119 = !{ptr @.str.30, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @intr_handler._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @intr_handler._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/fealnx.c", i32 1566, i32 4}
!124 = !{ptr @intr_handler._entry.31, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @intr_handler._entry_ptr.33, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.35, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/fealnx.c", i32 1595, i32 3}
!128 = !{ptr @intr_handler._entry.34, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @intr_handler._entry_ptr.36, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.37, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/fealnx.c", i32 1621, i32 4}
!132 = !{ptr @.str.38, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @netdev_rx._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @netdev_rx._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.40, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/fealnx.c", i32 1627, i32 6}
!137 = !{ptr @netdev_rx._entry.39, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @netdev_rx._entry_ptr.41, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.43, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/fealnx.c", i32 1668, i32 8}
!141 = !{ptr @netdev_rx._entry.42, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @netdev_rx._entry_ptr.44, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.46, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/fealnx.c", i32 1691, i32 5}
!145 = !{ptr @netdev_rx._entry.45, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @netdev_rx._entry_ptr.47, !144, !"_entry_ptr", i1 false, i1 false}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!149 = !{ptr @.str.48, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.50, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/fealnx.c", i32 1085, i32 3}
!153 = !{ptr @.str.51, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @netdev_timer._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @netdev_timer._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/fealnx.c", i32 1170, i32 2}
!158 = !{ptr @.str.53, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @reset_timer._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @reset_timer._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.54, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/fealnx.c", i32 1195, i32 2}
!163 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @fealnx_tx_timeout._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @fealnx_tx_timeout._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.57, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/fealnx.c", i32 1200, i32 3}
!168 = !{ptr @fealnx_tx_timeout._entry.56, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @fealnx_tx_timeout._entry_ptr.58, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.60, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/fealnx.c", i32 1202, i32 4}
!172 = !{ptr @fealnx_tx_timeout._entry.59, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @fealnx_tx_timeout._entry_ptr.61, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.63, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/fealnx.c", i32 1204, i32 3}
!176 = !{ptr @fealnx_tx_timeout._entry.62, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @fealnx_tx_timeout._entry_ptr.64, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.66, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/fealnx.c", i32 1205, i32 3}
!180 = !{ptr @fealnx_tx_timeout._entry.65, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @fealnx_tx_timeout._entry_ptr.67, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.69, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/fealnx.c", i32 1207, i32 4}
!184 = !{ptr @fealnx_tx_timeout._entry.68, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @fealnx_tx_timeout._entry_ptr.70, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @fealnx_tx_timeout._entry.71, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/fealnx.c", i32 1208, i32 3}
!188 = !{ptr @fealnx_tx_timeout._entry_ptr.72, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @netdev_ethtool_ops, !190, !"netdev_ethtool_ops", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/fealnx.c", i32 1863, i32 33}
!191 = !{ptr @.str.73, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/fealnx.c", i32 694, i32 3}
!193 = !{ptr @.str.74, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @fealnx_remove_one._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @fealnx_remove_one._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{i32 1, !"wchar_size", i32 2}
!197 = !{i32 1, !"min_enum_size", i32 4}
!198 = !{i32 8, !"branch-target-enforcement", i32 0}
!199 = !{i32 8, !"sign-return-address", i32 0}
!200 = !{i32 8, !"sign-return-address-all", i32 0}
!201 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!202 = !{i32 7, !"uwtable", i32 1}
!203 = !{i32 7, !"frame-pointer", i32 2}
!204 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!205 = !{!"auto-init"}
!206 = !{i64 4688390}
!207 = !{i64 2152227735}
!208 = !{i64 2152230314}
!209 = !{i64 4688192}
!210 = !{i64 4688610}
!211 = !{i64 2152228959}
!212 = distinct !{!212, !213}
!213 = !{!"llvm.loop.peeled.count", i32 1}
!214 = !{i64 2152229764}
!215 = !{i64 4687572}
!216 = !{!"branch_weights", i32 2000, i32 1}
!217 = !{i64 2156599924}
