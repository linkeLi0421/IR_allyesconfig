; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/smsc/epic100.c_pt.bc'
source_filename = "../drivers/net/ethernet/smsc/epic100.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.epic_chip_info = type { ptr, i32 }
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
%struct.epic_private = type { ptr, ptr, [256 x ptr], [256 x ptr], i32, i32, %struct.spinlock, %struct.spinlock, %struct.napi_struct, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, %struct.timer_list, i32, [8 x i8], [4 x i8], i16, i32, i32, %struct.mii_if_info, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.epic_tx_desc = type { i32, i32, i32, i32 }
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
%struct.epic_rx_desc = type { i32, i32, i32, i32 }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author341 = internal constant [48 x i8] c"epic100.author=Donald Becker <becker@scyld.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [59 x i8] c"epic100.description=SMC 83c170 EPIC series Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [47 x i8] c"epic100.file=drivers/net/ethernet/smsc/epic100\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [20 x i8] c"epic100.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"epic100.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype345 = internal constant [27 x i8] c"epic100.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [21 x i8] c"epic100.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype346 = internal constant [34 x i8] c"epic100.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__param_str_options = internal constant [16 x i8] c"epic100.options\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_options = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @options }, align 4
@__param_options = internal constant %struct.kernel_param { ptr @__param_str_options, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_options } }, section "__param", align 4
@__UNIQUE_ID_optionstype347 = internal constant [38 x i8] c"epic100.parmtype=options:array of int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [20 x i8] c"epic100.full_duplex\00", align 1
@__param_arr_full_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @full_duplex }, align 4
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype348 = internal constant [42 x i8] c"epic100.parmtype=full_duplex:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug349 = internal constant [46 x i8] c"epic100.parm=debug:EPIC/100 debug level (0-5)\00", section ".modinfo", align 1
@__UNIQUE_ID_options350 = internal constant [72 x i8] c"epic100.parm=options:EPIC/100: Bits 0-3: media type, bit 4: full duplex\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak351 = internal constant [77 x i8] c"epic100.parm=rx_copybreak:EPIC/100 copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@__UNIQUE_ID_full_duplex352 = internal constant [61 x i8] c"epic100.parm=full_duplex:EPIC/100 full duplex setting(s) (1)\00", section ".modinfo", align 1
@epic_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @epic_pci_tbl, ptr @epic_init_one, ptr @epic_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @epic_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_epic100__368_1585_epic_init6 = internal global ptr @epic_init, section ".initcall6.init", align 4
@__exitcall_epic_cleanup = internal global ptr @epic_cleanup, section ".exitcall.exit", align 4
@options = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@full_duplex = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"epic100\00", [24 x i8] zeroinitializer }, align 32
@epic_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4280, i32 5, i32 4242, i32 2740, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4280, i32 5, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4280, i32 6, i32 -1, i32 -1, i32 131072, i32 16776960, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@epic_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @epic_suspend, ptr @epic_resume, ptr @epic_suspend, ptr @epic_resume, ptr @epic_suspend, ptr @epic_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@epic_init_one.card_idx = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@epic_init_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@epic_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016%s%s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"epic_init_one\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/smsc/epic100.c\00", [60 x i8] zeroinitializer }, align 32
@epic_init_one._entry_ptr = internal global ptr @epic_init_one._entry, section ".printk_index", align 4
@version = internal global { [69 x i8], [59 x i8] } { [69 x i8] c"epic100.c:v1.11 1/7/2001 Written by Donald Becker <becker@scyld.com>\00", [59 x i8] zeroinitializer }, align 32
@version2 = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"  (unofficial 2.4.x kernel port, version 2.1, Sept 11, 2006)\00", [35 x i8] zeroinitializer }, align 32
@epic_init_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 344, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no PCI region space\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@epic_init_one._entry_ptr.8 = internal global ptr @epic_init_one._entry.4, section ".printk_index", align 4
@epic_init_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 365, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed\0A\00", [16 x i8] zeroinitializer }, align 32
@epic_init_one._entry_ptr.11 = internal global ptr @epic_init_one._entry.9, section ".printk_index", align 4
@epic_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ep->lock\00", [22 x i8] zeroinitializer }, align 32
@epic_init_one.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ep->napi_lock\00", [17 x i8] zeroinitializer }, align 32
@epic_init_one.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EEPROM contents:\0A\00", [46 x i8] zeroinitializer }, align 32
@epic_init_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c %4.4x%s\00", [21 x i8] zeroinitializer }, align 32
@epic_init_one._entry_ptr.18 = internal global ptr @epic_init_one._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@pci_id_tbl = internal constant { [3 x %struct.epic_chip_info], [40 x i8] } { [3 x %struct.epic_chip_info] [%struct.epic_chip_info { ptr @.str.36, i32 7 }, %struct.epic_chip_info { ptr @.str.36, i32 2 }, %struct.epic_chip_info { ptr @.str.37, i32 3 }], [40 x i8] zeroinitializer }, align 32
@epic_init_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 449, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"MII transceiver #%d control %4.4x status %4.4x.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@epic_init_one._entry_ptr.24 = internal global ptr @epic_init_one._entry.21, section ".printk_index", align 4
@epic_init_one._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 459, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Autonegotiation advertising %4.4x link partner %4.4x.\0A\00", [41 x i8] zeroinitializer }, align 32
@epic_init_one._entry_ptr.27 = internal global ptr @epic_init_one._entry.25, section ".printk_index", align 4
@epic_init_one._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 462, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"***WARNING***: No MII transceiver found!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@epic_init_one._entry_ptr.31 = internal global ptr @epic_init_one._entry.28, section ".printk_index", align 4
@epic_init_one._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 477, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Forced full duplex requested.\0A\00", [33 x i8] zeroinitializer }, align 32
@epic_init_one._entry_ptr.34 = internal global ptr @epic_init_one._entry.32, section ".printk_index", align 4
@epic_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @epic_open, ptr @epic_close, ptr @epic_start_xmit, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @epic_tx_timeout, ptr null, ptr null, ptr null, ptr @epic_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_msglevel, ptr @netdev_set_msglevel, ptr @netdev_nway_reset, ptr @netdev_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_begin, ptr @ethtool_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_link_ksettings, ptr @netdev_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s at %lx, IRQ %d, %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SMSC EPIC/100 83c170\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SMSC EPIC/C 83c175\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Using the 10base2 transceiver, MII status %4.4x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Setting %s-duplex based on MII xcvr %d register read of %4.4x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@epic_open.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"epic_open\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"epic_open() ioaddr %p IRQ %d status %4.4x %s-duplex.\0A\00", [42 x i8] zeroinitializer }, align 32
@epic_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&ep->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@epic_interrupt.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 1, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"epic_interrupt\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Interrupt, status=%#8.8x new intstat=%#8.8x.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCI Bus Error! status %4.4x.\0A\00", [34 x i8] zeroinitializer }, align 32
@epic_interrupt.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.48, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"exit interrupt, intr_status=%#4.4x.\0A\00", [59 x i8] zeroinitializer }, align 32
@epic_rx.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 1, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"epic_rx\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" In epic_rx(), entry %d %8.8x.\0A\00", [32 x i8] zeroinitializer }, align 32
@epic_rx.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.51, i8 1, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  epic_rx() status was %8.8x.\0A\00", [33 x i8] zeroinitializer }, align 32
@epic_rx.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.52, i8 1, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"epic_rx() error status was %8.8x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Oversized Ethernet frame spanned multiple buffers, status %4.4x!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Oversized Ethernet frame, status %x %d bytes.\0A\00", [49 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@epic_restart.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"epic_restart\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Restarting the EPIC chip, Rx %d/%d Tx %d/%d.\0A\00", [50 x i8] zeroinitializer }, align 32
@epic_restart.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.59, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"epic_restart() done, cmd status %4.4x, ctl %4.4x interrupt %4.4x.\0A\00", [61 x i8] zeroinitializer }, align 32
@media2miictl = internal constant { <{ i16, i16, i16, i16, i16, i16, [10 x i16] }>, [32 x i8] } { <{ i16, i16, i16, i16, i16, i16, [10 x i16] }> <{ i16 0, i16 3072, i16 3072, i16 8192, i16 256, i16 8448, [10 x i16] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@epic_timer.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"epic_timer\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Media monitor tick, Tx status %8.8x.\0A\00", [58 x i8] zeroinitializer }, align 32
@epic_timer.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.3, ptr @.str.63, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Other registers are IntMask %4.4x IntStatus %4.4x RxStatus %4.4x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Setting %s-duplex based on MII #%d link partner capability of %4.4x.\0A\00", [58 x i8] zeroinitializer }, align 32
@epic_close.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 1, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"epic_close\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Shutting down ethercard, status was %2.2x.\0A\00", [52 x i8] zeroinitializer }, align 32
@epic_start_xmit.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 -8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"epic_start_xmit\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Queued Tx packet size %d to slot %d, flag %2.2x Tx status %8.8x.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Transmit timeout using MII device, Tx status %4.4x.\0A\00", [43 x i8] zeroinitializer }, align 32
@epic_tx_timeout.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"epic_tx_timeout\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Tx indices: dirty_tx %d, cur_tx %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.1\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Out-of-sync dirty pointer, %d vs. %d, full=%d.\0A\00", [48 x i8] zeroinitializer }, align 32
@epic_tx_error.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 0, i8 -4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"epic_tx_error\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Transmit error, Tx status %8.8x.\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 35, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 44, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"epic_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1559, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 39, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 40, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1560, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"epic_pci_tbl\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 176, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"epic_pm_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1557, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant [9 x i8] c"card_idx\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 322, i32 13 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 334, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 93, i32 13 }
@___asan_gen_.118 = private unnamed_addr constant [9 x i8] c"version2\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 95, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 344, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 365, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 402, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 403, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 424, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 426, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [11 x i8] c"pci_id_tbl\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 169, i32 36 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 446, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 456, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 461, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 477, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [16 x i8] c"epic_netdev_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 308, i32 36 }
@___asan_gen_.202 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1474, i32 33 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 491, i32 19 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 170, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 172, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 706, i32 22 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 717, i32 22 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 718, i32 32 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 719, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 740, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 747, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1085, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1123, i32 20 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1134, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1149, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1160, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1166, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1169, i32 22 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1182, i32 21 }
@___asan_gen_.272 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 326, i32 6 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 789, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 826, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [13 x i8] c"media2miictl\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 222, i32 18 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 859, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 861, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 844, i32 20 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1292, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 994, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 877, i32 20 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 880, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1396, i32 25 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1057, i32 20 }
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.329 = private constant [39 x i8] c"../drivers/net/ethernet/smsc/epic100.c\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1008, i32 3 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_debug349, ptr @__UNIQUE_ID_debugtype345, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_full_duplex352, ptr @__UNIQUE_ID_full_duplextype348, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_options350, ptr @__UNIQUE_ID_optionstype347, ptr @__UNIQUE_ID_rx_copybreak351, ptr @__UNIQUE_ID_rx_copybreaktype346, ptr @__exitcall_epic_cleanup, ptr @__initcall__kmod_epic100__368_1585_epic_init6, ptr @__param_debug, ptr @__param_full_duplex, ptr @__param_options, ptr @__param_rx_copybreak, ptr @epic_cleanup, ptr @epic_init_one._entry, ptr @epic_init_one._entry.16, ptr @epic_init_one._entry.21, ptr @epic_init_one._entry.25, ptr @epic_init_one._entry.28, ptr @epic_init_one._entry.32, ptr @epic_init_one._entry.4, ptr @epic_init_one._entry.9, ptr @epic_init_one._entry_ptr, ptr @epic_init_one._entry_ptr.11, ptr @epic_init_one._entry_ptr.18, ptr @epic_init_one._entry_ptr.24, ptr @epic_init_one._entry_ptr.27, ptr @epic_init_one._entry_ptr.31, ptr @epic_init_one._entry_ptr.34, ptr @epic_init_one._entry_ptr.8, ptr @debug, ptr @rx_copybreak, ptr @epic_driver, ptr @options, ptr @full_duplex, ptr @.str, ptr @epic_pci_tbl, ptr @epic_pm_ops, ptr @epic_init_one.card_idx, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @version, ptr @version2, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @epic_init_one.__key, ptr @.str.12, ptr @epic_init_one.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @pci_id_tbl, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @epic_netdev_ops, ptr @netdev_ethtool_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @epic_open.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @media2miictl, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @options to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_init_one.card_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_init_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_init_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_init_one.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_init_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_id_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_init_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_init_one._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_init_one._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_init_one._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media2miictl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @epic_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @epic_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @epic_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @epic_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epic_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %addr = alloca [3 x i16], align 2
  %ring_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #11
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %addr, align 2, !annotation !212
  %3 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !212
  %5 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ring_dma) #11
  %7 = ptrtoint ptr %ring_dma to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ring_dma, align 4, !annotation !212
  %.b376 = load i1, ptr @epic_init_one.__already_done, align 1
  br i1 %.b376, label %entry.if.end_crit_edge, label %if.then, !prof !213

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @epic_init_one.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @version, ptr noundef nonnull @version2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = load i32, ptr @epic_init_one.card_idx, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr @epic_init_one.card_idx, align 4
  %call12 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end15:                                         ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.end15.do.end25_crit_edge, label %cond.end

if.end15.do.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

cond.end:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resource, align 8
  %sub = add i32 %10, 1
  %add = sub i32 %sub, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp21 = icmp ult i32 %add, 256
  br i1 %cmp21, label %cond.end.do.end25_crit_edge, label %if.end27

cond.end.do.end25_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

do.end25:                                         ; preds = %cond.end.do.end25_crit_edge, %if.end15.do.end25_crit_edge
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.5) #14
  br label %err_out_disable

if.end27:                                         ; preds = %cond.end
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %call28 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.err_out_disable_crit_edge, label %if.end31

if.end27.err_out_disable_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_disable

if.end31:                                         ; preds = %if.end27
  %call32 = tail call ptr @alloc_etherdev_mqs(i32 noundef 2528, i32 noundef 1, i32 noundef 1) #11
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.err_out_free_res_crit_edge, label %if.end35

if.end31.err_out_free_res_crit_edge:              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_free_res

if.end35:                                         ; preds = %if.end31
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 133, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev36, ptr %parent, align 8
  %call38 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #11
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.10) #14
  br label %err_out_free_netdev

if.end45:                                         ; preds = %if.end35
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call32, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call32, i32 2304
  %ioaddr47 = getelementptr i8, ptr %call32, i32 4704
  %15 = ptrtoint ptr %ioaddr47 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call38, ptr %ioaddr47, align 8
  %mii = getelementptr i8, ptr %call32, i32 4796
  %dev48 = getelementptr i8, ptr %call32, i32 4816
  %16 = ptrtoint ptr %dev48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call32, ptr %dev48, align 4
  %mdio_read = getelementptr i8, ptr %call32, i32 4820
  %17 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call32, i32 4824
  %18 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call32, i32 4804
  %19 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call32, i32 4808
  %20 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 31, ptr %reg_num_mask, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev36, i32 noundef 4096, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #11
  %tobool55.not = icmp eq ptr %call.i, null
  br i1 %tobool55.not, label %if.end45.err_out_iounmap_crit_edge, label %if.end57

