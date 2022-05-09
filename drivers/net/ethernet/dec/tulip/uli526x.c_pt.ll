; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/uli526x.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/uli526x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.uli526x_board_info = type { %struct.uli_phy_ops, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i8 }
%struct.uli_phy_ops = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rx_desc = type { i32, i32, i32, i32, ptr, ptr, [8 x i8] }
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
%struct.tx_desc = type { i32, i32, i32, i32, ptr, ptr, [8 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_author341 = internal constant [47 x i8] c"uli526x.author=Peer Chen, peer.chen@uli.com.tw\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [57 x i8] c"uli526x.description=ULi M5261/M5263 fast ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [52 x i8] c"uli526x.file=drivers/net/ethernet/dec/tulip/uli526x\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [20 x i8] c"uli526x.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"uli526x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype345 = internal constant [27 x i8] c"uli526x.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_mode = internal constant [13 x i8] c"uli526x.mode\00", align 1
@mode = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @mode } }, section "__param", align 4
@__UNIQUE_ID_modetype346 = internal constant [26 x i8] c"uli526x.parmtype=mode:int\00", section ".modinfo", align 1
@__param_str_cr6set = internal constant [15 x i8] c"uli526x.cr6set\00", align 1
@cr6set = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cr6set = internal constant %struct.kernel_param { ptr @__param_str_cr6set, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @cr6set } }, section "__param", align 4
@__UNIQUE_ID_cr6settype347 = internal constant [28 x i8] c"uli526x.parmtype=cr6set:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug348 = internal constant [58 x i8] c"uli526x.parm=debug:ULi M5261/M5263 enable debugging (0-1)\00", section ".modinfo", align 1
@__UNIQUE_ID_mode349 = internal constant [84 x i8] c"uli526x.parm=mode:ULi M5261/M5263: Bit 0: 10/100Mbps, bit 2: duplex, bit 8: HomePNA\00", section ".modinfo", align 1
@uli526x_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@uli526x_cleanup_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013uli526x: %s %lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uli526x_cleanup_module\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/dec/tulip/uli526x.c\00", [55 x i8] zeroinitializer }, align 32
@uli526x_cleanup_module._entry_ptr = internal global ptr @uli526x_cleanup_module._entry, section ".printk_index", align 4
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uli526x_cleanup_module() \00", [38 x i8] zeroinitializer }, align 32
@uli526x_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.4, ptr @uli526x_pci_tbl, ptr @uli526x_init_one, ptr @uli526x_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uli526x_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_uli526x__350_1800_uli526x_init_module6 = internal global ptr @uli526x_init_module, section ".initcall6.init", align 4
@__exitcall_uli526x_cleanup_module = internal global ptr @uli526x_cleanup_module, section ".exitcall.exit", align 4
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uli526x\00", [24 x i8] zeroinitializer }, align 32
@uli526x_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4281, i32 21089, i32 -1, i32 -1, i32 0, i32 0, i32 1382092985, i32 0 }, %struct.pci_device_id { i32 4281, i32 21091, i32 -1, i32 -1, i32 0, i32 0, i32 1382224057, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@uli526x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @uli526x_suspend, ptr @uli526x_resume, ptr @uli526x_suspend, ptr @uli526x_resume, ptr @uli526x_suspend, ptr @uli526x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@uli526x_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uli526x_init_one\00", [47 x i8] zeroinitializer }, align 32
@uli526x_init_one._entry_ptr = internal global ptr @uli526x_init_one._entry, section ".printk_index", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uli526x_init_one()\00", [45 x i8] zeroinitializer }, align 32
@uli526x_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014uli526x: 32-bit PCI DMA not available\0A\00", [55 x i8] zeroinitializer }, align 32
@uli526x_init_one._entry_ptr.9 = internal global ptr @uli526x_init_one._entry.7, section ".printk_index", align 4
@uli526x_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013uli526x: I/O base is zero\0A\00", [35 x i8] zeroinitializer }, align 32
@uli526x_init_one._entry_ptr.12 = internal global ptr @uli526x_init_one._entry.10, section ".printk_index", align 4
@uli526x_init_one._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013uli526x: Allocated I/O size too small\0A\00", [55 x i8] zeroinitializer }, align 32
@uli526x_init_one._entry_ptr.15 = internal global ptr @uli526x_init_one._entry.13, section ".printk_index", align 4
@uli526x_init_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013uli526x: Failed to request PCI regions\0A\00", [54 x i8] zeroinitializer }, align 32
@uli526x_init_one._entry_ptr.18 = internal global ptr @uli526x_init_one._entry.16, section ".printk_index", align 4
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @uli526x_open, ptr @uli526x_stop, ptr @uli526x_start_xmit, ptr null, ptr null, ptr null, ptr @uli526x_set_filter_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uli526x_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr null, ptr null, ptr @uli526x_get_wol, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@uli526x_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&db->lock\00", [22 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ULi M%04lx at pci%s, %pM, irq %d\0A\00", [62 x i8] zeroinitializer }, align 32
@uli526x_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uli526x_open\00", [19 x i8] zeroinitializer }, align 32
@uli526x_open._entry_ptr = internal global ptr @uli526x_open._entry, section ".printk_index", align 4
@uli526x_cr6_user_set = internal global { i32, [28 x i8] } zeroinitializer, align 32
@uli526x_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&db->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@uli526x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uli526x_init\00", [19 x i8] zeroinitializer }, align 32
@uli526x_init._entry_ptr = internal global ptr @uli526x_init._entry, section ".printk_index", align 4
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uli526x_init()\00", [17 x i8] zeroinitializer }, align 32
@uli526x_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014uli526x: Can not find the phy address!!!\0A\00", [52 x i8] zeroinitializer }, align 32
@uli526x_init._entry_ptr.27 = internal global ptr @uli526x_init._entry.25, section ".printk_index", align 4
@uli526x_media_mode = internal global { i8, [31 x i8] } { i8 8, [31 x i8] zeroinitializer }, align 32
@uli526x_descriptor_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.28, ptr @.str.2, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uli526x_descriptor_init\00", [40 x i8] zeroinitializer }, align 32
@uli526x_descriptor_init._entry_ptr = internal global ptr @uli526x_descriptor_init._entry, section ".printk_index", align 4
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uli526x_descriptor_init()\00", [38 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@send_filter_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.32, ptr @.str.2, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"send_filter_frame\00", [46 x i8] zeroinitializer }, align 32
@send_filter_frame._entry_ptr = internal global ptr @send_filter_frame._entry, section ".printk_index", align 4
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send_filter_frame()\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No Tx resource - Send_filter_frame!\0A\00", [59 x i8] zeroinitializer }, align 32
@uli526x_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.35, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uli526x_interrupt\00", [46 x i8] zeroinitializer }, align 32
@uli526x_interrupt._entry_ptr = internal global ptr @uli526x_interrupt._entry, section ".printk_index", align 4
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"System bus error happen. CR5=\00", [34 x i8] zeroinitializer }, align 32
@uli526x_rx_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uli526x_rx_packet\00", [46 x i8] zeroinitializer }, align 32
@uli526x_rx_packet._entry_ptr = internal global ptr @uli526x_rx_packet._entry, section ".printk_index", align 4
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reuse SK buffer, rdes0\00", [41 x i8] zeroinitializer }, align 32
@uli526x_rx_packet._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uli526x_rx_packet._entry_ptr.40 = internal global ptr @uli526x_rx_packet._entry.39, section ".printk_index", align 4
@uli526x_reuse_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.41, ptr @.str.2, i32 1253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uli526x_reuse_skb\00", [46 x i8] zeroinitializer }, align 32
@uli526x_reuse_skb._entry_ptr = internal global ptr @uli526x_reuse_skb._entry, section ".printk_index", align 4
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SK Buffer reuse method error\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" Tx timeout - resetting\0A\00", [39 x i8] zeroinitializer }, align 32
@uli526x_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.44, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uli526x_timer\00", [18 x i8] zeroinitializer }, align 32
@uli526x_timer._entry_ptr = internal global ptr @uli526x_timer._entry, section ".printk_index", align 4
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dynamic Reset device\00", [43 x i8] zeroinitializer }, align 32
@uli526x_timer._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.44, ptr @.str.2, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uli526x_timer._entry_ptr.47 = internal global ptr @uli526x_timer._entry.46, section ".printk_index", align 4
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Link Failed\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NIC Link is Down\0A\00", [46 x i8] zeroinitializer }, align 32
@uli526x_timer._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.44, ptr @.str.2, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uli526x_timer._entry_ptr.51 = internal global ptr @uli526x_timer._entry.50, section ".printk_index", align 4
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Link link OK\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NIC Link is Up %d Mbps %s duplex\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@uli526x_dynamic_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.56, ptr @.str.2, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uli526x_dynamic_reset\00", [42 x i8] zeroinitializer }, align 32
@uli526x_dynamic_reset._entry_ptr = internal global ptr @uli526x_dynamic_reset._entry, section ".printk_index", align 4
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uli526x_dynamic_reset()\00", [40 x i8] zeroinitializer }, align 32
@uli526x_free_rxbuffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.58, ptr @.str.2, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uli526x_free_rxbuffer\00", [42 x i8] zeroinitializer }, align 32
@uli526x_free_rxbuffer._entry_ptr = internal global ptr @uli526x_free_rxbuffer._entry, section ".printk_index", align 4
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uli526x_free_rxbuffer()\00", [40 x i8] zeroinitializer }, align 32
@uli526x_sense_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.60, ptr @.str.2, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uli526x_sense_speed\00", [44 x i8] zeroinitializer }, align 32
@uli526x_sense_speed._entry_ptr = internal global ptr @uli526x_sense_speed._entry, section ".printk_index", align 4
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link Failed :\00", [18 x i8] zeroinitializer }, align 32
@uli526x_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.62, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uli526x_start_xmit\00", [45 x i8] zeroinitializer }, align 32
@uli526x_start_xmit._entry_ptr = internal global ptr @uli526x_start_xmit._entry, section ".printk_index", align 4
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"big packet = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No Tx resource %ld\0A\00", [44 x i8] zeroinitializer }, align 32
@uli526x_set_filter_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.65, ptr @.str.2, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uli526x_set_filter_mode\00", [40 x i8] zeroinitializer }, align 32
@uli526x_set_filter_mode._entry_ptr = internal global ptr @uli526x_set_filter_mode._entry, section ".printk_index", align 4
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uli526x_set_filter_mode()\00", [38 x i8] zeroinitializer }, align 32
@uli526x_set_filter_mode._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.65, ptr @.str.2, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uli526x_set_filter_mode._entry_ptr.68 = internal global ptr @uli526x_set_filter_mode._entry.67, section ".printk_index", align 4
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Enable PROM Mode\00", [47 x i8] zeroinitializer }, align 32
@uli526x_set_filter_mode._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.65, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uli526x_set_filter_mode._entry_ptr.71 = internal global ptr @uli526x_set_filter_mode._entry.70, section ".printk_index", align 4
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pass all multicast address\00", [37 x i8] zeroinitializer }, align 32
@uli526x_set_filter_mode._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.65, ptr @.str.2, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uli526x_set_filter_mode._entry_ptr.74 = internal global ptr @uli526x_set_filter_mode._entry.73, section ".printk_index", align 4
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Set multicast address\00", [42 x i8] zeroinitializer }, align 32
@uli526x_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.76, ptr @.str.2, i32 1183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uli526x_suspend\00", [16 x i8] zeroinitializer }, align 32
@uli526x_suspend._entry_ptr = internal global ptr @uli526x_suspend._entry, section ".printk_index", align 4
@uli526x_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uli526x_resume\00", [17 x i8] zeroinitializer }, align 32
@uli526x_resume._entry_ptr = internal global ptr @uli526x_resume._entry, section ".printk_index", align 4
@uli526x_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.78, ptr @.str.2, i32 1765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uli526x_init_module\00", [44 x i8] zeroinitializer }, align 32
@uli526x_init_module._entry_ptr = internal global ptr @uli526x_init_module._entry, section ".printk_index", align 4
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_module() \00", [17 x i8] zeroinitializer }, align 32
@switch.table.uli526x_init_module = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\01\08\08\04\05", [26 x i8] zeroinitializer }, align 32
@switch.table.uli526x_timer = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 8192, i16 0, i16 0, i16 256, i16 8448], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 202, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 204, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"cr6set\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 203, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"uli526x_debug\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 197, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1796, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"uli526x_driver\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1739, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1740, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"uli526x_pci_tbl\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1730, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"uli526x_pm_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1737, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 278, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 287, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 298, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 304, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 311, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 253, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1003, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 364, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 400, i32 19 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 456, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"uli526x_cr6_user_set\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 199, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 485, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 510, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 531, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [19 x i8] c"uli526x_media_mode\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 198, i32 22 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1272, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 326, i32 6 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1353, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1397, i32 19 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 704, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 826, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 871, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1253, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1046, i32 20 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1051, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1066, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1068, i32 20 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1083, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1094, i32 22 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1100, i32 12 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1100, i32 21 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1164, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1225, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1505, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 590, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 597, i32 19 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 607, i32 19 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 892, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 896, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 905, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 913, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1183, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1204, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.381 = private constant [44 x i8] c"../drivers/net/ethernet/dec/tulip/uli526x.c\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1765, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [33 x i8] c"switch.table.uli526x_init_module\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [27 x i8] c"switch.table.uli526x_timer\00", align 1
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_cr6settype347, ptr @__UNIQUE_ID_debug348, ptr @__UNIQUE_ID_debugtype345, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_mode349, ptr @__UNIQUE_ID_modetype346, ptr @__exitcall_uli526x_cleanup_module, ptr @__initcall__kmod_uli526x__350_1800_uli526x_init_module6, ptr @__param_cr6set, ptr @__param_debug, ptr @__param_mode, ptr @send_filter_frame._entry, ptr @send_filter_frame._entry_ptr, ptr @uli526x_cleanup_module, ptr @uli526x_cleanup_module._entry, ptr @uli526x_cleanup_module._entry_ptr, ptr @uli526x_descriptor_init._entry, ptr @uli526x_descriptor_init._entry_ptr, ptr @uli526x_dynamic_reset._entry, ptr @uli526x_dynamic_reset._entry_ptr, ptr @uli526x_free_rxbuffer._entry, ptr @uli526x_free_rxbuffer._entry_ptr, ptr @uli526x_init._entry, ptr @uli526x_init._entry.25, ptr @uli526x_init._entry_ptr, ptr @uli526x_init._entry_ptr.27, ptr @uli526x_init_module._entry, ptr @uli526x_init_module._entry_ptr, ptr @uli526x_init_one._entry, ptr @uli526x_init_one._entry.10, ptr @uli526x_init_one._entry.13, ptr @uli526x_init_one._entry.16, ptr @uli526x_init_one._entry.7, ptr @uli526x_init_one._entry_ptr, ptr @uli526x_init_one._entry_ptr.12, ptr @uli526x_init_one._entry_ptr.15, ptr @uli526x_init_one._entry_ptr.18, ptr @uli526x_init_one._entry_ptr.9, ptr @uli526x_interrupt._entry, ptr @uli526x_interrupt._entry_ptr, ptr @uli526x_open._entry, ptr @uli526x_open._entry_ptr, ptr @uli526x_resume._entry, ptr @uli526x_resume._entry_ptr, ptr @uli526x_reuse_skb._entry, ptr @uli526x_reuse_skb._entry_ptr, ptr @uli526x_rx_packet._entry, ptr @uli526x_rx_packet._entry.39, ptr @uli526x_rx_packet._entry_ptr, ptr @uli526x_rx_packet._entry_ptr.40, ptr @uli526x_sense_speed._entry, ptr @uli526x_sense_speed._entry_ptr, ptr @uli526x_set_filter_mode._entry, ptr @uli526x_set_filter_mode._entry.67, ptr @uli526x_set_filter_mode._entry.70, ptr @uli526x_set_filter_mode._entry.73, ptr @uli526x_set_filter_mode._entry_ptr, ptr @uli526x_set_filter_mode._entry_ptr.68, ptr @uli526x_set_filter_mode._entry_ptr.71, ptr @uli526x_set_filter_mode._entry_ptr.74, ptr @uli526x_start_xmit._entry, ptr @uli526x_start_xmit._entry_ptr, ptr @uli526x_suspend._entry, ptr @uli526x_suspend._entry_ptr, ptr @uli526x_timer._entry, ptr @uli526x_timer._entry.46, ptr @uli526x_timer._entry.50, ptr @uli526x_timer._entry_ptr, ptr @uli526x_timer._entry_ptr.47, ptr @uli526x_timer._entry_ptr.51, ptr @debug, ptr @mode, ptr @cr6set, ptr @uli526x_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @uli526x_driver, ptr @.str.4, ptr @uli526x_pci_tbl, ptr @uli526x_pm_ops, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @netdev_ops, ptr @netdev_ethtool_ops, ptr @uli526x_init_one.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @uli526x_cr6_user_set, ptr @uli526x_open.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @uli526x_media_mode, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @switch.table.uli526x_init_module, ptr @switch.table.uli526x_timer], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr6set to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_cleanup_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_init_one._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_init_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_cr6_user_set to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_media_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_descriptor_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_filter_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_rx_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_rx_packet._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_reuse_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_timer._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_timer._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_dynamic_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_free_rxbuffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_sense_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_set_filter_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_set_filter_mode._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_set_filter_mode._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_set_filter_mode._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uli526x_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uli526x_init_module to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uli526x_timer to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uli526x_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i32, ptr @debug, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %1) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @pci_unregister_driver(ptr noundef nonnull @uli526x_driver) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uli526x_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i32, ptr @debug, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.79, i32 noundef %1) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %do.end2.if.end5_crit_edge, label %if.then4