if.end45.err_out_iounmap_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_iounmap

if.end57:                                         ; preds = %if.end45
  %tx_ring = getelementptr i8, ptr %call32, i32 2308
  %21 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %tx_ring, align 4
  %22 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ring_dma, align 4
  %tx_ring_dma = getelementptr i8, ptr %call32, i32 4360
  %24 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tx_ring_dma, align 8
  %call.i379 = call ptr @dma_alloc_attrs(ptr noundef %dev36, i32 noundef 4096, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #11
  %tobool60.not = icmp eq ptr %call.i379, null
  br i1 %tobool60.not, label %if.end57.err_out_unmap_tx_crit_edge, label %if.end62

if.end57.err_out_unmap_tx_crit_edge:              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_unmap_tx

if.end62:                                         ; preds = %if.end57
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i379, ptr %add.ptr.i, align 8
  %26 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ring_dma, align 4
  %rx_ring_dma = getelementptr i8, ptr %call32, i32 4364
  %28 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rx_ring_dma, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 4
  %29 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mem_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool63.not = icmp eq i32 %30, 0
  br i1 %tobool63.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %and = lshr i32 %30, 4
  %and.lobit = and i32 %and, 1
  br label %do.body84

if.else:                                          ; preds = %if.end62
  %31 = load i32, ptr @epic_init_one.card_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %31)
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %if.then71, label %if.else.do.body84_crit_edge

if.else.do.body84_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body84

if.then71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx72 = getelementptr [8 x i32], ptr @options, i32 0, i32 %31
  %33 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx72, align 4
  %35 = call i32 @llvm.smax.i32(i32 %34, i32 0)
  %arrayidx77 = getelementptr [8 x i32], ptr @full_duplex, i32 0, i32 %31
  %36 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx77, align 4
  %38 = call i32 @llvm.smax.i32(i32 %37, i32 0)
  br label %do.body84

do.body84:                                        ; preds = %if.then71, %if.else.do.body84_crit_edge, %if.then64
  %option.1 = phi i32 [ %30, %if.then64 ], [ 0, %if.else.do.body84_crit_edge ], [ %35, %if.then71 ]
  %duplex.0 = phi i32 [ %and.lobit, %if.then64 ], [ 0, %if.else.do.body84_crit_edge ], [ %38, %if.then71 ]
  %lock = getelementptr i8, ptr %call32, i32 4368
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @epic_init_one.__key, i16 noundef signext 3) #11
  %napi_lock = getelementptr i8, ptr %call32, i32 4412
  call void @__raw_spin_lock_init(ptr noundef %napi_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @epic_init_one.__key.13, i16 noundef signext 3) #11
  %add.ptr = getelementptr i8, ptr %call38, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4325376) #11, !srcloc !215
  %add.ptr93 = getelementptr i8, ptr %call38, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 134217728) #11, !srcloc !215
  %add.ptr94 = getelementptr i8, ptr %call38, i32 56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 301989888) #11, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp95 = icmp eq i32 %1, 1
  br i1 %cmp95, label %if.then96, label %do.body84.if.end101_crit_edge

do.body84.if.end101_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr97 = getelementptr i8, ptr %call38, i32 16
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #11, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %40 = and i32 %39, -1011351553
  %41 = or i32 %40, 4718592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %41) #11, !srcloc !215
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %do.body84.if.end101_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 131072) #11, !srcloc !215
  %add.ptr107 = getelementptr i8, ptr %call38, i32 64
  %42 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr107) #11, !srcloc !218
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %addr, align 2
  %add.ptr107.1 = getelementptr i8, ptr %call38, i32 68
  %44 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr107.1) #11, !srcloc !218
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %3, align 2
  %add.ptr107.2 = getelementptr i8, ptr %call38, i32 72
  %46 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr107.2) #11, !srcloc !218
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %5, align 2
  call void @dev_addr_mod(ptr noundef nonnull %call32, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #11
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp113 = icmp sgt i32 %48, 2
  br i1 %cmp113, label %do.body115, label %if.end101.if.end144_crit_edge

if.end101.if.end144_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144

do.body115:                                       ; preds = %if.end101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_init_one.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_init_one, %if.then125)) #11
          to label %do.end135 [label %if.then125], !srcloc !220

if.then125:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @epic_init_one.__UNIQUE_ID_ddebug353, ptr noundef %dev36, ptr noundef nonnull @.str.15) #11
  br label %do.end135

do.end135:                                        ; preds = %read_eeprom.exit.do.end135_crit_edge, %if.then125, %do.body115
  %i.2414 = phi i32 [ %inc142, %read_eeprom.exit.do.end135_crit_edge ], [ 0, %do.body115 ], [ 0, %if.then125 ]
  %49 = ptrtoint ptr %ioaddr47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr47, align 8
  %add.ptr.i380 = getelementptr i8, ptr %50, i32 20
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i380) #11, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %52 = and i32 %51, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i = icmp eq i32 %52, 0
  %cond.i = select i1 %tobool.not.i, i32 1536, i32 384
  %or.i = or i32 %cond.i, %i.2414
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 16777216) #11, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 50331648) #11, !srcloc !215
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end135
  %i.060.i = phi i32 [ 12, %do.end135 ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.060.i
  %and5.i = and i32 %shl.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %or9.i = select i1 %tobool6.not.i, i32 50331648, i32 184549376
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 %or9.i) #11, !srcloc !215
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i380) #11, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  %54 = or i32 %or9.i, 67108864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 %54) #11, !srcloc !215
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i380) #11, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %dec.i = add nsw i32 %i.060.i, -1
  %cmp.not.i = icmp eq i32 %i.060.i, 0
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 50331648) #11, !srcloc !215
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %for.end.i
  %retval2.062.i = phi i32 [ 0, %for.end.i ], [ %or33.i, %for.body23.i.for.body23.i_crit_edge ]
  %i.161.i = phi i32 [ 16, %for.end.i ], [ %dec38.i, %for.body23.i.for.body23.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 117440512) #11, !srcloc !215
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i380) #11, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %shl27.i = shl i32 %retval2.062.i, 1
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i380) #11, !srcloc !216
  %58 = lshr i32 %57, 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %and30.lobit.i = and i32 %58, 1
  %or33.i = or i32 %and30.lobit.i, %shl27.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 50331648) #11, !srcloc !215
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i380) #11, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %dec38.i = add nsw i32 %i.161.i, -1
  %cmp21.i = icmp ugt i32 %i.161.i, 1
  br i1 %cmp21.i, label %for.body23.i.for.body23.i_crit_edge, label %read_eeprom.exit

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23.i

read_eeprom.exit:                                 ; preds = %for.body23.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 16777216) #11, !srcloc !215
  %60 = and i32 %i.2414, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %60)
  %cmp138 = icmp eq i32 %60, 15
  %cond139 = select i1 %cmp138, ptr @.str.19, ptr @.str.20
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %or33.i, ptr noundef nonnull %cond139) #14
  %inc142 = add nuw nsw i32 %i.2414, 1
  %exitcond.not = icmp eq i32 %inc142, 64
  br i1 %exitcond.not, label %read_eeprom.exit.if.end144_crit_edge, label %read_eeprom.exit.do.end135_crit_edge

read_eeprom.exit.do.end135_crit_edge:             ; preds = %read_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end135

read_eeprom.exit.if.end144_crit_edge:             ; preds = %read_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144

if.end144:                                        ; preds = %read_eeprom.exit.if.end144_crit_edge, %if.end101.if.end144_crit_edge
  %pci_dev = getelementptr i8, ptr %call32, i32 4708
  %61 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %pdev, ptr %pci_dev, align 4
  %chip_id = getelementptr i8, ptr %call32, i32 4712
  %62 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %1, ptr %chip_id, align 8
  %drv_flags = getelementptr [3 x %struct.epic_chip_info], ptr @pci_id_tbl, i32 0, i32 %1, i32 1
  %63 = ptrtoint ptr %drv_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %drv_flags, align 4
  %chip_flags = getelementptr i8, ptr %call32, i32 4716
  %65 = ptrtoint ptr %chip_flags to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %chip_flags, align 4
  %irq_mask = getelementptr i8, ptr %call32, i32 4696
  %66 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8109, ptr %irq_mask, align 8
  br label %for.body158

for.body158:                                      ; preds = %if.end171.for.body158_crit_edge, %if.end144
  %phy_idx.0417 = phi i32 [ 0, %if.end144 ], [ %phy_idx.1, %if.end171.for.body158_crit_edge ]
  %phy.0415 = phi i32 [ 1, %if.end144 ], [ %inc173, %if.end171.for.body158_crit_edge ]
  %67 = ptrtoint ptr %ioaddr47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr47, align 8
  %shl.i382 = shl nuw nsw i32 %phy.0415, 9
  %or3.i = or i32 %shl.i382, 17
  %add.ptr.i384 = getelementptr i8, ptr %68, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  %69 = call i32 @llvm.bswap.i32(i32 %or3.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i384, i32 %69) #11, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %phy.0415)
  %cmp7.i = icmp eq i32 %phy.0415, 1
  %add.ptr10.i = getelementptr i8, ptr %68, i32 52
  br label %for.body.i385

for.body.i385:                                    ; preds = %for.inc.i.for.body.i385_crit_edge, %for.body158
  %i.031.i = phi i32 [ 400, %for.body158 ], [ %dec.i386, %for.inc.i.for.body.i385_crit_edge ]
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !221
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i384) #11, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %71 = and i32 %70, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp6.i = icmp eq i32 %71, 0
  br i1 %cmp6.i, label %if.then.i, label %for.body.i385.for.inc.i_crit_edge

for.body.i385.for.inc.i_crit_edge:                ; preds = %for.body.i385
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i385
  br i1 %cmp7.i, label %land.lhs.true9.i, label %if.then.i.mdio_read.exit_crit_edge

if.then.i.mdio_read.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mdio_read.exit

land.lhs.true9.i:                                 ; preds = %if.then.i
  %72 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #11, !srcloc !218
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %72)
  %cmp12.i = icmp eq i16 %72, -1
  br i1 %cmp12.i, label %if.then14.i, label %land.lhs.true9.i.mdio_read.exit_crit_edge

land.lhs.true9.i.mdio_read.exit_crit_edge:        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mdio_read.exit

if.then14.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i384, i32 %69) #11, !srcloc !215
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %for.body.i385.for.inc.i_crit_edge
  %dec.i386 = add nsw i32 %i.031.i, -1
  %cmp.i = icmp ugt i32 %i.031.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i385_crit_edge, label %for.inc.i.if.end171_crit_edge

for.inc.i.if.end171_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

for.inc.i.for.body.i385_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i385

mdio_read.exit:                                   ; preds = %land.lhs.true9.i.mdio_read.exit_crit_edge, %if.then.i.mdio_read.exit_crit_edge
  %73 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #11, !srcloc !218
  %74 = call i16 @llvm.bswap.i16(i16 %73) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  %conv18.i = zext i16 %74 to i32
  %75 = zext i16 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i16 %74, label %if.then163 [
    i16 -1, label %mdio_read.exit.if.end171_crit_edge
    i16 0, label %mdio_read.exit.if.end171_crit_edge419
  ]

mdio_read.exit.if.end171_crit_edge419:            ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

mdio_read.exit.if.end171_crit_edge:               ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.then163:                                       ; preds = %mdio_read.exit
  %conv = trunc i32 %phy.0415 to i8
  %inc164 = add i32 %phy_idx.0417, 1
  %arrayidx165 = getelementptr %struct.epic_private, ptr %add.ptr.i, i32 0, i32 22, i32 %phy_idx.0417
  %76 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv, ptr %arrayidx165, align 1
  %77 = ptrtoint ptr %ioaddr47 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ioaddr47, align 8
  %or3.i390 = or i32 %shl.i382, 1
  %add.ptr.i391 = getelementptr i8, ptr %78, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  %79 = call i32 @llvm.bswap.i32(i32 %or3.i390) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i391, i32 %79) #11, !srcloc !215
  %add.ptr10.i393 = getelementptr i8, ptr %78, i32 52
  br label %for.body.i396

for.body.i396:                                    ; preds = %for.inc.i405.for.body.i396_crit_edge, %if.then163
  %i.031.i394 = phi i32 [ 400, %if.then163 ], [ %dec.i403, %for.inc.i405.for.body.i396_crit_edge ]
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !221
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i391) #11, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %81 = and i32 %80, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp6.i395 = icmp eq i32 %81, 0
  br i1 %cmp6.i395, label %if.then.i397, label %for.body.i396.for.inc.i405_crit_edge

for.body.i396.for.inc.i405_crit_edge:             ; preds = %for.body.i396
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i405

if.then.i397:                                     ; preds = %for.body.i396
  br i1 %cmp7.i, label %land.lhs.true9.i399, label %if.then.i397.if.end.i402_crit_edge

if.then.i397.if.end.i402_crit_edge:               ; preds = %if.then.i397
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i402

land.lhs.true9.i399:                              ; preds = %if.then.i397
  %82 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i393) #11, !srcloc !218
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %82)
  %cmp12.i398 = icmp eq i16 %82, -1
  br i1 %cmp12.i398, label %if.then14.i400, label %land.lhs.true9.i399.if.end.i402_crit_edge

land.lhs.true9.i399.if.end.i402_crit_edge:        ; preds = %land.lhs.true9.i399
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i402

if.then14.i400:                                   ; preds = %land.lhs.true9.i399
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i391, i32 %79) #11, !srcloc !215
  br label %for.inc.i405

if.end.i402:                                      ; preds = %land.lhs.true9.i399.if.end.i402_crit_edge, %if.then.i397.if.end.i402_crit_edge
  %83 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i393) #11, !srcloc !218
  %84 = call i16 @llvm.bswap.i16(i16 %83) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  %conv18.i401 = zext i16 %84 to i32
  br label %mdio_read.exit407

for.inc.i405:                                     ; preds = %if.then14.i400, %for.body.i396.for.inc.i405_crit_edge
  %dec.i403 = add nsw i32 %i.031.i394, -1
  %cmp.i404 = icmp ugt i32 %i.031.i394, 1
  br i1 %cmp.i404, label %for.inc.i405.for.body.i396_crit_edge, label %for.inc.i405.mdio_read.exit407_crit_edge

for.inc.i405.mdio_read.exit407_crit_edge:         ; preds = %for.inc.i405
  call void @__sanitizer_cov_trace_pc() #13
  br label %mdio_read.exit407

for.inc.i405.for.body.i396_crit_edge:             ; preds = %for.inc.i405
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i396

mdio_read.exit407:                                ; preds = %for.inc.i405.mdio_read.exit407_crit_edge, %if.end.i402
  %retval.0.i406 = phi i32 [ %conv18.i401, %if.end.i402 ], [ 65535, %for.inc.i405.mdio_read.exit407_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.22, i32 noundef %phy.0415, i32 noundef %retval.0.i406, i32 noundef %conv18.i) #14
  br label %if.end171

if.end171:                                        ; preds = %mdio_read.exit407, %mdio_read.exit.if.end171_crit_edge, %mdio_read.exit.if.end171_crit_edge419, %for.inc.i.if.end171_crit_edge
  %phy_idx.1 = phi i32 [ %inc164, %mdio_read.exit407 ], [ %phy_idx.0417, %mdio_read.exit.if.end171_crit_edge ], [ %phy_idx.0417, %mdio_read.exit.if.end171_crit_edge419 ], [ %phy_idx.0417, %for.inc.i.if.end171_crit_edge ]
  %inc173 = add nuw nsw i32 %phy.0415, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %phy.0415)
  %cmp154 = icmp ult i32 %phy.0415, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_idx.1)
  %cmp156 = icmp ult i32 %phy_idx.1, 4
  %or.cond377 = select i1 %cmp154, i1 %cmp156, i1 false
  br i1 %or.cond377, label %if.end171.for.body158_crit_edge, label %for.end174

if.end171.for.body158_crit_edge:                  ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body158

for.end174:                                       ; preds = %if.end171
  %arrayidx145 = getelementptr [3 x %struct.epic_chip_info], ptr @pci_id_tbl, i32 0, i32 %1
  %mii_phy_cnt = getelementptr i8, ptr %call32, i32 4788
  %85 = ptrtoint ptr %mii_phy_cnt to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %phy_idx.1, ptr %mii_phy_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_idx.1)
  %cmp175.not = icmp eq i32 %phy_idx.1, 0
  br i1 %cmp175.not, label %if.else190, label %if.then177

if.then177:                                       ; preds = %for.end174
  call void @__sanitizer_cov_trace_pc() #13
  %phys178 = getelementptr i8, ptr %call32, i32 4780
  %86 = ptrtoint ptr %phys178 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %phys178, align 4
  %conv180 = sext i8 %87 to i32
  %call181 = call i32 @mdio_read(ptr noundef nonnull %call32, i32 noundef %conv180, i32 noundef 4)
  %advertising = getelementptr i8, ptr %call32, i32 4800
  %88 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call181, ptr %advertising, align 4
  %call189 = call i32 @mdio_read(ptr noundef nonnull %call32, i32 noundef %conv180, i32 noundef 5), !range !222
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.26, i32 noundef %call181, i32 noundef %call189) #14
  br label %if.end202

if.else190:                                       ; preds = %for.end174
  %89 = ptrtoint ptr %chip_flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %chip_flags, align 4
  %and192 = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %do.end197, label %if.else190.if.end202_crit_edge

if.else190.if.end202_crit_edge:                   ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202

do.end197:                                        ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36, ptr noundef nonnull @.str.29) #14
  %phys199 = getelementptr i8, ptr %call32, i32 4780
  %91 = ptrtoint ptr %phys199 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 3, ptr %phys199, align 4
  br label %if.end202

if.end202:                                        ; preds = %do.end197, %if.else190.if.end202_crit_edge, %if.then177
  %phys203 = getelementptr i8, ptr %call32, i32 4780
  %92 = ptrtoint ptr %phys203 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %phys203, align 4
  %conv205 = sext i8 %93 to i32
  %94 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv205, ptr %mii, align 4
  %95 = ptrtoint ptr %chip_flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %chip_flags, align 4
  %and208 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %if.end202.if.end215_crit_edge, label %if.then210

if.end202.if.end215_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

if.then210:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr211 = getelementptr i8, ptr %call38, i32 16
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211) #11, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %98 = and i32 %97, -1011351553
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr211, i32 %98) #11, !srcloc !215
  br label %if.end215

if.end215:                                        ; preds = %if.then210, %if.end202.if.end215_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #11, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex.0)
  %tobool217.not = icmp eq i32 %duplex.0, 0
  br i1 %tobool217.not, label %if.end215.if.end228_crit_edge, label %if.then218

if.end215.if.end228_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228

if.then218:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  %full_duplex = getelementptr i8, ptr %call32, i32 4812
  %99 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load = load i8, ptr %full_duplex, align 4
  %bf.set223 = or i8 %bf.load, -64
  store i8 %bf.set223, ptr %full_duplex, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.33) #14
  br label %if.end228

if.end228:                                        ; preds = %if.then218, %if.end215.if.end228_crit_edge
  %default_port = getelementptr i8, ptr %call32, i32 4828
  %100 = trunc i32 %option.1 to i8
  %101 = ptrtoint ptr %default_port to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load229 = load i8, ptr %default_port, align 4
  %bf.value = and i8 %100, 15
  %bf.shl = shl nuw nsw i8 %bf.value, 3
  %bf.clear230 = and i8 %bf.load229, -121
  %bf.set231 = or i8 %bf.clear230, %bf.shl
  store i8 %bf.set231, ptr %default_port, align 4
  %if_port = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 52
  %102 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %bf.value, ptr %if_port, align 2
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 16
  %103 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @epic_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 44
  %104 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 115
  %105 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 200, ptr %watchdog_timeo, align 4
  %napi = getelementptr i8, ptr %call32, i32 4456
  call void @netif_napi_add(ptr noundef nonnull %call32, ptr noundef %napi, ptr noundef nonnull @epic_poll, i32 noundef 64) #11
  %call233 = call i32 @register_netdev(ptr noundef nonnull %call32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %err_out_unmap_rx, label %if.end237

if.end237:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx145, align 4
  %108 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %resource, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %110 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irq, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call32, i32 0, i32 86
  %112 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call32, ptr noundef nonnull @.str.35, ptr noundef %107, i32 noundef %109, i32 noundef %111, ptr noundef %113) #14
  br label %out

out:                                              ; preds = %err_out_disable, %if.end237, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end.out_crit_edge ], [ %ret.5, %err_out_disable ], [ %call233, %if.end237 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ring_dma) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #11
  ret i32 %ret.0

err_out_unmap_rx:                                 ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr.i, align 8
  %116 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev36, i32 noundef 4096, ptr noundef %115, i32 noundef %117, i32 noundef 0) #11
  br label %err_out_unmap_tx

err_out_unmap_tx:                                 ; preds = %err_out_unmap_rx, %if.end57.err_out_unmap_tx_crit_edge
  %ret.1 = phi i32 [ %call233, %err_out_unmap_rx ], [ -12, %if.end57.err_out_unmap_tx_crit_edge ]
  %118 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tx_ring, align 4
  %120 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_ring_dma, align 8
  call void @dma_free_attrs(ptr noundef %dev36, i32 noundef 4096, ptr noundef %119, i32 noundef %121, i32 noundef 0) #11
  br label %err_out_iounmap

err_out_iounmap:                                  ; preds = %err_out_unmap_tx, %if.end45.err_out_iounmap_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_out_unmap_tx ], [ -12, %if.end45.err_out_iounmap_crit_edge ]
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call38) #11
  br label %err_out_free_netdev

err_out_free_netdev:                              ; preds = %err_out_iounmap, %do.end43
  %ret.3 = phi i32 [ %ret.2, %err_out_iounmap ], [ -12, %do.end43 ]
  call void @free_netdev(ptr noundef nonnull %call32) #11
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %err_out_free_netdev, %if.end31.err_out_free_res_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_out_free_netdev ], [ -12, %if.end31.err_out_free_res_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #11
  br label %err_out_disable

err_out_disable:                                  ; preds = %err_out_free_res, %if.end27.err_out_disable_crit_edge, %do.end25
  %ret.5 = phi i32 [ -19, %do.end25 ], [ %call28, %if.end27.err_out_disable_crit_edge ], [ %ret.4, %err_out_free_res ]
  call void @pci_disable_device(ptr noundef %pdev) #11
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epic_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %tx_ring = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 4
  %tx_ring_dma = getelementptr i8, ptr %1, i32 4360
  %4 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_ring_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 4096, ptr noundef %3, i32 noundef %5, i32 noundef 0) #11
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %rx_ring_dma = getelementptr i8, ptr %1, i32 4364
  %8 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 4096, ptr noundef %7, i32 noundef %9, i32 noundef 0) #11
  tail call void @unregister_netdev(ptr noundef %1) #11
  %ioaddr = getelementptr i8, ptr %1, i32 4704
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %11) #11
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  tail call void @free_netdev(ptr noundef %1) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %shl = shl i32 %phy_id, 9
  %shl2 = shl i32 %location, 4
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, 1
  %add.ptr = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or3) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #11, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %phy_id)
  %cmp7 = icmp eq i32 %phy_id, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %location)
  %cmp8 = icmp slt i32 %location, 6
  %or.cond = and i1 %cmp7, %cmp8
  %add.ptr10 = getelementptr i8, ptr %1, i32 52
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 400, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !221
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  br i1 %or.cond, label %land.lhs.true9, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true9:                                   ; preds = %if.then
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp12 = icmp eq i16 %5, -1
  br i1 %cmp12, label %if.then14, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then14:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #11, !srcloc !215
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true9.if.end_crit_edge, %if.then.if.end_crit_edge
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #11, !srcloc !218
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  %conv18 = zext i16 %7 to i32
  br label %cleanup

for.inc:                                          ; preds = %if.then14, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %i.031, -1
  %cmp = icmp ugt i32 %i.031, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ %conv18, %if.end ], [ 65535, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %conv = trunc i32 %value to i16
  %add.ptr = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  tail call void @arm_heavy_mb() #11
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #11, !srcloc !224
  %shl = shl i32 %phy_id, 9
  %shl2 = shl i32 %loc, 4
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, 2
  %add.ptr4 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %or3) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #11, !srcloc !215
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 10000, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !225
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp ne i32 %5, 0
  %dec = add nsw i32 %i.013, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.013)
  %cmp = icmp ugt i32 %i.013, 1
  %or.cond = select i1 %cmp8, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epic_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -2152
  %dev1 = getelementptr i8, ptr %napi, i32 360
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ioaddr2 = getelementptr i8, ptr %napi, i32 248
  %2 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr2, align 8
  %cur_tx1.i = getelementptr i8, ptr %napi, i32 224
  %4 = ptrtoint ptr %cur_tx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_tx1.i, align 8
  %dirty_tx2.i = getelementptr i8, ptr %napi, i32 228
  %6 = ptrtoint ptr %dirty_tx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dirty_tx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not82.i = icmp eq i32 %5, %7
  br i1 %cmp.not82.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %tx_ring.i = getelementptr i8, ptr %napi, i32 -2148
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %pci_dev.i = getelementptr i8, ptr %napi, i32 252
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %tx_window_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 20
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dirty_tx.083.i = phi i32 [ %7, %for.body.lr.ph.i ], [ %inc26.i, %for.inc.i.for.body.i_crit_edge ]
  %rem.i = and i32 %dirty_tx.083.i, 255
  %8 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx.i = getelementptr %struct.epic_tx_desc, ptr %9, i32 %rem.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %and5.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then9.i, !prof !226

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = lshr i32 %11, 8
  %and10.i = and i32 %12, 15
  %13 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %collisions.i, align 4
  %add.i = add i32 %14, %and10.i
  store i32 %add.i, ptr %collisions.i, align 4
  %15 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %arrayidx12.i = getelementptr %struct.epic_private, ptr %add.ptr, i32 0, i32 2, i32 %rem.i
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx12.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  br label %for.inc.i.sink.split

if.else.i:                                        ; preds = %if.end.i
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i32 = icmp sgt i32 %21, 1
  br i1 %cmp.i32, label %do.body2.i, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

do.body2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_tx_error.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_poll, %if.then5.i)) #11
          to label %if.end8.i [label %if.then5.i], !srcloc !220

if.then5.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_tx_error.__UNIQUE_ID_ddebug361, ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef %11) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %do.body2.i, %if.else.i.if.end8.i_crit_edge
  %22 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_errors.i, align 4
  %inc.i33 = add i32 %23, 1
  store i32 %inc.i33, ptr %tx_errors.i, align 4
  %and.i34 = and i32 %11, 4176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool9.not.i = icmp eq i32 %and.i34, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then10.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_aborted_errors.i, align 4
  %inc11.i = add i32 %25, 1
  store i32 %inc11.i, ptr %tx_aborted_errors.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end12.i_crit_edge
  %and13.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end17.i_crit_edge, label %if.then15.i

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc16.i = add i32 %27, 1
  store i32 %inc16.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end17.i_crit_edge
  %and18.i = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end22.i_crit_edge, label %if.then20.i

if.end17.i.if.end22.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_window_errors.i, align 4
  %inc21.i = add i32 %29, 1
  store i32 %inc21.i, ptr %tx_window_errors.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end22.i_crit_edge
  %and23.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.for.inc.i_crit_edge, label %if.end22.i.for.inc.i.sink.split_crit_edge

if.end22.i.for.inc.i.sink.split_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.sink.split

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i.sink.split:                             ; preds = %if.end22.i.for.inc.i.sink.split_crit_edge, %if.then9.i
  %tx_fifo_errors.i.sink37 = phi ptr [ %tx_bytes.i, %if.then9.i ], [ %tx_fifo_errors.i, %if.end22.i.for.inc.i.sink.split_crit_edge ]
  %.sink36 = phi i32 [ %20, %if.then9.i ], [ 1, %if.end22.i.for.inc.i.sink.split_crit_edge ]
  %30 = ptrtoint ptr %tx_fifo_errors.i.sink37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_fifo_errors.i.sink37, align 4
  %inc26.i35 = add i32 %31, %.sink36
  store i32 %inc26.i35, ptr %tx_fifo_errors.i.sink37, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.sink.split, %if.end22.i.for.inc.i_crit_edge
  %arrayidx17.i = getelementptr %struct.epic_private, ptr %add.ptr, i32 0, i32 2, i32 %rem.i
  %32 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx17.i, align 4
  %34 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev.i, align 4
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_ring.i, align 4
  %bufaddr.i = getelementptr %struct.epic_tx_desc, ptr %37, i32 %rem.i, i32 1
  %38 = ptrtoint ptr %bufaddr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bufaddr.i, align 4
  %len21.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 6
  %40 = ptrtoint ptr %len21.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len21.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev18.i, i32 noundef %39, i32 noundef %41, i32 noundef 1, i32 noundef 0) #11
  tail call void @__dev_kfree_skb_irq(ptr noundef %33, i32 noundef 0) #11
  %42 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx17.i, align 4
  %inc26.i = add i32 %dirty_tx.083.i, 1
  %cmp.not.i = icmp eq i32 %5, %inc26.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %dirty_tx.0.lcssa81.i = phi i32 [ %5, %entry.for.end.i_crit_edge ], [ %5, %for.inc.i.for.end.i_crit_edge ], [ %dirty_tx.083.i, %for.body.i.for.end.i_crit_edge ]
  %sub.le.i = sub i32 %5, %dirty_tx.0.lcssa81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.le.i)
  %cmp28.i = icmp ugt i32 %sub.le.i, 256
  br i1 %cmp28.i, label %if.then29.i, label %for.end.i.if.end31.i_crit_edge