do.end2.if.end5_crit_edge:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %2, ptr @uli526x_debug, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end2.if.end5_crit_edge
  %3 = load i32, ptr @cr6set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %3, ptr @uli526x_cr6_user_set, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %4 = load i32, ptr @mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %switch.lookup, label %if.end8.sw.epilog_crit_edge

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.uli526x_init_module, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %6)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end8.sw.epilog_crit_edge
  %storemerge = phi i8 [ 8, %if.end8.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  store i8 %storemerge, ptr @uli526x_media_mode, align 1
  %call9 = tail call i32 @__pci_register_driver(ptr noundef nonnull @uli526x_driver, ptr noundef null, ptr noundef nonnull @.str.4) #10
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uli526x_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #3 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #10
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %6 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 0) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 384, i32 noundef 1, i32 noundef 1) #10
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 133, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev7, ptr %parent, align 8
  %call10 = tail call i32 @dma_set_mask(ptr noundef %dev7, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %err_out_free

if.end18:                                         ; preds = %if.end6
  %call19 = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_out_free_crit_edge

if.end18.err_out_free_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_free

if.end22:                                         ; preds = %if.end18
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool23.not = icmp eq i32 %9, 0
  br i1 %tobool23.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %err_out_disable

if.end30:                                         ; preds = %if.end22
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp33 = icmp eq i32 %11, 0
  %sub = sub i32 1, %9
  %add = add i32 %sub, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %phi.cmp = icmp ult i32 %add, 256
  %cond = select i1 %cmp33, i1 true, i1 %phi.cmp
  br i1 %cond, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %err_out_disable

if.end47:                                         ; preds = %if.end30
  %call48 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end53, label %if.end56

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %err_out_disable

if.end56:                                         ; preds = %if.end47
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %desc_pool_dma_ptr = getelementptr i8, ptr %call4, i32 2396
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev7, i32 noundef 2592, ptr noundef %desc_pool_dma_ptr, i32 noundef 3264, i32 noundef 0) #10
  %desc_pool_ptr = getelementptr i8, ptr %call4, i32 2416
  %12 = ptrtoint ptr %desc_pool_ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %desc_pool_ptr, align 4
  %tobool61.not = icmp eq ptr %call.i, null
  br i1 %tobool61.not, label %if.end56.err_out_release_crit_edge, label %if.end63

if.end56.err_out_release_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_release

if.end63:                                         ; preds = %if.end56
  %buf_pool_dma_ptr = getelementptr i8, ptr %call4, i32 2388
  %call.i242 = tail call ptr @dma_alloc_attrs(ptr noundef %dev7, i32 noundef 49156, ptr noundef %buf_pool_dma_ptr, i32 noundef 3264, i32 noundef 0) #10
  %buf_pool_ptr = getelementptr i8, ptr %call4, i32 2408
  %13 = ptrtoint ptr %buf_pool_ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i242, ptr %buf_pool_ptr, align 4
  %tobool67.not = icmp eq ptr %call.i242, null
  br i1 %tobool67.not, label %if.end63.err_out_free_tx_desc_crit_edge, label %if.end69

if.end63.err_out_free_tx_desc_crit_edge:          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_free_tx_desc

if.end69:                                         ; preds = %if.end63
  %14 = ptrtoint ptr %desc_pool_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc_pool_ptr, align 4
  %first_tx_desc = getelementptr i8, ptr %call4, i32 2420
  %16 = ptrtoint ptr %first_tx_desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %first_tx_desc, align 4
  %17 = ptrtoint ptr %desc_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %desc_pool_dma_ptr, align 4
  %first_tx_desc_dma = getelementptr i8, ptr %call4, i32 2400
  %19 = ptrtoint ptr %first_tx_desc_dma to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %first_tx_desc_dma, align 4
  %buf_pool_start = getelementptr i8, ptr %call4, i32 2412
  %20 = ptrtoint ptr %buf_pool_start to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i242, ptr %buf_pool_start, align 4
  %21 = ptrtoint ptr %buf_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_pool_dma_ptr, align 4
  %buf_pool_dma_start = getelementptr i8, ptr %call4, i32 2392
  %23 = ptrtoint ptr %buf_pool_dma_start to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %buf_pool_dma_start, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %24 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1382224057, i32 %25)
  %cond154 = icmp eq i32 %25, 1382224057
  %spec.select = select i1 %cond154, ptr @phy_writeby_cr10, ptr @phy_writeby_cr9
  %spec.select249 = select i1 %cond154, ptr @phy_readby_cr10, ptr @phy_readby_cr9
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %spec.select, ptr %add.ptr.i, align 4
  %27 = getelementptr i8, ptr %call4, i32 2308
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %spec.select249, ptr %27, align 4
  %call79 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #10
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %if.end69.err_out_free_tx_buf_crit_edge, label %if.end82

if.end69.err_out_free_tx_buf_crit_edge:           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_free_tx_buf

if.end82:                                         ; preds = %if.end69
  %ioaddr83 = getelementptr i8, ptr %call4, i32 2364
  %29 = ptrtoint ptr %ioaddr83 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call79, ptr %ioaddr83, align 4
  %pdev84 = getelementptr i8, ptr %call4, i32 2316
  %30 = ptrtoint ptr %pdev84 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pdev, ptr %pdev84, align 4
  %init = getelementptr i8, ptr %call4, i32 2684
  %31 = ptrtoint ptr %init to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %init, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %33 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 44
  %34 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %lock = getelementptr i8, ptr %call4, i32 2320
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @uli526x_init_one.__key, i16 noundef signext 3) #10
  %srom = getelementptr i8, ptr %call4, i32 2556
  br label %for.body

for.body:                                         ; preds = %read_srom_word.exit.for.body_crit_edge, %if.end82
  %i.0244 = phi i32 [ 0, %if.end82 ], [ %inc, %read_srom_word.exit.for.body_crit_edge ]
  %35 = ptrtoint ptr %ioaddr83 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr83, align 4
  %add.ptr.i243 = getelementptr i8, ptr %36, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 4718592) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 21495808) #10, !srcloc !220
  %37 = ptrtoint ptr %ioaddr83 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr83, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 88604672) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 122159104) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 88604672) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 1073740) #10
  %42 = ptrtoint ptr %ioaddr83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr83, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %43, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 88604672) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 122159104) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 88604672) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 1073740) #10
  %47 = ptrtoint ptr %ioaddr83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr83, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %48, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 21495808) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 55050240) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 21495808) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 1073740) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body
  %i.044.i = phi i32 [ 5, %for.body ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.044.i
  %and.i = and i32 %shl.i, %i.0244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv.i = select i1 %tobool.not.i, i16 0, i16 4
  %conv3.i = zext i16 %conv.i to i32
  %52 = ptrtoint ptr %ioaddr83 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr83, align 4
  %or2.i.i = or i32 %conv3.i, 18433
  %add.ptr.i43.i = getelementptr i8, ptr %53, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %54 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %54) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 1073740) #10
  %or5.i.i = or i32 %conv3.i, 18435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %56 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %56) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %54) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 1073740) #10
  %dec.i = add nsw i32 %i.044.i, -1
  %cmp.not.i = icmp eq i32 %i.044.i, 0
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 21495808) #10, !srcloc !220
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.end.i
  %i.146.i = phi i32 [ 16, %for.end.i ], [ %dec19.i, %for.body8.i.for.body8.i_crit_edge ]
  %srom_data.145.i = phi i16 [ %conv.i, %for.end.i ], [ %conv16.i, %for.body8.i.for.body8.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 55050240) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 1073740) #10
  %conv10.i = zext i16 %srom_data.145.i to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 1
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i243) #10, !srcloc !221
  %61 = lshr i32 %60, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %and13.lobit.i = and i32 %61, 1
  %or.i = or i32 %and13.lobit.i, %shl11.i
  %conv16.i = trunc i32 %or.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 21495808) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 1073740) #10
  %dec19.i = add nsw i32 %i.146.i, -1
  %cmp6.i = icmp ugt i32 %i.146.i, 1
  br i1 %cmp6.i, label %for.body8.i.for.body8.i_crit_edge, label %read_srom_word.exit

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8.i

read_srom_word.exit:                              ; preds = %for.body8.i
  %conv16.i.le = trunc i32 %or.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 4718592) #10, !srcloc !220
  %63 = tail call i16 @llvm.bswap.i16(i16 %conv16.i.le)
  %arrayidx91 = getelementptr i16, ptr %srom, i32 %i.0244
  %64 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %arrayidx91, align 2
  %inc = add nuw nsw i32 %i.0244, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %read_srom_word.exit.for.body_crit_edge

read_srom_word.exit.for.body_crit_edge:           ; preds = %read_srom_word.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %read_srom_word.exit
  %65 = ptrtoint ptr %srom to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %srom, align 4
  %67 = zext i16 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i16 %66, label %for.body126.preheader [
    i16 -1, label %for.end.if.then103_crit_edge
    i16 0, label %for.end.if.then103_crit_edge250
  ]

for.end.if.then103_crit_edge250:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then103

for.end.if.then103_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then103

for.body126.preheader:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx129 = getelementptr i8, ptr %call4, i32 2576
  %68 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx129, align 1
  %70 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %addr, align 1
  %arrayidx129.1 = getelementptr i8, ptr %call4, i32 2577
  %71 = ptrtoint ptr %arrayidx129.1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx129.1, align 1
  %73 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %0, align 1
  %arrayidx129.2 = getelementptr i8, ptr %call4, i32 2578
  %74 = ptrtoint ptr %arrayidx129.2 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx129.2, align 1
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %1, align 1
  %arrayidx129.3 = getelementptr i8, ptr %call4, i32 2579
  %77 = ptrtoint ptr %arrayidx129.3 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx129.3, align 1
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %2, align 1
  %arrayidx129.4 = getelementptr i8, ptr %call4, i32 2580
  %80 = ptrtoint ptr %arrayidx129.4 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx129.4, align 1
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %3, align 1
  %arrayidx129.5 = getelementptr i8, ptr %call4, i32 2581
  %83 = ptrtoint ptr %arrayidx129.5 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx129.5, align 1
  %85 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %4, align 1
  br label %if.end134

if.then103:                                       ; preds = %for.end.if.then103_crit_edge, %for.end.if.then103_crit_edge250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call79, i32 256) #10, !srcloc !220
  %add.ptr104 = getelementptr i8, ptr %call79, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 -1073676288) #10, !srcloc !220
  %add.ptr105 = getelementptr i8, ptr %call79, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 0) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 268435456) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 0) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 0) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 -1342111744) #10, !srcloc !220
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #10, !srcloc !221
  %87 = lshr i32 %86, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %conv116 = trunc i32 %87 to i8
  %88 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv116, ptr %addr, align 1
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #10, !srcloc !221
  %90 = lshr i32 %89, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %conv116.1 = trunc i32 %90 to i8
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv116.1, ptr %0, align 1
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #10, !srcloc !221
  %93 = lshr i32 %92, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %conv116.2 = trunc i32 %93 to i8
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv116.2, ptr %1, align 1
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #10, !srcloc !221
  %96 = lshr i32 %95, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %conv116.3 = trunc i32 %96 to i8
  %97 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv116.3, ptr %2, align 1
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #10, !srcloc !221
  %99 = lshr i32 %98, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %conv116.4 = trunc i32 %99 to i8
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv116.4, ptr %3, align 1
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #10, !srcloc !221
  %102 = lshr i32 %101, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %conv116.5 = trunc i32 %102 to i8
  %103 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv116.5, ptr %4, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 0) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call79, i32 0) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 2147480) #10
  br label %if.end134

if.end134:                                        ; preds = %if.then103, %for.body126.preheader
  call void @dev_addr_mod(ptr noundef %call4, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #10
  %call136 = call i32 @register_netdev(ptr noundef nonnull %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %err_out_unmap

if.end139:                                        ; preds = %if.end134
  %105 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %driver_data, align 4
  %shr = lshr i32 %106, 16
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %107 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %108, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end139.pci_name.exit_crit_edge

if.end139.pci_name.exit_crit_edge:                ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev7, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end139.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %110, %if.end.i.i ], [ %108, %if.end139.pci_name.exit_crit_edge ]
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 86
  %111 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_addr, align 64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %113 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call4, ptr noundef nonnull @.str.20, i32 noundef %shr, ptr noundef %retval.0.i.i, ptr noundef %112, i32 noundef %114) #13
  call void @pci_set_master(ptr noundef %pdev) #10
  br label %cleanup

err_out_unmap:                                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %ioaddr83 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ioaddr83, align 4
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %116) #10
  br label %err_out_free_tx_buf

err_out_free_tx_buf:                              ; preds = %err_out_unmap, %if.end69.err_out_free_tx_buf_crit_edge
  %err.0 = phi i32 [ %call136, %err_out_unmap ], [ -12, %if.end69.err_out_free_tx_buf_crit_edge ]
  %117 = ptrtoint ptr %buf_pool_ptr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %buf_pool_ptr, align 4
  %119 = ptrtoint ptr %buf_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %buf_pool_dma_ptr, align 4
  call void @dma_free_attrs(ptr noundef %dev7, i32 noundef 49156, ptr noundef %118, i32 noundef %120, i32 noundef 0) #10
  br label %err_out_free_tx_desc

err_out_free_tx_desc:                             ; preds = %err_out_free_tx_buf, %if.end63.err_out_free_tx_desc_crit_edge
  %err.1 = phi i32 [ %err.0, %err_out_free_tx_buf ], [ -12, %if.end63.err_out_free_tx_desc_crit_edge ]
  %121 = ptrtoint ptr %desc_pool_ptr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %desc_pool_ptr, align 4
  %123 = ptrtoint ptr %desc_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %desc_pool_dma_ptr, align 4
  call void @dma_free_attrs(ptr noundef %dev7, i32 noundef 2592, ptr noundef %122, i32 noundef %124, i32 noundef 0) #10
  br label %err_out_release