for.end.i.if.end31.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then29.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_full.i = getelementptr i8, ptr %napi, i32 372
  %43 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i = load i8, ptr %tx_full.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.73, i32 noundef %dirty_tx.0.lcssa81.i, i32 noundef %5, i32 noundef %bf.cast.i) #14
  %add30.i = add i32 %dirty_tx.0.lcssa81.i, 256
  %.pre.i = sub i32 %5, %add30.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %for.end.i.if.end31.i_crit_edge
  %sub38.pre-phi.i = phi i32 [ %.pre.i, %if.then29.i ], [ %sub.le.i, %for.end.i.if.end31.i_crit_edge ]
  %dirty_tx.1.i = phi i32 [ %add30.i, %if.then29.i ], [ %dirty_tx.0.lcssa81.i, %for.end.i.if.end31.i_crit_edge ]
  %44 = ptrtoint ptr %dirty_tx2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %dirty_tx.1.i, ptr %dirty_tx2.i, align 4
  %tx_full33.i = getelementptr i8, ptr %napi, i32 372
  %45 = ptrtoint ptr %tx_full33.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load34.i = load i8, ptr %tx_full33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load34.i)
  %tobool37.not.i = icmp slt i8 %bf.load34.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 236, i32 %sub38.pre-phi.i)
  %cmp39.i = icmp ult i32 %sub38.pre-phi.i, 236
  %or.cond.i = select i1 %tobool37.not.i, i1 %cmp39.i, i1 false
  br i1 %or.cond.i, label %if.then40.i, label %if.end31.i.epic_tx.exit_crit_edge

if.end31.i.epic_tx.exit_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %epic_tx.exit

if.then40.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear.i = and i8 %bf.load34.i, 127
  %46 = ptrtoint ptr %tx_full33.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %bf.clear.i, ptr %tx_full33.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %47 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %48) #11
  br label %epic_tx.exit

epic_tx.exit:                                     ; preds = %if.then40.i, %if.end31.i.epic_tx.exit_crit_edge
  %call = tail call fastcc i32 @epic_rx(ptr noundef %1, i32 noundef %budget)
  %49 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr2, align 8
  %add.ptr.i = getelementptr i8, ptr %50, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !216
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp.i = icmp eq i32 %51, -1
  br i1 %cmp.i, label %epic_tx.exit.epic_rx_err.exit_crit_edge, label %if.end.i28

epic_tx.exit.epic_rx_err.exit_crit_edge:          ; preds = %epic_tx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %epic_rx_err.exit

if.end.i28:                                       ; preds = %epic_tx.exit
  %and.i26 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27, label %if.end.i28.if.end3.i_crit_edge, label %if.then2.i

if.end.i28.if.end3.i_crit_edge:                   ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #13
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %53 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_errors.i, align 8
  %inc.i29 = add i32 %54, 1
  store i32 %inc.i29, ptr %rx_errors.i, align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i28.if.end3.i_crit_edge
  %and4.i = and i32 %52, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.epic_rx_err.exit_crit_edge, label %if.then6.i

if.end3.i.epic_rx_err.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %epic_rx_err.exit

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 2048) #11, !srcloc !224
  br label %epic_rx_err.exit

epic_rx_err.exit:                                 ; preds = %if.then6.i, %if.end3.i.epic_rx_err.exit_crit_edge, %epic_tx.exit.epic_rx_err.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %land.lhs.true, label %epic_rx_err.exit.if.end_crit_edge

epic_rx_err.exit.if.end_crit_edge:                ; preds = %epic_rx_err.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %epic_rx_err.exit
  %call3 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #11
  br i1 %call3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %napi_lock = getelementptr i8, ptr %napi, i32 -44
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %napi_lock) #11
  %add.ptr11 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -1391722496) #11, !srcloc !215
  %55 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioaddr2, align 8
  %irq_mask.i = getelementptr i8, ptr %napi, i32 240
  %57 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq_mask.i, align 8
  %or.i = or i32 %58, 3245
  %add.ptr.i31 = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %59) #11, !srcloc !215
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %napi_lock, i32 noundef %call8) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %epic_rx_err.exit.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epic_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %pci_dev = getelementptr i8, ptr %dev, i32 4708
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 20971520) #11, !srcloc !215
  %napi = getelementptr i8, ptr %dev, i32 4456
  tail call void @napi_enable(ptr noundef %napi) #11
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @epic_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @napi_disable(ptr noundef %napi) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_full.i = getelementptr i8, ptr %dev, i32 4828
  %6 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %tx_full.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %tx_full.i, align 4
  %cur_tx.i = getelementptr i8, ptr %dev, i32 4680
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %7 = call ptr @memset(ptr %cur_tx.i, i32 0, i32 16)
  %8 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %9)
  %cmp.i = icmp ult i32 %9, 1501
  %add.i = add i32 %9, 32
  %spec.select.i = select i1 %cmp.i, i32 1536, i32 %add.i
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 4700
  %10 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select.i, ptr %rx_buf_sz.i, align 4
  %rx_ring_dma.i = getelementptr i8, ptr %dev, i32 4364
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.0113.i = phi i32 [ 0, %if.end ], [ %add6.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx.i = getelementptr %struct.epic_rx_desc, ptr %12, i32 %i.0113.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_buf_sz.i, align 4
  %16 = load ptr, ptr %add.ptr.i, align 8
  %buflength.i = getelementptr %struct.epic_rx_desc, ptr %16, i32 %i.0113.i, i32 2
  %17 = ptrtoint ptr %buflength.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %buflength.i, align 4
  %18 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_ring_dma.i, align 4
  %add6.i = add nuw nsw i32 %i.0113.i, 1
  %mul.i = shl i32 %add6.i, 4
  %add7.i = add i32 %19, %mul.i
  %20 = load ptr, ptr %add.ptr.i, align 8
  %next.i = getelementptr %struct.epic_rx_desc, ptr %20, i32 %i.0113.i, i32 3
  %21 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add7.i, ptr %next.i, align 4
  %arrayidx10.i = getelementptr %struct.epic_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.0113.i
  %22 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx10.i, align 4
  %exitcond.not.i = icmp eq i32 %add6.i, 256
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %dirty_rx.i = getelementptr i8, ptr %dev, i32 4692
  %23 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_ring_dma.i, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %next14.i = getelementptr %struct.epic_rx_desc, ptr %26, i32 255, i32 3
  %27 = ptrtoint ptr %next14.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %next14.i, align 4
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.inc32.i.for.body17.i_crit_edge, %for.end.i
  %i.1114.i = phi i32 [ 0, %for.end.i ], [ %inc33.i, %for.inc32.i.for.body17.i_crit_edge ]
  %28 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_buf_sz.i, align 4
  %add19.i = add i32 %29, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add19.i, i32 noundef 2592) #11
  %arrayidx22.i = getelementptr %struct.epic_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.1114.i
  %30 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %arrayidx22.i, align 4
  %cmp23.i = icmp eq ptr %call.i.i, null
  br i1 %cmp23.i, label %for.body17.i.for.end34.i_crit_edge, label %if.end.i

for.body17.i.for.end34.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

if.end.i:                                         ; preds = %for.body17.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %32, i32 2
  store ptr %add.ptr.i108.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %34, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %35 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_dev, align 4
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i109.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i108.i) #11
  br i1 %call.i109.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.for.inc32.i_crit_edge, label %if.then.i.i, !prof !213

land.rhs.i.i.for.inc32.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc32.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev24.i) #11
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44, i32 3
  %39 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev24.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %42, %if.end.i.i.i ], [ %40, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %for.inc32.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev24.i, ptr noundef %add.ptr.i108.i, i32 noundef %38) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %43 = load ptr, ptr @mem_map, align 4
  %44 = ptrtoint ptr %add.ptr.i108.i to i32
  %sub.i.i = add i32 %44, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i110.i = getelementptr %struct.page, ptr %43, i32 %shr.i.i
  %and.i.i = and i32 %44, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev24.i, ptr noundef %add.ptr.i110.i, i32 noundef %and.i.i, i32 noundef %38, i32 noundef 2, i32 noundef 0) #11
  br label %for.inc32.i

for.inc32.i:                                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.for.inc32.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.for.inc32.i_crit_edge ]
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 8
  %bufaddr.i = getelementptr %struct.epic_rx_desc, ptr %46, i32 %i.1114.i, i32 1
  %47 = ptrtoint ptr %bufaddr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i.i, ptr %bufaddr.i, align 4
  %48 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx30.i = getelementptr %struct.epic_rx_desc, ptr %48, i32 %i.1114.i
  %49 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 32768, ptr %arrayidx30.i, align 4
  %inc33.i = add nuw nsw i32 %i.1114.i, 1
  %exitcond116.not.i = icmp eq i32 %inc33.i, 256
  br i1 %exitcond116.not.i, label %for.inc32.i.for.end34.i_crit_edge, label %for.inc32.i.for.body17.i_crit_edge

for.inc32.i.for.body17.i_crit_edge:               ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17.i

for.inc32.i.for.end34.i_crit_edge:                ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34.i

for.end34.i:                                      ; preds = %for.inc32.i.for.end34.i_crit_edge, %for.body17.i.for.end34.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.1114.i, %for.body17.i.for.end34.i_crit_edge ], [ 256, %for.inc32.i.for.end34.i_crit_edge ]
  %sub35.i = add nsw i32 %i.1.lcssa.i, -256
  %50 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub35.i, ptr %dirty_rx.i, align 4
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %tx_ring_dma.i = getelementptr i8, ptr %dev, i32 4360
  br label %for.body39.i

for.body39.i:                                     ; preds = %for.body39.i.for.body39.i_crit_edge, %for.end34.i
  %i.2115.i = phi i32 [ 0, %for.end34.i ], [ %add42.i, %for.body39.i.for.body39.i_crit_edge ]
  %arrayidx40.i = getelementptr %struct.epic_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.2115.i
  %51 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx40.i, align 4
  %52 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx41.i = getelementptr %struct.epic_tx_desc, ptr %53, i32 %i.2115.i
  %54 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx41.i, align 4
  %55 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_ring_dma.i, align 8
  %add42.i = add nuw nsw i32 %i.2115.i, 1
  %mul43.i = shl i32 %add42.i, 4
  %add44.i = add i32 %56, %mul43.i
  %57 = load ptr, ptr %tx_ring.i, align 4
  %next47.i = getelementptr %struct.epic_tx_desc, ptr %57, i32 %i.2115.i, i32 3
  %58 = ptrtoint ptr %next47.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add44.i, ptr %next47.i, align 4
  %exitcond117.not.i = icmp eq i32 %add42.i, 256
  br i1 %exitcond117.not.i, label %epic_init_ring.exit, label %for.body39.i.for.body39.i_crit_edge

for.body39.i.for.body39.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39.i

epic_init_ring.exit:                              ; preds = %for.body39.i
  %59 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_ring_dma.i, align 8
  %61 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_ring.i, align 4
  %next55.i = getelementptr %struct.epic_tx_desc, ptr %62, i32 255, i32 3
  %63 = ptrtoint ptr %next55.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %next55.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4194304) #11, !srcloc !215
  %add.ptr6 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #11, !srcloc !215
  %chip_flags = getelementptr i8, ptr %dev, i32 4716
  %64 = ptrtoint ptr %chip_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chip_flags, align 4
  %and = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %epic_init_ring.exit.if.end13_crit_edge, label %if.then8

epic_init_ring.exit.if.end13_crit_edge:           ; preds = %epic_init_ring.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8:                                         ; preds = %epic_init_ring.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr9 = getelementptr i8, ptr %1, i32 16
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %67 = and i32 %66, -1011351553
  %68 = or i32 %67, 4718592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %68) #11, !srcloc !215
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %epic_init_ring.exit.if.end13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 843382784) #11, !srcloc !215
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 839188480) #11, !srcloc !215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 4294960) #11
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %71 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_addr, align 64
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %72, align 2
  %75 = tail call i16 @llvm.bswap.i16(i16 %74)
  %conv = zext i16 %75 to i32
  %add.ptr21 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %76 = tail call i32 @llvm.bswap.i32(i32 %conv) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %76) #11, !srcloc !215
  %77 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i16, ptr %78, i32 1
  %79 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx.1, align 2
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %conv.1 = zext i16 %81 to i32
  %add.ptr21.1 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %82 = tail call i32 @llvm.bswap.i32(i32 %conv.1) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1, i32 %82) #11, !srcloc !215
  %83 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i16, ptr %84, i32 2
  %85 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.2, align 2
  %87 = tail call i16 @llvm.bswap.i16(i16 %86)
  %conv.2 = zext i16 %87 to i32
  %add.ptr21.2 = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %88 = tail call i32 @llvm.bswap.i32(i32 %conv.2) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2, i32 %88) #11, !srcloc !215
  %tx_threshold = getelementptr i8, ptr %dev, i32 4768
  %89 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 256, ptr %tx_threshold, align 8
  %add.ptr25 = getelementptr i8, ptr %1, i32 220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 65536) #11, !srcloc !215
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %90 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %if_port, align 2
  %92 = and i8 %91, 15
  %and27 = zext i8 %92 to i32
  %arrayidx28 = getelementptr [16 x i16], ptr @media2miictl, i32 0, i32 %and27
  %93 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool29.not = icmp eq i16 %94, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end13
  %mii_phy_cnt = getelementptr i8, ptr %dev, i32 4788
  %95 = ptrtoint ptr %mii_phy_cnt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mii_phy_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool31.not = icmp eq i32 %96, 0
  br i1 %tobool31.not, label %if.then30.if.end40_crit_edge, label %if.then32

if.then30.if.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then32:                                        ; preds = %if.then30
  %phys = getelementptr i8, ptr %dev, i32 4780
  %97 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %phys, align 4
  %conv34 = sext i8 %98 to i32
  %99 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ioaddr1, align 8
  %add.ptr.i206 = getelementptr i8, ptr %100, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  tail call void @arm_heavy_mb() #11
  %101 = tail call i16 @llvm.bswap.i16(i16 %94) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i206, i16 %101) #11, !srcloc !224
  %shl.i = shl nsw i32 %conv34, 9
  %or3.i = or i32 %shl.i, 2
  %add.ptr4.i = getelementptr i8, ptr %100, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %102 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %102) #11, !srcloc !215
  br label %for.body.i208

for.body.i208:                                    ; preds = %for.body.i208.for.body.i208_crit_edge, %if.then32
  %i.013.i = phi i32 [ 10000, %if.then32 ], [ %dec.i, %for.body.i208.for.body.i208_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !225
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %104 = and i32 %103, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp8.i = icmp ne i32 %104, 0
  %dec.i = add nsw i32 %i.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.013.i)
  %cmp.i207 = icmp ugt i32 %i.013.i, 1
  %or.cond.i = select i1 %cmp8.i, i1 %cmp.i207, i1 false
  br i1 %or.cond.i, label %for.body.i208.for.body.i208_crit_edge, label %for.body.i208.if.end40_crit_edge

for.body.i208.if.end40_crit_edge:                 ; preds = %for.body.i208
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

for.body.i208.for.body.i208_crit_edge:            ; preds = %for.body.i208
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i208

if.end40:                                         ; preds = %for.body.i208.if.end40_crit_edge, %if.then30.if.end40_crit_edge
  %105 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp43 = icmp eq i8 %106, 1
  br i1 %cmp43, label %if.then45, label %if.end40.if.end89_crit_edge

if.end40.if.end89_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then45:                                        ; preds = %if.end40
  %107 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp46 = icmp sgt i32 %107, 1
  br i1 %cmp46, label %if.then48, label %if.then45.if.end89_crit_edge

if.then45.if.end89_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %phys49 = getelementptr i8, ptr %dev, i32 4780
  %108 = ptrtoint ptr %phys49 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %phys49, align 4
  %conv51 = sext i8 %109 to i32
  %call52 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv51, i32 noundef 1), !range !222
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call52) #14
  br label %if.end89

if.else:                                          ; preds = %if.end13
  %phys55 = getelementptr i8, ptr %dev, i32 4780
  %110 = ptrtoint ptr %phys55 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %phys55, align 4
  %conv57 = sext i8 %111 to i32
  %112 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ioaddr1, align 8
  %shl.i211 = shl nsw i32 %conv57, 9
  %or3.i212 = or i32 %shl.i211, 81
  %add.ptr.i213 = getelementptr i8, ptr %113, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %114 = tail call i32 @llvm.bswap.i32(i32 %or3.i212) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %114) #11, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %111)
  %cmp7.i = icmp eq i8 %111, 1
  %add.ptr10.i = getelementptr i8, ptr %113, i32 52
  br label %for.body.i214

for.body.i214:                                    ; preds = %for.inc.i.for.body.i214_crit_edge, %if.else
  %i.031.i = phi i32 [ 400, %if.else ], [ %dec.i216, %for.inc.i.for.body.i214_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !221
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %116 = and i32 %115, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp6.i = icmp eq i32 %116, 0
  br i1 %cmp6.i, label %if.then.i, label %for.body.i214.for.inc.i_crit_edge

for.body.i214.for.inc.i_crit_edge:                ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i214
  br i1 %cmp7.i, label %land.lhs.true9.i, label %if.then.i.mdio_read.exit_crit_edge

if.then.i.mdio_read.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mdio_read.exit

land.lhs.true9.i:                                 ; preds = %if.then.i
  %117 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %117)
  %cmp12.i = icmp eq i16 %117, -1
  br i1 %cmp12.i, label %if.then14.i, label %land.lhs.true9.i.mdio_read.exit_crit_edge

land.lhs.true9.i.mdio_read.exit_crit_edge:        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mdio_read.exit

if.then14.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %114) #11, !srcloc !215
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %for.body.i214.for.inc.i_crit_edge
  %dec.i216 = add nsw i32 %i.031.i, -1
  %cmp.i217 = icmp ugt i32 %i.031.i, 1
  br i1 %cmp.i217, label %for.inc.i.for.body.i214_crit_edge, label %for.inc.i.if.end89_crit_edge

for.inc.i.if.end89_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

for.inc.i.for.body.i214_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i214

mdio_read.exit:                                   ; preds = %land.lhs.true9.i.mdio_read.exit_crit_edge, %if.then.i.mdio_read.exit_crit_edge
  %118 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #11, !srcloc !218
  %119 = tail call i16 @llvm.bswap.i16(i16 %118) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  %conv18.i = zext i16 %119 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %118)
  %cmp59.not = icmp eq i16 %118, -1
  br i1 %cmp59.not, label %mdio_read.exit.if.end89_crit_edge, label %if.then61

mdio_read.exit.if.end89_crit_edge:                ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then61:                                        ; preds = %mdio_read.exit
  %and62 = and i32 %conv18.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp ne i32 %and62, 0
  %and64 = and i32 %conv18.i, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and64)
  %cmp65 = icmp eq i32 %and64, 64
  %or.cond = or i1 %tobool63.not, %cmp65
  br i1 %or.cond, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %full_duplex = getelementptr i8, ptr %dev, i32 4812
  %120 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load = load i8, ptr %full_duplex, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %full_duplex, align 4
  br label %if.end76

if.else68:                                        ; preds = %if.then61
  %and69 = and i32 %conv18.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.then71, label %if.else68.if.end76_crit_edge

if.else68.if.end76_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %phys55 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %phys55, align 4
  %conv74 = sext i8 %122 to i32
  tail call void @mdio_write(ptr noundef %dev, i32 noundef %conv74, i32 noundef 0, i32 noundef 4608)
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.else68.if.end76_crit_edge, %if.then67
  %123 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %123)
  %cmp77 = icmp sgt i32 %123, 1
  br i1 %cmp77, label %if.then79, label %if.end76.if.end89_crit_edge

if.end76.if.end89_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  %full_duplex81 = getelementptr i8, ptr %dev, i32 4812
  %124 = ptrtoint ptr %full_duplex81 to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load82 = load i8, ptr %full_duplex81, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load82)
  %tobool83.not = icmp sgt i8 %bf.load82, -1
  %cond = select i1 %tobool83.not, ptr @.str.41, ptr @.str.40
  %125 = ptrtoint ptr %phys55 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %phys55, align 4
  %conv86 = sext i8 %126 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond, i32 noundef %conv86, i32 noundef %conv18.i) #14
  br label %if.end89

if.end89:                                         ; preds = %if.then79, %if.end76.if.end89_crit_edge, %mdio_read.exit.if.end89_crit_edge, %for.inc.i.if.end89_crit_edge, %if.then48, %if.then45.if.end89_crit_edge, %if.end40.if.end89_crit_edge
  %full_duplex91 = getelementptr i8, ptr %dev, i32 4812
  %127 = ptrtoint ptr %full_duplex91 to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load92 = load i8, ptr %full_duplex91, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load92)
  %tobool95.not = icmp sgt i8 %bf.load92, -1
  %cond96 = select i1 %tobool95.not, i32 2030043136, i32 2130706432
  %add.ptr97 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %cond96) #11, !srcloc !215
  %128 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rx_ring_dma.i, align 4
  %add.ptr98 = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %130) #11, !srcloc !215
  %131 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx_ring_dma.i, align 8
  %add.ptr99 = getelementptr i8, ptr %1, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %133) #11, !srcloc !215
  tail call void @set_rx_mode(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 167772160) #11, !srcloc !215
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %134 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %135, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %136 = ptrtoint ptr %chip_flags to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %chip_flags, align 4
  %and102 = and i32 %137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  %or106 = select i1 %tobool103.not, i32 32703, i32 8127
  %add.ptr107 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %138 = tail call i32 @llvm.bswap.i32(i32 %or106) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %138) #11, !srcloc !215
  %139 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %139)
  %cmp108 = icmp sgt i32 %139, 1
  br i1 %cmp108, label %do.body111, label %if.end89.do.body130_crit_edge

if.end89.do.body130_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

do.body111:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_open.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_open, %if.then116)) #11
          to label %do.body130 [label %if.then116], !srcloc !220

if.then116:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #13
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !216
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %142 = ptrtoint ptr %full_duplex91 to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load121 = load i8, ptr %full_duplex91, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load121)
  %tobool124.not = icmp sgt i8 %bf.load121, -1
  %cond125 = select i1 %tobool124.not, ptr @.str.41, ptr @.str.40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_open.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef %1, i32 noundef %5, i32 noundef %141, ptr noundef nonnull %cond125) #11
  br label %do.body130

do.body130:                                       ; preds = %if.then116, %do.body111, %if.end89.do.body130_crit_edge
  %timer = getelementptr i8, ptr %dev, i32 4720
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @epic_timer, i32 noundef 0, ptr noundef nonnull @.str.44, ptr noundef nonnull @epic_open.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %143 = load volatile i32, ptr @jiffies, align 128
  %add133 = add i32 %143, 300
  %expires = getelementptr i8, ptr %dev, i32 4728
  %144 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %add133, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %timer) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body130, %if.then
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epic_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pci_dev = getelementptr i8, ptr %dev, i32 4708
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %napi = getelementptr i8, ptr %dev, i32 4456
  tail call void @napi_disable(ptr noundef %napi) #11
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %do.body2, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_close.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_close, %if.then6)) #11
          to label %if.end10 [label %if.then6], !srcloc !220

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !216
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_close.__UNIQUE_ID_ddebug367, ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %8) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.body2, %entry.if.end10_crit_edge
  %timer = getelementptr i8, ptr %dev, i32 4720
  %call11 = tail call i32 @del_timer_sync(ptr noundef %timer) #11
  %9 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr1, align 8
  %add.ptr.i83 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 0) #11, !srcloc !215
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call12 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %dev) #11
  tail call fastcc void @epic_pause(ptr noundef %dev)
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 4700
  br label %for.body

for.cond28.preheader:                             ; preds = %if.end24
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  br label %for.body30

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %if.end10
  %i.085 = phi i32 [ 0, %if.end10 ], [ %inc, %if.end24.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.epic_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.085
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx16 = getelementptr %struct.epic_rx_desc, ptr %16, i32 %i.085
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx16, align 4
  %18 = load ptr, ptr %add.ptr.i, align 8
  %buflength = getelementptr %struct.epic_rx_desc, ptr %18, i32 %i.085, i32 2
  %19 = ptrtoint ptr %buflength to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %buflength, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %for.body.if.end24_crit_edge, label %if.then20

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %bufaddr = getelementptr %struct.epic_rx_desc, ptr %21, i32 %i.085, i32 1
  %22 = ptrtoint ptr %bufaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bufaddr, align 4
  %24 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev21, i32 noundef %23, i32 noundef %25, i32 noundef 2, i32 noundef 0) #11
  tail call void @consume_skb(ptr noundef nonnull %14) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %for.body.if.end24_crit_edge
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %bufaddr27 = getelementptr %struct.epic_rx_desc, ptr %27, i32 %i.085, i32 1
  %28 = ptrtoint ptr %bufaddr27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1159790384, ptr %bufaddr27, align 4
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.cond28.preheader, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body30:                                       ; preds = %for.inc40.for.body30_crit_edge, %for.cond28.preheader
  %i.187 = phi i32 [ 0, %for.cond28.preheader ], [ %inc41, %for.inc40.for.body30_crit_edge ]
  %arrayidx31 = getelementptr %struct.epic_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.187
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx31, align 4
  store ptr null, ptr %arrayidx31, align 4
  %tobool34.not = icmp eq ptr %30, null
  br i1 %tobool34.not, label %for.body30.for.inc40_crit_edge, label %if.end36

for.body30.for.inc40_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc40

if.end36:                                         ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_ring, align 4
  %bufaddr39 = getelementptr %struct.epic_tx_desc, ptr %32, i32 %i.187, i32 1
  %33 = ptrtoint ptr %bufaddr39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bufaddr39, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 6
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev21, i32 noundef %34, i32 noundef %36, i32 noundef 1, i32 noundef 0) #11
  tail call void @consume_skb(ptr noundef nonnull %30) #11
  br label %for.inc40

for.inc40:                                        ; preds = %if.end36, %for.body30.for.inc40_crit_edge
  %inc41 = add nuw nsw i32 %i.187, 1
  %exitcond89.not = icmp eq i32 %inc41, 256
  br i1 %exitcond89.not, label %for.end42, label %for.inc40.for.body30_crit_edge

for.inc40.for.body30_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body30

for.end42:                                        ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr43 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 134217728) #11, !srcloc !215
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epic_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %3)
  %cmp.i = icmp ugt i32 %3, 59
  br i1 %cmp.i, label %entry.do.body4_crit_edge, label %skb_padto.exit, !prof !213

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

skb_padto.exit:                                   ; preds = %entry
  %sub.i = sub nuw nsw i32 60, %3
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %skb_padto.exit.do.body4_crit_edge, label %skb_padto.exit.cleanup_crit_edge

skb_padto.exit.cleanup_crit_edge:                 ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_padto.exit.do.body4_crit_edge:                ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

do.body4:                                         ; preds = %skb_padto.exit.do.body4_crit_edge, %entry.do.body4_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 4368
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %cur_tx = getelementptr i8, ptr %dev, i32 4680
  %4 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_tx, align 8
  %dirty_tx = getelementptr i8, ptr %dev, i32 4684
  %6 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dirty_tx, align 4
  %sub = sub i32 %5, %7
  %rem = and i32 %5, 255
  %arrayidx = getelementptr %struct.epic_private, ptr %add.ptr.i, i32 0, i32 2, i32 %rem
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %arrayidx, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 4708
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len1.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %12) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %do.body4
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !213

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev10) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev10, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev10, ptr noundef %12, i32 noundef %14) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %12 to i32
  %sub.i101 = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i101, 12
  %add.ptr.i102 = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev10, ptr noundef %add.ptr.i102, i32 noundef %and.i, i32 noundef %14, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i103 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %21 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_ring, align 4
  %bufaddr = getelementptr %struct.epic_tx_desc, ptr %22, i32 %rem, i32 1
  %23 = ptrtoint ptr %bufaddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i103, ptr %bufaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %sub)
  %cmp13 = icmp slt i32 %sub, 120
  br i1 %cmp13, label %dma_map_single_attrs.exit.if.end26_crit_edge, label %if.else

dma_map_single_attrs.exit.if.end26_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %sub)
  %cmp16 = icmp eq i32 %sub, 120
  br i1 %cmp16, label %if.else.if.end26_crit_edge, label %if.else19

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %sub)
  %cmp20 = icmp ult i32 %sub, 239
  br i1 %cmp20, label %if.else19.if.end26_crit_edge, label %if.else23

if.else19.if.end26_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #13
  %tx_full = getelementptr i8, ptr %dev, i32 4828
  %24 = ptrtoint ptr %tx_full to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %tx_full, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %tx_full, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %if.else19.if.end26_crit_edge, %if.else.if.end26_crit_edge, %dma_map_single_attrs.exit.if.end26_crit_edge
  %ctrl_word.0 = phi i32 [ 1310720, %if.else23 ], [ 1048576, %dma_map_single_attrs.exit.if.end26_crit_edge ], [ 1310720, %if.else.if.end26_crit_edge ], [ 1048576, %if.else19.if.end26_crit_edge ]
  %25 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len1.i, align 4
  %or = or i32 %26, %ctrl_word.0
  %27 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_ring, align 4
  %buflength = getelementptr %struct.epic_tx_desc, ptr %28, i32 %rem, i32 2
  %29 = ptrtoint ptr %buflength to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %buflength, align 4
  %30 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %30)
  %cmp31 = icmp ugt i32 %30, 59
  %phi.bo = shl i32 %30, 16
  %phi.bo99 = or i32 %phi.bo, 32768
  %cond = select i1 %cmp31, i32 %phi.bo99, i32 3964928
  %31 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_ring, align 4
  %arrayidx36 = getelementptr %struct.epic_tx_desc, ptr %32, i32 %rem
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %arrayidx36, align 4
  %34 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_tx, align 8
  %inc = add i32 %35, 1
  store i32 %inc, ptr %cur_tx, align 8
  %tx_full38 = getelementptr i8, ptr %dev, i32 4828
  %36 = ptrtoint ptr %tx_full38 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load39 = load i8, ptr %tx_full38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load39)
  %tobool40.not = icmp sgt i8 %bf.load39, -1
  br i1 %tobool40.not, label %if.end26.if.end42_crit_edge, label %if.then41