err_out_release:                                  ; preds = %err_out_free_tx_desc, %if.end56.err_out_release_crit_edge
  %err.2 = phi i32 [ %err.1, %err_out_free_tx_desc ], [ -12, %if.end56.err_out_release_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #10
  br label %err_out_disable

err_out_disable:                                  ; preds = %err_out_release, %do.end53, %do.end44, %do.end27
  %err.3 = phi i32 [ -19, %do.end44 ], [ %call48, %do.end53 ], [ %err.2, %err_out_release ], [ -19, %do.end27 ]
  call void @pci_disable_device(ptr noundef %pdev) #10
  br label %err_out_free

err_out_free:                                     ; preds = %err_out_disable, %if.end18.err_out_free_crit_edge, %do.end15
  %err.4 = phi i32 [ -19, %do.end15 ], [ %call19, %if.end18.err_out_free_crit_edge ], [ %err.3, %err_out_disable ]
  call void @free_netdev(ptr noundef nonnull %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %pci_name.exit, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_out_free ], [ 0, %pci_name.exit ], [ -12, %do.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uli526x_remove_one(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #10
  %ioaddr = getelementptr i8, ptr %1, i32 2364
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #10
  %pdev2 = getelementptr i8, ptr %1, i32 2316
  %4 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev2, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %desc_pool_ptr = getelementptr i8, ptr %1, i32 2416
  %6 = ptrtoint ptr %desc_pool_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_pool_ptr, align 4
  %desc_pool_dma_ptr = getelementptr i8, ptr %1, i32 2396
  %8 = ptrtoint ptr %desc_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_pool_dma_ptr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3, i32 noundef 2592, ptr noundef %7, i32 noundef %9, i32 noundef 0) #10
  %10 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev2, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %buf_pool_ptr = getelementptr i8, ptr %1, i32 2408
  %12 = ptrtoint ptr %buf_pool_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf_pool_ptr, align 4
  %buf_pool_dma_ptr = getelementptr i8, ptr %1, i32 2388
  %14 = ptrtoint ptr %buf_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_pool_dma_ptr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef 49156, ptr noundef %13, i32 noundef %15, i32 noundef 0) #10
  tail call void @pci_release_regions(ptr noundef %pdev) #10
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  tail call void @free_netdev(ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_writeby_cr10(ptr nocapture noundef readonly %db, i8 noundef zeroext %phy_addr, i8 noundef zeroext %offset, i16 noundef zeroext %phy_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.uli526x_board_info, ptr %db, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %conv = zext i8 %phy_addr to i32
  %shl = shl nuw nsw i32 %conv, 5
  %conv2 = zext i8 %offset to i32
  %add = add nuw nsw i32 %shl, %conv2
  %shl3 = shl nuw nsw i32 %add, 16
  %add4 = add nuw nsw i32 %shl3, 67108864
  %conv5 = zext i16 %phy_data to i32
  %add6 = or i32 %add4, %conv5
  %add.ptr = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %add6) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @phy_readby_cr10(ptr nocapture noundef readonly %db, i8 noundef zeroext %phy_addr, i8 noundef zeroext %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.uli526x_board_info, ptr %db, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %conv = zext i8 %phy_addr to i32
  %shl = shl nuw nsw i32 %conv, 5
  %conv2 = zext i8 %offset to i32
  %add = add nuw nsw i32 %shl, %conv2
  %shl3 = shl nuw nsw i32 %add, 16
  %add4 = add nuw nsw i32 %shl3, 134217728
  %add.ptr = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %add4) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #10
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !221
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %and = and i32 %5, 268435456
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %conv7 = trunc i32 %5 to i16
  ret i16 %conv7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_writeby_cr9(ptr nocapture noundef readonly %db, i8 noundef zeroext %phy_addr, i8 noundef zeroext %offset, i16 noundef zeroext %phy_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1.i = getelementptr inbounds %struct.uli526x_board_info, ptr %db, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.082 = phi i16 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 768) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  %inc = add nuw nsw i16 %i.082, 1
  %cmp = icmp ult i16 %i.082, 34
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %5 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %6, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 0) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 256) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 0) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #10
  %10 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 768) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #10
  %15 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %16, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 0) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 256) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 0) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #10
  %20 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %21, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 768) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #10
  %conv7 = zext i8 %phy_addr to i32
  br label %for.body6

for.cond13.preheader:                             ; preds = %for.body6
  %conv18 = zext i8 %offset to i32
  br label %for.body17

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.end
  %i.183 = phi i32 [ 16, %for.end ], [ %31, %for.body6.for.body6_crit_edge ]
  %and = and i32 %i.183, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 512
  %25 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %cond) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %28 = or i32 %cond, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %28) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %cond) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #10
  %31 = lshr i32 %i.183, 1
  %cmp4.not = icmp ult i32 %i.183, 2
  br i1 %cmp4.not, label %for.cond13.preheader, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond13.preheader
  %i.285 = phi i32 [ 16, %for.cond13.preheader ], [ %38, %for.body17.for.body17_crit_edge ]
  %and20 = and i32 %i.285, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond22 = select i1 %tobool21.not, i32 0, i32 512
  %32 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %33, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %cond22) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %35 = or i32 %cond22, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %35) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %cond22) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #10
  %38 = lshr i32 %i.285, 1
  %cmp15.not = icmp ult i32 %i.285, 2
  br i1 %cmp15.not, label %for.end27, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17

for.end27:                                        ; preds = %for.body17
  %39 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %40, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 768) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #10
  %44 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %45, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 0) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 256) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 0) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #10
  %conv33 = zext i16 %phy_data to i32
  br label %for.body32

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.end27
  %i.387 = phi i32 [ 32768, %for.end27 ], [ %55, %for.body32.for.body32_crit_edge ]
  %and35 = and i32 %i.387, %conv33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %cond37 = select i1 %tobool36.not, i32 0, i32 512
  %49 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %50, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %cond37) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %52 = or i32 %cond37, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %52) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %cond37) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #10
  %55 = lshr i32 %i.387, 1
  %cmp30.not = icmp ult i32 %i.387, 2
  br i1 %cmp30.not, label %for.end42, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

for.end42:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @phy_readby_cr9(ptr nocapture noundef readonly %db, i8 noundef zeroext %phy_addr, i8 noundef zeroext %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1.i = getelementptr inbounds %struct.uli526x_board_info, ptr %db, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.068 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 768) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, 35
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %5 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %6, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 0) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 256) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 0) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #10
  %10 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 768) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #10
  %15 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %16, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 768) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 512) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #10
  %20 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %21, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 0) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 256) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 0) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #10
  %conv = zext i8 %phy_addr to i32
  br label %for.body3

for.cond6.preheader:                              ; preds = %for.body3
  %conv10 = zext i8 %offset to i32
  br label %for.body9

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.end
  %i.169 = phi i32 [ 16, %for.end ], [ %31, %for.body3.for.body3_crit_edge ]
  %and = and i32 %i.169, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 512
  %25 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %cond) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %28 = or i32 %cond, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %28) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %cond) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #10
  %31 = lshr i32 %i.169, 1
  %cmp2.not = icmp ult i32 %i.169, 2
  br i1 %cmp2.not, label %for.cond6.preheader, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond6.preheader
  %i.270 = phi i32 [ 16, %for.cond6.preheader ], [ %38, %for.body9.for.body9_crit_edge ]
  %and11 = and i32 %i.270, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, i32 0, i32 512
  %32 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %33, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %cond13) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %35 = or i32 %cond13, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %35) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %cond13) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #10
  %38 = lshr i32 %i.270, 1
  %cmp7.not = icmp ult i32 %i.270, 2
  br i1 %cmp7.not, label %for.end16, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.end16:                                        ; preds = %for.body9
  %39 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %40, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 1280) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #10
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #10, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 1024) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #10
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.end16
  %i.372 = phi i32 [ 0, %for.end16 ], [ %inc28, %for.body20.for.body20_crit_edge ]
  %phy_data.071 = phi i16 [ 0, %for.end16 ], [ %or49, %for.body20.for.body20_crit_edge ]
  %shl = shl i16 %phy_data.071, 1
  %44 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %45, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 1280) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #10
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #10, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %48 = trunc i32 %47 to i16
  %49 = lshr i16 %48, 11
  %conv.i67 = and i16 %49, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 1024) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #10
  %or49 = or i16 %conv.i67, %shl
  %inc28 = add nuw nsw i32 %i.372, 1
  %exitcond73.not = icmp eq i32 %inc28, 16
  br i1 %exitcond73.not, label %for.end29, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20

for.end29:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  ret i16 %or49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uli526x_open(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = load i32, ptr @uli526x_cr6_user_set, align 4
  %or = or i32 %1, 572522496
  %cr6_data = getelementptr i8, ptr %dev, i32 2376
  %2 = ptrtoint ptr %cr6_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %cr6_data, align 4
  %tx_packet_cnt = getelementptr i8, ptr %dev, i32 2444
  %3 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tx_packet_cnt, align 4
  %rx_avail_cnt = getelementptr i8, ptr %dev, i32 2448
  %4 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_avail_cnt, align 4
  %link_failed = getelementptr i8, ptr %dev, i32 2465
  %5 = ptrtoint ptr %link_failed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %link_failed, align 1
  tail call void @netif_carrier_off(ptr noundef %dev) #10
  %wait_reset = getelementptr i8, ptr %dev, i32 2466
  %6 = ptrtoint ptr %wait_reset to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %wait_reset, align 2
  %NIC_capability = getelementptr i8, ptr %dev, i32 2458
  %7 = ptrtoint ptr %NIC_capability to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 15, ptr %NIC_capability, align 2
  %PHY_reg4 = getelementptr i8, ptr %dev, i32 2460
  %8 = ptrtoint ptr %PHY_reg4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 480, ptr %PHY_reg4, align 4
  %9 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cr6_data, align 4
  %or6 = or i32 %10, 16384
  store i32 %or6, ptr %cr6_data, align 4
  %cr0_data = getelementptr i8, ptr %dev, i32 2368
  %11 = ptrtoint ptr %cr0_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cr0_data, align 4
  tail call fastcc void @uli526x_init(ptr noundef %dev)
  %pdev = getelementptr i8, ptr %dev, i32 2316
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @uli526x_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %17) #10
  %timer = getelementptr i8, ptr %dev, i32 2468
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @uli526x_timer, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @uli526x_open.__key) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add14 = add i32 %18, 300
  %expires = getelementptr i8, ptr %dev, i32 2476
  %19 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add14, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end4.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uli526x_stop(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ioaddr1 = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %timer = getelementptr i8, ptr %dev, i32 2468
  %call2 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 1073740) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %phy_addr = getelementptr i8, ptr %dev, i32 2464
  %7 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_addr, align 4
  tail call void %6(ptr noundef %add.ptr.i, i8 noundef zeroext %8, i8 noundef zeroext 0, i16 noundef zeroext -32768) #10
  %pdev = getelementptr i8, ptr %dev, i32 2316
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %dev) #10
  %13 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %entry.do.end2.i_crit_edge, label %do.end.i

entry.do.end2.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.59, i32 noundef 0) #13
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %entry.do.end2.i_crit_edge
  %rx_avail_cnt.i = getelementptr i8, ptr %dev, i32 2448
  %14 = ptrtoint ptr %rx_avail_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_avail_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not11.i = icmp eq i32 %15, 0
  br i1 %tobool3.not11.i, label %do.end2.i.uli526x_free_rxbuffer.exit_crit_edge, label %while.body.lr.ph.i

do.end2.i.uli526x_free_rxbuffer.exit_crit_edge:   ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uli526x_free_rxbuffer.exit

while.body.lr.ph.i:                               ; preds = %do.end2.i
  %rx_ready_ptr.i = getelementptr i8, ptr %dev, i32 2440
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %16 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ready_ptr.i, align 4
  %rx_skb_ptr.i = getelementptr inbounds %struct.rx_desc, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %rx_skb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_skb_ptr.i, align 16
  tail call void @consume_skb(ptr noundef %19) #10
  %20 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_ready_ptr.i, align 4
  %next_rx_desc.i = getelementptr inbounds %struct.rx_desc, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %next_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next_rx_desc.i, align 4
  store ptr %23, ptr %rx_ready_ptr.i, align 4
  %24 = ptrtoint ptr %rx_avail_cnt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_avail_cnt.i, align 4
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %rx_avail_cnt.i, align 4
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %while.body.i.uli526x_free_rxbuffer.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.uli526x_free_rxbuffer.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uli526x_free_rxbuffer.exit

uli526x_free_rxbuffer.exit:                       ; preds = %while.body.i.uli526x_free_rxbuffer.exit_crit_edge, %do.end2.i.uli526x_free_rxbuffer.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uli526x_start_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %2 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.62, i32 noundef 0) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %6)
  %cmp = icmp ugt i32 %6, 1514
  br i1 %cmp, label %if.then6, label %do.body11

if.then6:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %conv8 = and i32 %6, 65535
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %conv8) #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

do.body11:                                        ; preds = %do.end5
  %lock = getelementptr i8, ptr %dev, i32 2320
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %tx_packet_cnt = getelementptr i8, ptr %dev, i32 2444
  %7 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_packet_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %8)
  %cmp21 = icmp ugt i32 %8, 29
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #10
  %9 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_packet_cnt, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %10) #13
  br label %cleanup

if.end26:                                         ; preds = %do.body11
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !220
  %tx_insert_ptr = getelementptr i8, ptr %dev, i32 2424
  %11 = ptrtoint ptr %tx_insert_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_insert_ptr, align 4
  %tx_buf_ptr = getelementptr inbounds %struct.tx_desc, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %tx_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_buf_ptr, align 16
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %19 = call ptr @memcpy(ptr %14, ptr %18, i32 %16)
  %20 = load i32, ptr %len, align 4
  %or = or i32 %20, -520093696
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %tdes1 = getelementptr inbounds %struct.tx_desc, ptr %12, i32 0, i32 1
  %22 = ptrtoint ptr %tdes1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tdes1, align 4
  %next_tx_desc = getelementptr inbounds %struct.tx_desc, ptr %12, i32 0, i32 5
  %23 = ptrtoint ptr %next_tx_desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_tx_desc, align 4
  %25 = ptrtoint ptr %tx_insert_ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %tx_insert_ptr, align 4
  %26 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_packet_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp31 = icmp ult i32 %27, 32
  br i1 %cmp31, label %if.then33, label %if.end26.if.end41_crit_edge

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then33:                                        ; preds = %if.end26
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %12, align 32
  %29 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_packet_cnt, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %tx_packet_cnt, align 4
  %add.ptr35 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 16777216) #10, !srcloc !220
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 12
  %34 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp.not.i.i = icmp eq i32 %35, %33
  br i1 %cmp.not.i.i, label %if.then33.if.end36_crit_edge, label %do.body5.i.i

if.then33.if.end36_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.body5.i.i:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %33, ptr %trans_start.i.i, align 16
  br label %if.end36

if.end36:                                         ; preds = %do.body5.i.i, %if.then33.if.end36_crit_edge
  %37 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %tx_packet_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %.pr)
  %cmp38 = icmp ult i32 %.pr, 30
  br i1 %cmp38, label %if.then40, label %if.end36.if.end41_crit_edge

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %39) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end36.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #10
  %cr7_data = getelementptr i8, ptr %dev, i32 2380
  %40 = ptrtoint ptr %cr7_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cr7_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %42) #10, !srcloc !220
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then23, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 16, %if.then23 ], [ 0, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uli526x_set_filter_mode(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %do.end

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.66, i32 noundef 0) #13
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 2320
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %flags14 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags14, align 8
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end30, label %do.body17

do.body17:                                        ; preds = %do.body6
  %3 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool18.not = icmp eq i32 %3, 0
  br i1 %tobool18.not, label %do.body17.do.end27_crit_edge, label %do.end22

do.body17.do.end27_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.69, i32 noundef 0) #13
  br label %do.end27

do.end27:                                         ; preds = %do.end22, %do.body17.do.end27_crit_edge
  %cr6_data = getelementptr i8, ptr %dev, i32 2376
  %4 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cr6_data, align 4
  %or = or i32 %5, 72
  store i32 %or, ptr %cr6_data, align 4
  %ioaddr = getelementptr i8, ptr %dev, i32 2364
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i90 = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %8) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #10
  br label %cleanup

if.end30:                                         ; preds = %do.body6
  %and32 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %lor.lhs.false, label %if.end30.do.body37_crit_edge

if.end30.do.body37_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