if.end26.if.end42_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then41:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %37 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %38, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end26.if.end42_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 67108864) #11, !srcloc !215
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp44 = icmp sgt i32 %39, 4
  br i1 %cmp44, label %do.body48, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_start_xmit.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_start_xmit, %if.then54)) #11
          to label %cleanup [label %if.then54], !srcloc !220

if.then54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len1.i, align 4
  %add.ptr56 = getelementptr i8, ptr %1, i32 116
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #11, !srcloc !216
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_start_xmit.__UNIQUE_ID_ddebug360, ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %41, i32 noundef %rem, i32 noundef %ctrl_word.0, i32 noundef %43) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %do.body48, %if.end42.cleanup_crit_edge, %skb_padto.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr nocapture noundef %dev) #2 align 64 {
entry:
  %mc_filter = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #11
  %2 = getelementptr inbounds [8 x i8], ptr %mc_filter, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i8], ptr %mc_filter, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %mc_filter, i32 0, i32 6
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 738197504) #11, !srcloc !215
  %7 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %mc_filter, align 8
  br label %if.end32

if.else:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %and3 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %cmp, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.then12, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %mc_filter, align 8
  %add.ptr7 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 201326592) #11, !srcloc !215
  br label %if.end32

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 67108864) #11, !srcloc !215
  br label %cleanup

if.end32:                                         ; preds = %if.then5, %if.then
  %mc_filter34 = getelementptr i8, ptr %dev, i32 4772
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %mc_filter, ptr noundef dereferenceable(8) %mc_filter34, i32 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool37.not = icmp eq i32 %bcmp, 0
  br i1 %tobool37.not, label %if.end32.cleanup_crit_edge, label %for.body42.preheader

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body42.preheader:                             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mc_filter, align 8
  %add.ptr45 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  tail call void @arm_heavy_mb() #11
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45, i16 %13) #11, !srcloc !224
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %2, align 2
  %add.ptr45.1 = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  tail call void @arm_heavy_mb() #11
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45.1, i16 %16) #11, !srcloc !224
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 4
  %add.ptr45.2 = getelementptr i8, ptr %1, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  tail call void @arm_heavy_mb() #11
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45.2, i16 %19) #11, !srcloc !224
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %4, align 2
  %add.ptr45.3 = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  tail call void @arm_heavy_mb() #11
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45.3, i16 %22) #11, !srcloc !224
  %23 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %mc_filter, align 8
  %25 = ptrtoint ptr %mc_filter34 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %mc_filter34, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body42.preheader, %if.end32.cleanup_crit_edge, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 131072) #11, !srcloc !215
  %add.ptr4 = getelementptr i8, ptr %1, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %5 = and i32 %4, -1011351553
  %6 = or i32 %5, 4718592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %6) #11, !srcloc !215
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 4368
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %mii = getelementptr i8, ptr %dev, i32 4796
  %call7 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i29 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i29)
  %tobool.i30.not = icmp eq i32 %and1.i.i29, 0
  br i1 %tobool.i30.not, label %if.then10, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr11 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 134217728) #11, !srcloc !215
  %add.ptr12 = getelementptr i8, ptr %1, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %10 = and i32 %9, -1011351553
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %10) #11, !srcloc !215
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end.if.end17_crit_edge
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epic_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 116
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #11, !srcloc !218
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  %conv = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %conv) #14
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp sgt i32 %5, 1
  br i1 %cmp3, label %do.body6, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_tx_timeout.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_tx_timeout, %if.then10)) #11
          to label %if.end14 [label %if.then10], !srcloc !220

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %dirty_tx = getelementptr i8, ptr %dev, i32 4684
  %6 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dirty_tx, align 4
  %cur_tx = getelementptr i8, ptr %dev, i32 4680
  %8 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_tx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_tx_timeout.__UNIQUE_ID_ddebug359, ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %7, i32 noundef %9) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %do.body6, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %add.ptr15 = getelementptr i8, ptr %1, i32 116
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr15) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  %11 = and i16 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool18.not = icmp eq i16 %11, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %12 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_fifo_errors, align 8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %tx_fifo_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -2147483648) #11, !srcloc !215
  br label %if.end22

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @epic_restart(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 67108864) #11, !srcloc !215
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 12
  %17 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp.not.i.i = icmp eq i32 %18, %16
  br i1 %cmp.not.i.i, label %if.end22.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end22.netif_trans_update.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %16, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end22.netif_trans_update.exit_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %20 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_errors, align 4
  %inc24 = add i32 %21, 1
  store i32 %inc24, ptr %tx_errors, align 4
  %tx_full = getelementptr i8, ptr %dev, i32 4828
  %22 = ptrtoint ptr %tx_full to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %tx_full, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool25.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool25.not, label %if.then26, label %netif_trans_update.exit.if.end27_crit_edge

netif_trans_update.exit.if.end27_crit_edge:       ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then26:                                        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %24) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %netif_trans_update.exit.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @epic_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  %conv = zext i8 %4 to i32
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %5 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %6, %conv
  store i32 %add, ptr %rx_missed_errors, align 4
  %add.ptr5 = getelementptr i8, ptr %1, i32 36
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  %conv7 = zext i8 %7 to i32
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %8 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_frame_errors, align 4
  %add8 = add i32 %9, %conv7
  store i32 %add8, ptr %rx_frame_errors, align 4
  %add.ptr9 = getelementptr i8, ptr %1, i32 32
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  %conv11 = zext i8 %10 to i32
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %11 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_crc_errors, align 4
  %add12 = add i32 %12, %conv11
  store i32 %add12, ptr %rx_crc_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stats13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epic_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev_instance, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !216
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %and = and i32 %3, 62290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #11, !srcloc !215
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp sgt i32 %5, 4
  br i1 %cmp, label %do.body4, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_interrupt.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_interrupt, %if.then8)) #11
          to label %if.end13 [label %if.then8], !srcloc !220

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !216
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_interrupt.__UNIQUE_ID_ddebug362, ptr noundef %dev_instance, ptr noundef nonnull @.str.46, i32 noundef %3, i32 noundef %7) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %do.body4, %entry.if.end13_crit_edge
  %and14 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %if.end13.out_crit_edge, label %if.end17

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end17:                                         ; preds = %if.end13
  %and18 = and i32 %3, 3245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end26_crit_edge, label %if.then20

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then20:                                        ; preds = %if.end17
  %napi_lock = getelementptr i8, ptr %dev_instance, i32 4412
  tail call void @_raw_spin_lock(ptr noundef %napi_lock) #11
  %napi = getelementptr i8, ptr %dev_instance, i32 4456
  %call21 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #11
  br i1 %call21, label %if.then22, label %if.then20.if.end24_crit_edge

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr1, align 8
  %irq_mask.i = getelementptr i8, ptr %dev_instance, i32 4696
  %10 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_mask.i, align 8
  %and.i = and i32 %11, -3246
  %add.ptr.i126 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %12) #11, !srcloc !215
  tail call void @__napi_schedule(ptr noundef %napi) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then20.if.end24_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %napi_lock) #11
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.end17.if.end26_crit_edge
  %and27 = and i32 %3, -3246
  %and28 = and i32 %3, 29440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.out_crit_edge, label %if.end34

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end34:                                         ; preds = %if.end26
  %add.ptr35 = getelementptr i8, ptr %1, i32 40
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr35) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  %conv = zext i8 %13 to i32
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 15
  %14 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %15, %conv
  store i32 %add, ptr %rx_missed_errors, align 4
  %add.ptr37 = getelementptr i8, ptr %1, i32 36
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  %conv39 = zext i8 %16 to i32
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 13
  %17 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_frame_errors, align 4
  %add40 = add i32 %18, %conv39
  store i32 %add40, ptr %rx_frame_errors, align 4
  %add.ptr41 = getelementptr i8, ptr %1, i32 32
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr41) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  %conv43 = zext i8 %19 to i32
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 12
  %20 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_crc_errors, align 4
  %add44 = add i32 %21, %conv43
  store i32 %add44, ptr %rx_crc_errors, align 4
  %and45 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end34.if.end51_crit_edge, label %if.then47

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then47:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 18
  %22 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_fifo_errors, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %tx_fifo_errors, align 4
  %tx_threshold = getelementptr i8, ptr %dev_instance, i32 4768
  %24 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_threshold, align 8
  %add48 = add i32 %25, 128
  store i32 %add48, ptr %tx_threshold, align 8
  %add.ptr49 = getelementptr i8, ptr %1, i32 220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %add48) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %26) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -2147483648) #11, !srcloc !215
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end34.if.end51_crit_edge
  %and52 = and i32 %3, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end55_crit_edge, label %if.then54

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_instance, ptr noundef nonnull @.str.47, i32 noundef %and27) #14
  tail call fastcc void @epic_pause(ptr noundef %dev_instance)
  tail call fastcc void @epic_restart(ptr noundef %dev_instance)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51.if.end55_crit_edge
  %and56 = and i32 %3, 29456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %27 = tail call i32 @llvm.bswap.i32(i32 %and56) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #11, !srcloc !215
  br label %out

out:                                              ; preds = %if.end55, %if.end26.out_crit_edge, %if.end13.out_crit_edge
  %status.0 = phi i32 [ %3, %if.end13.out_crit_edge ], [ %and27, %if.end55 ], [ %and27, %if.end26.out_crit_edge ]
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp59 = icmp sgt i32 %28, 3
  br i1 %cmp59, label %do.body63, label %out.cleanup83_crit_edge

out.cleanup83_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup83

do.body63:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_interrupt.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_interrupt, %if.then75)) #11
          to label %cleanup83 [label %if.then75], !srcloc !220

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_interrupt.__UNIQUE_ID_ddebug363, ptr noundef %dev_instance, ptr noundef nonnull @.str.48, i32 noundef %status.0) #11
  br label %cleanup83

cleanup83:                                        ; preds = %if.then75, %do.body63, %out.cleanup83_crit_edge
  %not.cmp15 = xor i1 %cmp15, true
  %cond = zext i1 %not.cmp15 to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epic_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 96
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ioaddr2 = getelementptr i8, ptr %t, i32 -16
  %2 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr2, align 8
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp sgt i32 %4, 3
  br i1 %cmp, label %do.body3, label %entry.if.end37_crit_edge

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_timer.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_timer, %if.then7)) #11
          to label %do.body13 [label %if.then7], !srcloc !220

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr8 = getelementptr i8, ptr %3, i32 116
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #11, !srcloc !216
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_timer.__UNIQUE_ID_ddebug357, ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef %6) #11
  br label %do.body13

do.body13:                                        ; preds = %if.then7, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_timer.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_timer, %if.then25)) #11
          to label %if.end37 [label %if.then25], !srcloc !220

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr26 = getelementptr i8, ptr %3, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #11, !srcloc !216
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %add.ptr28 = getelementptr i8, ptr %3, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #11, !srcloc !216
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %add.ptr30 = getelementptr i8, ptr %3, i32 164
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #11, !srcloc !216
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_timer.__UNIQUE_ID_ddebug358, ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %8, i32 noundef %10, i32 noundef %12) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then25, %do.body13, %entry.if.end37_crit_edge
  %ioaddr1.i = getelementptr i8, ptr %1, i32 4704
  %13 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr1.i, align 8
  %mii_phy_cnt.i = getelementptr i8, ptr %1, i32 4788
  %15 = ptrtoint ptr %mii_phy_cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mii_phy_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end37.cond.end.i_crit_edge, label %cond.true.i

if.end37.cond.end.i_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end37
  %phys.i = getelementptr i8, ptr %1, i32 4780
  %17 = ptrtoint ptr %phys.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %phys.i, align 4
  %conv.i = sext i8 %18 to i32
  %shl.i.i = shl nsw i32 %conv.i, 9
  %or3.i.i = or i32 %shl.i.i, 81
  %add.ptr.i61.i = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %19 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %19) #11, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp7.i.i = icmp eq i8 %18, 1
  %add.ptr10.i.i = getelementptr i8, ptr %14, i32 52
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %cond.true.i
  %i.031.i.i = phi i32 [ 400, %cond.true.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !221
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61.i) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp6.i.i = icmp eq i32 %21, 0
  br i1 %cmp6.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  br i1 %cmp7.i.i, label %land.lhs.true9.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true9.i.i:                               ; preds = %if.then.i.i
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i.i) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp12.i.i = icmp eq i16 %22, -1
  br i1 %cmp12.i.i, label %if.then14.i.i, label %land.lhs.true9.i.i.if.end.i.i_crit_edge

land.lhs.true9.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then14.i.i:                                    ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %19) #11, !srcloc !215
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %land.lhs.true9.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i.i) #11, !srcloc !218
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  %conv18.i.i = zext i16 %24 to i32
  br label %cond.end.i

for.inc.i.i:                                      ; preds = %if.then14.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %dec.i.i = add nsw i32 %i.031.i.i, -1
  %cmp.i.i = icmp ugt i32 %i.031.i.i, 1
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.cond.end.i_crit_edge

for.inc.i.i.cond.end.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

cond.end.i:                                       ; preds = %for.inc.i.i.cond.end.i_crit_edge, %if.end.i.i, %if.end37.cond.end.i_crit_edge
  %cond.i = phi i32 [ 0, %if.end37.cond.end.i_crit_edge ], [ %conv18.i.i, %if.end.i.i ], [ 65535, %for.inc.i.i.cond.end.i_crit_edge ]
  %advertising.i = getelementptr i8, ptr %1, i32 4800
  %25 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %advertising.i, align 4
  %and.i = and i32 %26, %cond.i
  %and3.i = and i32 %and.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp ne i32 %and3.i, 0
  %and5.i = and i32 %and.i, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and5.i)
  %cmp.i = icmp eq i32 %and5.i, 64
  %narrow.i = or i1 %tobool4.not.i, %cmp.i
  %force_media.i = getelementptr i8, ptr %1, i32 4812
  %27 = ptrtoint ptr %force_media.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %force_media.i, align 4
  %28 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool8.not.i = icmp ne i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %cond.i)
  %cmp9.i = icmp eq i32 %cond.i, 65535
  %or.cond.i = select i1 %tobool8.not.i, i1 true, i1 %cmp9.i
  %bf.lshr15.i = lshr i8 %bf.load.i, 7
  %29 = zext i1 %narrow.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr15.i, i8 %29)
  %cmp17.not.i = icmp eq i8 %bf.lshr15.i, %29
  %or.cond62.i = select i1 %or.cond.i, i1 true, i1 %cmp17.not.i
  br i1 %or.cond62.i, label %cond.end.i.check_media.exit_crit_edge, label %if.then19.i