lor.lhs.false:                                    ; preds = %if.end30
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %11)
  %cmp34 = icmp sgt i32 %11, 14
  br i1 %cmp34, label %lor.lhs.false.do.body37_crit_edge, label %do.body56

lor.lhs.false.do.body37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

do.body37:                                        ; preds = %lor.lhs.false.do.body37_crit_edge, %if.end30.do.body37_crit_edge
  %12 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool38.not = icmp eq i32 %12, 0
  br i1 %tobool38.not, label %do.body37.do.end49_crit_edge, label %do.end42

do.body37.do.end49_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49

do.end42:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %count45 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %13 = ptrtoint ptr %count45 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count45, align 8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.72, i32 noundef %14) #13
  br label %do.end49

do.end49:                                         ; preds = %do.end42, %do.body37.do.end49_crit_edge
  %cr6_data50 = getelementptr i8, ptr %dev, i32 2376
  %15 = ptrtoint ptr %cr6_data50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cr6_data50, align 4
  %and51 = and i32 %16, -201
  %or53 = or i32 %and51, 128
  store i32 %or53, ptr %cr6_data50, align 4
  br label %cleanup

do.body56:                                        ; preds = %lor.lhs.false
  %17 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool57.not = icmp eq i32 %17, 0
  br i1 %tobool57.not, label %do.body56.do.end68_crit_edge, label %do.end61

do.body56.do.end68_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

do.end61:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.75, i32 noundef %11) #13
  br label %do.end68

do.end68:                                         ; preds = %do.end61, %do.body56.do.end68_crit_edge
  tail call fastcc void @send_filter_frame(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.end49, %do.end27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uli526x_poll(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @uli526x_interrupt(i32 noundef %3, ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uli526x_init(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ioaddr2 = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr2, align 4
  %2 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24, i32 noundef 0) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 21474800) #10
  %cr0_data = getelementptr i8, ptr %dev, i32 2368
  %4 = ptrtoint ptr %cr0_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cr0_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %6) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1073740) #10
  %phy_addr = getelementptr i8, ptr %dev, i32 2464
  %8 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %phy_addr, align 4
  %read = getelementptr i8, ptr %dev, i32 2308
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end6
  %phy_tmp.0103 = phi i8 [ 0, %do.end6 ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read, align 4
  %call9 = tail call zeroext i16 %10(ptr noundef %add.ptr.i, i8 noundef zeroext %phy_tmp.0103, i8 noundef zeroext 3) #10
  %11 = zext i16 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %call9, label %for.end.thread [
    i16 -1, label %for.body.for.inc_crit_edge
    i16 0, label %for.body.for.inc_crit_edge114
  ]

for.body.for.inc_crit_edge114:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %phy_tmp.0103, ptr %phy_addr, align 4
  br label %if.end28

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge114
  %inc = add nuw nsw i8 %phy_tmp.0103, 1
  %cmp = icmp ult i8 %phy_tmp.0103, 31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.end25

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end25:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %for.end.thread
  %13 = load i8, ptr @uli526x_media_mode, align 1
  %media_mode = getelementptr i8, ptr %dev, i32 2462
  %14 = ptrtoint ptr %media_mode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %media_mode, align 2
  %15 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read, align 4
  %17 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %phy_addr, align 4
  %call31 = tail call zeroext i16 %16(ptr noundef %add.ptr.i, i8 noundef zeroext %18, i8 noundef zeroext 0) #10
  %19 = or i16 %call31, -32768
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %phy_addr, align 4
  tail call void %21(ptr noundef %add.ptr.i, i8 noundef zeroext %23, i8 noundef zeroext 0, i16 noundef zeroext %19) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 107374000) #10
  %25 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read, align 4
  %27 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %phy_addr, align 4
  %call39 = tail call zeroext i16 %26(ptr noundef %add.ptr.i, i8 noundef zeroext %28, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call39)
  %tobool41.not = icmp sgt i16 %call39, -1
  br i1 %tobool41.not, label %if.end28.while.end_crit_edge, label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 21474800) #10
  %30 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read, align 4
  %32 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %phy_addr, align 4
  %call39.1 = tail call zeroext i16 %31(ptr noundef %add.ptr.i, i8 noundef zeroext %33, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call39.1)
  %tobool41.not.1 = icmp sgt i16 %call39.1, -1
  br i1 %tobool41.not.1, label %while.body.while.end_crit_edge, label %while.body.1

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.1:                                     ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 21474800) #10
  %35 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read, align 4
  %37 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %phy_addr, align 4
  %call39.2 = tail call zeroext i16 %36(ptr noundef %add.ptr.i, i8 noundef zeroext %38, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call39.2)
  %tobool41.not.2 = icmp sgt i16 %call39.2, -1
  br i1 %tobool41.not.2, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 21474800) #10
  %40 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read, align 4
  %42 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %phy_addr, align 4
  %call39.3 = tail call zeroext i16 %41(ptr noundef %add.ptr.i, i8 noundef zeroext %43, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call39.3)
  %tobool41.not.3 = icmp sgt i16 %call39.3, -1
  br i1 %tobool41.not.3, label %while.body.2.while.end_crit_edge, label %while.body.3

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 21474800) #10
  %45 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read, align 4
  %47 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %phy_addr, align 4
  %call39.4 = tail call zeroext i16 %46(ptr noundef %add.ptr.i, i8 noundef zeroext %48, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call39.4)
  %tobool41.not.4 = icmp sgt i16 %call39.4, -1
  br i1 %tobool41.not.4, label %while.body.3.while.end_crit_edge, label %while.body.4

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 21474800) #10
  %50 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read, align 4
  %52 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %phy_addr, align 4
  %call39.5 = tail call zeroext i16 %51(ptr noundef %add.ptr.i, i8 noundef zeroext %53, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call39.5)
  %tobool41.not.5 = icmp sgt i16 %call39.5, -1
  br i1 %tobool41.not.5, label %while.body.4.while.end_crit_edge, label %while.body.5

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 21474800) #10
  %55 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read, align 4
  %57 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %phy_addr, align 4
  %call39.6 = tail call zeroext i16 %56(ptr noundef %add.ptr.i, i8 noundef zeroext %58, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call39.6)
  %tobool41.not.6 = icmp sgt i16 %call39.6, -1
  br i1 %tobool41.not.6, label %while.body.5.while.end_crit_edge, label %while.body.6

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 21474800) #10
  %60 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read, align 4
  %62 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %phy_addr, align 4
  %call39.7 = tail call zeroext i16 %61(ptr noundef %add.ptr.i, i8 noundef zeroext %63, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call39.7)
  %tobool41.not.7 = icmp sgt i16 %call39.7, -1
  br i1 %tobool41.not.7, label %while.body.6.while.end_crit_edge, label %while.body.7

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 21474800) #10
  %65 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read, align 4
  %67 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %phy_addr, align 4
  %call39.8 = tail call zeroext i16 %66(ptr noundef %add.ptr.i, i8 noundef zeroext %68, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call39.8)
  %tobool41.not.8 = icmp sgt i16 %call39.8, -1
  br i1 %tobool41.not.8, label %while.body.7.while.end_crit_edge, label %while.body.8

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 21474800) #10
  %70 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read, align 4
  %72 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %phy_addr, align 4
  %call39.9 = tail call zeroext i16 %71(ptr noundef %add.ptr.i, i8 noundef zeroext %73, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call39.9)
  %tobool41.not.9 = icmp sgt i16 %call39.9, -1
  br i1 %tobool41.not.9, label %while.body.8.while.end_crit_edge, label %while.body.9

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 21474800) #10
  br label %while.end

while.end:                                        ; preds = %while.body.9, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end28.while.end_crit_edge
  %75 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read, align 4
  %77 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %phy_addr, align 4
  %call.i = tail call zeroext i16 %76(ptr noundef %add.ptr.i, i8 noundef zeroext %78, i8 noundef zeroext 4) #10
  %79 = and i16 %call.i, -481
  %80 = ptrtoint ptr %media_mode to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %media_mode, align 2
  %82 = and i8 %81, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %PHY_reg4.i = getelementptr i8, ptr %dev, i32 2460
  %83 = ptrtoint ptr %PHY_reg4.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %PHY_reg4.i, align 4
  %or63.i = or i16 %84, %79
  br label %if.end.i

if.else.i:                                        ; preds = %while.end
  %85 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %81, label %if.else.i.if.end.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 4, label %sw.bb13.i
    i8 1, label %sw.bb17.i
    i8 5, label %sw.bb21.i
  ]

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = or i16 %79, 32
  br label %if.end.i

sw.bb13.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = or i16 %79, 64
  br label %if.end.i

sw.bb17.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = or i16 %79, 128
  br label %if.end.i

sw.bb21.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = or i16 %79, 256
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb21.i, %sw.bb17.i, %sw.bb13.i, %sw.bb.i, %if.else.i.if.end.i_crit_edge, %if.then.i
  %phy_reg.0.i = phi i16 [ %or63.i, %if.then.i ], [ %79, %if.else.i.if.end.i_crit_edge ], [ %89, %sw.bb21.i ], [ %88, %sw.bb17.i ], [ %87, %sw.bb13.i ], [ %86, %sw.bb.i ]
  %90 = and i16 %phy_reg.0.i, 480
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool27.not.i = icmp eq i16 %90, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end.i.uli526x_set_phyxcer.exit_crit_edge

if.end.i.uli526x_set_phyxcer.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uli526x_set_phyxcer.exit

if.then28.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %PHY_reg429.i = getelementptr i8, ptr %dev, i32 2460
  %91 = ptrtoint ptr %PHY_reg429.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %PHY_reg429.i, align 4
  %or3262.i = or i16 %92, %phy_reg.0.i
  %93 = or i8 %81, 8
  %94 = ptrtoint ptr %media_mode to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %media_mode, align 2
  br label %uli526x_set_phyxcer.exit

uli526x_set_phyxcer.exit:                         ; preds = %if.then28.i, %if.end.i.uli526x_set_phyxcer.exit_crit_edge
  %phy_reg.1.i = phi i16 [ %phy_reg.0.i, %if.end.i.uli526x_set_phyxcer.exit_crit_edge ], [ %or3262.i, %if.then28.i ]
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr.i, align 4
  %97 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %phy_addr, align 4
  tail call void %96(ptr noundef %add.ptr.i, i8 noundef zeroext %98, i8 noundef zeroext 4, i16 noundef zeroext %phy_reg.1.i) #10
  %99 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr.i, align 4
  %101 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %phy_addr, align 4
  tail call void %100(ptr noundef %add.ptr.i, i8 noundef zeroext %102, i8 noundef zeroext 0, i16 noundef zeroext 4608) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 10737400) #10
  %104 = ptrtoint ptr %media_mode to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %media_mode, align 2
  %106 = and i8 %105, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool45.not = icmp eq i8 %106, 0
  br i1 %tobool45.not, label %if.then46, label %uli526x_set_phyxcer.exit.if.end48_crit_edge

uli526x_set_phyxcer.exit.if.end48_crit_edge:      ; preds = %uli526x_set_phyxcer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then46:                                        ; preds = %uli526x_set_phyxcer.exit
  call void @__sanitizer_cov_trace_pc() #12
  %op_mode = getelementptr i8, ptr %dev, i32 2463
  %107 = ptrtoint ptr %op_mode to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %105, ptr %op_mode, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %uli526x_set_phyxcer.exit.if.end48_crit_edge
  %108 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i95 = icmp eq i32 %108, 0
  br i1 %tobool.not.i95, label %if.end48.do.end4.i_crit_edge, label %do.end.i

if.end48.do.end4.i_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, i32 noundef 0) #13
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end48.do.end4.i_crit_edge
  %first_tx_desc.i = getelementptr i8, ptr %dev, i32 2420
  %109 = ptrtoint ptr %first_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %first_tx_desc.i, align 4
  %tx_insert_ptr.i = getelementptr i8, ptr %dev, i32 2424
  %111 = ptrtoint ptr %tx_insert_ptr.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %tx_insert_ptr.i, align 4
  %tx_remove_ptr.i = getelementptr i8, ptr %dev, i32 2428
  %112 = ptrtoint ptr %tx_remove_ptr.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %110, ptr %tx_remove_ptr.i, align 4
  %first_tx_desc_dma.i = getelementptr i8, ptr %dev, i32 2400
  %113 = ptrtoint ptr %first_tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %first_tx_desc_dma.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %115) #10, !srcloc !220
  %116 = ptrtoint ptr %first_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %first_tx_desc.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %117, i32 1024
  %first_rx_desc.i = getelementptr i8, ptr %dev, i32 2432
  %118 = ptrtoint ptr %first_rx_desc.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %add.ptr7.i, ptr %first_rx_desc.i, align 4
  %119 = ptrtoint ptr %first_tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %first_tx_desc_dma.i, align 4
  %add.i = add i32 %120, 1024
  %first_rx_desc_dma.i = getelementptr i8, ptr %dev, i32 2404
  %121 = ptrtoint ptr %first_rx_desc_dma.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add.i, ptr %first_rx_desc_dma.i, align 4
  %rx_insert_ptr.i = getelementptr i8, ptr %dev, i32 2436
  %122 = ptrtoint ptr %rx_insert_ptr.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %add.ptr7.i, ptr %rx_insert_ptr.i, align 4
  %rx_ready_ptr.i = getelementptr i8, ptr %dev, i32 2440
  %123 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %add.ptr7.i, ptr %rx_ready_ptr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %124 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %124) #10, !srcloc !220
  %buf_pool_start.i = getelementptr i8, ptr %dev, i32 2412
  %125 = ptrtoint ptr %buf_pool_start.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %buf_pool_start.i, align 4
  %buf_pool_dma_start.i = getelementptr i8, ptr %dev, i32 2392
  %127 = ptrtoint ptr %buf_pool_dma_start.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %buf_pool_dma_start.i, align 4
  %129 = ptrtoint ptr %first_tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %first_tx_desc_dma.i, align 4
  %131 = ptrtoint ptr %first_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %first_tx_desc.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end4.i
  %i.092.i = phi i32 [ 0, %do.end4.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %tmp_buf_dma.091.i = phi i32 [ %128, %do.end4.i ], [ %add18.i, %for.body.i.for.body.i_crit_edge ]
  %tmp_tx_dma.090.i = phi i32 [ %130, %do.end4.i ], [ %add15.i, %for.body.i.for.body.i_crit_edge ]
  %tmp_buf.089.i = phi ptr [ %126, %do.end4.i ], [ %add.ptr17.i, %for.body.i.for.body.i_crit_edge ]
  %tmp_tx.088.i = phi ptr [ %132, %do.end4.i ], [ %add.ptr16.i, %for.body.i.for.body.i_crit_edge ]
  %tx_buf_ptr.i = getelementptr inbounds %struct.tx_desc, ptr %tmp_tx.088.i, i32 0, i32 4
  %133 = ptrtoint ptr %tx_buf_ptr.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %tmp_buf.089.i, ptr %tx_buf_ptr.i, align 16
  %134 = ptrtoint ptr %tmp_tx.088.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %tmp_tx.088.i, align 32
  %tdes1.i = getelementptr inbounds %struct.tx_desc, ptr %tmp_tx.088.i, i32 0, i32 1
  %135 = ptrtoint ptr %tdes1.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 129, ptr %tdes1.i, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %tmp_buf_dma.091.i) #10
  %tdes2.i = getelementptr inbounds %struct.tx_desc, ptr %tmp_tx.088.i, i32 0, i32 2
  %137 = ptrtoint ptr %tdes2.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %tdes2.i, align 8
  %add15.i = add i32 %tmp_tx_dma.090.i, 32
  %138 = tail call i32 @llvm.bswap.i32(i32 %add15.i) #10
  %tdes3.i = getelementptr %struct.tx_desc, ptr %tmp_tx.088.i, i32 0, i32 3
  %139 = ptrtoint ptr %tdes3.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %tdes3.i, align 4
  %add.ptr16.i = getelementptr %struct.tx_desc, ptr %tmp_tx.088.i, i32 1
  %next_tx_desc.i = getelementptr %struct.tx_desc, ptr %tmp_tx.088.i, i32 0, i32 5
  %140 = ptrtoint ptr %next_tx_desc.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %add.ptr16.i, ptr %next_tx_desc.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %tmp_buf.089.i, i32 1536
  %add18.i = add i32 %tmp_buf_dma.091.i, 1536
  %inc.i = add nuw nsw i32 %i.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %tdes3.i.le = getelementptr %struct.tx_desc, ptr %tmp_tx.088.i, i32 0, i32 3
  %next_tx_desc.i.le = getelementptr %struct.tx_desc, ptr %tmp_tx.088.i, i32 0, i32 5
  %141 = ptrtoint ptr %first_tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %first_tx_desc_dma.i, align 4
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #10
  %144 = ptrtoint ptr %tdes3.i.le to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %tdes3.i.le, align 4
  %145 = ptrtoint ptr %first_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %first_tx_desc.i, align 4
  %147 = ptrtoint ptr %next_tx_desc.i.le to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %146, ptr %next_tx_desc.i.le, align 4
  %148 = ptrtoint ptr %first_rx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %first_rx_desc_dma.i, align 4
  %150 = ptrtoint ptr %first_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %first_rx_desc.i, align 4
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.end.i
  %i.195.i = phi i32 [ 0, %for.end.i ], [ %inc32.i, %for.body28.i.for.body28.i_crit_edge ]
  %tmp_rx_dma.094.i = phi i32 [ %149, %for.end.i ], [ %add29.i, %for.body28.i.for.body28.i_crit_edge ]
  %tmp_rx.093.i = phi ptr [ %151, %for.end.i ], [ %add.ptr30.i, %for.body28.i.for.body28.i_crit_edge ]
  %152 = ptrtoint ptr %tmp_rx.093.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %tmp_rx.093.i, align 32
  %rdes1.i = getelementptr inbounds %struct.rx_desc, ptr %tmp_rx.093.i, i32 0, i32 1
  %153 = ptrtoint ptr %rdes1.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 393217, ptr %rdes1.i, align 4
  %add29.i = add i32 %tmp_rx_dma.094.i, 32
  %154 = tail call i32 @llvm.bswap.i32(i32 %add29.i) #10
  %rdes3.i = getelementptr %struct.rx_desc, ptr %tmp_rx.093.i, i32 0, i32 3
  %155 = ptrtoint ptr %rdes3.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %rdes3.i, align 4
  %add.ptr30.i = getelementptr %struct.rx_desc, ptr %tmp_rx.093.i, i32 1
  %next_rx_desc.i = getelementptr %struct.rx_desc, ptr %tmp_rx.093.i, i32 0, i32 5
  %156 = ptrtoint ptr %next_rx_desc.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %add.ptr30.i, ptr %next_rx_desc.i, align 4
  %inc32.i = add nuw nsw i32 %i.195.i, 1
  %exitcond96.not.i = icmp eq i32 %inc32.i, 48
  br i1 %exitcond96.not.i, label %uli526x_descriptor_init.exit, label %for.body28.i.for.body28.i_crit_edge

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.i

uli526x_descriptor_init.exit:                     ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  %rdes3.i.le = getelementptr %struct.rx_desc, ptr %tmp_rx.093.i, i32 0, i32 3
  %next_rx_desc.i.le = getelementptr %struct.rx_desc, ptr %tmp_rx.093.i, i32 0, i32 5
  %157 = ptrtoint ptr %first_rx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %first_rx_desc_dma.i, align 4
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #10
  %160 = ptrtoint ptr %rdes3.i.le to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %rdes3.i.le, align 4
  %161 = ptrtoint ptr %first_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %first_rx_desc.i, align 4
  %163 = ptrtoint ptr %next_rx_desc.i.le to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %162, ptr %next_rx_desc.i.le, align 4
  tail call fastcc void @allocate_rx_buffer(ptr noundef %dev) #10
  %cr6_data = getelementptr i8, ptr %dev, i32 2376
  %164 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %cr6_data, align 4
  %add.ptr.i97 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %166) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 1073740) #10
  tail call fastcc void @send_filter_frame(ptr noundef %dev)
  %cr7_data = getelementptr i8, ptr %dev, i32 2380
  %168 = ptrtoint ptr %cr7_data to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 98497, ptr %cr7_data, align 4
  %add.ptr50 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 -1048575744) #10, !srcloc !220
  %cr15_data = getelementptr i8, ptr %dev, i32 2384
  %169 = ptrtoint ptr %cr15_data to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %cr15_data, align 4
  %add.ptr51 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %171) #10, !srcloc !220
  %172 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cr6_data, align 4
  %or53 = or i32 %173, 8194
  store i32 %or53, ptr %cr6_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %174 = tail call i32 @llvm.bswap.i32(i32 %or53) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %174) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %175(i32 noundef 1073740) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uli526x_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %ioaddr1 = getelementptr i8, ptr %dev_id, i32 2364
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %lock = getelementptr i8, ptr %dev_id, i32 2320
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !220
  %add.ptr7 = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !221
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %cr5_data = getelementptr i8, ptr %dev_id, i32 2372
  %4 = ptrtoint ptr %cr5_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cr5_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %2) #10, !srcloc !220
  %5 = ptrtoint ptr %cr5_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cr5_data, align 4
  %and = and i32 %6, 98497
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cr7_data = getelementptr i8, ptr %dev_id, i32 2380
  %7 = ptrtoint ptr %cr7_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cr7_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #10, !srcloc !220
  br label %cleanup

if.end:                                           ; preds = %entry
  %and15 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end31, label %do.body18

do.body18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.36, i32 noundef %6) #13
  %reset_fatal = getelementptr i8, ptr %dev_id, i32 2548
  %10 = ptrtoint ptr %reset_fatal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reset_fatal, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %reset_fatal, align 4
  %wait_reset = getelementptr i8, ptr %dev_id, i32 2466
  %12 = ptrtoint ptr %wait_reset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %wait_reset, align 2
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %and33 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end37_crit_edge, label %land.lhs.true

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end31
  %rx_avail_cnt = getelementptr i8, ptr %dev_id, i32 2448
  %13 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_avail_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool35.not = icmp eq i32 %14, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end37_crit_edge, label %while.body.lr.ph.i

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

while.body.lr.ph.i:                               ; preds = %land.lhs.true
  %rx_ready_ptr.i = getelementptr i8, ptr %dev_id, i32 2440
  %15 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %rxptr.0124.i = load ptr, ptr %rx_ready_ptr.i, align 4
  %interval_rx_cnt.i = getelementptr i8, ptr %dev_id, i32 2452
  %pdev.i = getelementptr i8, ptr %dev_id, i32 2316
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 14
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 12
  %rx_length_errors.c.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 10
  %cr6_data.i = getelementptr i8, ptr %dev_id, i32 2376
  %stats58.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end76.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %16 = phi i32 [ %14, %while.body.lr.ph.i ], [ %64, %if.end76.i.while.body.i_crit_edge ]
  %rxptr.0126.i = phi ptr [ %rxptr.0124.i, %while.body.lr.ph.i ], [ %rxptr.0.i, %if.end76.i.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %rxptr.0126.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxptr.0126.i, align 32
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool2.not.i = icmp sgt i32 %19, -1
  br i1 %tobool2.not.i, label %if.end.i, label %while.body.i.uli526x_rx_packet.exit_crit_edge

while.body.i.uli526x_rx_packet.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uli526x_rx_packet.exit

if.end.i:                                         ; preds = %while.body.i
  %dec.i = add i32 %16, -1
  %20 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec.i, ptr %rx_avail_cnt, align 4
  %21 = ptrtoint ptr %interval_rx_cnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %interval_rx_cnt.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %interval_rx_cnt.i, align 4
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %rdes2.i = getelementptr inbounds %struct.rx_desc, ptr %rxptr.0126.i, i32 0, i32 2
  %25 = ptrtoint ptr %rdes2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rdes2.i, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void @dma_unmap_page_attrs(ptr noundef %dev4.i, i32 noundef %27, i32 noundef 1568, i32 noundef 2, i32 noundef 0) #10
  %and5.i = and i32 %19, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and5.i)
  %cmp.not.i = icmp eq i32 %and5.i, 768
  br i1 %cmp.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %28 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool7.not.i = icmp eq i32 %28, 0
  br i1 %tobool7.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.end.i

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, i32 noundef %19) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %do.body.i.do.end12.i_crit_edge
  %rx_skb_ptr.i = getelementptr inbounds %struct.rx_desc, ptr %rxptr.0126.i, i32 0, i32 4
  %29 = ptrtoint ptr %rx_skb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_skb_ptr.i, align 16
  tail call fastcc void @uli526x_reuse_skb(ptr noundef %add.ptr.i, ptr noundef %30) #10
  br label %if.end76.i

if.else.i:                                        ; preds = %if.end.i
  %shr.i = lshr i32 %19, 16
  %and13.i = and i32 %shr.i, 16383
  %sub.i = add nsw i32 %and13.i, -4
  %and14.i = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else.i.if.then42.i_crit_edge, label %if.then16.i

if.else.i.if.then42.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

if.then16.i:                                      ; preds = %if.else.i
  %31 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_errors.i, align 8
  %inc17.i = add i32 %32, 1
  store i32 %inc17.i, ptr %rx_errors.i, align 8
  %and18.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.then16.i.if.end23.i_crit_edge, label %if.then20.i

if.then16.i.if.end23.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc22.i = add i32 %34, 1
  store i32 %inc22.i, ptr %rx_fifo_errors.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.then16.i.if.end23.i_crit_edge
  %and24.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end29.i_crit_edge, label %if.then26.i

if.end23.i.if.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_crc_errors.i, align 8
  %inc28.i = add i32 %36, 1
  store i32 %inc28.i, ptr %rx_crc_errors.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end29.i_crit_edge
  %and30.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.lor.lhs.false.i_crit_edge, label %lor.lhs.false.critedge121.i

if.end29.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.critedge121.i:                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %rx_length_errors.c.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_length_errors.c.i, align 8
  %inc34.c.i = add i32 %38, 1
  store i32 %inc34.c.i, ptr %rx_length_errors.c.i, align 8
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.false.critedge121.i, %if.end29.i.lor.lhs.false.i_crit_edge
  %39 = ptrtoint ptr %cr6_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cr6_data.i, align 4
  %and39.i = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp ne i32 %and39.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and13.i)
  %cmp41.i = icmp ugt i32 %and13.i, 10
  %or.cond.i = select i1 %tobool40.not.i, i1 %cmp41.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then42.i_crit_edge, label %do.body63.i

lor.lhs.false.i.if.then42.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

if.then42.i:                                      ; preds = %lor.lhs.false.i.if.then42.i_crit_edge, %if.else.i.if.then42.i_crit_edge
  %rx_skb_ptr43.i = getelementptr inbounds %struct.rx_desc, ptr %rxptr.0126.i, i32 0, i32 4
  %41 = ptrtoint ptr %rx_skb_ptr43.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_skb_ptr43.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %and13.i)
  %cmp44.i = icmp ult i32 %and13.i, 104
  br i1 %cmp44.i, label %land.lhs.true45.i, label %if.then42.i.if.else53.i_crit_edge

if.then42.i.if.else53.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else53.i

land.lhs.true45.i:                                ; preds = %if.then42.i
  %add.i = add nsw i32 %and13.i, -2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_id, i32 noundef %add.i, i32 noundef 2592) #10
  %cmp47.not.i = icmp eq ptr %call.i.i, null
  br i1 %cmp47.not.i, label %land.lhs.true45.i.if.else53.i_crit_edge, label %if.then48.i

land.lhs.true45.i.if.else53.i_crit_edge:          ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else53.i

if.then48.i:                                      ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %46, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %47 = ptrtoint ptr %rx_skb_ptr43.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_skb_ptr43.i, align 16
  %tail.i122.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %tail.i122.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i122.i, align 8
  %call.i123.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub.i) #10
  %51 = call ptr @memcpy(ptr %call.i123.i, ptr %50, i32 %sub.i)
  %52 = ptrtoint ptr %rx_skb_ptr43.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_skb_ptr43.i, align 16
  tail call fastcc void @uli526x_reuse_skb(ptr noundef %add.ptr.i, ptr noundef %53) #10
  br label %if.end55.i

if.else53.i:                                      ; preds = %land.lhs.true45.i.if.else53.i_crit_edge, %if.then42.i.if.else53.i_crit_edge
  %call54.i = tail call ptr @skb_put(ptr noundef %42, i32 noundef %sub.i) #10
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else53.i, %if.then48.i
  %skb.0.i = phi ptr [ %call.i.i, %if.then48.i ], [ %42, %if.else53.i ]
  %call56.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0.i, ptr noundef %dev_id) #10
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %54 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %call56.i, ptr %protocol.i, align 8
  %call57.i = tail call i32 @netif_rx(ptr noundef %skb.0.i) #10
  %55 = ptrtoint ptr %stats58.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stats58.i, align 8
  %inc59.i = add i32 %56, 1
  store i32 %inc59.i, ptr %stats58.i, align 8
  %57 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_bytes.i, align 8
  %add61.i = add i32 %58, %sub.i
  store i32 %add61.i, ptr %rx_bytes.i, align 8
  br label %if.end76.i

do.body63.i:                                      ; preds = %lor.lhs.false.i
  %59 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool64.not.i = icmp eq i32 %59, 0
  br i1 %tobool64.not.i, label %do.body63.i.do.end73.i_crit_edge, label %do.end68.i

do.body63.i.do.end73.i_crit_edge:                 ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73.i

do.end68.i:                                       ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #12
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, i32 noundef %19) #13
  br label %do.end73.i

do.end73.i:                                       ; preds = %do.end68.i, %do.body63.i.do.end73.i_crit_edge
  %rx_skb_ptr74.i = getelementptr inbounds %struct.rx_desc, ptr %rxptr.0126.i, i32 0, i32 4
  %60 = ptrtoint ptr %rx_skb_ptr74.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_skb_ptr74.i, align 16
  tail call fastcc void @uli526x_reuse_skb(ptr noundef %add.ptr.i, ptr noundef %61) #10
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end73.i, %if.end55.i, %do.end12.i
  %next_rx_desc.i = getelementptr inbounds %struct.rx_desc, ptr %rxptr.0126.i, i32 0, i32 5
  %62 = ptrtoint ptr %next_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %rxptr.0.i = load ptr, ptr %next_rx_desc.i, align 4
  %63 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_avail_cnt, align 4
  %tobool.not.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i, label %if.end76.i.uli526x_rx_packet.exit_crit_edge, label %if.end76.i.while.body.i_crit_edge

if.end76.i.while.body.i_crit_edge:                ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end76.i.uli526x_rx_packet.exit_crit_edge:      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uli526x_rx_packet.exit

uli526x_rx_packet.exit:                           ; preds = %if.end76.i.uli526x_rx_packet.exit_crit_edge, %while.body.i.uli526x_rx_packet.exit_crit_edge
  %rxptr.0.lcssa.i = phi ptr [ %rxptr.0126.i, %while.body.i.uli526x_rx_packet.exit_crit_edge ], [ %rxptr.0.i, %if.end76.i.uli526x_rx_packet.exit_crit_edge ]
  %65 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %rxptr.0.lcssa.i, ptr %rx_ready_ptr.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %uli526x_rx_packet.exit, %land.lhs.true.if.end37_crit_edge, %if.end31.if.end37_crit_edge
  %rx_avail_cnt38 = getelementptr i8, ptr %dev_id, i32 2448
  %66 = ptrtoint ptr %rx_avail_cnt38 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_avail_cnt38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %67)
  %cmp39 = icmp ult i32 %67, 48
  br i1 %cmp39, label %if.then41, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @allocate_rx_buffer(ptr noundef %dev_id)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37.if.end42_crit_edge
  %68 = ptrtoint ptr %cr5_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cr5_data, align 4
  %and44 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end47_crit_edge, label %if.then46

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then46:                                        ; preds = %if.end42
  %tx_remove_ptr.i = getelementptr i8, ptr %dev_id, i32 2428
  %tx_packet_cnt.i = getelementptr i8, ptr %dev_id, i32 2444
  %70 = ptrtoint ptr %tx_remove_ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %txptr.094.i = load ptr, ptr %tx_remove_ptr.i, align 4
  %71 = ptrtoint ptr %tx_packet_cnt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_packet_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not95.i = icmp eq i32 %72, 0
  br i1 %tobool.not95.i, label %if.then46.while.end.thread.i_crit_edge, label %while.body.lr.ph.i83