cond.end.i.check_media.exit_crit_edge:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_media.exit

if.then19.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.shl.i = select i1 %narrow.i, i8 -128, i8 0
  %bf.clear23.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.shl.i, %bf.clear23.i
  %30 = ptrtoint ptr %force_media.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.set.i, ptr %force_media.i, align 4
  %cond30.i = select i1 %narrow.i, ptr @.str.40, ptr @.str.41
  %phys31.i = getelementptr i8, ptr %1, i32 4780
  %31 = ptrtoint ptr %phys31.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %phys31.i, align 4
  %conv33.i = sext i8 %32 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond30.i, i32 noundef %conv33.i, i32 noundef %cond.i) #14
  %33 = ptrtoint ptr %force_media.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load36.i = load i8, ptr %force_media.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load36.i)
  %tobool39.not.i = icmp sgt i8 %bf.load36.i, -1
  %cond40.i = select i1 %tobool39.not.i, i32 2030043136, i32 2130706432
  %add.ptr.i = getelementptr i8, ptr %14, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond40.i) #11, !srcloc !215
  br label %check_media.exit

check_media.exit:                                 ; preds = %if.then19.i, %cond.end.i.check_media.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %34, 500
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %35 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %t) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @epic_pause(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr2 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr2, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 24832) #11, !srcloc !224
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp.not = icmp eq i16 %4, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr7 = getelementptr i8, ptr %1, i32 40
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  %conv9 = zext i8 %5 to i32
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %6 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %7, %conv9
  store i32 %add, ptr %rx_missed_errors, align 4
  %add.ptr10 = getelementptr i8, ptr %1, i32 36
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  %conv12 = zext i8 %8 to i32
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %9 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_frame_errors, align 4
  %add13 = add i32 %10, %conv12
  store i32 %add13, ptr %rx_frame_errors, align 4
  %add.ptr14 = getelementptr i8, ptr %1, i32 32
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  %conv16 = zext i8 %11 to i32
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %12 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_crc_errors, align 4
  %add17 = add i32 %13, %conv16
  store i32 %add17, ptr %rx_crc_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call18 = tail call fastcc i32 @epic_rx(ptr noundef %dev, i32 noundef 256)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @epic_restart(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 20971520) #11, !srcloc !215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_restart.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_restart, %if.then)) #11
          to label %do.end7 [label %if.then], !srcloc !220

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cur_rx = getelementptr i8, ptr %dev, i32 4688
  %2 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_rx, align 8
  %dirty_rx = getelementptr i8, ptr %dev, i32 4692
  %4 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dirty_rx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 4684
  %6 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dirty_tx, align 4
  %cur_tx = getelementptr i8, ptr %dev, i32 4680
  %8 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_tx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_restart.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #11
  %add.ptr8 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 134217728) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 839188480) #11, !srcloc !215
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %11 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp10 = icmp eq i8 %12, 1
  %cond = select i1 %cmp10, i32 318767104, i32 301989888
  %add.ptr12 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %cond) #11, !srcloc !215
  %chip_flags = getelementptr i8, ptr %dev, i32 4716
  %13 = ptrtoint ptr %chip_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip_flags, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.end7.if.end19_crit_edge, label %if.then14

do.end7.if.end19_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr15 = getelementptr i8, ptr %1, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %16 = and i32 %15, -1011351553
  %17 = or i32 %16, 4718592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %17) #11, !srcloc !215
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %do.end7.if.end19_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv24 = zext i16 %22 to i32
  %add.ptr25 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv24) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %23) #11, !srcloc !215
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i16, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.1, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %conv24.1 = zext i16 %28 to i32
  %add.ptr25.1 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv24.1) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.1, i32 %29) #11, !srcloc !215
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i16, ptr %31, i32 2
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.2, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv24.2 = zext i16 %34 to i32
  %add.ptr25.2 = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv24.2) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.2, i32 %35) #11, !srcloc !215
  %tx_threshold = getelementptr i8, ptr %dev, i32 4768
  %36 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 256, ptr %tx_threshold, align 8
  %add.ptr29 = getelementptr i8, ptr %1, i32 220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 65536) #11, !srcloc !215
  %full_duplex = getelementptr i8, ptr %dev, i32 4812
  %37 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %full_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool30.not = icmp sgt i8 %bf.load, -1
  %cond31 = select i1 %tobool30.not, i32 2030043136, i32 2130706432
  %add.ptr32 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %cond31) #11, !srcloc !215
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 4364
  %38 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_ring_dma, align 4
  %cur_rx33 = getelementptr i8, ptr %dev, i32 4688
  %40 = ptrtoint ptr %cur_rx33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cur_rx33, align 8
  %rem = shl i32 %41, 4
  %mul34 = and i32 %rem, 4080
  %add35 = add i32 %mul34, %39
  %add.ptr36 = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %42 = tail call i32 @llvm.bswap.i32(i32 %add35) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %42) #11, !srcloc !215
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 4360
  %43 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_ring_dma, align 8
  %dirty_tx37 = getelementptr i8, ptr %dev, i32 4684
  %45 = ptrtoint ptr %dirty_tx37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dirty_tx37, align 4
  %rem38 = shl i32 %46, 4
  %mul39 = and i32 %rem38, 4080
  %add40 = add i32 %mul39, %44
  %add.ptr41 = getelementptr i8, ptr %1, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %47 = tail call i32 @llvm.bswap.i32(i32 %add40) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %47) #11, !srcloc !215
  tail call void @set_rx_mode(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 167772160) #11, !srcloc !215
  %48 = ptrtoint ptr %chip_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chip_flags, align 4
  %and44 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %or48 = select i1 %tobool45.not, i32 32703, i32 8127
  %add.ptr49 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %50 = tail call i32 @llvm.bswap.i32(i32 %or48) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %50) #11, !srcloc !215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_restart.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_restart, %if.then63)) #11
          to label %do.end74 [label %if.then63], !srcloc !220

if.then63:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !216
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !216
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %add.ptr68 = getelementptr i8, ptr %1, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #11, !srcloc !216
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_restart.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %52, i32 noundef %54, i32 noundef %56) #11
  br label %do.end74

do.end74:                                         ; preds = %if.then63, %if.end19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @epic_rx(ptr noundef %dev, i32 noundef %budget) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_rx = getelementptr i8, ptr %dev, i32 4688
  %0 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_rx, align 8
  %rem = and i32 %1, 255
  %dirty_rx = getelementptr i8, ptr %dev, i32 4692
  %2 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_rx, align 4
  %add = sub i32 256, %1
  %sub = add i32 %add, %3
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp sgt i32 %4, 4
  br i1 %cmp, label %do.body3, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_rx.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_rx, %if.then7)) #11
          to label %if.end10 [label %if.then7], !srcloc !220

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx = getelementptr %struct.epic_rx_desc, ptr %6, i32 %rem
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_rx.__UNIQUE_ID_ddebug364, ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %rem, i32 noundef %8) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.body3, %entry.if.end10_crit_edge
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx15289 = getelementptr %struct.epic_rx_desc, ptr %10, i32 %rem
  %11 = ptrtoint ptr %arrayidx15289 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15289, align 4
  %and290 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290)
  %cmp17291 = icmp eq i32 %and290, 0
  br i1 %cmp17291, label %while.body.lr.ph, label %if.end10.while.end_crit_edge

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end10
  %13 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %budget)
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %pci_dev = getelementptr i8, ptr %dev, i32 4708
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 4700
  %stats127 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %14 = phi i32 [ %12, %while.body.lr.ph ], [ %68, %cleanup.while.body_crit_edge ]
  %entry1.0294 = phi i32 [ %rem, %while.body.lr.ph ], [ %rem136, %cleanup.while.body_crit_edge ]
  %rx_work_limit.1293 = phi i32 [ %13, %while.body.lr.ph ], [ %dec, %cleanup.while.body_crit_edge ]
  %work_done.0292 = phi i32 [ 0, %while.body.lr.ph ], [ %inc133, %cleanup.while.body_crit_edge ]
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp21 = icmp sgt i32 %15, 4
  br i1 %cmp21, label %do.body24, label %while.body.if.end42_crit_edge

while.body.if.end42_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.body24:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_rx.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_rx, %if.then36)) #11
          to label %if.end42 [label %if.then36], !srcloc !220

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_rx.__UNIQUE_ID_ddebug365, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %14) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %do.body24, %while.body.if.end42_crit_edge
  %dec = add i32 %rx_work_limit.1293, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp43 = icmp slt i32 %dec, 0
  br i1 %cmp43, label %if.end42.while.end_crit_edge, label %if.end45

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end45:                                         ; preds = %if.end42
  %and46 = and i32 %14, 8198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else81, label %if.then48

if.then48:                                        ; preds = %if.end45
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp49 = icmp sgt i32 %16, 2
  br i1 %cmp49, label %do.body52, label %if.then48.if.end70_crit_edge

if.then48.if.end70_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

do.body52:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epic_rx.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@epic_rx, %if.then64)) #11
          to label %if.end70 [label %if.then64], !srcloc !220

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @epic_rx.__UNIQUE_ID_ddebug366, ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %14) #11
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %do.body52, %if.then48.if.end70_crit_edge
  %and71 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.else, label %if.then73

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %14) #14
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end70
  %and74 = and i32 %14, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else81:                                        ; preds = %if.end45
  %17 = lshr i32 %14, 16
  %18 = trunc i32 %17 to i16
  %conv = add i16 %18, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1532, i16 %conv)
  %cmp84 = icmp sgt i16 %conv, 1532
  br i1 %cmp84, label %if.then86, label %if.else81.if.end88_crit_edge

if.else81.if.end88_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then86:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #13
  %conv83288 = zext i16 %conv to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %14, i32 noundef %conv83288) #14
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.else81.if.end88_crit_edge
  %pkt_len.0 = phi i16 [ 1514, %if.then86 ], [ %conv, %if.else81.if.end88_crit_edge ]
  %conv89 = sext i16 %pkt_len.0 to i32
  %19 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv89)
  %cmp90 = icmp sgt i32 %19, %conv89
  br i1 %cmp90, label %land.lhs.true, label %if.end88.if.else111_crit_edge

if.end88.if.else111_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else111

land.lhs.true:                                    ; preds = %if.end88
  %add93 = add nsw i32 %conv89, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add93, i32 noundef 2592) #11
  %cmp95.not = icmp eq ptr %call.i, null
  br i1 %cmp95.not, label %land.lhs.true.if.else111_crit_edge, label %if.then97

land.lhs.true.if.else111_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else111

if.then97:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i268 = getelementptr i8, ptr %21, i32 2
  store ptr %add.ptr.i268, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %23, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %24 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev, align 4
  %dev98 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %bufaddr = getelementptr %struct.epic_rx_desc, ptr %27, i32 %entry1.0294, i32 1
  %28 = ptrtoint ptr %bufaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bufaddr, align 4
  %30 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev98, i32 noundef %29, i32 noundef %31, i32 noundef 2) #11
  %arrayidx101 = getelementptr %struct.epic_private, ptr %add.ptr.i, i32 0, i32 3, i32 %entry1.0294
  %32 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx101, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 19
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %38 = call ptr @memcpy(ptr %37, ptr %35, i32 %conv89)
  %call104 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv89) #11
  %39 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci_dev, align 4
  %dev106 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %bufaddr109 = getelementptr %struct.epic_rx_desc, ptr %42, i32 %entry1.0294, i32 1
  %43 = ptrtoint ptr %bufaddr109 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bufaddr109, align 4
  %45 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev106, i32 noundef %44, i32 noundef %46, i32 noundef 2) #11
  br label %if.end124

if.else111:                                       ; preds = %land.lhs.true.if.else111_crit_edge, %if.end88.if.else111_crit_edge
  %47 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci_dev, align 4
  %dev113 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 8
  %bufaddr116 = getelementptr %struct.epic_rx_desc, ptr %50, i32 %entry1.0294, i32 1
  %51 = ptrtoint ptr %bufaddr116 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bufaddr116, align 4
  %53 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev113, i32 noundef %52, i32 noundef %54, i32 noundef 2, i32 noundef 0) #11
  %arrayidx119 = getelementptr %struct.epic_private, ptr %add.ptr.i, i32 0, i32 3, i32 %entry1.0294
  %55 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx119, align 4
  %call121 = tail call ptr @skb_put(ptr noundef %56, i32 noundef %conv89) #11
  %57 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx119, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.else111, %if.then97
  %skb.0 = phi ptr [ %call.i, %if.then97 ], [ %56, %if.else111 ]
  %call125 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0, ptr noundef %dev) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %58 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %call125, ptr %protocol, align 8
  %call126 = tail call i32 @netif_receive_skb(ptr noundef %skb.0) #11
  %59 = ptrtoint ptr %stats127 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stats127, align 8
  %inc128 = add i32 %60, 1
  store i32 %inc128, ptr %stats127, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end124, %if.else.cleanup.sink.split_crit_edge, %if.then73
  %rx_bytes.sink301 = phi ptr [ %rx_bytes, %if.end124 ], [ %rx_length_errors, %if.then73 ], [ %rx_errors, %if.else.cleanup.sink.split_crit_edge ]
  %conv89.sink = phi i32 [ %conv89, %if.end124 ], [ 1, %if.then73 ], [ 1, %if.else.cleanup.sink.split_crit_edge ]
  %61 = ptrtoint ptr %rx_bytes.sink301 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_bytes.sink301, align 8
  %add131 = add i32 %62, %conv89.sink
  store i32 %add131, ptr %rx_bytes.sink301, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %inc133 = add nuw i32 %work_done.0292, 1
  %63 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cur_rx, align 8
  %inc135 = add i32 %64, 1
  store i32 %inc135, ptr %cur_rx, align 8
  %rem136 = and i32 %inc135, 255
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx15 = getelementptr %struct.epic_rx_desc, ptr %66, i32 %rem136
  %67 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx15, align 4
  %and = and i32 %68, 32768
  %cmp17 = icmp eq i32 %and, 0
  br i1 %cmp17, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end42.while.end_crit_edge, %if.end10.while.end_crit_edge
  %work_done.0.lcssa = phi i32 [ 0, %if.end10.while.end_crit_edge ], [ %work_done.0292, %if.end42.while.end_crit_edge ], [ %inc133, %cleanup.while.end_crit_edge ]
  %rx_buf_sz150 = getelementptr i8, ptr %dev, i32 4700
  %69 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur_rx, align 8
  %71 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dirty_rx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp140.not297 = icmp eq i32 %70, %72
  br i1 %cmp140.not297, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %pci_dev159 = getelementptr i8, ptr %dev, i32 4708
  br label %for.body