if.then46.while.end.thread.i_crit_edge:           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread.i

while.body.lr.ph.i83:                             ; preds = %if.then46
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 9
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %tx_fifo_underrun.i = getelementptr i8, ptr %dev_id, i32 2516
  %cr6_data.i82 = getelementptr i8, ptr %dev_id, i32 2376
  %tx_excessive_collision.i = getelementptr i8, ptr %dev_id, i32 2532
  %tx_late_collision.i = getelementptr i8, ptr %dev_id, i32 2528
  %tx_no_carrier.i = getelementptr i8, ptr %dev_id, i32 2524
  %tx_loss_carrier.i = getelementptr i8, ptr %dev_id, i32 2520
  %tx_jabber_timeout.i = getelementptr i8, ptr %dev_id, i32 2536
  br label %while.body.i85

while.end.thread.i:                               ; preds = %if.end53.i.while.end.thread.i_crit_edge, %if.then46.while.end.thread.i_crit_edge
  %txptr.0.lcssa.i = phi ptr [ %txptr.094.i, %if.then46.while.end.thread.i_crit_edge ], [ %txptr.0.i, %if.end53.i.while.end.thread.i_crit_edge ]
  %73 = ptrtoint ptr %tx_remove_ptr.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %txptr.0.lcssa.i, ptr %tx_remove_ptr.i, align 4
  br label %if.then57.i

while.body.i85:                                   ; preds = %if.end53.i.while.body.i85_crit_edge, %while.body.lr.ph.i83
  %74 = phi i32 [ %72, %while.body.lr.ph.i83 ], [ %111, %if.end53.i.while.body.i85_crit_edge ]
  %txptr.096.i = phi ptr [ %txptr.094.i, %while.body.lr.ph.i83 ], [ %txptr.0.i, %if.end53.i.while.body.i85_crit_edge ]
  %75 = ptrtoint ptr %txptr.096.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %txptr.096.i, align 32
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %tobool2.not.i84 = icmp sgt i32 %77, -1
  br i1 %tobool2.not.i84, label %if.end.i89, label %while.end.i

if.end.i89:                                       ; preds = %while.body.i85
  %dec.i86 = add i32 %74, -1
  %78 = ptrtoint ptr %tx_packet_cnt.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %dec.i86, ptr %tx_packet_cnt.i, align 4
  %79 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_packets.i, align 4
  %inc.i87 = add i32 %80, 1
  store i32 %inc.i87, ptr %tx_packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -129, i32 %76)
  %cmp.not.i88 = icmp eq i32 %76, -129
  br i1 %cmp.not.i88, label %if.end.i89.if.end53.i_crit_edge, label %if.then4.i

if.end.i89.if.end53.i_crit_edge:                  ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then4.i:                                       ; preds = %if.end.i89
  %shr.i90 = lshr i32 %77, 3
  %and5.i91 = and i32 %shr.i90, 15
  %81 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %collisions.i, align 4
  %add.i92 = add i32 %82, %and5.i91
  store i32 %add.i92, ptr %collisions.i, align 4
  %tdes1.i = getelementptr inbounds %struct.tx_desc, ptr %txptr.096.i, i32 0, i32 1
  %83 = ptrtoint ptr %tdes1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tdes1.i, align 4
  %85 = and i32 %84, -16318464
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  %87 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_bytes.i, align 4
  %add9.i = add i32 %86, %88
  store i32 %add9.i, ptr %tx_bytes.i, align 4
  %and10.i = and i32 %77, 17154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.then4.i.if.end53.ithread-pre-split_crit_edge, label %if.then12.i

if.then4.i.if.end53.ithread-pre-split_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.ithread-pre-split

if.then12.i:                                      ; preds = %if.then4.i
  %89 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tx_errors.i, align 4
  %inc14.i = add i32 %90, 1
  store i32 %inc14.i, ptr %tx_errors.i, align 4
  %and15.i = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then12.i.if.end26.i_crit_edge, label %if.then17.i

if.then12.i.if.end26.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then17.i:                                      ; preds = %if.then12.i
  %91 = ptrtoint ptr %tx_fifo_underrun.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_fifo_underrun.i, align 4
  %inc18.i = add i32 %92, 1
  store i32 %inc18.i, ptr %tx_fifo_underrun.i, align 4
  %93 = ptrtoint ptr %cr6_data.i82 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cr6_data.i82, align 4
  %and19.i = and i32 %94, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.then17.i.if.end26.i_crit_edge

if.then17.i.if.end26.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %94, 2097152
  %95 = ptrtoint ptr %cr6_data.i82 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or.i, ptr %cr6_data.i82, align 4
  %96 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %97, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %98 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i93, i32 %98) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 1073740) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.then17.i.if.end26.i_crit_edge, %if.then12.i.if.end26.i_crit_edge
  %and27.i = and i32 %77, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end31.i_crit_edge, label %if.then29.i

if.end26.i.if.end31.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %tx_excessive_collision.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_excessive_collision.i, align 4
  %inc30.i = add i32 %101, 1
  store i32 %inc30.i, ptr %tx_excessive_collision.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end31.i_crit_edge
  %and32.i = and i32 %77, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end36.i_crit_edge, label %if.then34.i

if.end31.i.if.end36.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %tx_late_collision.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_late_collision.i, align 4
  %inc35.i = add i32 %103, 1
  store i32 %inc35.i, ptr %tx_late_collision.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end36.i_crit_edge
  %and37.i = and i32 %77, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end36.i.if.end41.i_crit_edge, label %if.then39.i

if.end36.i.if.end41.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %tx_no_carrier.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_no_carrier.i, align 4
  %inc40.i = add i32 %105, 1
  store i32 %inc40.i, ptr %tx_no_carrier.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %if.end36.i.if.end41.i_crit_edge
  %and42.i = and i32 %77, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.if.end46.i_crit_edge, label %if.then44.i

if.end41.i.if.end46.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %tx_loss_carrier.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_loss_carrier.i, align 4
  %inc45.i = add i32 %107, 1
  store i32 %inc45.i, ptr %tx_loss_carrier.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %if.end41.i.if.end46.i_crit_edge
  %and47.i = and i32 %77, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.if.end53.ithread-pre-split_crit_edge, label %if.then49.i

if.end46.i.if.end53.ithread-pre-split_crit_edge:  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.ithread-pre-split

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %tx_jabber_timeout.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx_jabber_timeout.i, align 4
  %inc50.i = add i32 %109, 1
  store i32 %inc50.i, ptr %tx_jabber_timeout.i, align 4
  br label %if.end53.ithread-pre-split

if.end53.ithread-pre-split:                       ; preds = %if.then49.i, %if.end46.i.if.end53.ithread-pre-split_crit_edge, %if.then4.i.if.end53.ithread-pre-split_crit_edge
  %110 = ptrtoint ptr %tx_packet_cnt.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pr = load i32, ptr %tx_packet_cnt.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end53.ithread-pre-split, %if.end.i89.if.end53.i_crit_edge
  %111 = phi i32 [ %.pr, %if.end53.ithread-pre-split ], [ %dec.i86, %if.end.i89.if.end53.i_crit_edge ]
  %next_tx_desc.i = getelementptr inbounds %struct.tx_desc, ptr %txptr.096.i, i32 0, i32 5
  %112 = ptrtoint ptr %next_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %txptr.0.i = load ptr, ptr %next_tx_desc.i, align 4
  %tobool.not.i94 = icmp eq i32 %111, 0
  br i1 %tobool.not.i94, label %if.end53.i.while.end.thread.i_crit_edge, label %if.end53.i.while.body.i85_crit_edge

if.end53.i.while.body.i85_crit_edge:              ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i85

if.end53.i.while.end.thread.i_crit_edge:          ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread.i

while.end.i:                                      ; preds = %while.body.i85
  %113 = ptrtoint ptr %tx_remove_ptr.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %txptr.096.i, ptr %tx_remove_ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %74)
  %cmp56.i = icmp ult i32 %74, 29
  br i1 %cmp56.i, label %while.end.i.if.then57.i_crit_edge, label %while.end.i.if.end47_crit_edge

while.end.i.if.end47_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

while.end.i.if.then57.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57.i

if.then57.i:                                      ; preds = %while.end.i.if.then57.i_crit_edge, %while.end.thread.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %114 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %115) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then57.i, %while.end.i.if.end47_crit_edge, %if.end42.if.end47_crit_edge
  %cr7_data48 = getelementptr i8, ptr %dev_id, i32 2380
  %116 = ptrtoint ptr %cr7_data48 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cr7_data48, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %118) #10, !srcloc !220
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.body18, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uli526x_timer(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -164
  %pdev = getelementptr i8, ptr %t, i32 -152
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr2 = getelementptr i8, ptr %t, i32 -104
  %4 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr2, align 4
  %lock = getelementptr i8, ptr %t, i32 -148
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %add.ptr9 = getelementptr i8, ptr %5, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #10, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %interval_rx_cnt = getelementptr i8, ptr %t, i32 -16
  %7 = ptrtoint ptr %interval_rx_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interval_rx_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp11 = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %or.cond = select i1 %cmp11, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reset_cr8 = getelementptr i8, ptr %t, i32 76
  %9 = ptrtoint ptr %reset_cr8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset_cr8, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %reset_cr8, align 4
  %wait_reset = getelementptr i8, ptr %t, i32 -2
  %11 = ptrtoint ptr %wait_reset to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %wait_reset, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %interval_rx_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %interval_rx_cnt, align 4
  %tx_packet_cnt = getelementptr i8, ptr %t, i32 -24
  %13 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_packet_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %if.end.if.end30_crit_edge, label %land.lhs.true15

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true15:                                  ; preds = %if.end
  %call16 = tail call i32 @dev_trans_start(ptr noundef %3) #10
  %add = add i32 %call16, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp17 = icmp slt i32 %sub, 0
  br i1 %cmp17, label %if.then19, label %land.lhs.true15.if.end30_crit_edge

land.lhs.true15.if.end30_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then19:                                        ; preds = %land.lhs.true15
  %add.ptr20 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777216) #10, !srcloc !220
  %call21 = tail call i32 @dev_trans_start(ptr noundef %3) #10
  %add22 = add i32 %call21, 800
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub23 = sub i32 %add22, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23)
  %cmp24 = icmp slt i32 %sub23, 0
  br i1 %cmp24, label %if.then26, label %if.then19.if.end30_crit_edge

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then26:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %reset_TXtimeout = getelementptr i8, ptr %t, i32 84
  %17 = ptrtoint ptr %reset_TXtimeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reset_TXtimeout, align 4
  %inc27 = add i32 %18, 1
  store i32 %inc27, ptr %reset_TXtimeout, align 4
  %wait_reset28 = getelementptr i8, ptr %t, i32 -2
  %19 = ptrtoint ptr %wait_reset28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %wait_reset28, align 2
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.43) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then19.if.end30_crit_edge, %land.lhs.true15.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %wait_reset31 = getelementptr i8, ptr %t, i32 -2
  %20 = ptrtoint ptr %wait_reset31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %wait_reset31, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool32.not = icmp eq i8 %21, 0
  br i1 %tobool32.not, label %if.end50, label %do.body34

do.body34:                                        ; preds = %if.end30
  %22 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool35.not = icmp eq i32 %22, 0
  br i1 %tobool35.not, label %do.end45.thread, label %do.end45

do.end45.thread:                                  ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %reset_count244 = getelementptr i8, ptr %t, i32 72
  %23 = ptrtoint ptr %reset_count244 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reset_count244, align 4
  %inc46245 = add i32 %24, 1
  store i32 %inc46245, ptr %reset_count244, align 4
  br label %uli526x_dynamic_reset.exit

do.end45:                                         ; preds = %do.body34
  %25 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_packet_cnt, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, i32 noundef %26) #13
  %.pr = load i32, ptr @uli526x_debug, align 4
  %reset_count = getelementptr i8, ptr %t, i32 72
  %27 = ptrtoint ptr %reset_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reset_count, align 4
  %inc46 = add i32 %28, 1
  store i32 %inc46, ptr %reset_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %do.end45.uli526x_dynamic_reset.exit_crit_edge, label %do.end.i

do.end45.uli526x_dynamic_reset.exit_crit_edge:    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %uli526x_dynamic_reset.exit

do.end.i:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.57, i32 noundef 0) #13
  br label %uli526x_dynamic_reset.exit

uli526x_dynamic_reset.exit:                       ; preds = %do.end.i, %do.end45.uli526x_dynamic_reset.exit_crit_edge, %do.end45.thread
  tail call fastcc void @uli526x_reset_prepare(ptr noundef %3) #10
  tail call fastcc void @uli526x_init(ptr noundef %3) #10
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %30) #10
  br label %cleanup

if.end50:                                         ; preds = %if.end30
  %read = getelementptr i8, ptr %t, i32 -160
  %31 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read, align 4
  %phy_addr = getelementptr i8, ptr %t, i32 -4
  %33 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %phy_addr, align 4
  %call51 = tail call zeroext i16 %32(ptr noundef %add.ptr, i8 noundef zeroext %34, i8 noundef zeroext 5) #10
  %35 = and i16 %call51, 480
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp53.not = icmp eq i16 %35, 0
  %spec.select = select i1 %cmp53.not, i32 0, i32 3
  %link_failed = getelementptr i8, ptr %t, i32 -3
  %36 = ptrtoint ptr %link_failed to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %link_failed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool61.not = icmp eq i8 %37, 0
  br i1 %cmp53.not, label %land.lhs.true60, label %land.lhs.true94.critedge

land.lhs.true60:                                  ; preds = %if.end50
  br i1 %tobool61.not, label %do.body63, label %if.then155

do.body63:                                        ; preds = %land.lhs.true60
  %38 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool64.not = icmp eq i32 %38, 0
  br i1 %tobool64.not, label %do.body63.do.end74_crit_edge, label %do.end68

do.body63.do.end74_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

do.end68:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.48, i32 noundef %spec.select) #13
  br label %do.end74

do.end74:                                         ; preds = %do.end68, %do.body63.do.end74_crit_edge
  tail call void @netif_carrier_off(ptr noundef %3) #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.49) #13
  %39 = ptrtoint ptr %link_failed to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %link_failed, align 1
  %media_mode = getelementptr i8, ptr %t, i32 -6
  %40 = ptrtoint ptr %media_mode to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %media_mode, align 2
  %42 = and i8 %41, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool78.not = icmp eq i8 %42, 0
  br i1 %tobool78.not, label %if.then79, label %do.end74.if.end81_crit_edge

do.end74.if.end81_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then79:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  %45 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %phy_addr, align 4
  tail call void %44(ptr noundef %add.ptr, i8 noundef zeroext %46, i8 noundef zeroext 0, i16 noundef zeroext 4096) #10
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %do.end74.if.end81_crit_edge
  %47 = ptrtoint ptr %media_mode to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %media_mode, align 2
  %49 = and i8 %48, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool85.not = icmp eq i8 %49, 0
  br i1 %tobool85.not, label %if.end81.if.end163_crit_edge, label %if.then86

if.end81.if.end163_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %cr6_data = getelementptr i8, ptr %t, i32 -92
  %50 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cr6_data, align 4
  %and87 = and i32 %51, -513
  store i32 %and87, ptr %cr6_data, align 4
  %52 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr2, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %54 = tail call i32 @llvm.bswap.i32(i32 %and87) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %54) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 1073740) #10
  br label %if.end163

land.lhs.true94.critedge:                         ; preds = %if.end50
  br i1 %tobool61.not, label %land.lhs.true94.critedge.if.end163_crit_edge, label %do.body99

land.lhs.true94.critedge.if.end163_crit_edge:     ; preds = %land.lhs.true94.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