for.body:                                         ; preds = %if.end171.for.body_crit_edge, %for.body.lr.ph
  %73 = phi i32 [ %72, %for.body.lr.ph ], [ %inc176, %if.end171.for.body_crit_edge ]
  %work_done.3298 = phi i32 [ %work_done.0.lcssa, %for.body.lr.ph ], [ %work_done.5, %if.end171.for.body_crit_edge ]
  %rem143 = and i32 %73, 255
  %arrayidx145 = getelementptr %struct.epic_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem143
  %74 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx145, align 4
  %cmp146 = icmp eq ptr %75, null
  br i1 %cmp146, label %if.then148, label %for.body.if.end171_crit_edge

for.body.if.end171_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.then148:                                       ; preds = %for.body
  %76 = ptrtoint ptr %rx_buf_sz150 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx_buf_sz150, align 4
  %add151 = add i32 %77, 2
  %call.i270 = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add151, i32 noundef 2592) #11
  %78 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i270, ptr %arrayidx145, align 4
  %cmp155 = icmp eq ptr %call.i270, null
  br i1 %cmp155, label %if.then148.for.end_crit_edge, label %if.end158

if.then148.for.end_crit_edge:                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end158:                                        ; preds = %if.then148
  %data.i271 = getelementptr inbounds %struct.sk_buff, ptr %call.i270, i32 0, i32 19
  %79 = ptrtoint ptr %data.i271 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i271, align 4
  %add.ptr.i272 = getelementptr i8, ptr %80, i32 2
  store ptr %add.ptr.i272, ptr %data.i271, align 4
  %tail.i273 = getelementptr inbounds %struct.sk_buff, ptr %call.i270, i32 0, i32 16
  %81 = ptrtoint ptr %tail.i273 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tail.i273, align 8
  %add.ptr1.i274 = getelementptr i8, ptr %82, i32 2
  store ptr %add.ptr1.i274, ptr %tail.i273, align 8
  %83 = ptrtoint ptr %pci_dev159 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pci_dev159, align 4
  %dev160 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %85 = ptrtoint ptr %rx_buf_sz150 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_buf_sz150, align 4
  %call.i275 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i272) #11
  br i1 %call.i275, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end158
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup168.thread_crit_edge, label %if.then.i, !prof !213

land.rhs.i.cleanup168.thread_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup168.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev160) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44, i32 3
  %87 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %88, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %dev160 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev160, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %90, %if.end.i.i ], [ %88, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %cleanup168.thread

if.end39.i:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev160, ptr noundef %add.ptr.i272, i32 noundef %86) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %91 = load ptr, ptr @mem_map, align 4
  %92 = ptrtoint ptr %add.ptr.i272 to i32
  %sub.i = add i32 %92, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i276 = getelementptr %struct.page, ptr %91, i32 %shr.i
  %and.i = and i32 %92, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev160, ptr noundef %add.ptr.i276, i32 noundef %and.i, i32 noundef %86, i32 noundef 2, i32 noundef 0) #11
  br label %cleanup168.thread

cleanup168.thread:                                ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.cleanup168.thread_crit_edge
  %retval.0.i277 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.cleanup168.thread_crit_edge ]
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i, align 8
  %bufaddr166 = getelementptr %struct.epic_rx_desc, ptr %94, i32 %rem143, i32 1
  %95 = ptrtoint ptr %bufaddr166 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %retval.0.i277, ptr %bufaddr166, align 4
  %inc167 = add i32 %work_done.3298, 1
  br label %if.end171

if.end171:                                        ; preds = %cleanup168.thread, %for.body.if.end171_crit_edge
  %work_done.5 = phi i32 [ %work_done.3298, %for.body.if.end171_crit_edge ], [ %inc167, %cleanup168.thread ]
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx173 = getelementptr %struct.epic_rx_desc, ptr %97, i32 %rem143
  %98 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 32768, ptr %arrayidx173, align 4
  %99 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dirty_rx, align 4
  %inc176 = add i32 %100, 1
  store i32 %inc176, ptr %dirty_rx, align 4
  %101 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cur_rx, align 8
  %cmp140.not = icmp eq i32 %102, %inc176
  br i1 %cmp140.not, label %if.end171.for.end_crit_edge, label %if.end171.for.body_crit_edge

if.end171.for.body_crit_edge:                     ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end171.for.end_crit_edge:                      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end171.for.end_crit_edge, %if.then148.for.end_crit_edge, %while.end.for.end_crit_edge
  %work_done.3.lcssa = phi i32 [ %work_done.0.lcssa, %while.end.for.end_crit_edge ], [ %work_done.3298, %if.then148.for.end_crit_edge ], [ %work_done.5, %if.end171.for.end_crit_edge ]
  ret i32 %work_done.3.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #11
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.72, i32 noundef 32) #11
  %pci_dev = getelementptr i8, ptr %dev, i32 4708
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netdev_get_msglevel(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @netdev_set_msglevel(ptr nocapture noundef readnone %dev, i32 noundef %value) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %value, ptr @debug, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 4796
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 4796
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethtool_begin(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %ethtool_ops_nesting = getelementptr i8, ptr %dev, i32 4792
  %2 = ptrtoint ptr %ethtool_ops_nesting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ethtool_ops_nesting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %inc = add nuw i32 %3, 1
  %4 = ptrtoint ptr %ethtool_ops_nesting to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc, ptr %ethtool_ops_nesting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 131072) #11, !srcloc !215
  %add.ptr5 = getelementptr i8, ptr %1, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %8 = and i32 %7, -1011351553
  %9 = or i32 %8, 4718592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #11, !srcloc !215
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ethtool_complete(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4704
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %ethtool_ops_nesting = getelementptr i8, ptr %dev, i32 4792
  %2 = ptrtoint ptr %ethtool_ops_nesting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ethtool_ops_nesting, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %ethtool_ops_nesting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #11, !srcloc !215
  %add.ptr3 = getelementptr i8, ptr %1, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  %7 = and i32 %6, -1011351553
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %7) #11, !srcloc !215
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 4368
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %mii = getelementptr i8, ptr %dev, i32 4796
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 4368
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %mii = getelementptr i8, ptr %dev, i32 4796
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epic_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr2 = getelementptr i8, ptr %1, i32 4704
  %2 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr2, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @epic_pause(ptr noundef %1)
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #11, !srcloc !215
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epic_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @epic_restart(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !140, !141, !143, !144, !145, !147, !148, !150, !151, !153, !155, !157, !158, !159, !161, !162, !163, !165, !166, !168, !170, !171, !172, !174, !175, !177, !179, !180, !181, !183, !184, !185, !187, !189, !190, !191, !193, !195, !197, !199, !200, !201}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 98, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 99, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 100, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 102, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype345, !8, !"__UNIQUE_ID_debugtype345", i1 false, i1 false}
!10 = !{ptr @__param_rx_copybreak, !11, !"__param_rx_copybreak", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 103, i32 1}
!12 = !{ptr @__UNIQUE_ID_rx_copybreaktype346, !11, !"__UNIQUE_ID_rx_copybreaktype346", i1 false, i1 false}
!13 = !{ptr @__param_options, !14, !"__param_options", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 104, i32 1}
!15 = !{ptr @__UNIQUE_ID_optionstype347, !14, !"__UNIQUE_ID_optionstype347", i1 false, i1 false}
!16 = !{ptr @__param_full_duplex, !17, !"__param_full_duplex", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 105, i32 1}
!18 = !{ptr @__UNIQUE_ID_full_duplextype348, !17, !"__UNIQUE_ID_full_duplextype348", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_debug349, !20, !"__UNIQUE_ID_debug349", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 106, i32 1}
!21 = !{ptr @__UNIQUE_ID_options350, !22, !"__UNIQUE_ID_options350", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 107, i32 1}
!23 = !{ptr @__UNIQUE_ID_rx_copybreak351, !24, !"__UNIQUE_ID_rx_copybreak351", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 108, i32 1}
!25 = !{ptr @__UNIQUE_ID_full_duplex352, !26, !"__UNIQUE_ID_full_duplex352", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 109, i32 1}
!27 = !{ptr @__initcall__kmod_epic100__368_1585_epic_init6, !28, !"__initcall__kmod_epic100__368_1585_epic_init6", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1585, i32 1}
!29 = !{ptr @__exitcall_epic_cleanup, !30, !"__exitcall_epic_cleanup", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1586, i32 1}
!31 = !{ptr @rx_copybreak, !32, !"rx_copybreak", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 44, i32 12}
!33 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!34 = !{ptr @debug, !35, !"debug", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 35, i32 12}
!36 = !{ptr @__param_str_rx_copybreak, !11, !"__param_str_rx_copybreak", i1 false, i1 false}
!37 = !{ptr @__param_str_options, !14, !"__param_str_options", i1 false, i1 false}
!38 = !{ptr @__param_arr_options, !14, !"__param_arr_options", i1 false, i1 false}
!39 = !{ptr @options, !40, !"options", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 39, i32 12}
!41 = !{ptr @__param_str_full_duplex, !17, !"__param_str_full_duplex", i1 false, i1 false}
!42 = !{ptr @__param_arr_full_duplex, !17, !"__param_arr_full_duplex", i1 false, i1 false}
!43 = !{ptr @full_duplex, !44, !"full_duplex", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 40, i32 12}
!45 = !{ptr @.str, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1560, i32 11}
!47 = !{ptr @epic_driver, !48, !"epic_driver", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1559, i32 26}
!49 = !{ptr @epic_pci_tbl, !50, !"epic_pci_tbl", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 176, i32 35}
!51 = !{ptr @epic_init_one.card_idx, !52, !"card_idx", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 322, i32 13}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 334, i32 2}
!55 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @epic_init_one._entry, !54, !"_entry", i1 false, i1 false}
!59 = !{ptr @epic_init_one._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.5, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 344, i32 3}
!62 = !{ptr @.str.6, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.7, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @epic_init_one._entry.4, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @epic_init_one._entry_ptr.8, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.10, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 365, i32 3}
!68 = !{ptr @epic_init_one._entry.9, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @epic_init_one._entry_ptr.11, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @epic_init_one.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 402, i32 2}
!72 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @epic_init_one.__key.13, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 403, i32 2}
!75 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 424, i32 3}
!78 = !{ptr @epic_init_one.__UNIQUE_ID_ddebug353, !77, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!79 = !{ptr @.str.17, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 426, i32 4}
!81 = !{ptr @epic_init_one._entry.16, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @epic_init_one._entry_ptr.18, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 446, i32 5}
!87 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @epic_init_one._entry.21, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @epic_init_one._entry_ptr.24, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 456, i32 4}
!92 = !{ptr @epic_init_one._entry.25, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @epic_init_one._entry_ptr.27, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 461, i32 4}
!96 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @epic_init_one._entry.28, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @epic_init_one._entry_ptr.31, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 477, i32 3}
!101 = !{ptr @epic_init_one._entry.32, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @epic_init_one._entry_ptr.34, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 491, i32 19}
!105 = !{ptr @version, !106, !"version", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 93, i32 13}
!107 = !{ptr @version2, !108, !"version2", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 95, i32 13}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 170, i32 4}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 172, i32 4}
!113 = !{ptr @pci_id_tbl, !114, !"pci_id_tbl", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 169, i32 36}
!115 = !{ptr @epic_netdev_ops, !116, !"epic_netdev_ops", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 308, i32 36}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 706, i32 22}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 717, i32 22}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 718, i32 32}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 719, i32 11}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 740, i32 3}
!127 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @epic_open.__UNIQUE_ID_ddebug354, !126, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!129 = !{ptr @epic_open.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 747, i32 2}
!131 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1085, i32 3}
!134 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @epic_interrupt.__UNIQUE_ID_ddebug362, !133, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1123, i32 20}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1134, i32 3}
!140 = !{ptr @epic_interrupt.__UNIQUE_ID_ddebug363, !139, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!141 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1149, i32 3}
!143 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @epic_rx.__UNIQUE_ID_ddebug364, !142, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1160, i32 4}
!147 = !{ptr @epic_rx.__UNIQUE_ID_ddebug365, !146, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1166, i32 5}
!150 = !{ptr @epic_rx.__UNIQUE_ID_ddebug366, !149, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!151 = !{ptr @.str.53, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1169, i32 22}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1182, i32 21}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!157 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.57, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 789, i32 2}
!161 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @epic_restart.__UNIQUE_ID_ddebug355, !160, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!163 = !{ptr @.str.59, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 826, i32 2}
!165 = !{ptr @epic_restart.__UNIQUE_ID_ddebug356, !164, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!166 = !{ptr @media2miictl, !167, !"media2miictl", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 222, i32 18}
!168 = !{ptr @.str.61, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 859, i32 3}
!170 = !{ptr @.str.62, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @epic_timer.__UNIQUE_ID_ddebug357, !169, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!172 = !{ptr @.str.63, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 861, i32 3}
!174 = !{ptr @epic_timer.__UNIQUE_ID_ddebug358, !173, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!175 = !{ptr @.str.64, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 844, i32 20}
!177 = !{ptr @.str.65, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1292, i32 3}
!179 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @epic_close.__UNIQUE_ID_ddebug367, !178, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!181 = !{ptr @.str.67, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 994, i32 3}
!183 = !{ptr @.str.68, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @epic_start_xmit.__UNIQUE_ID_ddebug360, !182, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!185 = !{ptr @.str.69, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 877, i32 20}
!187 = !{ptr @.str.70, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 880, i32 4}
!189 = !{ptr @.str.71, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @epic_tx_timeout.__UNIQUE_ID_ddebug359, !188, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!191 = !{ptr @netdev_ethtool_ops, !192, !"netdev_ethtool_ops", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1474, i32 33}
!193 = !{ptr @.str.72, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1396, i32 25}
!195 = !{ptr @.str.73, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1057, i32 20}
!197 = !{ptr @.str.74, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1008, i32 3}
!199 = !{ptr @.str.75, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @epic_tx_error.__UNIQUE_ID_ddebug361, !198, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!201 = !{ptr @epic_pm_ops, !202, !"epic_pm_ops", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/smsc/epic100.c", i32 1557, i32 8}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"auto-init"}
!213 = !{!"branch_weights", i32 2000, i32 1}
!214 = !{i64 2152220638}
!215 = !{i64 4678516}
!216 = !{i64 4678934}
!217 = !{i64 2152219283}
!218 = !{i64 4678096}
!219 = !{i64 2152218671}
!220 = !{i64 2148996444, i64 2148996449, i64 2148996462, i64 2148996506, i64 2148996540, i64 2148996561}
!221 = !{i64 2156577666}
!222 = !{i32 0, i32 65536}
!223 = !{i64 2152220088}
!224 = !{i64 4677896}
!225 = !{i64 2156578027}
!226 = !{!"branch_weights", i32 1, i32 2000}
!227 = !{i64 4678714}
!228 = !{i64 2152218059}