do.body99:                                        ; preds = %land.lhs.true94.critedge
  %56 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool100.not = icmp eq i32 %56, 0
  br i1 %tobool100.not, label %do.body99.do.end110_crit_edge, label %do.end104

do.body99.do.end110_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end110

do.end104:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, i32 noundef %spec.select) #13
  br label %do.end110

do.end110:                                        ; preds = %do.end104, %do.body99.do.end110_crit_edge
  %57 = ptrtoint ptr %link_failed to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %link_failed, align 1
  %media_mode112 = getelementptr i8, ptr %t, i32 -6
  %58 = ptrtoint ptr %media_mode112 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %media_mode112, align 2
  %60 = and i8 %59, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool115.not = icmp eq i8 %60, 0
  br i1 %tobool115.not, label %do.end110.if.end122_crit_edge, label %land.lhs.true116

do.end110.if.end122_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

land.lhs.true116:                                 ; preds = %do.end110
  %61 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read, align 4
  %63 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %phy_addr, align 4
  %call.i237 = tail call zeroext i16 %62(ptr noundef %add.ptr, i8 noundef zeroext %64, i8 noundef zeroext 1) #10
  %65 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read, align 4
  %67 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %phy_addr, align 4
  %call4.i = tail call zeroext i16 %66(ptr noundef %add.ptr, i8 noundef zeroext %68, i8 noundef zeroext 1) #10
  %conv.i = zext i16 %call4.i to i32
  %and.i = and i32 %conv.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 36
  br i1 %cmp.i, label %if.then.i, label %if.else35.i

if.then.i:                                        ; preds = %land.lhs.true116
  %69 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read, align 4
  %71 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %phy_addr, align 4
  %call8.i = tail call zeroext i16 %70(ptr noundef %add.ptr, i8 noundef zeroext %72, i8 noundef zeroext 5) #10
  %73 = shl i16 %call8.i, 7
  %74 = and i16 %73, -4096
  %conv12.i = zext i16 %74 to i32
  %and13.i = and i32 %conv12.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i238 = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i238, label %if.else.i, label %sw.bb32.i

if.else.i:                                        ; preds = %if.then.i
  %and16.i = and i32 %conv12.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else19.i, label %sw.bb30.i

if.else19.i:                                      ; preds = %if.else.i
  %and21.i = and i32 %conv12.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %op_mode.i = getelementptr i8, ptr %t, i32 -5
  br i1 %tobool22.not.i, label %sw.bb.i, label %sw.bb28.i

sw.bb.i:                                          ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %op_mode.i, align 1
  br label %if.end122

sw.bb28.i:                                        ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 4, ptr %op_mode.i, align 1
  br label %if.end122

sw.bb30.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %op_mode31.i = getelementptr i8, ptr %t, i32 -5
  %77 = ptrtoint ptr %op_mode31.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %op_mode31.i, align 1
  br label %if.end122

sw.bb32.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %op_mode33.i = getelementptr i8, ptr %t, i32 -5
  %78 = ptrtoint ptr %op_mode33.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 5, ptr %op_mode33.i, align 1
  br label %if.end122

if.else35.i:                                      ; preds = %land.lhs.true116
  %op_mode36.i = getelementptr i8, ptr %t, i32 -5
  %79 = ptrtoint ptr %op_mode36.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %op_mode36.i, align 1
  %80 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool37.not.i = icmp eq i32 %80, 0
  br i1 %tobool37.not.i, label %if.else35.i.if.then120_crit_edge, label %do.end.i239

if.else35.i.if.then120_crit_edge:                 ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then120

do.end.i239:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #12
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.61, i32 noundef %conv.i) #13
  br label %if.then120

if.then120:                                       ; preds = %do.end.i239, %if.else35.i.if.then120_crit_edge
  %81 = ptrtoint ptr %link_failed to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %link_failed, align 1
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %sw.bb32.i, %sw.bb30.i, %sw.bb28.i, %sw.bb.i, %do.end110.if.end122_crit_edge
  %op_mode.i240 = getelementptr i8, ptr %t, i32 -5
  %82 = ptrtoint ptr %op_mode.i240 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %op_mode.i240, align 1
  %84 = and i8 %83, 4
  %cr6_data2.i = getelementptr i8, ptr %t, i32 -92
  %85 = ptrtoint ptr %cr6_data2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cr6_data2.i, align 4
  %and3.i = and i32 %86, -513
  %87 = zext i8 %84 to i32
  %88 = shl nuw nsw i32 %87, 7
  %and3.sink.i = or i32 %88, %and3.i
  store i32 %and3.sink.i, ptr %cr6_data2.i, align 4
  %89 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioaddr2, align 4
  %add.ptr.i.i = getelementptr i8, ptr %90, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %91 = tail call i32 @llvm.bswap.i32(i32 %and3.sink.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %91) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 1073740) #10
  %93 = ptrtoint ptr %media_mode112 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %media_mode112, align 2
  %95 = and i8 %94, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool7.not.i = icmp eq i8 %95, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end122.uli526x_process_mode.exit_crit_edge

if.end122.uli526x_process_mode.exit_crit_edge:    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %uli526x_process_mode.exit

if.then8.i:                                       ; preds = %if.end122
  %96 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read, align 4
  %98 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %phy_addr, align 4
  %call.i243 = tail call zeroext i16 %97(ptr noundef %add.ptr, i8 noundef zeroext %99, i8 noundef zeroext 6) #10
  %100 = and i16 %call.i243, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool11.not.i = icmp eq i16 %100, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.then8.i.uli526x_process_mode.exit_crit_edge

if.then8.i.uli526x_process_mode.exit_crit_edge:   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uli526x_process_mode.exit

if.then12.i:                                      ; preds = %if.then8.i
  %101 = ptrtoint ptr %op_mode.i240 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %op_mode.i240, align 1
  %switch.tableidx = add i8 %102, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %103 = icmp ult i8 %switch.tableidx, 5
  br i1 %103, label %switch.lookup, label %if.then12.i.sw.epilog.i_crit_edge

if.then12.i.sw.epilog.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %104 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.uli526x_timer, i32 0, i32 %104
  %105 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %105)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.then12.i.sw.epilog.i_crit_edge
  %phy_reg.0.i = phi i16 [ 0, %if.then12.i.sw.epilog.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %106 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr, align 4
  %108 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %phy_addr, align 4
  tail call void %107(ptr noundef %add.ptr, i8 noundef zeroext %109, i8 noundef zeroext 0, i16 noundef zeroext %phy_reg.0.i) #10
  br label %uli526x_process_mode.exit

uli526x_process_mode.exit:                        ; preds = %sw.epilog.i, %if.then8.i.uli526x_process_mode.exit_crit_edge, %if.end122.uli526x_process_mode.exit_crit_edge
  %110 = ptrtoint ptr %link_failed to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %link_failed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp125 = icmp eq i8 %111, 0
  br i1 %cmp125, label %if.then127, label %uli526x_process_mode.exit.if.end163_crit_edge

uli526x_process_mode.exit.if.end163_crit_edge:    ; preds = %uli526x_process_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then127:                                       ; preds = %uli526x_process_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %op_mode.i240 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %op_mode.i240, align 1
  %114 = and i8 %113, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %115 = icmp eq i8 %114, 1
  %116 = select i1 %115, i32 100, i32 10
  %117 = and i8 %113, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %117)
  %118 = icmp eq i8 %117, 4
  %119 = select i1 %118, ptr @.str.54, ptr @.str.55
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.53, i32 noundef %116, ptr noundef nonnull %119) #13
  tail call void @netif_carrier_on(ptr noundef %3) #10
  br label %if.end163

if.then155:                                       ; preds = %land.lhs.true60
  %init = getelementptr i8, ptr %t, i32 216
  %120 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %121)
  %cmp157 = icmp eq i8 %121, 1
  br i1 %cmp157, label %if.then159, label %if.then155.if.end163_crit_edge

if.then155.if.end163_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then159:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.49) #13
  tail call void @netif_carrier_off(ptr noundef %3) #10
  br label %if.end163

if.end163:                                        ; preds = %if.then159, %if.then155.if.end163_crit_edge, %if.then127, %uli526x_process_mode.exit.if.end163_crit_edge, %land.lhs.true94.critedge.if.end163_crit_edge, %if.then86, %if.end81.if.end163_crit_edge
  %init164 = getelementptr i8, ptr %t, i32 216
  %122 = ptrtoint ptr %init164 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %init164, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %uli526x_dynamic_reset.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  %add165 = add i32 %123, 100
  %expires167 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %124 = ptrtoint ptr %expires167 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add165, ptr %expires167, align 4
  tail call void @add_timer(ptr noundef %t) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_filter_frame(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %2 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, i32 noundef 0) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %tx_insert_ptr = getelementptr i8, ptr %dev, i32 2424
  %3 = ptrtoint ptr %tx_insert_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_insert_ptr, align 4
  %tx_buf_ptr = getelementptr inbounds %struct.tx_desc, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %tx_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_buf_ptr, align 16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 2
  %conv = zext i16 %10 to i32
  %shl = shl nuw i32 %conv, 16
  %incdec.ptr = getelementptr i32, ptr %6, i32 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl, ptr %6, align 4
  %arrayidx6 = getelementptr i16, ptr %8, i32 1
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %13 to i32
  %shl8 = shl nuw i32 %conv7, 16
  %incdec.ptr9 = getelementptr i32, ptr %6, i32 2
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl8, ptr %incdec.ptr, align 4
  %arrayidx10 = getelementptr i16, ptr %8, i32 2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %16 to i32
  %shl12 = shl nuw i32 %conv11, 16
  %incdec.ptr13 = getelementptr i32, ptr %6, i32 3
  %17 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl12, ptr %incdec.ptr9, align 4
  %incdec.ptr14 = getelementptr i32, ptr %6, i32 4
  %18 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -65536, ptr %incdec.ptr13, align 4
  %incdec.ptr15 = getelementptr i32, ptr %6, i32 5
  %19 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -65536, ptr %incdec.ptr14, align 4
  %incdec.ptr16 = getelementptr i32, ptr %6, i32 6
  %20 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -65536, ptr %incdec.ptr15, align 4
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %21 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %21)
  %ha.03 = load ptr, ptr %mc, align 4
  %cmp.not4 = icmp eq ptr %ha.03, %mc
  br i1 %cmp.not4, label %do.end5.for.end_crit_edge, label %do.end5.for.body_crit_edge

do.end5.for.body_crit_edge:                       ; preds = %do.end5
  br label %for.body

do.end5.for.end_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end5.for.body_crit_edge
  %ha.06 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.03, %do.end5.for.body_crit_edge ]
  %suptr.05 = phi ptr [ %incdec.ptr33, %for.body.for.body_crit_edge ], [ %incdec.ptr16, %do.end5.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.06, i32 0, i32 2
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr, align 2
  %conv23 = zext i16 %23 to i32
  %shl24 = shl nuw i32 %conv23, 16
  %incdec.ptr25 = getelementptr i32, ptr %suptr.05, i32 1
  %24 = ptrtoint ptr %suptr.05 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl24, ptr %suptr.05, align 4
  %arrayidx26 = getelementptr %struct.netdev_hw_addr, ptr %ha.06, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx26, align 2
  %conv27 = zext i16 %26 to i32
  %shl28 = shl nuw i32 %conv27, 16
  %incdec.ptr29 = getelementptr i32, ptr %suptr.05, i32 2
  %27 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl28, ptr %incdec.ptr25, align 4
  %arrayidx30 = getelementptr %struct.netdev_hw_addr, ptr %ha.06, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx30, align 2
  %conv31 = zext i16 %29 to i32
  %shl32 = shl nuw i32 %conv31, 16
  %incdec.ptr33 = getelementptr i32, ptr %suptr.05, i32 3
  %30 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl32, ptr %incdec.ptr29, align 4
  %31 = ptrtoint ptr %ha.06 to i32
  call void @__asan_load4_noabort(i32 %31)
  %ha.0 = load ptr, ptr %ha.06, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end5.for.end_crit_edge
  %suptr.0.lcssa = phi ptr [ %incdec.ptr16, %do.end5.for.end_crit_edge ], [ %incdec.ptr33, %for.body.for.end_crit_edge ]
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %32 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %33)
  %cmp417 = icmp slt i32 %33, 14
  br i1 %cmp417, label %for.end.for.body43_crit_edge, label %for.end.for.end48_crit_edge

for.end.for.end48_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

for.end.for.body43_crit_edge:                     ; preds = %for.end
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.end.for.body43_crit_edge
  %i.09 = phi i32 [ %inc, %for.body43.for.body43_crit_edge ], [ %33, %for.end.for.body43_crit_edge ]
  %suptr.18 = phi ptr [ %incdec.ptr46, %for.body43.for.body43_crit_edge ], [ %suptr.0.lcssa, %for.end.for.body43_crit_edge ]
  %incdec.ptr44 = getelementptr i32, ptr %suptr.18, i32 1
  %34 = ptrtoint ptr %suptr.18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -65536, ptr %suptr.18, align 4
  %incdec.ptr45 = getelementptr i32, ptr %suptr.18, i32 2
  %35 = ptrtoint ptr %incdec.ptr44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -65536, ptr %incdec.ptr44, align 4
  %incdec.ptr46 = getelementptr i32, ptr %suptr.18, i32 3
  %36 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -65536, ptr %incdec.ptr45, align 4
  %inc = add i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.body43.for.end48_crit_edge, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body43

for.body43.for.end48_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

for.end48:                                        ; preds = %for.body43.for.end48_crit_edge, %for.end.for.end48_crit_edge
  %next_tx_desc = getelementptr inbounds %struct.tx_desc, ptr %4, i32 0, i32 5
  %37 = ptrtoint ptr %next_tx_desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %next_tx_desc, align 4
  %39 = ptrtoint ptr %tx_insert_ptr to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %tx_insert_ptr, align 4
  %tdes1 = getelementptr inbounds %struct.tx_desc, ptr %4, i32 0, i32 1
  %40 = ptrtoint ptr %tdes1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1073741687, ptr %tdes1, align 4
  %tx_packet_cnt = getelementptr i8, ptr %dev, i32 2444
  %41 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_packet_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %42)
  %cmp50 = icmp ult i32 %42, 32
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %for.end48
  %inc54 = add nuw nsw i32 %42, 1
  %43 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc54, ptr %tx_packet_cnt, align 4
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 128, ptr %4, align 32
  %cr6_data = getelementptr i8, ptr %dev, i32 2376
  %45 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cr6_data, align 4
  %or = or i32 %46, 8192
  %add.ptr.i1 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %47 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %47) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 1073740) #10
  %add.ptr55 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 16777216) #10, !srcloc !220
  %49 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cr6_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %51) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 1073740) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %53 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %54, i32 0, i32 12
  %56 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %55)
  %cmp.not.i.i = icmp eq i32 %57, %55
  br i1 %cmp.not.i.i, label %if.then52.if.end57_crit_edge, label %do.body5.i.i

if.then52.if.end57_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

do.body5.i.i:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %55, ptr %trans_start.i.i, align 16
  br label %if.end57

if.else:                                          ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #13
  br label %if.end57

if.end57:                                         ; preds = %if.else, %do.body5.i.i, %if.then52.if.end57_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allocate_rx_buffer(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_insert_ptr = getelementptr i8, ptr %dev, i32 2436
  %0 = ptrtoint ptr %rx_insert_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_insert_ptr, align 4
  %rx_avail_cnt = getelementptr i8, ptr %dev, i32 2448
  %2 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_avail_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %3)
  %cmp21 = icmp ult i32 %3, 48
  br i1 %cmp21, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pdev = getelementptr i8, ptr %dev, i32 2316
  br label %while.body

while.body:                                       ; preds = %dma_map_single_attrs.exit.while.body_crit_edge, %while.body.lr.ph
  %rxptr.022 = phi ptr [ %1, %while.body.lr.ph ], [ %19, %dma_map_single_attrs.exit.while.body_crit_edge ]
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1568, i32 noundef 2592) #10
  %cmp2 = icmp eq ptr %call.i, null
  br i1 %cmp2, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %rx_skb_ptr = getelementptr inbounds %struct.rx_desc, ptr %rxptr.022, i32 0, i32 4
  %4 = ptrtoint ptr %rx_skb_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %rx_skb_ptr, align 16
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %call.i19 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #10
  br i1 %call.i19, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !223

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev3) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev3, ptr noundef %8, i32 noundef 1568) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %8 to i32
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i20 = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %14, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev3, ptr noundef %add.ptr.i20, i32 noundef %and.i, i32 noundef 1568, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %15 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %rdes2 = getelementptr inbounds %struct.rx_desc, ptr %rxptr.022, i32 0, i32 2
  %16 = ptrtoint ptr %rdes2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rdes2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %rxptr.022 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 128, ptr %rxptr.022, align 32
  %next_rx_desc = getelementptr inbounds %struct.rx_desc, ptr %rxptr.022, i32 0, i32 5
  %18 = ptrtoint ptr %next_rx_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next_rx_desc, align 4
  %20 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_avail_cnt, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %rx_avail_cnt, align 4
  %cmp = icmp ult i32 %inc, 48
  br i1 %cmp, label %dma_map_single_attrs.exit.while.body_crit_edge, label %dma_map_single_attrs.exit.while.end_crit_edge

dma_map_single_attrs.exit.while.end_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

dma_map_single_attrs.exit.while.body_crit_edge:   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %dma_map_single_attrs.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %rxptr.0.lcssa = phi ptr [ %1, %entry.while.end_crit_edge ], [ %rxptr.022, %while.body.while.end_crit_edge ], [ %19, %dma_map_single_attrs.exit.while.end_crit_edge ]
  %22 = ptrtoint ptr %rx_insert_ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rxptr.0.lcssa, ptr %rx_insert_ptr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uli526x_reuse_skb(ptr nocapture noundef %db, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_insert_ptr = getelementptr inbounds %struct.uli526x_board_info, ptr %db, i32 0, i32 22
  %0 = ptrtoint ptr %rx_insert_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_insert_ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 32
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %do.body4

if.then:                                          ; preds = %entry
  %rx_skb_ptr = getelementptr inbounds %struct.rx_desc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rx_skb_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %rx_skb_ptr, align 16
  %pdev = getelementptr inbounds %struct.uli526x_board_info, ptr %db, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #10
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !223

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %8, i32 noundef 1568) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %8 to i32
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %14, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1568, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %15 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %rdes2 = getelementptr inbounds %struct.rx_desc, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %rdes2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rdes2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 128, ptr %1, align 32
  %rx_avail_cnt = getelementptr inbounds %struct.uli526x_board_info, ptr %db, i32 0, i32 25
  %18 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_avail_cnt, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_avail_cnt, align 4
  %next_rx_desc = getelementptr inbounds %struct.rx_desc, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %next_rx_desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next_rx_desc, align 4
  %22 = ptrtoint ptr %rx_insert_ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %rx_insert_ptr, align 4
  br label %if.end14

do.body4:                                         ; preds = %entry
  %23 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool5.not = icmp eq i32 %23, 0
  br i1 %tobool5.not, label %do.body4.if.end14_crit_edge, label %do.end9

do.body4.if.end14_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end9:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %rx_avail_cnt10 = getelementptr inbounds %struct.uli526x_board_info, ptr %db, i32 0, i32 25
  %24 = ptrtoint ptr %rx_avail_cnt10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_avail_cnt10, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.42, i32 noundef %25) #13
  br label %if.end14

if.end14:                                         ; preds = %do.end9, %do.body4.if.end14_crit_edge, %dma_map_single_attrs.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uli526x_reset_prepare(ptr nocapture noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %cr6_data = getelementptr i8, ptr %dev, i32 2376
  %2 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cr6_data, align 4
  %and = and i32 %3, -8195
  store i32 %and, ptr %cr6_data, align 4
  %add.ptr.i18 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %4) #10, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #10
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !220
  %add.ptr3 = getelementptr i8, ptr %1, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %6) #10, !srcloc !220
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %9 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %entry.do.end2.i_crit_edge, label %do.end.i

entry.do.end2.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.59, i32 noundef 0) #13
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %entry.do.end2.i_crit_edge
  %rx_avail_cnt.i = getelementptr i8, ptr %dev, i32 2448
  %10 = ptrtoint ptr %rx_avail_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_avail_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not11.i = icmp eq i32 %11, 0
  br i1 %tobool3.not11.i, label %do.end2.i.uli526x_free_rxbuffer.exit_crit_edge, label %while.body.lr.ph.i

do.end2.i.uli526x_free_rxbuffer.exit_crit_edge:   ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uli526x_free_rxbuffer.exit

while.body.lr.ph.i:                               ; preds = %do.end2.i
  %rx_ready_ptr.i = getelementptr i8, ptr %dev, i32 2440
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %12 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ready_ptr.i, align 4
  %rx_skb_ptr.i = getelementptr inbounds %struct.rx_desc, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %rx_skb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_skb_ptr.i, align 16
  tail call void @consume_skb(ptr noundef %15) #10
  %16 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ready_ptr.i, align 4
  %next_rx_desc.i = getelementptr inbounds %struct.rx_desc, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %next_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next_rx_desc.i, align 4
  store ptr %19, ptr %rx_ready_ptr.i, align 4
  %20 = ptrtoint ptr %rx_avail_cnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_avail_cnt.i, align 4
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %rx_avail_cnt.i, align 4
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %while.body.i.uli526x_free_rxbuffer.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.uli526x_free_rxbuffer.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uli526x_free_rxbuffer.exit

uli526x_free_rxbuffer.exit:                       ; preds = %while.body.i.uli526x_free_rxbuffer.exit_crit_edge, %do.end2.i.uli526x_free_rxbuffer.exit_crit_edge
  %tx_packet_cnt = getelementptr i8, ptr %dev, i32 2444
  %22 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tx_packet_cnt, align 4
  %23 = ptrtoint ptr %rx_avail_cnt.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rx_avail_cnt.i, align 4
  %link_failed = getelementptr i8, ptr %dev, i32 2465
  %24 = ptrtoint ptr %link_failed to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %link_failed, align 1
  %init = getelementptr i8, ptr %dev, i32 2684
  %25 = ptrtoint ptr %init to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %init, align 4
  %wait_reset = getelementptr i8, ptr %dev, i32 2466
  %26 = ptrtoint ptr %wait_reset to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %wait_reset, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.4, i32 noundef 32) #10
  %pdev = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @uli526x_get_wol(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %wol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netdev_get_link(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link_failed = getelementptr i8, ptr %dev, i32 2465
  %0 = ptrtoint ptr %link_failed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_failed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes.i, i32 noundef 591) #10
  %advertising3.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising3.i, i32 noundef 591) #10
  %port.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %port.i, align 1
  %phy_addr.i = getelementptr i8, ptr %dev, i32 2464
  %1 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %phy_addr.i, align 4
  %phy_address.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %3 = ptrtoint ptr %phy_address.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %phy_address.i, align 2
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %speed.i, align 4
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %duplex.i, align 4
  %op_mode.i = getelementptr i8, ptr %dev, i32 2463
  %6 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op_mode.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %7, label %entry.if.end.i_crit_edge [
    i8 1, label %entry.if.then.i_crit_edge
    i8 5, label %entry.if.then.i_crit_edge1
  ]

entry.if.then.i_crit_edge1:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge1
  %9 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %speed.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %op_mode.i, align 1
  %12 = and i8 %11, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %switch.i = icmp eq i8 %12, 4
  br i1 %switch.i, label %if.then24.i, label %if.end.i.if.end27.i_crit_edge

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %duplex.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end.i.if.end27.i_crit_edge
  %link_failed.i = getelementptr i8, ptr %dev, i32 2465
  %14 = ptrtoint ptr %link_failed.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %link_failed.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end27.i.if.end33.i_crit_edge, label %if.then28.i

if.end27.i.if.end33.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %speed.i, align 4
  %17 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %duplex.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %if.end27.i.if.end33.i_crit_edge
  %media_mode.i = getelementptr i8, ptr %dev, i32 2462
  %18 = ptrtoint ptr %media_mode.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %media_mode.i, align 2
  %20 = and i8 %19, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool35.not.i = icmp eq i8 %20, 0
  br i1 %tobool35.not.i, label %if.end33.i.ULi_ethtool_get_link_ksettings.exit_crit_edge, label %if.then36.i

if.end33.i.ULi_ethtool_get_link_ksettings.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ULi_ethtool_get_link_ksettings.exit

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %autoneg.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %21 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %autoneg.i, align 1
  br label %ULi_ethtool_get_link_ksettings.exit

ULi_ethtool_get_link_ksettings.exit:              ; preds = %if.then36.i, %if.end33.i.ULi_ethtool_get_link_ksettings.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uli526x_suspend(ptr noundef %dev_d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.76, i32 noundef 0) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_device_detach(ptr noundef %1) #10
  tail call fastcc void @uli526x_reset_prepare(ptr noundef %1)
  %call8 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev_d, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end4.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uli526x_resume(ptr nocapture noundef readonly %dev_d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = load i32, ptr @uli526x_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.77, i32 noundef 0) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_device_attach(ptr noundef %1) #10
  tail call fastcc void @uli526x_init(ptr noundef %1)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end4.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !39, !41, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !76, !78, !79, !80, !82, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !127, !128, !129, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !145, !146, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1747, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1748, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1749, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1751, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype345, !8, !"__UNIQUE_ID_debugtype345", i1 false, i1 false}
!10 = !{ptr @__param_mode, !11, !"__param_mode", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1752, i32 1}
!12 = !{ptr @__UNIQUE_ID_modetype346, !11, !"__UNIQUE_ID_modetype346", i1 false, i1 false}
!13 = !{ptr @__param_cr6set, !14, !"__param_cr6set", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1753, i32 1}
!15 = !{ptr @__UNIQUE_ID_cr6settype347, !14, !"__UNIQUE_ID_cr6settype347", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_debug348, !17, !"__UNIQUE_ID_debug348", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1754, i32 1}
!18 = !{ptr @__UNIQUE_ID_mode349, !19, !"__UNIQUE_ID_mode349", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1755, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1796, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @uli526x_cleanup_module._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @uli526x_cleanup_module._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_uli526x__350_1800_uli526x_init_module6, !28, !"__initcall__kmod_uli526x__350_1800_uli526x_init_module6", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1800, i32 1}
!29 = !{ptr @__exitcall_uli526x_cleanup_module, !30, !"__exitcall_uli526x_cleanup_module", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1801, i32 1}
!31 = !{ptr @uli526x_debug, !32, !"uli526x_debug", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 197, i32 12}
!33 = !{ptr @debug, !34, !"debug", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 202, i32 12}
!35 = !{ptr @cr6set, !36, !"cr6set", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 203, i32 12}
!37 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!38 = !{ptr @__param_str_mode, !11, !"__param_str_mode", i1 false, i1 false}
!39 = !{ptr @mode, !40, !"mode", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 204, i32 12}
!41 = !{ptr @__param_str_cr6set, !14, !"__param_str_cr6set", i1 false, i1 false}
!42 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1740, i32 11}
!44 = !{ptr @uli526x_driver, !45, !"uli526x_driver", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1739, i32 26}
!46 = !{ptr @uli526x_pci_tbl, !47, !"uli526x_pci_tbl", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1730, i32 35}
!48 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 278, i32 2}
!50 = !{ptr @uli526x_init_one._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @uli526x_init_one._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 287, i32 3}
!55 = !{ptr @uli526x_init_one._entry.7, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @uli526x_init_one._entry_ptr.9, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 298, i32 3}
!59 = !{ptr @uli526x_init_one._entry.10, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @uli526x_init_one._entry_ptr.12, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 304, i32 3}
!63 = !{ptr @uli526x_init_one._entry.13, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @uli526x_init_one._entry_ptr.15, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 311, i32 3}
!67 = !{ptr @uli526x_init_one._entry.16, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @uli526x_init_one._entry_ptr.18, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @uli526x_init_one.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 364, i32 2}
!71 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 400, i32 19}
!74 = !{ptr @netdev_ops, !75, !"netdev_ops", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 253, i32 36}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 456, i32 2}
!78 = !{ptr @uli526x_open._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @uli526x_open._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @uli526x_open.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 485, i32 2}
!82 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @uli526x_cr6_user_set, !84, !"uli526x_cr6_user_set", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 199, i32 12}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 510, i32 2}
!87 = !{ptr @uli526x_init._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @uli526x_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 531, i32 3}
!92 = !{ptr @uli526x_init._entry.25, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @uli526x_init._entry_ptr.27, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @uli526x_media_mode, !95, !"uli526x_media_mode", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 198, i32 22}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1272, i32 2}
!98 = !{ptr @uli526x_descriptor_init._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @uli526x_descriptor_init._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!103 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1353, i32 2}
!107 = !{ptr @send_filter_frame._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @send_filter_frame._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1397, i32 19}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 704, i32 3}
!114 = !{ptr @uli526x_interrupt._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @uli526x_interrupt._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 826, i32 4}
!119 = !{ptr @uli526x_rx_packet._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @uli526x_rx_packet._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @uli526x_rx_packet._entry.39, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 871, i32 5}
!124 = !{ptr @uli526x_rx_packet._entry_ptr.40, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1253, i32 3}
!127 = !{ptr @uli526x_reuse_skb._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @uli526x_reuse_skb._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1046, i32 20}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1051, i32 3}
!134 = !{ptr @uli526x_timer._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @uli526x_timer._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @uli526x_timer._entry.46, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1066, i32 3}
!139 = !{ptr @uli526x_timer._entry_ptr.47, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1068, i32 20}
!143 = !{ptr @uli526x_timer._entry.50, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1083, i32 4}
!145 = !{ptr @uli526x_timer._entry_ptr.51, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.52, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1094, i32 22}
!149 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1100, i32 12}
!151 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1100, i32 21}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1164, i32 2}
!155 = !{ptr @uli526x_dynamic_reset._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @uli526x_dynamic_reset._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1225, i32 2}
!160 = !{ptr @uli526x_free_rxbuffer._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @uli526x_free_rxbuffer._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1505, i32 3}
!165 = !{ptr @uli526x_sense_speed._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @uli526x_sense_speed._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.62, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 590, i32 2}
!170 = !{ptr @uli526x_start_xmit._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @uli526x_start_xmit._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.63, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 597, i32 19}
!174 = !{ptr @.str.64, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 607, i32 19}
!176 = !{ptr @.str.65, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 892, i32 2}
!178 = !{ptr @uli526x_set_filter_mode._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @uli526x_set_filter_mode._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @uli526x_set_filter_mode._entry.67, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 896, i32 3}
!183 = !{ptr @uli526x_set_filter_mode._entry_ptr.68, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.69, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @uli526x_set_filter_mode._entry.70, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 905, i32 3}
!187 = !{ptr @uli526x_set_filter_mode._entry_ptr.71, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.72, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @uli526x_set_filter_mode._entry.73, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 913, i32 2}
!191 = !{ptr @uli526x_set_filter_mode._entry_ptr.74, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.75, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @netdev_ethtool_ops, !194, !"netdev_ethtool_ops", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1003, i32 33}
!195 = !{ptr @uli526x_pm_ops, !196, !"uli526x_pm_ops", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1737, i32 8}
!197 = !{ptr @.str.76, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1183, i32 2}
!199 = !{ptr @uli526x_suspend._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @uli526x_suspend._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1204, i32 2}
!203 = !{ptr @uli526x_resume._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @uli526x_resume._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.78, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/dec/tulip/uli526x.c", i32 1765, i32 2}
!207 = !{ptr @uli526x_init_module._entry, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @uli526x_init_module._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.79, !206, !"<string literal>", i1 false, i1 false}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{i64 2152222052}
!220 = !{i64 4679930}
!221 = !{i64 4680348}
!222 = !{i64 2152220697}
!223 = !{!"branch_weights", i32 2000, i32 1}
!224 = !{i64 2156572450}
!225 = !{i64 2156560788}
