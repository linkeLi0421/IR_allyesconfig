; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/tlan.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/tlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.board = type { ptr, i32, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.tlan_list = type { i32, i16, i16, [10 x %struct.tlan_buffer] }
%struct.tlan_buffer = type { i32, i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.tlan_priv = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, %struct.timer_list, ptr, i32, i32, i32, i32, [2 x i32], i32, i32, i8, i8, %struct.spinlock, %struct.work_struct }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__param_str_aui = internal constant [9 x i8] c"tlan.aui\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_aui = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @aui }, align 4
@__param_aui = internal constant %struct.kernel_param { ptr @__param_str_aui, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_aui } }, section "__param", align 4
@__UNIQUE_ID_auitype341 = internal constant [31 x i8] c"tlan.parmtype=aui:array of int\00", section ".modinfo", align 1
@__param_str_duplex = internal constant [12 x i8] c"tlan.duplex\00", align 1
@__param_arr_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @duplex }, align 4
@__param_duplex = internal constant %struct.kernel_param { ptr @__param_str_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_duplex } }, section "__param", align 4
@__UNIQUE_ID_duplextype342 = internal constant [34 x i8] c"tlan.parmtype=duplex:array of int\00", section ".modinfo", align 1
@__param_str_speed = internal constant [11 x i8] c"tlan.speed\00", align 1
@__param_arr_speed = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @speed }, align 4
@__param_speed = internal constant %struct.kernel_param { ptr @__param_str_speed, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_speed } }, section "__param", align 4
@__UNIQUE_ID_speedtype343 = internal constant [33 x i8] c"tlan.parmtype=speed:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_aui344 = internal constant [47 x i8] c"tlan.parm=aui:ThunderLAN use AUI port(s) (0-1)\00", section ".modinfo", align 1
@__UNIQUE_ID_duplex345 = internal constant [74 x i8] c"tlan.parm=duplex:ThunderLAN duplex setting(s) (0-default, 1-half, 2-full)\00", section ".modinfo", align 1
@__UNIQUE_ID_speed346 = internal constant [60 x i8] c"tlan.parm=speed:ThunderLAN port speed setting(s) (0,10,100)\00", section ".modinfo", align 1
@__UNIQUE_ID_author347 = internal constant [59 x i8] c"tlan.author=Maintainer: Samuel Chessman <chessman@tux.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description348 = internal constant [70 x i8] c"tlan.description=Driver for TI ThunderLAN based ethernet PCI adapters\00", section ".modinfo", align 1
@__UNIQUE_ID_file349 = internal constant [39 x i8] c"tlan.file=drivers/net/ethernet/ti/tlan\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [17 x i8] c"tlan.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [11 x i8] c"tlan.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype351 = internal constant [24 x i8] c"tlan.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug352 = internal constant [38 x i8] c"tlan.parm=debug:ThunderLAN debug mask\00", section ".modinfo", align 1
@tlan_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @tlan_pci_tbl, ptr @tlan_init_one, ptr @tlan_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tlan_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@tlan_have_eisa = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_tlan__353_634_tlan_probe6 = internal global ptr @tlan_probe, section ".initcall6.init", align 4
@__exitcall_tlan_exit = internal global ptr @tlan_exit, section ".exitcall.exit", align 4
@aui = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@duplex = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@speed = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tlan\00", [27 x i8] zeroinitializer }, align 32
@tlan_pci_tbl = internal constant { [14 x %struct.pci_device_id], [96 x i8] } { [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 3601, i32 44596, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 3601, i32 44594, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 3601, i32 44597, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 3601, i32 61744, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 3601, i32 61776, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 3601, i32 44611, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 3601, i32 44608, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 3601, i32 45073, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4237, i32 19, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4237, i32 18, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4237, i32 20, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 3601, i32 45104, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 3601, i32 45074, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@tlan_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tlan_suspend, ptr @tlan_resume, ptr @tlan_suspend, ptr @tlan_resume, ptr @tlan_suspend, ptr @tlan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tlan_signature = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TLAN\00", [27 x i8] zeroinitializer }, align 32
@tlan_probe1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013tlan: Could not reserve IO regions\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tlan_probe1\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/ethernet/ti/tlan.c\00", [33 x i8] zeroinitializer }, align 32
@tlan_probe1._entry_ptr = internal global ptr @tlan_probe1._entry, section ".printk_index", align 4
@board_info = internal global { [15 x %struct.board], [44 x i8] } { [15 x %struct.board] [%struct.board { ptr @.str.23, i32 8, i16 131 }, %struct.board { ptr @.str.24, i32 8, i16 131 }, %struct.board { ptr @.str.25, i32 0, i16 131 }, %struct.board { ptr @.str.26, i32 3, i16 131 }, %struct.board { ptr @.str.26, i32 0, i16 131 }, %struct.board { ptr @.str.27, i32 8, i16 131 }, %struct.board { ptr @.str.28, i32 0, i16 131 }, %struct.board { ptr @.str.29, i32 0, i16 131 }, %struct.board { ptr @.str.30, i32 4, i16 131 }, %struct.board { ptr @.str.31, i32 9, i16 248 }, %struct.board { ptr @.str.32, i32 12, i16 248 }, %struct.board { ptr @.str.33, i32 8, i16 131 }, %struct.board { ptr @.str.34, i32 0, i16 131 }, %struct.board { ptr @.str.35, i32 11, i16 131 }, %struct.board { ptr @.str.35, i32 8, i16 131 }], [44 x i8] zeroinitializer }, align 32
@tlan_probe1._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013tlan: No suitable PCI mapping available\0A\00", [53 x i8] zeroinitializer }, align 32
@tlan_probe1._entry_ptr.6 = internal global ptr @tlan_probe1._entry.4, section ".printk_index", align 4
@tlan_probe1._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017TLAN: IO mapping is available at %x.\0A\00", [56 x i8] zeroinitializer }, align 32
@tlan_probe1._entry_ptr.9 = internal global ptr @tlan_probe1._entry.7, section ".printk_index", align 4
@tlan_probe1._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013tlan: No IO mappings available\0A\00", [62 x i8] zeroinitializer }, align 32
@tlan_probe1._entry_ptr.12 = internal global ptr @tlan_probe1._entry.10, section ".printk_index", align 4
@boards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tlan_probe1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&priv->tlan_tqueue)\00", [58 x i8] zeroinitializer }, align 32
@tlan_probe1.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@tlan_probe1._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013tlan: Could not set up device\0A\00", [63 x i8] zeroinitializer }, align 32
@tlan_probe1._entry_ptr.18 = internal global ptr @tlan_probe1._entry.16, section ".printk_index", align 4
@tlan_probe1._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013tlan: Could not register device\0A\00", [61 x i8] zeroinitializer }, align 32
@tlan_probe1._entry_ptr.21 = internal global ptr @tlan_probe1._entry.19, section ".printk_index", align 4
@tlan_devices_installed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tlan_have_pci = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tlan_eisa_devices = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"irq=%2d, io=%04x, %s, Rev. %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Compaq Netelligent 10 T PCI UTP\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Compaq Netelligent 10/100 TX PCI UTP\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Compaq Integrated NetFlex-3/P\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Compaq NetFlex-3/P\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Compaq Netelligent Integrated 10/100 TX UTP\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Compaq Netelligent Dual 10/100 TX PCI UTP\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Compaq Netelligent 10/100 TX Embedded UTP\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Olicom OC-2183/2185\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Olicom OC-2325\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Olicom OC-2326\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Compaq Netelligent 10/100 TX UTP\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Compaq Netelligent 10 T/2 PCI UTP/coax\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Compaq NetFlex-3/E\00", [45 x i8] zeroinitializer }, align 32
@tlan_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017TLAN: %s: Transmit timed out.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tlan_tx_timeout\00", [16 x i8] zeroinitializer }, align 32
@tlan_tx_timeout._entry_ptr = internal global ptr @tlan_tx_timeout._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tlan_phy_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 2480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017TLAN: PHY found at %02x %04x %04x %04x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tlan_phy_detect\00", [16 x i8] zeroinitializer }, align 32
@tlan_phy_detect._entry_ptr = internal global ptr @tlan_phy_detect._entry, section ".printk_index", align 4
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot initialize device, no PHY was found!\0A\00", [51 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Link forced\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Link active, %s %uMbps %s-Duplex\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"forced\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Autonegotiation enabled,\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Partner capability:\00", [44 x i8] zeroinitializer }, align 32
@tlan_finish_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 2287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %s\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tlan_finish_reset\00", [46 x i8] zeroinitializer }, align 32
@tlan_finish_reset._entry_ptr = internal global ptr @tlan_finish_reset._entry, section ".printk_index", align 4
@tlan_finish_reset._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 2288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@tlan_finish_reset._entry_ptr.54 = internal global ptr @tlan_finish_reset._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Link active\0A\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Link inactive, will retry in 10 secs...\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10BaseT-HD\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10BaseT-FD\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"100baseTx-HD\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"100BaseTx-FD\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100BaseT4\00", [22 x i8] zeroinitializer }, align 32
@tlan_phy_power_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 2533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017TLAN: %s: Powering up PHY.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tlan_phy_power_up\00", [46 x i8] zeroinitializer }, align 32
@tlan_phy_power_up._entry_ptr = internal global ptr @tlan_phy_power_up._entry, section ".printk_index", align 4
@tlan_phy_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 2558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017TLAN: %s: Resetting PHY.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tlan_phy_reset\00", [17 x i8] zeroinitializer }, align 32
@tlan_phy_reset._entry_ptr = internal global ptr @tlan_phy_reset._entry, section ".printk_index", align 4
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PHY reset timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@tlan_phy_start_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 2592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017TLAN: %s: Trying to activate link.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tlan_phy_start_link\00", [44 x i8] zeroinitializer }, align 32
@tlan_phy_start_link._entry_ptr = internal global ptr @tlan_phy_start_link._entry, section ".printk_index", align 4
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Starting autonegotiation\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Autonegotiation complete\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Starting internal PHY with FULL-DUPLEX\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Starting internal PHY with HALF-DUPLEX\0A\00", [56 x i8] zeroinitializer }, align 32
@tlan_phy_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 2505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017TLAN: %s: Powering down PHY(s).\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tlan_phy_power_down\00", [44 x i8] zeroinitializer }, align 32
@tlan_phy_power_down._entry_ptr = internal global ptr @tlan_phy_power_down._entry, section ".printk_index", align 4
@tlan_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013tlan: Could not allocate lists and buffers for %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tlan_init\00", [22 x i8] zeroinitializer }, align 32
@tlan_init._entry_ptr = internal global ptr @tlan_init._entry, section ".printk_index", align 4
@tlan_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013tlan: %s: Error reading MAC from eeprom: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@tlan_init._entry_ptr.79 = internal global ptr @tlan_init._entry.77, section ".printk_index", align 4
@tlan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @tlan_open, ptr @tlan_close, ptr @tlan_start_tx, ptr null, ptr null, ptr null, ptr @tlan_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @tlan_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tlan_tx_timeout, ptr null, ptr null, ptr null, ptr @tlan_get_stats, ptr null, ptr null, ptr @tlan_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@tlan_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @tlan_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr @tlan_get_eeprom_len, ptr @tlan_get_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Cannot open because IRQ %d is already in use\0A\00", [50 x i8] zeroinitializer }, align 32
@tlan_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&priv->timer)\00", [17 x i8] zeroinitializer }, align 32
@tlan_open.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&priv->media_timer)\00", [43 x i8] zeroinitializer }, align 32
@tlan_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017TLAN: %s: Opened.  TLAN Chip Rev: %x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tlan_open\00", [22 x i8] zeroinitializer }, align 32
@tlan_open._entry_ptr = internal global ptr @tlan_open._entry, section ".printk_index", align 4
@tlan_int_vector = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr null, ptr @tlan_handle_tx_eof, ptr @tlan_handle_stat_overflow, ptr @tlan_handle_rx_eof, ptr @tlan_handle_dummy, ptr @tlan_handle_tx_eoc, ptr @tlan_handle_status_check, ptr @tlan_handle_rx_eoc], [32 x i8] zeroinitializer }, align 32
@tlan_handle_tx_eof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017TLAN: TRANSMIT:  Handling TX EOF (Head=%d Tail=%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlan_handle_tx_eof\00", [45 x i8] zeroinitializer }, align 32
@tlan_handle_tx_eof._entry_ptr = internal global ptr @tlan_handle_tx_eof._entry, section ".printk_index", align 4
@.str.88 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Received interrupt for uncompleted TX frame\0A\00", [51 x i8] zeroinitializer }, align 32
@tlan_handle_tx_eof._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.87, ptr @.str.3, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017TLAN: TRANSMIT:  handling TX EOC (Head=%d Tail=%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@tlan_handle_tx_eof._entry_ptr.91 = internal global ptr @tlan_handle_tx_eof._entry.89, section ".printk_index", align 4
@tlan_handle_rx_eof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017TLAN: RECEIVE:  handling RX EOF (Head=%d Tail=%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlan_handle_rx_eof\00", [45 x i8] zeroinitializer }, align 32
@tlan_handle_rx_eof._entry_ptr = internal global ptr @tlan_handle_rx_eof._entry, section ".printk_index", align 4
@.str.94 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Received interrupt for uncompleted RX frame\0A\00", [51 x i8] zeroinitializer }, align 32
@tlan_handle_rx_eof._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.93, ptr @.str.3, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017TLAN: RECEIVE:  handling RX EOC (Head=%d Tail=%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@tlan_handle_rx_eof._entry_ptr.97 = internal global ptr @tlan_handle_rx_eof._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Test interrupt\0A\00", [16 x i8] zeroinitializer }, align 32
@tlan_handle_tx_eoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 1633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017TLAN: TRANSMIT:  handling TX EOC (Head=%d Tail=%d) -- IRQ\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlan_handle_tx_eoc\00", [45 x i8] zeroinitializer }, align 32
@tlan_handle_tx_eoc._entry_ptr = internal global ptr @tlan_handle_tx_eoc._entry, section ".printk_index", align 4
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Adaptor Error = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@tlan_handle_status_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.3, i32 1697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017TLAN: %s: Status Check\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tlan_handle_status_check\00", [39 x i8] zeroinitializer }, align 32
@tlan_handle_status_check._entry_ptr = internal global ptr @tlan_handle_status_check._entry, section ".printk_index", align 4
@tlan_handle_status_check._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.3, i32 1704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017TLAN: %s:    Net_Sts = %x\0A\00", [35 x i8] zeroinitializer }, align 32
@tlan_handle_status_check._entry_ptr.106 = internal global ptr @tlan_handle_status_check._entry.104, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unmanaged PHY\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PHY 0x%02x\0A\00", [20 x i8] zeroinitializer }, align 32
@__tlan_phy_print._entry = internal constant %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.3, i32 2408, ptr null, ptr null }, align 1
@.str.109 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016tlan:    Off.  +0     +1     +2     +3\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__tlan_phy_print\00", [47 x i8] zeroinitializer }, align 32
@__tlan_phy_print._entry_ptr = internal global ptr @__tlan_phy_print._entry, section ".printk_index", align 4
@__tlan_phy_print._entry.111 = internal constant %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.3, i32 2415, ptr null, ptr null }, align 1
@.str.112 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016tlan:    0x%02x 0x%04hx 0x%04hx 0x%04hx 0x%04hx\0A\00", [45 x i8] zeroinitializer }, align 32
@__tlan_phy_print._entry_ptr.113 = internal global ptr @__tlan_phy_print._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Invalid PHY\0A\00", [19 x i8] zeroinitializer }, align 32
@tlan_handle_rx_eoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.3, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017TLAN: RECEIVE:  Handling RX EOC (head=%d tail=%d) -- IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlan_handle_rx_eoc\00", [45 x i8] zeroinitializer }, align 32
@tlan_handle_rx_eoc._entry_ptr = internal global ptr @tlan_handle_rx_eoc._entry, section ".printk_index", align 4
@tlan_phy_monitor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 2763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017TLAN: %s has lost link\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tlan_phy_monitor\00", [47 x i8] zeroinitializer }, align 32
@tlan_phy_monitor._entry_ptr = internal global ptr @tlan_phy_monitor._entry, section ".printk_index", align 4
@tlan_phy_monitor._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.3, i32 2788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017TLAN: %s has reestablished link\0A\00", [61 x i8] zeroinitializer }, align 32
@tlan_phy_monitor._entry_ptr.121 = internal global ptr @tlan_phy_monitor._entry.119, section ".printk_index", align 4
@tlan_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.3, i32 1184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017TLAN: Device %s closed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tlan_close\00", [21 x i8] zeroinitializer }, align 32
@tlan_close._entry_ptr = internal global ptr @tlan_close._entry, section ".printk_index", align 4
@tlan_start_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.3, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017TLAN: TRANSMIT:  %s PHY is not ready\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tlan_start_tx\00", [18 x i8] zeroinitializer }, align 32
@tlan_start_tx._entry_ptr = internal global ptr @tlan_start_tx._entry, section ".printk_index", align 4
@tlan_start_tx._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.3, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017TLAN: TRANSMIT:  %s is busy (Head=%d Tail=%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@tlan_start_tx._entry_ptr.128 = internal global ptr @tlan_start_tx._entry.126, section ".printk_index", align 4
@tlan_start_tx._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.3, i32 1085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017TLAN: TRANSMIT:  Starting TX on buffer %d\0A\00", [51 x i8] zeroinitializer }, align 32
@tlan_start_tx._entry_ptr.131 = internal global ptr @tlan_start_tx._entry.129, section ".printk_index", align 4
@tlan_start_tx._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.125, ptr @.str.3, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017TLAN: TRANSMIT:  Adding buffer %d to TX channel\0A\00", [45 x i8] zeroinitializer }, align 32
@tlan_start_tx._entry_ptr.134 = internal global ptr @tlan_start_tx._entry.132, section ".printk_index", align 4
@tlan_get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.3, i32 1217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017TLAN: RECEIVE:  %s EOC count = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tlan_get_stats\00", [17 x i8] zeroinitializer }, align 32
@tlan_get_stats._entry_ptr = internal global ptr @tlan_get_stats._entry, section ".printk_index", align 4
@tlan_get_stats._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.3, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017TLAN: TRANSMIT:  %s Busy count = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tlan_get_stats._entry_ptr.139 = internal global ptr @tlan_get_stats._entry.137, section ".printk_index", align 4
@.str.140 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@tlan_print_dio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.3, i32 2001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016tlan: Contents of internal registers for io base 0x%04hx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tlan_print_dio\00", [17 x i8] zeroinitializer }, align 32
@tlan_print_dio._entry_ptr = internal global ptr @tlan_print_dio._entry, section ".printk_index", align 4
@tlan_print_dio._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.3, i32 2002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016tlan: Off.  +0        +4\0A\00", [36 x i8] zeroinitializer }, align 32
@tlan_print_dio._entry_ptr.146 = internal global ptr @tlan_print_dio._entry.144, section ".printk_index", align 4
@tlan_print_dio._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.143, ptr @.str.3, i32 2006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016tlan: 0x%02x  0x%08x 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@tlan_print_dio._entry_ptr.149 = internal global ptr @tlan_print_dio._entry.147, section ".printk_index", align 4
@tlan_print_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.3, i32 2035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016tlan: %s List %d at %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tlan_print_list\00", [16 x i8] zeroinitializer }, align 32
@tlan_print_list._entry_ptr = internal global ptr @tlan_print_list._entry, section ".printk_index", align 4
@tlan_print_list._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.3, i32 2036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016tlan:    Forward    = 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@tlan_print_list._entry_ptr.154 = internal global ptr @tlan_print_list._entry.152, section ".printk_index", align 4
@tlan_print_list._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.151, ptr @.str.3, i32 2037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016tlan:    CSTAT      = 0x%04hx\0A\00", [63 x i8] zeroinitializer }, align 32
@tlan_print_list._entry_ptr.157 = internal global ptr @tlan_print_list._entry.155, section ".printk_index", align 4
@tlan_print_list._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.151, ptr @.str.3, i32 2038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016tlan:    Frame Size = 0x%04hx\0A\00", [63 x i8] zeroinitializer }, align 32
@tlan_print_list._entry_ptr.160 = internal global ptr @tlan_print_list._entry.158, section ".printk_index", align 4
@tlan_print_list._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.151, ptr @.str.3, i32 2042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016tlan:    Buffer[%d].count, addr = 0x%08x, 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@tlan_print_list._entry_ptr.163 = internal global ptr @tlan_print_list._entry.161, section ".printk_index", align 4
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EISA\00", [27 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@tlan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.3, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\016tlan: %s\00", [21 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tlan_probe\00", [21 x i8] zeroinitializer }, align 32
@tlan_probe._entry_ptr = internal global ptr @tlan_probe._entry, section ".printk_index", align 4
@tlan_banner = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ThunderLAN driver v1.17\0A\00", [39 x i8] zeroinitializer }, align 32
@tlan_probe._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.166, ptr @.str.3, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017TLAN: Starting PCI Probe....\0A\00", [32 x i8] zeroinitializer }, align 32
@tlan_probe._entry_ptr.169 = internal global ptr @tlan_probe._entry.167, section ".printk_index", align 4
@tlan_probe._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.166, ptr @.str.3, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013tlan: Could not register pci driver\0A\00", [57 x i8] zeroinitializer }, align 32
@tlan_probe._entry_ptr.172 = internal global ptr @tlan_probe._entry.170, section ".printk_index", align 4
@tlan_probe._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.166, ptr @.str.3, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017TLAN: Starting EISA Probe....\0A\00", [63 x i8] zeroinitializer }, align 32
@tlan_probe._entry_ptr.175 = internal global ptr @tlan_probe._entry.173, section ".printk_index", align 4
@tlan_probe._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.166, ptr @.str.3, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016tlan: %d device%s installed, PCI: %d  EISA: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@tlan_probe._entry_ptr.178 = internal global ptr @tlan_probe._entry.176, section ".printk_index", align 4
@.str.179 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.180 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@tlan_eisa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.3, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017TLAN: No EISA bus present\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tlan_eisa_probe\00", [16 x i8] zeroinitializer }, align 32
@tlan_eisa_probe._entry_ptr = internal global ptr @tlan_eisa_probe._entry, section ".printk_index", align 4
@tlan_eisa_probe._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.3, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017TLAN: EISA_ID 0x%4x: 0x%4x\0A\00", [34 x i8] zeroinitializer }, align 32
@tlan_eisa_probe._entry_ptr.185 = internal global ptr @tlan_eisa_probe._entry.183, section ".printk_index", align 4
@tlan_eisa_probe._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.3, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tlan_eisa_probe._entry_ptr.187 = internal global ptr @tlan_eisa_probe._entry.186, section ".printk_index", align 4
@tlan_eisa_probe._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.182, ptr @.str.3, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017TLAN: Probing for EISA adapter at IO: 0x%4x : \00", [47 x i8] zeroinitializer }, align 32
@tlan_eisa_probe._entry_ptr.190 = internal global ptr @tlan_eisa_probe._entry.188, section ".printk_index", align 4
@tlan_eisa_probe._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.182, ptr @.str.3, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016tlan: Found one\0A\00", [45 x i8] zeroinitializer }, align 32
@tlan_eisa_probe._entry_ptr.193 = internal global ptr @tlan_eisa_probe._entry.191, section ".printk_index", align 4
@tlan_eisa_probe._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.182, ptr @.str.3, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016tlan: None found\0A\00", [44 x i8] zeroinitializer }, align 32
@tlan_eisa_probe._entry_ptr.196 = internal global ptr @tlan_eisa_probe._entry.194, section ".printk_index", align 4
@tlan_eisa_probe._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.182, ptr @.str.3, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016tlan: Card found but it is not enabled, skipping\0A\00", [44 x i8] zeroinitializer }, align 32
@tlan_eisa_probe._entry_ptr.199 = internal global ptr @tlan_eisa_probe._entry.197, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.200 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.204 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@___asan_gen_.205 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 75, i32 14 }
@___asan_gen_.208 = private unnamed_addr constant [12 x i8] c"tlan_driver\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 371, i32 26 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"tlan_have_eisa\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 82, i32 13 }
@___asan_gen_.214 = private unnamed_addr constant [4 x i8] c"aui\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 56, i32 13 }
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"duplex\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 57, i32 13 }
@___asan_gen_.220 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 58, i32 13 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 372, i32 11 }
@___asan_gen_.226 = private unnamed_addr constant [13 x i8] c"tlan_pci_tbl\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 121, i32 35 }
@___asan_gen_.229 = private unnamed_addr constant [12 x i8] c"tlan_pm_ops\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 369, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant [15 x i8] c"tlan_signature\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 79, i32 19 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 459, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant [11 x i8] c"board_info\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 93, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 485, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 492, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 499, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant [13 x i8] c"boards_found\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 59, i32 13 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 548, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 550, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 554, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 560, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [23 x i8] c"tlan_devices_installed\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 53, i32 13 }
@___asan_gen_.298 = private unnamed_addr constant [14 x i8] c"tlan_have_pci\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 81, i32 13 }
@___asan_gen_.301 = private unnamed_addr constant [18 x i8] c"tlan_eisa_devices\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 51, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 577, i32 19 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 94, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 95, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 97, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 98, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 101, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 103, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 105, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 107, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 108, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 110, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 112, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 113, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 114, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 981, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 326, i32 6 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2478, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2493, i32 20 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2259, i32 20 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2274, i32 6 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2276, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2276, i32 19 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2280, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2280, i32 17 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2283, i32 23 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2286, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2288, i32 6 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2291, i32 22 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2319, i32 20 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 85, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 85, i32 16 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 85, i32 30 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 86, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 86, i32 18 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2533, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2558, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2565, i32 20 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2592, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2627, i32 21 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2692, i32 19 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2715, i32 21 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2719, i32 21 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2505, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 831, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 848, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant [16 x i8] c"tlan_netdev_ops\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 745, i32 36 }
@___asan_gen_.499 = private unnamed_addr constant [17 x i8] c"tlan_ethtool_ops\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 790, i32 33 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 902, i32 19 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 907, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 908, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 912, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [16 x i8] c"tlan_int_vector\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 237, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1355, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1386, i32 8 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1389, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1489, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1540, i32 8 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1544, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1595, i32 19 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1631, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1688, i32 20 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1697, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1703, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2405, i32 20 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2407, i32 20 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2408, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2414, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2418, i32 20 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1760, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2762, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2787, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1184, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1044, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1059, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1083, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1089, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1216, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1218, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1226, i32 39 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 1228, i32 39 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2000, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2002, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2006, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2035, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2036, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2037, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2038, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 2041, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 770, i32 27 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 383, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [12 x i8] c"tlan_banner\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 80, i32 20 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 385, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 392, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 396, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 399, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 659, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 666, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 668, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 672, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 696, i32 4 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 724, i32 4 }
@___asan_gen_.829 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.832 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.833 = private constant [34 x i8] c"../drivers/net/ethernet/ti/tlan.c\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.833, i32 729, i32 4 }
@llvm.compiler.used = appending global [287 x ptr] [ptr @__UNIQUE_ID_aui344, ptr @__UNIQUE_ID_auitype341, ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_debug352, ptr @__UNIQUE_ID_debugtype351, ptr @__UNIQUE_ID_description348, ptr @__UNIQUE_ID_duplex345, ptr @__UNIQUE_ID_duplextype342, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_license350, ptr @__UNIQUE_ID_speed346, ptr @__UNIQUE_ID_speedtype343, ptr @__exitcall_tlan_exit, ptr @__initcall__kmod_tlan__353_634_tlan_probe6, ptr @__param_aui, ptr @__param_debug, ptr @__param_duplex, ptr @__param_speed, ptr @__tlan_phy_print._entry, ptr @__tlan_phy_print._entry.111, ptr @__tlan_phy_print._entry_ptr, ptr @__tlan_phy_print._entry_ptr.113, ptr @tlan_close._entry, ptr @tlan_close._entry_ptr, ptr @tlan_eisa_probe._entry, ptr @tlan_eisa_probe._entry.183, ptr @tlan_eisa_probe._entry.186, ptr @tlan_eisa_probe._entry.188, ptr @tlan_eisa_probe._entry.191, ptr @tlan_eisa_probe._entry.194, ptr @tlan_eisa_probe._entry.197, ptr @tlan_eisa_probe._entry_ptr, ptr @tlan_eisa_probe._entry_ptr.185, ptr @tlan_eisa_probe._entry_ptr.187, ptr @tlan_eisa_probe._entry_ptr.190, ptr @tlan_eisa_probe._entry_ptr.193, ptr @tlan_eisa_probe._entry_ptr.196, ptr @tlan_eisa_probe._entry_ptr.199, ptr @tlan_exit, ptr @tlan_finish_reset._entry, ptr @tlan_finish_reset._entry.52, ptr @tlan_finish_reset._entry_ptr, ptr @tlan_finish_reset._entry_ptr.54, ptr @tlan_get_stats._entry, ptr @tlan_get_stats._entry.137, ptr @tlan_get_stats._entry_ptr, ptr @tlan_get_stats._entry_ptr.139, ptr @tlan_handle_rx_eoc._entry, ptr @tlan_handle_rx_eoc._entry_ptr, ptr @tlan_handle_rx_eof._entry, ptr @tlan_handle_rx_eof._entry.95, ptr @tlan_handle_rx_eof._entry_ptr, ptr @tlan_handle_rx_eof._entry_ptr.97, ptr @tlan_handle_status_check._entry, ptr @tlan_handle_status_check._entry.104, ptr @tlan_handle_status_check._entry_ptr, ptr @tlan_handle_status_check._entry_ptr.106, ptr @tlan_handle_tx_eoc._entry, ptr @tlan_handle_tx_eoc._entry_ptr, ptr @tlan_handle_tx_eof._entry, ptr @tlan_handle_tx_eof._entry.89, ptr @tlan_handle_tx_eof._entry_ptr, ptr @tlan_handle_tx_eof._entry_ptr.91, ptr @tlan_init._entry, ptr @tlan_init._entry.77, ptr @tlan_init._entry_ptr, ptr @tlan_init._entry_ptr.79, ptr @tlan_open._entry, ptr @tlan_open._entry_ptr, ptr @tlan_phy_detect._entry, ptr @tlan_phy_detect._entry_ptr, ptr @tlan_phy_monitor._entry, ptr @tlan_phy_monitor._entry.119, ptr @tlan_phy_monitor._entry_ptr, ptr @tlan_phy_monitor._entry_ptr.121, ptr @tlan_phy_power_down._entry, ptr @tlan_phy_power_down._entry_ptr, ptr @tlan_phy_power_up._entry, ptr @tlan_phy_power_up._entry_ptr, ptr @tlan_phy_reset._entry, ptr @tlan_phy_reset._entry_ptr, ptr @tlan_phy_start_link._entry, ptr @tlan_phy_start_link._entry_ptr, ptr @tlan_print_dio._entry, ptr @tlan_print_dio._entry.144, ptr @tlan_print_dio._entry.147, ptr @tlan_print_dio._entry_ptr, ptr @tlan_print_dio._entry_ptr.146, ptr @tlan_print_dio._entry_ptr.149, ptr @tlan_print_list._entry, ptr @tlan_print_list._entry.152, ptr @tlan_print_list._entry.155, ptr @tlan_print_list._entry.158, ptr @tlan_print_list._entry.161, ptr @tlan_print_list._entry_ptr, ptr @tlan_print_list._entry_ptr.154, ptr @tlan_print_list._entry_ptr.157, ptr @tlan_print_list._entry_ptr.160, ptr @tlan_print_list._entry_ptr.163, ptr @tlan_probe._entry, ptr @tlan_probe._entry.167, ptr @tlan_probe._entry.170, ptr @tlan_probe._entry.173, ptr @tlan_probe._entry.176, ptr @tlan_probe._entry_ptr, ptr @tlan_probe._entry_ptr.169, ptr @tlan_probe._entry_ptr.172, ptr @tlan_probe._entry_ptr.175, ptr @tlan_probe._entry_ptr.178, ptr @tlan_probe1._entry, ptr @tlan_probe1._entry.10, ptr @tlan_probe1._entry.16, ptr @tlan_probe1._entry.19, ptr @tlan_probe1._entry.4, ptr @tlan_probe1._entry.7, ptr @tlan_probe1._entry_ptr, ptr @tlan_probe1._entry_ptr.12, ptr @tlan_probe1._entry_ptr.18, ptr @tlan_probe1._entry_ptr.21, ptr @tlan_probe1._entry_ptr.6, ptr @tlan_probe1._entry_ptr.9, ptr @tlan_start_tx._entry, ptr @tlan_start_tx._entry.126, ptr @tlan_start_tx._entry.129, ptr @tlan_start_tx._entry.132, ptr @tlan_start_tx._entry_ptr, ptr @tlan_start_tx._entry_ptr.128, ptr @tlan_start_tx._entry_ptr.131, ptr @tlan_start_tx._entry_ptr.134, ptr @tlan_tx_timeout._entry, ptr @tlan_tx_timeout._entry_ptr, ptr @debug, ptr @tlan_driver, ptr @tlan_have_eisa, ptr @aui, ptr @duplex, ptr @speed, ptr @.str, ptr @tlan_pci_tbl, ptr @tlan_pm_ops, ptr @tlan_signature, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @board_info, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @boards_found, ptr @tlan_probe1.__key, ptr @.str.13, ptr @tlan_probe1.__key.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @tlan_devices_installed, ptr @tlan_have_pci, ptr @tlan_eisa_devices, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @tlan_netdev_ops, ptr @tlan_ethtool_ops, ptr @.str.80, ptr @tlan_open.__key, ptr @.str.81, ptr @tlan_open.__key.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @tlan_int_vector, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @tlan_banner, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.184, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.198], section "llvm.metadata"
@0 = internal global [210 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_have_eisa to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aui to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_pci_tbl to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_signature to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_info to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe1._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe1._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe1._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe1.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe1._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe1._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_devices_installed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_have_pci to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_eisa_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_phy_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_finish_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_finish_reset._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_phy_power_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_phy_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_phy_start_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_phy_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_open.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_int_vector to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_handle_tx_eof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_handle_tx_eof._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_handle_rx_eof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_handle_rx_eof._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_handle_tx_eoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_handle_status_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_handle_status_check._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_handle_rx_eoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_phy_monitor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_phy_monitor._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_start_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_start_tx._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_start_tx._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_start_tx._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_get_stats._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_print_dio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_print_dio._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_print_dio._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_print_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_print_list._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_print_list._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_print_list._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_print_list._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_banner to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_probe._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_eisa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_eisa_probe._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_eisa_probe._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_eisa_probe._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_eisa_probe._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_eisa_probe._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlan_eisa_probe._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tlan_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @tlan_driver) #9
  %0 = load i32, ptr @tlan_have_eisa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %1 = load ptr, ptr @tlan_eisa_devices, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %dma_storage.i = getelementptr i8, ptr %1, i32 2316
  %2 = ptrtoint ptr %dma_storage.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_storage.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev.i = getelementptr i8, ptr %1, i32 2308
  %4 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %dma_size.i = getelementptr i8, ptr %1, i32 2324
  %6 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_size.i, align 4
  %dma_storage_dma.i = getelementptr i8, ptr %1, i32 2320
  %8 = ptrtoint ptr %dma_storage_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_storage_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2.i, i32 noundef %7, ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr.i, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %11, i32 noundef 16) #9
  tail call void @unregister_netdev(ptr noundef %1) #9
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  store ptr %13, ptr @tlan_eisa_devices, align 4
  tail call void @free_netdev(ptr noundef %1) #9
  %14 = load i32, ptr @tlan_have_eisa, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr @tlan_have_eisa, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_probe() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @tlan_banner) #12
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end4

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end4, %entry.do.end8_crit_edge
  %call9 = tail call i32 @__pci_register_driver(ptr noundef nonnull @tlan_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %do.body17, label %do.end13

do.end13:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #12
  br label %cleanup

do.body17:                                        ; preds = %do.end8
  %1 = load i32, ptr @debug, align 4
  %and18 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.do.end28_crit_edge, label %do.end23

do.body17.do.end28_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174) #12
  br label %do.end28

do.end28:                                         ; preds = %do.end23, %do.body17.do.end28_crit_edge
  %2 = load i32, ptr @debug, align 4
  %and.i = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end28.tlan_eisa_probe.exit_crit_edge, label %do.end.i

do.end28.tlan_eisa_probe.exit_crit_edge:          ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %tlan_eisa_probe.exit

do.end.i:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #12
  br label %tlan_eisa_probe.exit

tlan_eisa_probe.exit:                             ; preds = %do.end.i, %do.end28.tlan_eisa_probe.exit_crit_edge
  %3 = load i32, ptr @tlan_devices_installed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp33 = icmp eq i32 %3, 1
  %cond = select i1 %cmp33, ptr @.str.179, ptr @.str.180
  %4 = load i32, ptr @tlan_have_pci, align 4
  %5 = load i32, ptr @tlan_have_eisa, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %3, ptr noundef nonnull %cond, i32 noundef %4, i32 noundef %5) #12
  %6 = load i32, ptr @tlan_devices_installed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp35 = icmp eq i32 %6, 0
  br i1 %cmp35, label %if.then36, label %tlan_eisa_probe.exit.cleanup_crit_edge

tlan_eisa_probe.exit.cleanup_crit_edge:           ; preds = %tlan_eisa_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %tlan_eisa_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @tlan_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %tlan_eisa_probe.exit.cleanup_crit_edge, %do.end13
  %retval.0 = phi i32 [ 0, %tlan_eisa_probe.exit.cleanup_crit_edge ], [ %call9, %do.end13 ], [ -19, %if.then36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %addr.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pdev, null
  br i1 %tobool.not.i, label %entry.if.end8.i_crit_edge, label %if.then.i

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @pci_enable_device(ptr noundef nonnull %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.tlan_probe1.exit_crit_edge

if.then.i.tlan_probe1.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tlan_probe1.exit

if.end.i:                                         ; preds = %if.then.i
  %call3.i = tail call i32 @pci_request_regions(ptr noundef nonnull %pdev, ptr noundef nonnull @tlan_signature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %do.end.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %if.then166.i

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %call9.i = tail call ptr @alloc_etherdev_mqs(i32 noundef 324, i32 noundef 1, i32 noundef 1) #9
  %cmp.i = icmp eq ptr %call9.i, null
  br i1 %cmp.i, label %if.end8.i.err_out_regions.i_crit_edge, label %if.end11.i

if.end8.i.err_out_regions.i_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_regions.i

if.end11.i:                                       ; preds = %if.end8.i
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev12.i, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 2304
  %pci_dev.i = getelementptr i8, ptr %call9.i, i32 2308
  %1 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pci_dev.i, align 4
  %dev15.i = getelementptr i8, ptr %call9.i, i32 2312
  %2 = ptrtoint ptr %dev15.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i, ptr %dev15.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end11.i
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data.i, align 4
  %arrayidx.i = getelementptr [15 x %struct.board], ptr @board_info, i32 0, i32 %4
  %adapter.i = getelementptr i8, ptr %call9.i, i32 2500
  %5 = ptrtoint ptr %adapter.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx.i, ptr %adapter.i, align 4
  %call19.i = tail call i32 @dma_set_mask(ptr noundef %dev12.i, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %for.body.preheader.i, label %do.end24.i

for.body.preheader.i:                             ; preds = %if.then17.i
  %flags.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool30.not.i, label %for.inc.i, label %for.body.preheader.i.if.then31.i_crit_edge

for.body.preheader.i.if.then31.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

do.end24.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %err_out_free_dev.i

if.then31.i:                                      ; preds = %for.inc.4.i.if.then31.i_crit_edge, %for.inc.3.i.if.then31.i_crit_edge, %for.inc.2.i.if.then31.i_crit_edge, %for.inc.1.i.if.then31.i_crit_edge, %for.inc.i.if.then31.i_crit_edge, %for.body.preheader.i.if.then31.i_crit_edge
  %reg.013.lcssa.i = phi i32 [ 0, %for.body.preheader.i.if.then31.i_crit_edge ], [ 1, %for.inc.i.if.then31.i_crit_edge ], [ 2, %for.inc.1.i.if.then31.i_crit_edge ], [ 3, %for.inc.2.i.if.then31.i_crit_edge ], [ 4, %for.inc.3.i.if.then31.i_crit_edge ], [ 5, %for.inc.4.i.if.then31.i_crit_edge ]
  %arrayidx29.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %reg.013.lcssa.i
  %8 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx29.i, align 8
  %10 = load i32, ptr @debug, align 4
  %and35.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.then31.i.for.end.i_crit_edge, label %do.end40.i

if.then31.i.for.end.i_crit_edge:                  ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

do.end40.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %9) #12
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.preheader.i
  %flags.1.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %11 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.1.i, align 4
  %and.1.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool30.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool30.not.1.i, label %for.inc.1.i, label %for.inc.i.if.then31.i_crit_edge

for.inc.i.if.then31.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %flags.2.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %13 = ptrtoint ptr %flags.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.2.i, align 4
  %and.2.i = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool30.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool30.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.then31.i_crit_edge

for.inc.1.i.if.then31.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %flags.3.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 3
  %15 = ptrtoint ptr %flags.3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.3.i, align 4
  %and.3.i = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool30.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool30.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.then31.i_crit_edge

for.inc.2.i.if.then31.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %flags.4.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 3
  %17 = ptrtoint ptr %flags.4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.4.i, align 4
  %and.4.i = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool30.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool30.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.then31.i_crit_edge

for.inc.3.i.if.then31.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %flags.5.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 3
  %19 = ptrtoint ptr %flags.5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.5.i, align 4
  %and.5.i = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool30.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool30.not.5.i, label %for.inc.4.i.do.end51.i_crit_edge, label %for.inc.4.i.if.then31.i_crit_edge

for.inc.4.i.if.then31.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

for.inc.4.i.do.end51.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

for.end.i:                                        ; preds = %do.end40.i, %if.then31.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool47.not.i = icmp eq i32 %9, 0
  br i1 %tobool47.not.i, label %for.end.i.do.end51.i_crit_edge, label %cleanup.i

for.end.i.do.end51.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

do.end51.i:                                       ; preds = %for.end.i.do.end51.i_crit_edge, %for.inc.4.i.do.end51.i_crit_edge
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %err_out_free_dev.i

cleanup.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 5
  %21 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %9, ptr %base_addr.i, align 32
  %irq55.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %22 = ptrtoint ptr %irq55.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq55.i, align 4
  %irq56.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 64
  %24 = ptrtoint ptr %irq56.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %irq56.i, align 4
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %25 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %revision.i, align 4
  %conv.i = zext i8 %26 to i32
  %adapter_rev.i = getelementptr i8, ptr %call9.i, i32 2504
  %27 = ptrtoint ptr %adapter_rev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %adapter_rev.i, align 4
  tail call void @pci_set_master(ptr noundef nonnull %pdev) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i, ptr %driver_data.i.i.i, align 4
  br label %if.end74.i

if.else.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18871167 to ptr)) #9, !srcloc !443
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3808, i16 %29)
  %cmp63.i = icmp eq i16 %29, -3808
  %spec.select16.i = select i1 %cmp63.i, ptr getelementptr inbounds ([15 x %struct.board], ptr @board_info, i32 0, i32 13), ptr getelementptr inbounds ([15 x %struct.board], ptr @board_info, i32 0, i32 14)
  %spec.select17.i = select i1 %cmp63.i, i32 23, i32 10
  %30 = getelementptr i8, ptr %call9.i, i32 2500
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %spec.select16.i, ptr %30, align 4
  %32 = getelementptr i8, ptr %call9.i, i32 2504
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select17.i, ptr %32, align 4
  %base_addr72.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 5
  %34 = ptrtoint ptr %base_addr72.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %base_addr72.i, align 32
  %irq73.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 64
  %35 = ptrtoint ptr %irq73.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %irq73.i, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else.i, %cleanup.i
  %mem_start.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 4
  %36 = ptrtoint ptr %mem_start.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mem_start.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool75.not.i = icmp eq i32 %37, 0
  br i1 %tobool75.not.i, label %if.else109.i, label %if.then76.i

if.then76.i:                                      ; preds = %if.end74.i
  %and78.i = and i32 %37, 1
  %aui.i = getelementptr i8, ptr %call9.i, i32 2508
  %38 = ptrtoint ptr %aui.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and78.i, ptr %aui.i, align 4
  %and80.i = and i32 %37, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and80.i)
  %cmp81.i = icmp eq i32 %and80.i, 6
  %shr.i = lshr exact i32 %and80.i, 1
  %spec.select.i = select i1 %cmp81.i, i32 0, i32 %shr.i
  %duplex.i = getelementptr i8, ptr %call9.i, i32 2516
  %39 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select.i, ptr %duplex.i, align 4
  %and86.i = and i32 %37, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and86.i)
  %cmp87.i = icmp eq i32 %and86.i, 24
  %shr93.i = lshr exact i32 %and86.i, 3
  %cond95.i = select i1 %cmp87.i, i32 0, i32 %shr93.i
  %speed.i = getelementptr i8, ptr %call9.i, i32 2532
  %40 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond95.i, ptr %speed.i, align 4
  %41 = zext i32 %cond95.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond95.i, label %if.then76.i.if.end108.i_crit_edge [
    i32 1, label %if.then76.i.if.end108.sink.split.i_crit_edge
    i32 2, label %if.then105.i
  ]

if.then76.i.if.end108.sink.split.i_crit_edge:     ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108.sink.split.i

if.then76.i.if.end108.i_crit_edge:                ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108.i

if.then105.i:                                     ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108.sink.split.i

if.end108.sink.split.i:                           ; preds = %if.then105.i, %if.then76.i.if.end108.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 100, %if.then105.i ], [ 10, %if.then76.i.if.end108.sink.split.i_crit_edge ]
  %42 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink.i, ptr %speed.i, align 4
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.end108.sink.split.i, %if.then76.i.if.end108.i_crit_edge
  %mem_end.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 3
  %43 = ptrtoint ptr %mem_end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mem_end.i, align 8
  %debug.i = getelementptr i8, ptr %call9.i, i32 2512
  %45 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %debug.i, align 4
  store i32 %44, ptr @debug, align 4
  br label %do.body118.i

if.else109.i:                                     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = load i32, ptr @boards_found, align 4
  %arrayidx110.i = getelementptr [8 x i32], ptr @aui, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx110.i, align 4
  %aui111.i = getelementptr i8, ptr %call9.i, i32 2508
  %49 = ptrtoint ptr %aui111.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %aui111.i, align 4
  %arrayidx112.i = getelementptr [8 x i32], ptr @speed, i32 0, i32 %46
  %50 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx112.i, align 4
  %speed113.i = getelementptr i8, ptr %call9.i, i32 2532
  %52 = ptrtoint ptr %speed113.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %speed113.i, align 4
  %arrayidx114.i = getelementptr [8 x i32], ptr @duplex, i32 0, i32 %46
  %53 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx114.i, align 4
  %duplex115.i = getelementptr i8, ptr %call9.i, i32 2516
  %55 = ptrtoint ptr %duplex115.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %duplex115.i, align 4
  %56 = load i32, ptr @debug, align 4
  %debug116.i = getelementptr i8, ptr %call9.i, i32 2512
  %57 = ptrtoint ptr %debug116.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %debug116.i, align 4
  br label %do.body118.i

do.body118.i:                                     ; preds = %if.else109.i, %if.end108.i
  %tlan_tqueue.i = getelementptr i8, ptr %call9.i, i32 2584
  tail call void @__init_work(ptr noundef %tlan_tqueue.i, i32 noundef 0) #9
  %58 = ptrtoint ptr %tlan_tqueue.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -64, ptr %tlan_tqueue.i, align 4
  %lockdep_map.i = getelementptr i8, ptr %call9.i, i32 2600
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @tlan_probe1.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry122.i = getelementptr i8, ptr %call9.i, i32 2588
  %59 = ptrtoint ptr %entry122.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %entry122.i, ptr %entry122.i, align 4
  %prev.i.i = getelementptr i8, ptr %call9.i, i32 2592
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %entry122.i, ptr %prev.i.i, align 4
  %func.i = getelementptr i8, ptr %call9.i, i32 2596
  %61 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @tlan_tx_timeout_work, ptr %func.i, align 4
  %lock.i = getelementptr i8, ptr %call9.i, i32 2540
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @tlan_probe1.__key.14, i16 noundef signext 3) #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #9
  %62 = getelementptr inbounds [6 x i8], ptr %addr.i.i, i32 0, i32 1
  %63 = getelementptr inbounds [6 x i8], ptr %addr.i.i, i32 0, i32 2
  %64 = getelementptr inbounds [6 x i8], ptr %addr.i.i, i32 0, i32 3
  %65 = getelementptr inbounds [6 x i8], ptr %addr.i.i, i32 0, i32 4
  %66 = getelementptr inbounds [6 x i8], ptr %addr.i.i, i32 0, i32 5
  %67 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  %68 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pci_dev.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %dma_storage_dma.i.i = getelementptr i8, ptr %call9.i, i32 2320
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef 8448, ptr noundef %dma_storage_dma.i.i, i32 noundef 3264, i32 noundef 0) #9
  %dma_storage.i.i = getelementptr i8, ptr %call9.i, i32 2316
  %70 = ptrtoint ptr %dma_storage.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i.i, ptr %dma_storage.i.i, align 4
  %dma_size3.i.i = getelementptr i8, ptr %call9.i, i32 2324
  %71 = ptrtoint ptr %dma_size3.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 8448, ptr %dma_size3.i.i, align 4
  %cmp.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i, label %do.end135.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body118.i
  %72 = ptrtoint ptr %call.i.i.i to i32
  %add.i.i = add i32 %72, 7
  %and.i.i = and i32 %add.i.i, -8
  %73 = inttoptr i32 %and.i.i to ptr
  %rx_list.i.i = getelementptr i8, ptr %call9.i, i32 2332
  %74 = ptrtoint ptr %rx_list.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %rx_list.i.i, align 4
  %75 = ptrtoint ptr %dma_storage_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma_storage_dma.i.i, align 4
  %add8.i.i = add i32 %76, 7
  %and9.i.i = and i32 %add8.i.i, -8
  %rx_list_dma.i.i = getelementptr i8, ptr %call9.i, i32 2336
  %77 = ptrtoint ptr %rx_list_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and9.i.i, ptr %rx_list_dma.i.i, align 4
  %add.ptr.i2.i = getelementptr %struct.tlan_list, ptr %73, i32 32
  %tx_list.i.i = getelementptr i8, ptr %call9.i, i32 2360
  %78 = ptrtoint ptr %tx_list.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr.i2.i, ptr %tx_list.i.i, align 4
  %add12.i.i = add i32 %and9.i.i, 2816
  %tx_list_dma.i.i = getelementptr i8, ptr %call9.i, i32 2364
  %79 = ptrtoint ptr %tx_list_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add12.i.i, ptr %tx_list_dma.i.i, align 4
  %adapter.i.i = getelementptr i8, ptr %call9.i, i32 2500
  %80 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adapter.i.i, align 4
  %addr_ofs.i.i = getelementptr inbounds %struct.board, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %addr_ofs.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %addr_ofs.i.i, align 4
  %conv16.i.i = trunc i16 %83 to i8
  %call19.i.i = call fastcc i32 @tlan_ee_read_byte(ptr noundef nonnull %call9.i, i8 noundef zeroext %conv16.i.i, ptr noundef nonnull %addr.i.i) #9
  %84 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adapter.i.i, align 4
  %addr_ofs.1.i.i = getelementptr inbounds %struct.board, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %addr_ofs.1.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %addr_ofs.1.i.i, align 4
  %conv14.1.i.i = trunc i16 %87 to i8
  %add15.1.i.i = add i8 %conv14.1.i.i, 1
  %call19.1.i.i = call fastcc i32 @tlan_ee_read_byte(ptr noundef nonnull %call9.i, i8 noundef zeroext %add15.1.i.i, ptr noundef %62) #9
  %or.1.i.i = or i32 %call19.1.i.i, %call19.i.i
  %88 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adapter.i.i, align 4
  %addr_ofs.2.i.i = getelementptr inbounds %struct.board, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %addr_ofs.2.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %addr_ofs.2.i.i, align 4
  %conv14.2.i.i = trunc i16 %91 to i8
  %add15.2.i.i = add i8 %conv14.2.i.i, 2
  %call19.2.i.i = call fastcc i32 @tlan_ee_read_byte(ptr noundef nonnull %call9.i, i8 noundef zeroext %add15.2.i.i, ptr noundef %63) #9
  %or.2.i.i = or i32 %or.1.i.i, %call19.2.i.i
  %92 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter.i.i, align 4
  %addr_ofs.3.i.i = getelementptr inbounds %struct.board, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %addr_ofs.3.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %addr_ofs.3.i.i, align 4
  %conv14.3.i.i = trunc i16 %95 to i8
  %add15.3.i.i = add i8 %conv14.3.i.i, 3
  %call19.3.i.i = call fastcc i32 @tlan_ee_read_byte(ptr noundef nonnull %call9.i, i8 noundef zeroext %add15.3.i.i, ptr noundef %64) #9
  %or.3.i.i = or i32 %or.2.i.i, %call19.3.i.i
  %96 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adapter.i.i, align 4
  %addr_ofs.4.i.i = getelementptr inbounds %struct.board, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %addr_ofs.4.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %addr_ofs.4.i.i, align 4
  %conv14.4.i.i = trunc i16 %99 to i8
  %add15.4.i.i = add i8 %conv14.4.i.i, 4
  %call19.4.i.i = call fastcc i32 @tlan_ee_read_byte(ptr noundef nonnull %call9.i, i8 noundef zeroext %add15.4.i.i, ptr noundef %65) #9
  %or.4.i.i = or i32 %or.3.i.i, %call19.4.i.i
  %100 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %adapter.i.i, align 4
  %addr_ofs.5.i.i = getelementptr inbounds %struct.board, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %addr_ofs.5.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %addr_ofs.5.i.i, align 4
  %conv14.5.i.i = trunc i16 %103 to i8
  %add15.5.i.i = add i8 %conv14.5.i.i, 5
  %call19.5.i.i = call fastcc i32 @tlan_ee_read_byte(ptr noundef nonnull %call9.i, i8 noundef zeroext %add15.5.i.i, ptr noundef %66) #9
  %or.5.i.i = or i32 %or.4.i.i, %call19.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.5.i.i)
  %tobool.not.i.i = icmp eq i32 %or.5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end28.i.i_crit_edge, label %do.end23.i.i

if.end.i.i.if.end28.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i.i

do.end23.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull %call9.i, i32 noundef %or.5.i.i) #12
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %do.end23.i.i, %if.end.i.i.if.end28.i.i_crit_edge
  %104 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %adapter.i.i, align 4
  %addr_ofs30.i.i = getelementptr inbounds %struct.board, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %addr_ofs30.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %addr_ofs30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 248, i16 %107)
  %cmp32.i.i = icmp eq i16 %107, 248
  br i1 %cmp32.i.i, label %for.body38.preheader.i.i, label %if.end28.i.i.if.end138.i_crit_edge

if.end28.i.i.if.end138.i_crit_edge:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.i

for.body38.preheader.i.i:                         ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %addr.i.i, align 1
  %110 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %62, align 1
  store i8 %111, ptr %addr.i.i, align 1
  store i8 %109, ptr %62, align 1
  %112 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %63, align 1
  %114 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %64, align 1
  store i8 %115, ptr %63, align 1
  store i8 %113, ptr %64, align 1
  %116 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %65, align 1
  %118 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %66, align 1
  store i8 %119, ptr %65, align 1
  store i8 %117, ptr %66, align 1
  br label %if.end138.i

do.end135.i:                                      ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull %call9.i) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #9
  %call137.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %err_out_free_dev.i

if.end138.i:                                      ; preds = %for.body38.preheader.i.i, %if.end28.i.i.if.end138.i_crit_edge
  call void @dev_addr_mod(ptr noundef nonnull %call9.i, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #9
  call void @netif_carrier_off(ptr noundef nonnull %call9.i) #9
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 16
  %120 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @tlan_netdev_ops, ptr %netdev_ops.i.i, align 8
  %ethtool_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 44
  %121 = ptrtoint ptr %ethtool_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @tlan_ethtool_ops, ptr %ethtool_ops.i.i, align 16
  %watchdog_timeo.i.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 115
  %122 = ptrtoint ptr %watchdog_timeo.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1000, ptr %watchdog_timeo.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #9
  %call139.i = call i32 @register_netdev(ptr noundef nonnull %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i)
  %tobool140.not.i = icmp eq i32 %call139.i, 0
  br i1 %tobool140.not.i, label %if.end147.i, label %do.end144.i

do.end144.i:                                      ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #11
  %call146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  %123 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pci_dev.i, align 4
  %dev161.i = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  %125 = ptrtoint ptr %dma_size3.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dma_size3.i.i, align 4
  %127 = ptrtoint ptr %dma_storage.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dma_storage.i.i, align 4
  %129 = ptrtoint ptr %dma_storage_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dma_storage_dma.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev161.i, i32 noundef %126, ptr noundef %128, i32 noundef %130, i32 noundef 0) #9
  br label %err_out_free_dev.i

if.end147.i:                                      ; preds = %if.end138.i
  %131 = load i32, ptr @tlan_devices_installed, align 4
  %inc148.i = add i32 %131, 1
  store i32 %inc148.i, ptr @tlan_devices_installed, align 4
  %132 = load i32, ptr @boards_found, align 4
  %inc149.i = add i32 %132, 1
  store i32 %inc149.i, ptr @boards_found, align 4
  br i1 %tobool.not.i, label %if.else153.i, label %if.end147.i.if.end155.i_crit_edge

if.end147.i.if.end155.i_crit_edge:                ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155.i

if.else153.i:                                     ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #11
  %133 = load ptr, ptr @tlan_eisa_devices, align 4
  %134 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %add.ptr.i.i, align 4
  store ptr %call9.i, ptr @tlan_eisa_devices, align 4
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.else153.i, %if.end147.i.if.end155.i_crit_edge
  %tlan_have_eisa.sink19.i = phi ptr [ @tlan_have_eisa, %if.else153.i ], [ @tlan_have_pci, %if.end147.i.if.end155.i_crit_edge ]
  %135 = ptrtoint ptr %tlan_have_eisa.sink19.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tlan_have_eisa.sink19.i, align 4
  %inc154.i = add i32 %136, 1
  store i32 %inc154.i, ptr %tlan_have_eisa.sink19.i, align 4
  %irq156.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 64
  %137 = ptrtoint ptr %irq156.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %irq156.i, align 4
  %base_addr157.i = getelementptr inbounds %struct.net_device, ptr %call9.i, i32 0, i32 5
  %139 = ptrtoint ptr %base_addr157.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %base_addr157.i, align 32
  %141 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %adapter.i.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %adapter_rev159.i = getelementptr i8, ptr %call9.i, i32 2504
  %145 = ptrtoint ptr %adapter_rev159.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %adapter_rev159.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call9.i, ptr noundef nonnull @.str.22, i32 noundef %138, i32 noundef %140, ptr noundef %144, i32 noundef %146) #12
  br label %tlan_probe1.exit

err_out_free_dev.i:                               ; preds = %do.end144.i, %do.end135.i, %do.end51.i, %do.end24.i
  %rc.1.i = phi i32 [ -12, %do.end135.i ], [ %call139.i, %do.end144.i ], [ -5, %do.end51.i ], [ %call19.i, %do.end24.i ]
  call void @free_netdev(ptr noundef nonnull %call9.i) #9
  br label %err_out_regions.i

err_out_regions.i:                                ; preds = %err_out_free_dev.i, %if.end8.i.err_out_regions.i_crit_edge
  %rc.2.i = phi i32 [ %rc.1.i, %err_out_free_dev.i ], [ -12, %if.end8.i.err_out_regions.i_crit_edge ]
  br i1 %tobool.not.i, label %err_out_regions.i.tlan_probe1.exit_crit_edge, label %if.then163.i

err_out_regions.i.tlan_probe1.exit_crit_edge:     ; preds = %err_out_regions.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tlan_probe1.exit

if.then163.i:                                     ; preds = %err_out_regions.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @pci_release_regions(ptr noundef nonnull %pdev) #9
  br label %if.then166.i

if.then166.i:                                     ; preds = %if.then163.i, %do.end.i
  %rc.3.ph.i = phi i32 [ %rc.2.i, %if.then163.i ], [ %call3.i, %do.end.i ]
  call void @pci_disable_device(ptr noundef nonnull %pdev) #9
  br label %tlan_probe1.exit

tlan_probe1.exit:                                 ; preds = %if.then166.i, %err_out_regions.i.tlan_probe1.exit_crit_edge, %if.end155.i, %if.then.i.tlan_probe1.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end155.i ], [ %call.i, %if.then.i.tlan_probe1.exit_crit_edge ], [ %rc.3.ph.i, %if.then166.i ], [ %rc.2.i, %err_out_regions.i.tlan_probe1.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tlan_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #9
  %dma_storage = getelementptr i8, ptr %1, i32 2316
  %2 = ptrtoint ptr %dma_storage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_storage, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev = getelementptr i8, ptr %1, i32 2308
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %dma_size = getelementptr i8, ptr %1, i32 2324
  %6 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_size, align 4
  %dma_storage_dma = getelementptr i8, ptr %1, i32 2320
  %8 = ptrtoint ptr %dma_storage_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_storage_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %7, ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  %tlan_tqueue = getelementptr i8, ptr %1, i32 2584
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tlan_tqueue) #9
  tail call void @free_netdev(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tlan_tx_timeout_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %work, i32 -272
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @tlan_tx_timeout(ptr noundef %1, i32 noundef -1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tlan_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %dev) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call fastcc void @tlan_free_lists(ptr noundef %dev)
  tail call fastcc void @tlan_reset_lists(ptr noundef %dev)
  tail call fastcc void @tlan_read_and_clear_stats(ptr noundef %dev, i32 noundef 0)
  tail call fastcc void @tlan_reset_adapter(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %1 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %2, i32 0, i32 12
  %4 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i.i = icmp eq i32 %5, %3
  br i1 %cmp.not.i.i, label %do.end2.netif_trans_update.exit_crit_edge, label %do.body5.i.i

do.end2.netif_trans_update.exit_crit_edge:        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %3, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %do.end2.netif_trans_update.exit_crit_edge
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_free_lists(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_list = getelementptr i8, ptr %dev, i32 2360
  %pci_dev = getelementptr i8, ptr %dev, i32 2308
  br label %for.body

for.cond10.preheader:                             ; preds = %for.inc
  %rx_list = getelementptr i8, ptr %dev, i32 2332
  br label %for.body12

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.054 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_list, align 4
  %address.i = getelementptr %struct.tlan_list, ptr %1, i32 %i.054, i32 3, i32 9, i32 1
  %2 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = inttoptr i32 %3 to ptr
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %address = getelementptr %struct.tlan_list, ptr %1, i32 %i.054, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 64)
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2, i32 noundef %8, i32 noundef %11, i32 noundef 1, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %4, i32 noundef 1) #9
  %address6 = getelementptr %struct.tlan_list, ptr %1, i32 %i.054, i32 3, i32 8, i32 1
  %12 = ptrtoint ptr %address6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %address6, align 4
  %13 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %address.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body12:                                       ; preds = %for.inc29.for.body12_crit_edge, %for.cond10.preheader
  %i.156 = phi i32 [ 0, %for.cond10.preheader ], [ %inc30, %for.inc29.for.body12_crit_edge ]
  %14 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_list, align 4
  %address.i53 = getelementptr %struct.tlan_list, ptr %15, i32 %i.156, i32 3, i32 9, i32 1
  %16 = ptrtoint ptr %address.i53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %for.body12.for.inc29_crit_edge, label %if.then16

for.body12.for.inc29_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29

if.then16:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  %18 = inttoptr i32 %17 to ptr
  %19 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %address21 = getelementptr %struct.tlan_list, ptr %15, i32 %i.156, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %address21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %address21, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev18, i32 noundef %22, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %18, i32 noundef 1) #9
  %address24 = getelementptr %struct.tlan_list, ptr %15, i32 %i.156, i32 3, i32 8, i32 1
  %23 = ptrtoint ptr %address24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %address24, align 4
  %24 = ptrtoint ptr %address.i53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %address.i53, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %if.then16, %for.body12.for.inc29_crit_edge
  %inc30 = add nuw nsw i32 %i.156, 1
  %exitcond58.not = icmp eq i32 %inc30, 32
  br i1 %exitcond58.not, label %for.end31, label %for.inc29.for.body12_crit_edge

for.inc29.for.body12_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.end31:                                        ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_reset_lists(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_head = getelementptr i8, ptr %dev, i32 2376
  %0 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tx_head, align 4
  %tx_tail = getelementptr i8, ptr %dev, i32 2384
  %1 = ptrtoint ptr %tx_tail to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tx_tail, align 4
  %tx_list = getelementptr i8, ptr %dev, i32 2360
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.079 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_list, align 4
  %c_stat = getelementptr %struct.tlan_list, ptr %3, i32 %i.079, i32 1
  %4 = ptrtoint ptr %c_stat to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -32768, ptr %c_stat, align 4
  %address = getelementptr %struct.tlan_list, ptr %3, i32 %i.079, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %address, align 4
  %arrayidx2 = getelementptr %struct.tlan_list, ptr %3, i32 %i.079, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx2, align 4
  %address5 = getelementptr %struct.tlan_list, ptr %3, i32 %i.079, i32 3, i32 2, i32 1
  %7 = ptrtoint ptr %address5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %address5, align 4
  %address8 = getelementptr %struct.tlan_list, ptr %3, i32 %i.079, i32 3, i32 8, i32 1
  %8 = ptrtoint ptr %address8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %address8, align 4
  %address11 = getelementptr %struct.tlan_list, ptr %3, i32 %i.079, i32 3, i32 9, i32 1
  %9 = ptrtoint ptr %address11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %address11, align 4
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %rx_head = getelementptr i8, ptr %dev, i32 2348
  %10 = ptrtoint ptr %rx_head to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_head, align 4
  %rx_tail = getelementptr i8, ptr %dev, i32 2352
  %11 = ptrtoint ptr %rx_tail to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 31, ptr %rx_tail, align 4
  %rx_list = getelementptr i8, ptr %dev, i32 2332
  %rx_list_dma = getelementptr i8, ptr %dev, i32 2336
  %pci_dev = getelementptr i8, ptr %dev, i32 2308
  br label %for.body14

for.body14:                                       ; preds = %dma_map_single_attrs.exit.for.body14_crit_edge, %for.end
  %i.180 = phi i32 [ 0, %for.end ], [ %inc34, %dma_map_single_attrs.exit.for.body14_crit_edge ]
  %12 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_list, align 4
  %add.ptr15 = getelementptr %struct.tlan_list, ptr %13, i32 %i.180
  %14 = ptrtoint ptr %rx_list_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_list_dma, align 4
  %c_stat16 = getelementptr %struct.tlan_list, ptr %13, i32 %i.180, i32 1
  %16 = ptrtoint ptr %c_stat16 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 12288, ptr %c_stat16, align 4
  %frame_size = getelementptr %struct.tlan_list, ptr %13, i32 %i.180, i32 2
  %17 = ptrtoint ptr %frame_size to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1600, ptr %frame_size, align 2
  %buffer17 = getelementptr %struct.tlan_list, ptr %13, i32 %i.180, i32 3
  %18 = ptrtoint ptr %buffer17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -2147482048, ptr %buffer17, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1607, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.end35, label %if.end

if.end:                                           ; preds = %for.body14
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %22, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %mul = mul nuw nsw i32 %i.180, 88
  %23 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !445

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev21) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i75 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i75, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev21, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev21, ptr noundef %add.ptr.i.i.i, i32 noundef 1600) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i = add i32 %30, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i76 = getelementptr %struct.page, ptr %29, i32 %shr.i
  %and.i = and i32 %30, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev21, ptr noundef %add.ptr.i76, i32 noundef %and.i, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %address25 = getelementptr inbounds %struct.tlan_buffer, ptr %buffer17, i32 0, i32 1
  %31 = ptrtoint ptr %address25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i, ptr %address25, align 4
  %32 = ptrtoint ptr %call.i.i to i32
  %address.i = getelementptr %struct.tlan_list, ptr %13, i32 %i.180, i32 3, i32 9, i32 1
  %33 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %address.i, align 4
  %address4.i = getelementptr %struct.tlan_list, ptr %13, i32 %i.180, i32 3, i32 8, i32 1
  %34 = ptrtoint ptr %address4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %address4.i, align 4
  %arrayidx27 = getelementptr %struct.tlan_list, ptr %13, i32 %i.180, i32 3, i32 1
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx27, align 4
  %address31 = getelementptr %struct.tlan_list, ptr %13, i32 %i.180, i32 3, i32 1, i32 1
  %36 = ptrtoint ptr %address31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %address31, align 4
  %add = add nuw nsw i32 %mul, 88
  %add32 = add i32 %add, %15
  %37 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add32, ptr %add.ptr15, align 4
  %inc34 = add nuw nsw i32 %i.180, 1
  %exitcond83.not = icmp eq i32 %inc34, 32
  br i1 %exitcond83.not, label %dma_map_single_attrs.exit.while.end_crit_edge, label %dma_map_single_attrs.exit.for.body14_crit_edge

dma_map_single_attrs.exit.for.body14_crit_edge:   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

dma_map_single_attrs.exit.while.end_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.end35:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.180)
  %cmp3681 = icmp ult i32 %i.180, 32
  br i1 %cmp3681, label %for.end35.while.body_crit_edge, label %for.end35.while.end_crit_edge

for.end35.while.end_crit_edge:                    ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.end35.while.body_crit_edge:                   ; preds = %for.end35
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end35.while.body_crit_edge
  %i.282 = phi i32 [ %inc39, %while.body.while.body_crit_edge ], [ %i.180, %for.end35.while.body_crit_edge ]
  %38 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_list, align 4
  %address.i77 = getelementptr %struct.tlan_list, ptr %39, i32 %i.282, i32 3, i32 9, i32 1
  %40 = ptrtoint ptr %address.i77 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %address.i77, align 4
  %address4.i78 = getelementptr %struct.tlan_list, ptr %39, i32 %i.282, i32 3, i32 8, i32 1
  %41 = ptrtoint ptr %address4.i78 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %address4.i78, align 4
  %inc39 = add nuw nsw i32 %i.282, 1
  %exitcond84.not = icmp eq i32 %inc39, 32
  br i1 %exitcond84.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end35.while.end_crit_edge, %dma_map_single_attrs.exit.while.end_crit_edge
  %42 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %add.ptr15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_read_and_clear_stats(ptr noundef %dev, i32 noundef %record) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !446
  tail call void @arm_heavy_mb() #9
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 12288) #9, !srcloc !447
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_addr, align 32
  %add3 = add i32 %4, 12
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %5 = inttoptr i32 %add5 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !449
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr, align 32
  %add11 = add i32 %8, 13
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %9 = inttoptr i32 %add13 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !450
  %11 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_addr, align 32
  %add22 = add i32 %12, 14
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %13 = inttoptr i32 %add24 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !451
  %15 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_addr, align 32
  %add34 = add i32 %16, 15
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %17 = inttoptr i32 %add36 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !453
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_addr, align 32
  %add45 = add i32 %20, 8
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %21 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 13312) #9, !srcloc !447
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_addr, align 32
  %add51 = add i32 %23, 12
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %24 = inttoptr i32 %add53 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !454
  %26 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_addr, align 32
  %add61 = add i32 %27, 13
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %28 = inttoptr i32 %add63 to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !455
  %30 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base_addr, align 32
  %add73 = add i32 %31, 14
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %32 = inttoptr i32 %add75 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !456
  %34 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_addr, align 32
  %add85 = add i32 %35, 15
  %and86 = and i32 %add85, 1048575
  %add87 = or i32 %and86, -18874368
  %36 = inttoptr i32 %add87 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !458
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base_addr, align 32
  %add96 = add i32 %39, 8
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %40 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 14336) #9, !srcloc !447
  %41 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_addr, align 32
  %add102 = add i32 %42, 12
  %and103 = and i32 %add102, 1048575
  %add104 = or i32 %and103, -18874368
  %43 = inttoptr i32 %add104 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !459
  %45 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base_addr, align 32
  %add112 = add i32 %46, 13
  %and113 = and i32 %add112, 1048575
  %add114 = or i32 %and113, -18874368
  %47 = inttoptr i32 %add114 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !460
  %49 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base_addr, align 32
  %add124 = add i32 %50, 14
  %and125 = and i32 %add124, 1048575
  %add126 = or i32 %and125, -18874368
  %51 = inttoptr i32 %add126 to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  %53 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base_addr, align 32
  %add134 = add i32 %54, 15
  %and135 = and i32 %add134, 1048575
  %add136 = or i32 %and135, -18874368
  %55 = inttoptr i32 %add136 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !462
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %base_addr, align 32
  %add145 = add i32 %58, 8
  %and146 = and i32 %add145, 1048575
  %add147 = or i32 %and146, -18874368
  %59 = inttoptr i32 %add147 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 15360) #9, !srcloc !447
  %60 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %base_addr, align 32
  %add151 = add i32 %61, 12
  %and152 = and i32 %add151, 1048575
  %add153 = or i32 %and152, -18874368
  %62 = inttoptr i32 %add153 to ptr
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %62) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !464
  %64 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base_addr, align 32
  %add161 = add i32 %65, 13
  %and162 = and i32 %add161, 1048575
  %add163 = or i32 %and162, -18874368
  %66 = inttoptr i32 %add163 to ptr
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !465
  %68 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %base_addr, align 32
  %add173 = add i32 %69, 14
  %and174 = and i32 %add173, 1048575
  %add175 = or i32 %and174, -18874368
  %70 = inttoptr i32 %add175 to ptr
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %72 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %base_addr, align 32
  %add183 = add i32 %73, 15
  %and184 = and i32 %add183, 1048575
  %add185 = or i32 %and184, -18874368
  %74 = inttoptr i32 %add185 to ptr
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %74) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  tail call void @arm_heavy_mb() #9
  %76 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %base_addr, align 32
  %add196 = add i32 %77, 8
  %and197 = and i32 %add196, 1048575
  %add198 = or i32 %and197, -18874368
  %78 = inttoptr i32 %add198 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %78, i16 16384) #9, !srcloc !447
  %79 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %base_addr, align 32
  %add202 = add i32 %80, 12
  %and203 = and i32 %add202, 1048575
  %add204 = or i32 %and203, -18874368
  %81 = inttoptr i32 %add204 to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !469
  %83 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %base_addr, align 32
  %add212 = add i32 %84, 13
  %and213 = and i32 %add212, 1048575
  %add214 = or i32 %and213, -18874368
  %85 = inttoptr i32 %add214 to ptr
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %87 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %base_addr, align 32
  %add222 = add i32 %88, 14
  %and223 = and i32 %add222, 1048575
  %add224 = or i32 %and223, -18874368
  %89 = inttoptr i32 %add224 to ptr
  %90 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %89) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !471
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %record)
  %tobool.not = icmp eq i32 %record, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv228 = zext i8 %90 to i32
  %conv218 = zext i8 %86 to i32
  %conv208 = zext i8 %82 to i32
  %conv179 = zext i8 %71 to i32
  %conv189 = zext i8 %75 to i32
  %shl190 = shl nuw nsw i32 %conv189, 8
  %conv157 = zext i8 %63 to i32
  %conv167 = zext i8 %67 to i32
  %shl168 = shl nuw nsw i32 %conv167, 8
  %conv140 = zext i8 %56 to i32
  %conv130 = zext i8 %52 to i32
  %conv91 = zext i8 %37 to i32
  %conv67 = zext i8 %29 to i32
  %shl68 = shl nuw nsw i32 %conv67, 8
  %conv57 = zext i8 %25 to i32
  %add69 = or i32 %shl68, %conv57
  %conv79 = zext i8 %33 to i32
  %shl80 = shl nuw nsw i32 %conv79, 16
  %add81 = or i32 %add69, %shl80
  %conv40 = zext i8 %18 to i32
  %conv17 = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv17, 8
  %conv = zext i8 %6 to i32
  %add18 = or i32 %shl, %conv
  %conv28 = zext i8 %14 to i32
  %shl29 = shl nuw nsw i32 %conv28, 16
  %add30 = or i32 %add18, %shl29
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %91 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %stats, align 8
  %add229 = add i32 %add81, %92
  store i32 %add229, ptr %stats, align 8
  %add230 = add nuw nsw i32 %conv130, %conv91
  %add231 = add nuw nsw i32 %add230, %conv140
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %93 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_errors, align 8
  %add233 = add i32 %add231, %94
  store i32 %add233, ptr %rx_errors, align 8
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %95 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_packets, align 4
  %add235 = add i32 %add30, %96
  store i32 %add235, ptr %tx_packets, align 4
  %add236 = add nuw nsw i32 %conv228, %conv40
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %97 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_errors, align 4
  %add238 = add i32 %add236, %98
  store i32 %add238, ptr %tx_errors, align 4
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %99 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %collisions, align 4
  %add191 = or i32 %shl168, %conv157
  %add169 = add nuw nsw i32 %add191, %conv179
  %add239 = add nuw nsw i32 %add169, %shl190
  %add240 = add nuw nsw i32 %add239, %conv208
  %add241 = add nuw nsw i32 %add240, %conv218
  %add243 = add i32 %add241, %100
  store i32 %add243, ptr %collisions, align 4
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %101 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_over_errors, align 4
  %add245 = add i32 %102, %conv91
  store i32 %add245, ptr %rx_over_errors, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %103 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_crc_errors, align 8
  %add247 = add i32 %104, %conv130
  store i32 %add247, ptr %rx_crc_errors, align 8
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %105 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_frame_errors, align 4
  %add249 = add i32 %106, %conv140
  store i32 %add249, ptr %rx_frame_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %107 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_aborted_errors, align 8
  %add251 = add i32 %108, %conv40
  store i32 %add251, ptr %tx_aborted_errors, align 8
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %109 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_carrier_errors, align 4
  %add253 = add i32 %110, %conv228
  store i32 %add253, ptr %tx_carrier_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_reset_adapter(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %control.i = alloca i16, align 2
  %hi.i = alloca i16, align 2
  %lo.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tlan_full_duplex = getelementptr i8, ptr %dev, i32 2537
  %0 = ptrtoint ptr %tlan_full_duplex to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tlan_full_duplex, align 1
  %phy_online = getelementptr i8, ptr %dev, i32 2392
  %1 = ptrtoint ptr %phy_online to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %phy_online, align 4
  tail call void @netif_carrier_off(ptr noundef %dev) #9
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #9, !srcloc !472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  %6 = or i32 %5, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !474
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr, align 32
  %and6 = and i32 %8, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %6) #9, !srcloc !475
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  %11 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_addr, align 32
  %and12 = and i32 %12, 1048575
  %add13 = or i32 %and12, -18874368
  %13 = inttoptr i32 %add13 to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #9, !srcloc !472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !476
  %15 = or i32 %14, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !477
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_addr, align 32
  %and23 = and i32 %17, 1048575
  %add24 = or i32 %and23, -18874368
  %18 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %15) #9, !srcloc !475
  %19 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i = and i32 %20, 65535
  %add1.i = add nuw nsw i32 %conv.i, -18874360
  %21 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 4096) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %add8.i = add nuw nsw i32 %conv.i, -18874356
  %22 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 0) #9, !srcloc !475
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i.1 = and i32 %24, 65535
  %add1.i.1 = add nuw nsw i32 %conv.i.1, -18874360
  %25 = inttoptr i32 %add1.i.1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 5120) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %add8.i.1 = add nuw nsw i32 %conv.i.1, -18874356
  %26 = inttoptr i32 %add8.i.1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 0) #9, !srcloc !475
  %27 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i.2 = and i32 %28, 65535
  %add1.i.2 = add nuw nsw i32 %conv.i.2, -18874360
  %29 = inttoptr i32 %add1.i.2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %29, i16 6144) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %add8.i.2 = add nuw nsw i32 %conv.i.2, -18874356
  %30 = inttoptr i32 %add8.i.2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 0) #9, !srcloc !475
  %31 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i.3 = and i32 %32, 65535
  %add1.i.3 = add nuw nsw i32 %conv.i.3, -18874360
  %33 = inttoptr i32 %add1.i.3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 7168) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %add8.i.3 = add nuw nsw i32 %conv.i.3, -18874356
  %34 = inttoptr i32 %add8.i.3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 0) #9, !srcloc !475
  %35 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i.4 = and i32 %36, 65535
  %add1.i.4 = add nuw nsw i32 %conv.i.4, -18874360
  %37 = inttoptr i32 %add1.i.4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 8192) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %add8.i.4 = add nuw nsw i32 %conv.i.4, -18874356
  %38 = inttoptr i32 %add8.i.4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 0) #9, !srcloc !475
  %39 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i.5 = and i32 %40, 65535
  %add1.i.5 = add nuw nsw i32 %conv.i.5, -18874360
  %41 = inttoptr i32 %add1.i.5 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 9216) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %add8.i.5 = add nuw nsw i32 %conv.i.5, -18874356
  %42 = inttoptr i32 %add8.i.5 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %42, i32 0) #9, !srcloc !475
  %43 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i.6 = and i32 %44, 65535
  %add1.i.6 = add nuw nsw i32 %conv.i.6, -18874360
  %45 = inttoptr i32 %add1.i.6 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 10240) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %add8.i.6 = add nuw nsw i32 %conv.i.6, -18874356
  %46 = inttoptr i32 %add8.i.6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 0) #9, !srcloc !475
  %47 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i.7 = and i32 %48, 65535
  %add1.i.7 = add nuw nsw i32 %conv.i.7, -18874360
  %49 = inttoptr i32 %add1.i.7 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %49, i16 11264) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %add8.i.7 = add nuw nsw i32 %conv.i.7, -18874356
  %50 = inttoptr i32 %add8.i.7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %50, i32 0) #9, !srcloc !475
  %51 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !480
  tail call void @arm_heavy_mb() #9
  %conv.i145 = and i32 %52, 65535
  %add1.i146 = add nuw nsw i32 %conv.i145, -18874360
  %53 = inttoptr i32 %add1.i146 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %53, i16 1024) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !481
  tail call void @arm_heavy_mb() #9
  %add8.i147 = add nuw nsw i32 %conv.i145, -18874356
  %54 = inttoptr i32 %add8.i147 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 -32762) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !482
  tail call void @arm_heavy_mb() #9
  %55 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base_addr, align 32
  %and37 = and i32 %56, 1048575
  %add38 = or i32 %and37, -18874368
  %57 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %57, i32 1061158912) #9, !srcloc !475
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !483
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base_addr, align 32
  %and45 = and i32 %59, 1048575
  %add46 = or i32 %and45, -18874368
  %60 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %60, i32 153092096) #9, !srcloc !475
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !484
  tail call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %base_addr, align 32
  %add52 = add i32 %62, 8
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %63 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 256) #9, !srcloc !447
  %64 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base_addr, align 32
  %add58 = add i32 %65, 13
  %and.i = and i32 %add58, 1048575
  %add.i = or i32 %and.i, -18874368
  %66 = inttoptr i32 %add.i to ptr
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %68 = or i8 %67, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %68) #9, !srcloc !487
  %tlan_rev = getelementptr i8, ptr %dev, i32 2536
  %69 = ptrtoint ptr %tlan_rev to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tlan_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %70)
  %cmp64 = icmp ugt i8 %70, 47
  br i1 %cmp64, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i150 = and i32 %72, 65535
  %add1.i151 = add nuw nsw i32 %conv.i150, -18874360
  %73 = inttoptr i32 %add1.i151 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %73, i16 18432) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add8.i152 = add nuw nsw i32 %conv.i150, -18874356
  %74 = inttoptr i32 %add8.i152 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 5) #9, !srcloc !487
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control.i) #9
  %75 = ptrtoint ptr %control.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -1, ptr %control.i, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hi.i) #9
  %76 = ptrtoint ptr %hi.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 -1, ptr %hi.i, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lo.i) #9
  %77 = ptrtoint ptr %lo.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %lo.i, align 2, !annotation !490
  %adapter.i = getelementptr i8, ptr %dev, i32 2500
  %78 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %adapter.i, align 4
  %flags.i = getelementptr inbounds %struct.board, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i, align 4
  %and.i153 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %tobool.not.i = icmp eq i32 %and.i153, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %phy_num.i = getelementptr i8, ptr %dev, i32 2528
  %82 = ptrtoint ptr %phy_num.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 65535, ptr %phy_num.i, align 4
  br label %tlan_phy_detect.exit

if.end.i:                                         ; preds = %if.end
  %lock.i.i = getelementptr i8, ptr %dev, i32 2540
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext 31, i16 noundef zeroext 2, ptr noundef nonnull %hi.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #9
  %83 = ptrtoint ptr %hi.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %hi.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %84)
  %cmp.not.i = icmp eq i16 %84, -1
  %spec.select.i = select i1 %cmp.not.i, i32 32, i32 31
  %85 = getelementptr i8, ptr %dev, i32 2520
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %spec.select.i, ptr %85, align 4
  %arrayidx8.i = getelementptr i8, ptr %dev, i32 2524
  %87 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 32, ptr %arrayidx8.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %phy.095.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %conv11.i = trunc i32 %phy.095.i to i16
  %call3.i90.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv11.i, i16 noundef zeroext 0, ptr noundef nonnull %control.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i90.i) #9
  %call3.i92.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv11.i, i16 noundef zeroext 2, ptr noundef nonnull %hi.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i92.i) #9
  %call3.i94.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv11.i, i16 noundef zeroext 3, ptr noundef nonnull %lo.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i94.i) #9
  %88 = ptrtoint ptr %control.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %control.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %89)
  %cmp15.not.i = icmp eq i16 %89, -1
  br i1 %cmp15.not.i, label %lor.lhs.false.i, label %for.body.i.do.body.i_crit_edge

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %90 = ptrtoint ptr %hi.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %hi.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %91)
  %cmp18.not.i = icmp eq i16 %91, -1
  br i1 %cmp18.not.i, label %lor.lhs.false20.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

lor.lhs.false20.i:                                ; preds = %lor.lhs.false.i
  %92 = ptrtoint ptr %lo.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %lo.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %93)
  %cmp22.not.i = icmp eq i16 %93, -1
  br i1 %cmp22.not.i, label %lor.lhs.false20.i.for.inc.i_crit_edge, label %lor.lhs.false20.i.do.body.i_crit_edge

lor.lhs.false20.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

lor.lhs.false20.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.body.i:                                        ; preds = %lor.lhs.false20.i.do.body.i_crit_edge, %lor.lhs.false.i.do.body.i_crit_edge, %for.body.i.do.body.i_crit_edge
  %94 = load i32, ptr @debug, align 4
  %and25.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %do.body.i.do.end35.i_crit_edge, label %do.end.i

do.body.i.do.end35.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv29.i = zext i16 %89 to i32
  %95 = ptrtoint ptr %hi.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %hi.i, align 2
  %conv30.i = zext i16 %96 to i32
  %97 = ptrtoint ptr %lo.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %lo.i, align 2
  %conv31.i = zext i16 %98 to i32
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %phy.095.i, i32 noundef %conv29.i, i32 noundef %conv30.i, i32 noundef %conv31.i) #12
  br label %do.end35.i

do.end35.i:                                       ; preds = %do.end.i, %do.body.i.do.end35.i_crit_edge
  %99 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %100)
  %cmp38.i = icmp ne i32 %100, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %phy.095.i)
  %cmp40.not.i = icmp eq i32 %phy.095.i, 31
  %or.cond.i = select i1 %cmp38.i, i1 true, i1 %cmp40.not.i
  br i1 %or.cond.i, label %do.end35.i.for.inc.i_crit_edge, label %if.then42.i

do.end35.i.for.inc.i_crit_edge:                   ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then42.i:                                      ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %phy.095.i, ptr %arrayidx8.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then42.i, %do.end35.i.for.inc.i_crit_edge, %lor.lhs.false20.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %phy.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %102 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %103)
  %cmp49.not.i = icmp eq i32 %103, 32
  br i1 %cmp49.not.i, label %if.else53.i, label %if.then51.i

if.then51.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %phy_num52.i = getelementptr i8, ptr %dev, i32 2528
  %104 = ptrtoint ptr %phy_num52.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %phy_num52.i, align 4
  br label %tlan_phy_detect.exit

if.else53.i:                                      ; preds = %for.end.i
  %105 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %106)
  %cmp56.not.i = icmp eq i32 %106, 32
  br i1 %cmp56.not.i, label %if.else60.i, label %if.then58.i

if.then58.i:                                      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #11
  %phy_num59.i = getelementptr i8, ptr %dev, i32 2528
  %107 = ptrtoint ptr %phy_num59.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %phy_num59.i, align 4
  br label %tlan_phy_detect.exit

if.else60.i:                                      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.42) #12
  br label %tlan_phy_detect.exit

tlan_phy_detect.exit:                             ; preds = %if.else60.i, %if.then58.i, %if.then51.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lo.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hi.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control.i) #9
  %108 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %adapter.i, align 4
  %flags = getelementptr inbounds %struct.board, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags, align 4
  %and68 = and i32 %111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool.not = icmp eq i32 %and68, 0
  br i1 %tobool.not, label %tlan_phy_detect.exit.if.end87_crit_edge, label %if.then69

tlan_phy_detect.exit.if.end87_crit_edge:          ; preds = %tlan_phy_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then69:                                        ; preds = %tlan_phy_detect.exit
  %aui = getelementptr i8, ptr %dev, i32 2508
  %112 = ptrtoint ptr %aui to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %aui, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp71 = icmp eq i32 %113, 1
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i154 = and i32 %115, 65535
  %add1.i155 = add nuw nsw i32 %conv.i154, -18874360
  %116 = inttoptr i32 %add1.i155 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %116, i16 17152) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add10.i157 = add nuw nsw i32 %conv.i154, -18874353
  %117 = inttoptr i32 %add10.i157 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 10) #9, !srcloc !487
  br label %if.end87

if.else:                                          ; preds = %if.then69
  %duplex = getelementptr i8, ptr %dev, i32 2516
  %118 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp76 = icmp eq i32 %119, 2
  %120 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %conv.i158 = and i32 %121, 65535
  %add1.i159 = add nuw nsw i32 %conv.i158, -18874360
  %122 = inttoptr i32 %add1.i159 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %122, i16 17152) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %add10.i161 = add nuw nsw i32 %conv.i158, -18874353
  %123 = inttoptr i32 %add10.i161 to ptr
  br i1 %cmp76, label %if.then78, label %if.else82

if.then78:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %123, i8 0) #9, !srcloc !487
  %124 = ptrtoint ptr %tlan_full_duplex to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %tlan_full_duplex, align 1
  br label %if.end87

if.else82:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %123, i8 8) #9, !srcloc !487
  br label %if.end87

if.end87:                                         ; preds = %if.else82, %if.then78, %if.then73, %tlan_phy_detect.exit.if.end87_crit_edge
  %data.0 = phi i32 [ 9728, %if.then73 ], [ 9728, %if.then78 ], [ 9728, %if.else82 ], [ 1536, %tlan_phy_detect.exit.if.end87_crit_edge ]
  %phy_num = getelementptr i8, ptr %dev, i32 2528
  %125 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %phy_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp88 = icmp eq i32 %126, 0
  br i1 %cmp88, label %if.end87.if.then94_crit_edge, label %lor.lhs.false

if.end87.if.then94_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then94

lor.lhs.false:                                    ; preds = %if.end87
  %127 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adapter.i, align 4
  %flags91 = getelementptr inbounds %struct.board, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %flags91 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags91, align 4
  %and92 = and i32 %130, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %lor.lhs.false.if.end96_crit_edge, label %lor.lhs.false.if.then94_crit_edge

lor.lhs.false.if.then94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then94

lor.lhs.false.if.end96_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then94:                                        ; preds = %lor.lhs.false.if.then94_crit_edge, %if.end87.if.then94_crit_edge
  %or95 = or i32 %data.0, 128
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %lor.lhs.false.if.end96_crit_edge
  %data.1 = phi i32 [ %or95, %if.then94 ], [ %data.0, %lor.lhs.false.if.end96_crit_edge ]
  %131 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %base_addr, align 32
  %conv99 = trunc i32 %data.1 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !480
  tail call void @arm_heavy_mb() #9
  %conv.i166 = and i32 %132, 65535
  %add1.i167 = add nuw nsw i32 %conv.i166, -18874360
  %133 = inttoptr i32 %add1.i167 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %133, i16 1024) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !481
  tail call void @arm_heavy_mb() #9
  %134 = tail call i16 @llvm.bswap.i16(i16 %conv99) #9
  %add8.i168 = add nuw nsw i32 %conv.i166, -18874356
  %135 = inttoptr i32 %add8.i168 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %135, i16 %134) #9, !srcloc !447
  %136 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %adapter.i, align 4
  %flags101 = getelementptr inbounds %struct.board, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %flags101 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags101, align 4
  %and102 = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.else105, label %if.then104

if.then104:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tlan_finish_reset(ptr noundef %dev)
  br label %if.end106

if.else105:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tlan_phy_power_down(ptr noundef %dev)
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.then104
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_finish_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %status = alloca i16, align 2
  %partner = alloca i16, align 2
  %tlphy_ctl = alloca i16, align 2
  %tlphy_par = alloca i16, align 2
  %tlphy_id1 = alloca i16, align 2
  %tlphy_id2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #9
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %status, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %partner) #9
  %1 = ptrtoint ptr %partner to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %partner, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tlphy_ctl) #9
  %2 = ptrtoint ptr %tlphy_ctl to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %tlphy_ctl, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tlphy_par) #9
  %3 = ptrtoint ptr %tlphy_par to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %tlphy_par, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tlphy_id1) #9
  %4 = ptrtoint ptr %tlphy_id1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %tlphy_id1, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tlphy_id2) #9
  %5 = ptrtoint ptr %tlphy_id2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %tlphy_id2, align 2, !annotation !490
  %phy_num = getelementptr i8, ptr %dev, i32 2528
  %6 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_num, align 4
  %arrayidx = getelementptr %struct.tlan_priv, ptr %add.ptr.i, i32 0, i32 32, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %tlan_full_duplex = getelementptr i8, ptr %dev, i32 2537
  %10 = ptrtoint ptr %tlan_full_duplex to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tlan_full_duplex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %spec.select = select i1 %tobool.not, i8 -64, i8 -60
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i = and i32 %13, 65535
  %add1.i = add nuw nsw i32 %conv.i, -18874360
  %14 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 0) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add8.i = add nuw nsw i32 %conv.i, -18874356
  %15 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %spec.select) #9, !srcloc !487
  %16 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  %data.1 = select i1 %cmp, i8 -80, i8 48
  %18 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i199 = and i32 %19, 65535
  %add1.i200 = add nuw nsw i32 %conv.i199, -18874360
  %20 = inttoptr i32 %add1.i200 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 768) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add10.i = add nuw nsw i32 %conv.i199, -18874353
  %21 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %data.1) #9, !srcloc !487
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !480
  tail call void @arm_heavy_mb() #9
  %conv.i202 = and i32 %23, 65535
  %add1.i203 = add nuw nsw i32 %conv.i202, -18874360
  %24 = inttoptr i32 %add1.i203 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 17920) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !481
  tail call void @arm_heavy_mb() #9
  %add10.i205 = add nuw nsw i32 %conv.i202, -18874354
  %25 = inttoptr i32 %add10.i205 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 6) #9, !srcloc !447
  %conv15 = trunc i32 %9 to i16
  %lock.i = getelementptr i8, ptr %dev, i32 2540
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv15, i16 noundef zeroext 2, ptr noundef nonnull %tlphy_id1) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %call3.i207 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv15, i16 noundef zeroext 3, ptr noundef nonnull %tlphy_id2) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i207) #9
  %adapter = getelementptr i8, ptr %dev, i32 2500
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 4
  %flags = getelementptr inbounds %struct.board, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %entry.if.then19_crit_edge

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false:                                    ; preds = %entry
  %aui = getelementptr i8, ptr %dev, i32 2508
  %30 = ptrtoint ptr %aui to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %aui, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool18.not = icmp eq i32 %31, 0
  br i1 %tobool18.not, label %if.else, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %entry.if.then19_crit_edge
  %32 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 4, ptr %status, align 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.43) #12
  br label %if.end69

if.else:                                          ; preds = %lor.lhs.false
  %call3.i209 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv15, i16 noundef zeroext 1, ptr noundef nonnull %status) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i209) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #9
  %call3.i211 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv15, i16 noundef zeroext 1, ptr noundef nonnull %status) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i211) #9
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %status, align 2
  %36 = and i16 %35, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool24.not = icmp eq i16 %36, 0
  br i1 %tobool24.not, label %if.else.if.end69_crit_edge, label %if.then25

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then25:                                        ; preds = %if.else
  %37 = ptrtoint ptr %tlphy_id1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tlphy_id1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %38)
  %cmp27 = icmp eq i16 %38, 8192
  br i1 %cmp27, label %land.lhs.true, label %if.then25.if.else65_crit_edge

if.then25.if.else65_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else65

land.lhs.true:                                    ; preds = %if.then25
  %39 = ptrtoint ptr %tlphy_id2 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tlphy_id2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 23553, i16 %40)
  %cmp30 = icmp eq i16 %40, 23553
  br i1 %cmp30, label %if.then32, label %land.lhs.true.if.else65_crit_edge

land.lhs.true.if.else65_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else65

if.then32:                                        ; preds = %land.lhs.true
  call fastcc void @tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv15, i16 noundef zeroext 5, ptr noundef nonnull %partner)
  call fastcc void @tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv15, i16 noundef zeroext 25, ptr noundef nonnull %tlphy_par)
  %41 = ptrtoint ptr %tlphy_par to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tlphy_par, align 2
  %conv35 = zext i16 %42 to i32
  %and36 = and i32 %conv35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %cond = select i1 %tobool37.not, ptr @.str.45, ptr @.str.46
  %and39 = and i32 %conv35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %cond41 = select i1 %tobool40.not, i32 10, i32 100
  %and43 = and i32 %conv35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %cond45 = select i1 %tobool44.not, ptr @.str.48, ptr @.str.47
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond, i32 noundef %cond41, ptr noundef nonnull %cond45) #12
  %43 = and i16 %42, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool48.not = icmp eq i16 %43, 0
  br i1 %tobool48.not, label %if.then32.if.end66_crit_edge, label %if.then49

if.then32.if.end66_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then49:                                        ; preds = %if.then32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.49) #12
  %44 = ptrtoint ptr %partner to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %partner, align 2
  %conv52 = zext i16 %45 to i32
  %and53 = and i32 %conv52, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then49.for.inc_crit_edge, label %do.end

if.then49.for.inc_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.57) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then49.for.inc_crit_edge
  %and53.1 = and i32 %conv52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.1)
  %tobool54.not.1 = icmp eq i32 %and53.1, 0
  br i1 %tobool54.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call57.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.58) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %for.inc.for.inc.1_crit_edge
  %and53.2 = and i32 %conv52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.2)
  %tobool54.not.2 = icmp eq i32 %and53.2, 0
  br i1 %tobool54.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

do.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %call57.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.59) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end.2, %for.inc.1.for.inc.2_crit_edge
  %and53.3 = and i32 %conv52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.3)
  %tobool54.not.3 = icmp eq i32 %and53.3, 0
  br i1 %tobool54.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

do.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %call57.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.60) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end.3, %for.inc.2.for.inc.3_crit_edge
  %and53.4 = and i32 %conv52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.4)
  %tobool54.not.4 = icmp eq i32 %and53.4, 0
  br i1 %tobool54.not.4, label %for.inc.3.for.inc.4_crit_edge, label %do.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

do.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %call57.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.61) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end.4, %for.inc.3.for.inc.4_crit_edge
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  br label %if.end66

if.else65:                                        ; preds = %land.lhs.true.if.else65_crit_edge, %if.then25.if.else65_crit_edge
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.55) #12
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %for.inc.4, %if.then32.if.end66_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %46, 100
  %media_timer = getelementptr i8, ptr %dev, i32 2452
  %expires = getelementptr i8, ptr %dev, i32 2460
  %47 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %media_timer) #9
  br label %if.end69

if.end69:                                         ; preds = %if.end66, %if.else.if.end69_crit_edge, %if.then19
  %48 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %phy_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp71 = icmp eq i32 %49, 0
  br i1 %cmp71, label %if.then73, label %if.end69.if.end87_crit_edge

if.end69.if.end87_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i213 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv15, i16 noundef zeroext 17, ptr noundef nonnull %tlphy_ctl) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i213) #9
  %50 = ptrtoint ptr %tlphy_ctl to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %tlphy_ctl, align 2
  %52 = or i16 %51, 2
  store i16 %52, ptr %tlphy_ctl, align 2
  %call3.i215 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  tail call fastcc void @__tlan_mii_write_reg(ptr noundef %dev, i16 noundef zeroext %conv15, i16 noundef zeroext 17, i16 noundef zeroext %52) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i215) #9
  %53 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !491
  tail call void @arm_heavy_mb() #9
  %conv.i216 = and i32 %54, 65535
  %add1.i217 = add nuw nsw i32 %conv.i216, -18874360
  %55 = inttoptr i32 %add1.i217 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %55, i16 256) #9, !srcloc !447
  %add8.i218 = add nuw nsw i32 %conv.i216, -18874355
  %56 = inttoptr i32 %add8.i218 to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !492
  %58 = or i8 %57, -128
  %59 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i219 = and i32 %60, 65535
  %add1.i220 = add nuw nsw i32 %conv.i219, -18874360
  %61 = inttoptr i32 %add1.i220 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %61, i16 256) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add10.i222 = add nuw nsw i32 %conv.i219, -18874355
  %62 = inttoptr i32 %add10.i222 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %58) #9, !srcloc !487
  br label %if.end87

if.end87:                                         ; preds = %if.then73, %if.end69.if.end87_crit_edge
  %63 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %status, align 2
  %65 = and i16 %64, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool90.not = icmp eq i16 %65, 0
  br i1 %tobool90.not, label %if.else135, label %if.then91

if.then91:                                        ; preds = %if.end87
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %66 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @tlan_set_mac(ptr noundef %dev, i32 noundef 0, ptr noundef %67)
  %phy_online = getelementptr i8, ptr %dev, i32 2392
  %68 = ptrtoint ptr %phy_online to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %phy_online, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !493
  tail call void @arm_heavy_mb() #9
  %69 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base_addr, align 32
  %add97 = add i32 %70, 1
  %and98 = and i32 %add97, 1048575
  %add99 = or i32 %and98, -18874368
  %71 = inttoptr i32 %add99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 4) #9, !srcloc !487
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp101 = icmp slt i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %72)
  %cmp104.not = icmp eq i32 %72, 16
  %or.cond = or i1 %cmp101, %cmp104.not
  br i1 %or.cond, label %if.then91.do.body117_crit_edge, label %do.body107

if.then91.do.body117_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body117

do.body107:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base_addr, align 32
  %add112 = add i32 %74, 1
  %and113 = and i32 %add112, 1048575
  %add114 = or i32 %and113, -18874368
  %75 = inttoptr i32 %add114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 16) #9, !srcloc !487
  br label %do.body117

do.body117:                                       ; preds = %do.body107, %if.then91.do.body117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  tail call void @arm_heavy_mb() #9
  %rx_list_dma = getelementptr i8, ptr %dev, i32 2336
  %76 = ptrtoint ptr %rx_list_dma to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx_list_dma, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %79 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %base_addr, align 32
  %add121 = add i32 %80, 4
  %and122 = and i32 %add121, 1048575
  %add123 = or i32 %and122, -18874368
  %81 = inttoptr i32 %add123 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %81, i32 %78) #9, !srcloc !475
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !496
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %base_addr, align 32
  %and130 = and i32 %83, 1048575
  %add131 = or i32 %and130, -18874368
  %84 = inttoptr i32 %add131 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %84, i32 2176) #9, !srcloc !475
  %85 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i223 = and i32 %86, 65535
  %add1.i224 = add nuw nsw i32 %conv.i223, -18874360
  %87 = inttoptr i32 %add1.i224 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %87, i16 17408) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add8.i225 = add nuw nsw i32 %conv.i223, -18874356
  %88 = inttoptr i32 %add8.i225 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 1) #9, !srcloc !487
  tail call void @netif_carrier_on(ptr noundef %dev) #9
  tail call void @tlan_set_multicast_list(ptr noundef %dev)
  br label %cleanup

if.else135:                                       ; preds = %if.end87
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.56) #12
  %call3.i227 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %timer.i = getelementptr i8, ptr %dev, i32 2404
  %function.i = getelementptr i8, ptr %dev, i32 2416
  %89 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %function.i, align 4
  %cmp6.not.i = icmp eq ptr %90, null
  br i1 %cmp6.not.i, label %if.else135.if.end.i_crit_edge, label %land.lhs.true.i

if.else135.if.end.i_crit_edge:                    ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else135
  %timer_type.i = getelementptr i8, ptr %dev, i32 2400
  %91 = ptrtoint ptr %timer_type.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %timer_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %92)
  %cmp8.not.i = icmp eq i32 %92, 2
  br i1 %cmp8.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i227) #9
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.else135.if.end.i_crit_edge
  %93 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @tlan_timer, ptr %function.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i227) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at.i = getelementptr i8, ptr %dev, i32 2396
  %95 = ptrtoint ptr %timer_set_at.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %timer_set_at.i, align 4
  %timer_type14.i = getelementptr i8, ptr %dev, i32 2400
  %96 = ptrtoint ptr %timer_type14.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 8, ptr %timer_type14.i, align 4
  %97 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %97, 1000
  %call16.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %do.body117
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tlphy_id2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tlphy_id1) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tlphy_par) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tlphy_ctl) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %partner) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_phy_power_down(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %dev) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base_addr, align 32
  %conv = trunc i32 %2 to i16
  tail call fastcc void @tlan_mii_sync(i16 noundef zeroext %conv)
  %phy_num = getelementptr i8, ptr %dev, i32 2528
  %3 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_num, align 4
  %arrayidx = getelementptr %struct.tlan_priv, ptr %add.ptr.i, i32 0, i32 32, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %conv5 = trunc i32 %6 to i16
  %lock.i = getelementptr i8, ptr %dev, i32 2540
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  tail call fastcc void @__tlan_mii_write_reg(ptr noundef %dev, i16 noundef zeroext %conv5, i16 noundef zeroext 0, i16 noundef zeroext 19456) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %7 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %do.end4.if.end22_crit_edge

do.end4.if.end22_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %do.end4
  %arrayidx9 = getelementptr i8, ptr %dev, i32 2524
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp10.not = icmp eq i32 %10, 32
  br i1 %cmp10.not, label %land.lhs.true.if.end22_crit_edge, label %if.then12

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %adapter = getelementptr i8, ptr %dev, i32 2500
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 4
  %flags = getelementptr inbounds %struct.board, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and13 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select = select i1 %tobool14.not, i16 19456, i16 1024
  %15 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_addr, align 32
  %conv18 = trunc i32 %16 to i16
  tail call fastcc void @tlan_mii_sync(i16 noundef zeroext %conv18)
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9, align 4
  %conv21 = trunc i32 %18 to i16
  %call3.i37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  tail call fastcc void @__tlan_mii_write_reg(ptr noundef %dev, i16 noundef zeroext %conv21, i16 noundef zeroext 0, i16 noundef zeroext %spec.select) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i37) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %land.lhs.true.if.end22_crit_edge, %do.end4.if.end22_crit_edge
  %call3.i39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %timer.i = getelementptr i8, ptr %dev, i32 2404
  %function.i = getelementptr i8, ptr %dev, i32 2416
  %19 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %function.i, align 4
  %cmp6.not.i = icmp eq ptr %20, null
  br i1 %cmp6.not.i, label %if.end22.if.end.i_crit_edge, label %land.lhs.true.i

if.end22.if.end.i_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end22
  %timer_type.i = getelementptr i8, ptr %dev, i32 2400
  %21 = ptrtoint ptr %timer_type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timer_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp8.not.i = icmp eq i32 %22, 2
  br i1 %cmp8.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i39) #9
  br label %tlan_set_timer.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end22.if.end.i_crit_edge
  %23 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @tlan_timer, ptr %function.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i39) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at.i = getelementptr i8, ptr %dev, i32 2396
  %25 = ptrtoint ptr %timer_set_at.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %timer_set_at.i, align 4
  %timer_type14.i = getelementptr i8, ptr %dev, i32 2400
  %26 = ptrtoint ptr %timer_type14.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %timer_type14.i, align 4
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %27, 5
  %call16.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #9
  br label %tlan_set_timer.exit

tlan_set_timer.exit:                              ; preds = %if.end.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %phy, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2540
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %phy, i16 noundef zeroext %reg, ptr noundef %val)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %phy, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr i8, ptr %dev, i32 2556
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !497

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2842, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !498
  tail call void @arm_heavy_mb() #9
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base_addr, align 32
  %add = add i32 %2, 8
  %and = and i32 %add, 1048575
  %add29 = or i32 %and, -18874368
  %3 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 256) #9, !srcloc !447
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  %conv = add i32 %5, 13
  %conv35 = trunc i32 %5 to i16
  tail call fastcc void @tlan_mii_sync(i16 noundef zeroext %conv35)
  %conv36 = and i32 %conv, 65535
  %add.i = or i32 %conv36, -18874368
  %6 = inttoptr i32 %add.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool40.not = icmp sgt i8 %7, -1
  br i1 %tobool40.not, label %if.end.if.end48_crit_edge, label %if.then41

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then41:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %9 = and i8 %8, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %9) #9, !srcloc !487
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %if.end.if.end48_crit_edge
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr, align 32
  %conv50 = trunc i32 %11 to i16
  tail call fastcc void @tlan_mii_send_data(i16 noundef zeroext %conv50, i32 noundef 1, i32 noundef 2)
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr, align 32
  %conv52 = trunc i32 %13 to i16
  tail call fastcc void @tlan_mii_send_data(i16 noundef zeroext %conv52, i32 noundef 2, i32 noundef 2)
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_addr, align 32
  %conv54 = trunc i32 %15 to i16
  %conv55 = zext i16 %phy to i32
  tail call fastcc void @tlan_mii_send_data(i16 noundef zeroext %conv54, i32 noundef %conv55, i32 noundef 5)
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_addr, align 32
  %conv57 = trunc i32 %17 to i16
  %conv58 = zext i16 %reg to i32
  tail call fastcc void @tlan_mii_send_data(i16 noundef zeroext %conv57, i32 noundef %conv58, i32 noundef 5)
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %19 = and i8 %18, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %19) #9, !srcloc !487
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %21 = and i8 %20, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %21) #9, !srcloc !487
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %23 = or i8 %22, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %23) #9, !srcloc !487
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %25 = and i8 %24, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %25) #9, !srcloc !487
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %27 = and i8 %26, 1
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %29 = or i8 %28, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %29) #9, !srcloc !487
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool93.not = icmp eq i8 %27, 0
  br i1 %tobool93.not, label %if.end48.for.body111_crit_edge, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  br label %for.body

if.end48.for.body111_crit_edge:                   ; preds = %if.end48
  br label %for.body111

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end48.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end48.for.body_crit_edge ]
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %31 = and i8 %30, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %31) #9, !srcloc !487
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %33 = or i8 %32, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %33) #9, !srcloc !487
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.body.if.end136_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end136_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %if.end48.for.body111_crit_edge
  %i.132 = phi i32 [ %shr, %for.body111.for.body111_crit_edge ], [ 32768, %if.end48.for.body111_crit_edge ]
  %tmp.031 = phi i16 [ %tmp.1, %for.body111.for.body111_crit_edge ], [ 0, %if.end48.for.body111_crit_edge ]
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %35 = and i8 %34, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %35) #9, !srcloc !487
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool122.not = icmp eq i8 %37, 0
  %38 = trunc i32 %i.132 to i16
  %conv126 = select i1 %tobool122.not, i16 0, i16 %38
  %tmp.1 = or i16 %conv126, %tmp.031
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %40 = or i8 %39, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %40) #9, !srcloc !487
  %shr = lshr i32 %i.132, 1
  %tobool110.not = icmp ult i32 %i.132, 2
  br i1 %tobool110.not, label %for.body111.if.end136_crit_edge, label %for.body111.for.body111_crit_edge

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body111

for.body111.if.end136_crit_edge:                  ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

if.end136:                                        ; preds = %for.body111.if.end136_crit_edge, %for.body.if.end136_crit_edge
  %tmp.2 = phi i16 [ %tmp.1, %for.body111.if.end136_crit_edge ], [ -1, %for.body.if.end136_crit_edge ]
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %42 = and i8 %41, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %42) #9, !srcloc !487
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %44 = or i8 %43, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %44) #9, !srcloc !487
  br i1 %tobool40.not, label %if.end136.if.end157_crit_edge, label %if.then150

if.end136.if.end157_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

if.then150:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %46 = or i8 %45, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %46) #9, !srcloc !487
  br label %if.end157

if.end157:                                        ; preds = %if.then150, %if.end136.if.end157_crit_edge
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %tmp.2, ptr %val, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_mii_sync(i16 noundef zeroext %base_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !499
  tail call void @arm_heavy_mb() #9
  %conv = zext i16 %base_port to i32
  %add1 = add nuw nsw i32 %conv, -18874360
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 256) #9, !srcloc !447
  %add4 = add i16 %base_port, 13
  %conv6 = zext i16 %add4 to i32
  %add.i = or i32 %conv6, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %3 = and i8 %2, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %3) #9, !srcloc !487
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.041 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %5 = and i8 %4, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %5) #9, !srcloc !487
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %7 = or i8 %6, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %7) #9, !srcloc !487
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_mii_send_data(i16 noundef zeroext %base_port, i32 noundef %data, i32 noundef %num_bits) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !500
  tail call void @arm_heavy_mb() #9
  %conv = zext i16 %base_port to i32
  %add1 = add nuw nsw i32 %conv, -18874360
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 256) #9, !srcloc !447
  %add4 = add i16 %base_port, 13
  %conv6 = zext i16 %add4 to i32
  %add.i = or i32 %conv6, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %3 = or i8 %2, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %3) #9, !srcloc !487
  %sub = add i32 %num_bits, -1
  %shl = shl nuw i32 1, %sub
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %entry
  %i.085 = phi i32 [ %shl, %entry ], [ %shr, %if.end36.for.body_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %5 = and i8 %4, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %5) #9, !srcloc !487
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %and21 = and i32 %i.085, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = or i8 %7, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %8) #9, !srcloc !487
  br label %if.end36

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = and i8 %7, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %9) #9, !srcloc !487
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then23
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %11 = or i8 %10, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %11) #9, !srcloc !487
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %shr = lshr i32 %i.085, 1
  %tobool.not = icmp ult i32 %i.085, 2
  br i1 %tobool.not, label %cleanup, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_mii_write_reg(ptr noundef %dev, i16 noundef zeroext %phy, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2540
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @__tlan_mii_write_reg(ptr noundef %dev, i16 noundef zeroext %phy, i16 noundef zeroext %reg, i16 noundef zeroext %val)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_set_mac(ptr nocapture noundef readonly %dev, i32 noundef %areg, ptr noundef readonly %mac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %areg, 6
  %cmp.not = icmp eq ptr %mac, null
  %base_addr8 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr8, align 32
  %2 = trunc i32 %mul to i16
  %conv12 = add i16 %2, 16
  br i1 %cmp.not, label %for.cond4.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mac, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv12) #9
  %conv.i = and i32 %1, 65535
  %add1.i = add nuw nsw i32 %conv.i, -18874360
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 %5) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %7 = and i32 %mul, 2
  %add8.i = or i32 %7, -18874356
  %add10.i = add nuw nsw i32 %add8.i, %conv.i
  %8 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %4) #9, !srcloc !487
  %9 = ptrtoint ptr %base_addr8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_addr8, align 32
  %add2.1 = add i32 %mul, 17
  %conv3.1 = trunc i32 %add2.1 to i16
  %arrayidx.1 = getelementptr i8, ptr %mac, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv3.1) #9
  %conv.i.1 = and i32 %10, 65535
  %add1.i.1 = add nuw nsw i32 %conv.i.1, -18874360
  %14 = inttoptr i32 %add1.i.1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %13) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %15 = and i32 %add2.1, 3
  %add8.i.1 = or i32 %15, -18874356
  %add10.i.1 = add nuw nsw i32 %add8.i.1, %conv.i.1
  %16 = inttoptr i32 %add10.i.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %12) #9, !srcloc !487
  %17 = ptrtoint ptr %base_addr8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_addr8, align 32
  %add2.2 = add i32 %mul, 18
  %conv3.2 = trunc i32 %add2.2 to i16
  %arrayidx.2 = getelementptr i8, ptr %mac, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv3.2) #9
  %conv.i.2 = and i32 %18, 65535
  %add1.i.2 = add nuw nsw i32 %conv.i.2, -18874360
  %22 = inttoptr i32 %add1.i.2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %21) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %23 = and i32 %add2.2, 2
  %add8.i.2 = or i32 %23, -18874356
  %add10.i.2 = add nuw nsw i32 %add8.i.2, %conv.i.2
  %24 = inttoptr i32 %add10.i.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %20) #9, !srcloc !487
  %25 = ptrtoint ptr %base_addr8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_addr8, align 32
  %add2.3 = add i32 %mul, 19
  %conv3.3 = trunc i32 %add2.3 to i16
  %arrayidx.3 = getelementptr i8, ptr %mac, i32 3
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv3.3) #9
  %conv.i.3 = and i32 %26, 65535
  %add1.i.3 = add nuw nsw i32 %conv.i.3, -18874360
  %30 = inttoptr i32 %add1.i.3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 %29) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %31 = and i32 %add2.3, 3
  %add8.i.3 = or i32 %31, -18874356
  %add10.i.3 = add nuw nsw i32 %add8.i.3, %conv.i.3
  %32 = inttoptr i32 %add10.i.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %28) #9, !srcloc !487
  %33 = ptrtoint ptr %base_addr8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_addr8, align 32
  %35 = trunc i32 %mul to i16
  %conv3.4 = add i16 %35, 20
  %arrayidx.4 = getelementptr i8, ptr %mac, i32 4
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.4, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv3.4) #9
  %conv.i.4 = and i32 %34, 65535
  %add1.i.4 = add nuw nsw i32 %conv.i.4, -18874360
  %39 = inttoptr i32 %add1.i.4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %38) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %40 = and i32 %mul, 2
  %add8.i.4 = or i32 %40, -18874356
  %add10.i.4 = add nuw nsw i32 %add8.i.4, %conv.i.4
  %41 = inttoptr i32 %add10.i.4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %37) #9, !srcloc !487
  %42 = ptrtoint ptr %base_addr8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base_addr8, align 32
  %add2.5 = add i32 %mul, 21
  %conv3.5 = trunc i32 %add2.5 to i16
  %arrayidx.5 = getelementptr i8, ptr %mac, i32 5
  %44 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.5, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv3.5) #9
  %conv.i.5 = and i32 %43, 65535
  %add1.i.5 = add nuw nsw i32 %conv.i.5, -18874360
  %47 = inttoptr i32 %add1.i.5 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %47, i16 %46) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %48 = and i32 %add2.5, 3
  %add8.i.5 = or i32 %48, -18874356
  %add10.i.5 = add nuw nsw i32 %add8.i.5, %conv.i.5
  %49 = inttoptr i32 %add10.i.5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %45) #9, !srcloc !487
  br label %if.end

for.cond4.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv12) #9
  %conv.i26 = and i32 %1, 65535
  %add1.i27 = add nuw nsw i32 %conv.i26, -18874360
  %51 = inttoptr i32 %add1.i27 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 %50) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %52 = and i32 %mul, 2
  %add8.i29 = or i32 %52, -18874356
  %add10.i30 = add nuw nsw i32 %add8.i29, %conv.i26
  %53 = inttoptr i32 %add10.i30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 0) #9, !srcloc !487
  %54 = ptrtoint ptr %base_addr8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base_addr8, align 32
  %add11.1 = add i32 %mul, 17
  %conv12.1 = trunc i32 %add11.1 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv12.1) #9
  %conv.i26.1 = and i32 %55, 65535
  %add1.i27.1 = add nuw nsw i32 %conv.i26.1, -18874360
  %57 = inttoptr i32 %add1.i27.1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %57, i16 %56) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %58 = and i32 %add11.1, 3
  %add8.i29.1 = or i32 %58, -18874356
  %add10.i30.1 = add nuw nsw i32 %add8.i29.1, %conv.i26.1
  %59 = inttoptr i32 %add10.i30.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 0) #9, !srcloc !487
  %60 = ptrtoint ptr %base_addr8 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %base_addr8, align 32
  %add11.2 = add i32 %mul, 18
  %conv12.2 = trunc i32 %add11.2 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv12.2) #9
  %conv.i26.2 = and i32 %61, 65535
  %add1.i27.2 = add nuw nsw i32 %conv.i26.2, -18874360
  %63 = inttoptr i32 %add1.i27.2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 %62) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %64 = and i32 %add11.2, 2
  %add8.i29.2 = or i32 %64, -18874356
  %add10.i30.2 = add nuw nsw i32 %add8.i29.2, %conv.i26.2
  %65 = inttoptr i32 %add10.i30.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 0) #9, !srcloc !487
  %66 = ptrtoint ptr %base_addr8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base_addr8, align 32
  %add11.3 = add i32 %mul, 19
  %conv12.3 = trunc i32 %add11.3 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %68 = tail call i16 @llvm.bswap.i16(i16 %conv12.3) #9
  %conv.i26.3 = and i32 %67, 65535
  %add1.i27.3 = add nuw nsw i32 %conv.i26.3, -18874360
  %69 = inttoptr i32 %add1.i27.3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %69, i16 %68) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %70 = and i32 %add11.3, 3
  %add8.i29.3 = or i32 %70, -18874356
  %add10.i30.3 = add nuw nsw i32 %add8.i29.3, %conv.i26.3
  %71 = inttoptr i32 %add10.i30.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 0) #9, !srcloc !487
  %72 = ptrtoint ptr %base_addr8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %base_addr8, align 32
  %74 = trunc i32 %mul to i16
  %conv12.4 = add i16 %74, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %75 = tail call i16 @llvm.bswap.i16(i16 %conv12.4) #9
  %conv.i26.4 = and i32 %73, 65535
  %add1.i27.4 = add nuw nsw i32 %conv.i26.4, -18874360
  %76 = inttoptr i32 %add1.i27.4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %76, i16 %75) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %77 = and i32 %mul, 2
  %add8.i29.4 = or i32 %77, -18874356
  %add10.i30.4 = add nuw nsw i32 %add8.i29.4, %conv.i26.4
  %78 = inttoptr i32 %add10.i30.4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 0) #9, !srcloc !487
  %79 = ptrtoint ptr %base_addr8 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %base_addr8, align 32
  %add11.5 = add i32 %mul, 21
  %conv12.5 = trunc i32 %add11.5 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %81 = tail call i16 @llvm.bswap.i16(i16 %conv12.5) #9
  %conv.i26.5 = and i32 %80, 65535
  %add1.i27.5 = add nuw nsw i32 %conv.i26.5, -18874360
  %82 = inttoptr i32 %add1.i27.5 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %82, i16 %81) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %83 = and i32 %add11.5, 3
  %add8.i29.5 = or i32 %83, -18874356
  %add10.i30.5 = add nuw nsw i32 %add8.i29.5, %conv.i26.5
  %84 = inttoptr i32 %add10.i30.5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 0) #9, !srcloc !487
  br label %if.end

if.end:                                           ; preds = %for.cond4.preheader, %for.cond.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_set_timer(ptr noundef %dev, i32 noundef %ticks, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2540
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %timer = getelementptr i8, ptr %dev, i32 2404
  %function = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %function, align 4
  %cmp6.not = icmp eq ptr %1, null
  br i1 %cmp6.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %timer_type = getelementptr i8, ptr %dev, i32 2400
  %2 = ptrtoint ptr %timer_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp8.not = icmp eq i32 %3, 2
  br i1 %cmp8.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tlan_timer, ptr %function, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at = getelementptr i8, ptr %dev, i32 2396
  %6 = ptrtoint ptr %timer_set_at to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %timer_set_at, align 4
  %timer_type14 = getelementptr i8, ptr %dev, i32 2400
  %7 = ptrtoint ptr %timer_type14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type, ptr %timer_type14, align 4
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, %ticks
  %call16 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tlan_set_multicast_list(ptr noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %base_addr5 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr5, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %conv.i100 = and i32 %3, 65535
  %add1.i101 = add nuw nsw i32 %conv.i100, -18874360
  %4 = inttoptr i32 %add1.i101 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 0) #9
  %add6.i102 = add nuw nsw i32 %conv.i100, -18874356
  %5 = inttoptr i32 %add6.i102 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %7 = ptrtoint ptr %base_addr5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr5, align 32
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = or i8 %6, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i98 = and i32 %8, 65535
  %add1.i99 = add nuw nsw i32 %conv.i98, -18874360
  %10 = inttoptr i32 %add1.i99 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 0) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add8.i = add nuw nsw i32 %conv.i98, -18874356
  %11 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %9) #9, !srcloc !487
  br label %if.end67

if.else:                                          ; preds = %entry
  %12 = and i8 %6, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i103 = and i32 %8, 65535
  %add1.i104 = add nuw nsw i32 %conv.i103, -18874360
  %13 = inttoptr i32 %add1.i104 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 0) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add8.i105 = add nuw nsw i32 %conv.i103, -18874356
  %14 = inttoptr i32 %add8.i105 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %12) #9, !srcloc !487
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %and14 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else22, label %for.body.preheader

for.body.preheader:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tlan_set_mac(ptr noundef %dev, i32 noundef 1, ptr noundef null)
  tail call fastcc void @tlan_set_mac(ptr noundef %dev, i32 noundef 2, ptr noundef null)
  tail call fastcc void @tlan_set_mac(ptr noundef %dev, i32 noundef 3, ptr noundef null)
  %17 = ptrtoint ptr %base_addr5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_addr5, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i106 = and i32 %18, 65535
  %add1.i107 = add nuw nsw i32 %conv.i106, -18874360
  %19 = inttoptr i32 %add1.i107 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 10240) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %add8.i108 = add nuw nsw i32 %conv.i106, -18874356
  %20 = inttoptr i32 %add8.i108 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 -1) #9, !srcloc !475
  %21 = ptrtoint ptr %base_addr5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base_addr5, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i109 = and i32 %22, 65535
  %add1.i110 = add nuw nsw i32 %conv.i109, -18874360
  %23 = inttoptr i32 %add1.i110 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 11264) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %add8.i111 = add nuw nsw i32 %conv.i109, -18874356
  %24 = inttoptr i32 %add8.i111 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 -1) #9, !srcloc !475
  br label %if.end67

if.else22:                                        ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %25 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %25)
  %ha.0119 = load ptr, ptr %mc, align 4
  %cmp28.not120 = icmp eq ptr %ha.0119, %mc
  br i1 %cmp28.not120, label %if.else22.for.body57.preheader_crit_edge, label %if.else22.for.body30_crit_edge

if.else22.for.body30_crit_edge:                   ; preds = %if.else22
  br label %for.body30

if.else22.for.body57.preheader_crit_edge:         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.preheader

for.cond54.preheader:                             ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc46)
  %cmp55128 = icmp slt i32 %inc46, 3
  br i1 %cmp55128, label %for.cond54.preheader.for.body57.preheader_crit_edge, label %for.cond54.preheader.for.end61_crit_edge

for.cond54.preheader.for.end61_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61

for.cond54.preheader.for.body57.preheader_crit_edge: ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.preheader

for.body57.preheader:                             ; preds = %for.cond54.preheader.for.body57.preheader_crit_edge, %if.else22.for.body57.preheader_crit_edge
  %hash1.0.lcssa138 = phi i32 [ %hash1.1, %for.cond54.preheader.for.body57.preheader_crit_edge ], [ 0, %if.else22.for.body57.preheader_crit_edge ]
  %hash2.0.lcssa136 = phi i32 [ %hash2.1, %for.cond54.preheader.for.body57.preheader_crit_edge ], [ 0, %if.else22.for.body57.preheader_crit_edge ]
  %i.1.lcssa134 = phi i32 [ %inc46, %for.cond54.preheader.for.body57.preheader_crit_edge ], [ 0, %if.else22.for.body57.preheader_crit_edge ]
  br label %for.body57

for.body30:                                       ; preds = %if.end45.for.body30_crit_edge, %if.else22.for.body30_crit_edge
  %ha.0125 = phi ptr [ %ha.0, %if.end45.for.body30_crit_edge ], [ %ha.0119, %if.else22.for.body30_crit_edge ]
  %hash1.0124 = phi i32 [ %hash1.1, %if.end45.for.body30_crit_edge ], [ 0, %if.else22.for.body30_crit_edge ]
  %hash2.0123 = phi i32 [ %hash2.1, %if.end45.for.body30_crit_edge ], [ 0, %if.else22.for.body30_crit_edge ]
  %i.1121 = phi i32 [ %inc46, %if.end45.for.body30_crit_edge ], [ 0, %if.else22.for.body30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1121)
  %cmp31 = icmp slt i32 %i.1121, 3
  br i1 %cmp31, label %if.then33, label %if.else35

if.then33:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  %add34 = add nsw i32 %i.1121, 1
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0125, i32 0, i32 2
  tail call fastcc void @tlan_set_mac(ptr noundef %dev, i32 noundef %add34, ptr noundef %addr)
  br label %if.end45

if.else35:                                        ; preds = %for.body30
  %addr36 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0125, i32 0, i32 2
  %26 = ptrtoint ptr %addr36 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr36, align 1
  %arrayidx1.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0125, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx1.i, align 1
  %xor64.i = xor i8 %29, %27
  %30 = lshr i8 %xor64.i, 6
  %xor1065.i = xor i8 %30, %xor64.i
  %arrayidx12.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0125, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0125, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx14.i, align 1
  %xor1666.i = xor i8 %34, %32
  %shl.i = shl i8 %xor1666.i, 2
  %xor18.i = xor i8 %xor1065.i, %shl.i
  %35 = lshr i8 %xor1666.i, 4
  %xor2767.i = xor i8 %xor18.i, %35
  %arrayidx29.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0125, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx31.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0125, i32 0, i32 2, i32 5
  %38 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx31.i, align 1
  %xor3368.i = xor i8 %39, %37
  %shl34.i = shl i8 %xor3368.i, 4
  %xor36.i = xor i8 %xor2767.i, %shl34.i
  %40 = lshr i8 %xor3368.i, 2
  %xor36.masked.i = and i8 %xor36.i, 63
  %41 = xor i8 %xor36.masked.i, %40
  %and.i = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %41)
  %cmp38 = icmp ult i8 %41, 32
  br i1 %cmp38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %and.i
  %or41 = or i32 %shl, %hash1.0124
  br label %if.end45

if.else42:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %and.i, -32
  %shl43 = shl nuw i32 1, %sub
  %or44 = or i32 %shl43, %hash2.0123
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then40, %if.then33
  %hash2.1 = phi i32 [ %hash2.0123, %if.then33 ], [ %hash2.0123, %if.then40 ], [ %or44, %if.else42 ]
  %hash1.1 = phi i32 [ %hash1.0124, %if.then33 ], [ %or41, %if.then40 ], [ %hash1.0124, %if.else42 ]
  %inc46 = add i32 %i.1121, 1
  %42 = ptrtoint ptr %ha.0125 to i32
  call void @__asan_load4_noabort(i32 %42)
  %ha.0 = load ptr, ptr %ha.0125, align 4
  %cmp28.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp28.not, label %for.cond54.preheader, label %if.end45.for.body30_crit_edge

if.end45.for.body30_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %for.body57.preheader
  %i.2129 = phi i32 [ %add58, %for.body57.for.body57_crit_edge ], [ %i.1.lcssa134, %for.body57.preheader ]
  %add58 = add nsw i32 %i.2129, 1
  tail call fastcc void @tlan_set_mac(ptr noundef %dev, i32 noundef %add58, ptr noundef null)
  %exitcond.not = icmp eq i32 %add58, 3
  br i1 %exitcond.not, label %for.body57.for.end61_crit_edge, label %for.body57.for.body57_crit_edge

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57

for.body57.for.end61_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61

for.end61:                                        ; preds = %for.body57.for.end61_crit_edge, %for.cond54.preheader.for.end61_crit_edge
  %hash1.0.lcssa137 = phi i32 [ %hash1.1, %for.cond54.preheader.for.end61_crit_edge ], [ %hash1.0.lcssa138, %for.body57.for.end61_crit_edge ]
  %hash2.0.lcssa135 = phi i32 [ %hash2.1, %for.cond54.preheader.for.end61_crit_edge ], [ %hash2.0.lcssa136, %for.body57.for.end61_crit_edge ]
  %43 = ptrtoint ptr %base_addr5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_addr5, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i112 = and i32 %44, 65535
  %add1.i113 = add nuw nsw i32 %conv.i112, -18874360
  %45 = inttoptr i32 %add1.i113 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 10240) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %hash1.0.lcssa137) #9
  %add8.i114 = add nuw nsw i32 %conv.i112, -18874356
  %47 = inttoptr i32 %add8.i114 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %47, i32 %46) #9, !srcloc !475
  %48 = ptrtoint ptr %base_addr5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base_addr5, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %conv.i115 = and i32 %49, 65535
  %add1.i116 = add nuw nsw i32 %conv.i115, -18874360
  %50 = inttoptr i32 %add1.i116 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %50, i16 11264) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %51 = tail call i32 @llvm.bswap.i32(i32 %hash2.0.lcssa135) #9
  %add8.i117 = add nuw nsw i32 %conv.i115, -18874356
  %52 = inttoptr i32 %add8.i117 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 %51) #9, !srcloc !475
  br label %if.end67

if.end67:                                         ; preds = %for.end61, %for.body.preheader, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tlan_mii_write_reg(ptr noundef %dev, i16 noundef zeroext %phy, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr i8, ptr %dev, i32 2556
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !497

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3013, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !501
  tail call void @arm_heavy_mb() #9
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base_addr, align 32
  %add = add i32 %2, 8
  %and = and i32 %add, 1048575
  %add28 = or i32 %and, -18874368
  %3 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 256) #9, !srcloc !447
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  %conv = add i32 %5, 13
  %conv34 = trunc i32 %5 to i16
  tail call fastcc void @tlan_mii_sync(i16 noundef zeroext %conv34)
  %conv35 = and i32 %conv, 65535
  %add.i = or i32 %conv35, -18874368
  %6 = inttoptr i32 %add.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool39.not = icmp sgt i8 %7, -1
  br i1 %tobool39.not, label %if.end.if.end47_crit_edge, label %if.then40

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %9 = and i8 %8, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %9) #9, !srcloc !487
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %if.end.if.end47_crit_edge
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr, align 32
  %conv49 = trunc i32 %11 to i16
  tail call fastcc void @tlan_mii_send_data(i16 noundef zeroext %conv49, i32 noundef 1, i32 noundef 2)
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr, align 32
  %conv51 = trunc i32 %13 to i16
  tail call fastcc void @tlan_mii_send_data(i16 noundef zeroext %conv51, i32 noundef 1, i32 noundef 2)
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_addr, align 32
  %conv53 = trunc i32 %15 to i16
  %conv54 = zext i16 %phy to i32
  tail call fastcc void @tlan_mii_send_data(i16 noundef zeroext %conv53, i32 noundef %conv54, i32 noundef 5)
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_addr, align 32
  %conv56 = trunc i32 %17 to i16
  %conv57 = zext i16 %reg to i32
  tail call fastcc void @tlan_mii_send_data(i16 noundef zeroext %conv56, i32 noundef %conv57, i32 noundef 5)
  %18 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_addr, align 32
  %conv59 = trunc i32 %19 to i16
  tail call fastcc void @tlan_mii_send_data(i16 noundef zeroext %conv59, i32 noundef 2, i32 noundef 2)
  %20 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_addr, align 32
  %conv61 = trunc i32 %21 to i16
  %conv62 = zext i16 %val to i32
  tail call fastcc void @tlan_mii_send_data(i16 noundef zeroext %conv61, i32 noundef %conv62, i32 noundef 16)
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %23 = and i8 %22, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %23) #9, !srcloc !487
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %25 = or i8 %24, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %25) #9, !srcloc !487
  br i1 %tobool39.not, label %if.end47.if.end82_crit_edge, label %if.then75

if.end47.if.end82_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then75:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %27 = or i8 %26, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %27) #9, !srcloc !487
  br label %if.end82

if.end82:                                         ; preds = %if.then75, %if.end47.if.end82_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tlan_timer(ptr noundef %t) #2 align 64 {
entry:
  %an_adv.i = alloca i16, align 2
  %an_lpa.i = alloca i16, align 2
  %status.i90 = alloca i16, align 2
  %ability.i = alloca i16, align 2
  %status.i = alloca i16, align 2
  %tctl.i = alloca i16, align 2
  %value.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 -92
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %function = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %function, align 4
  %timer_type = getelementptr i8, ptr %t, i32 -4
  %3 = ptrtoint ptr %timer_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timer_type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb4
    i32 7, label %sw.bb5
    i32 8, label %sw.bb6
    i32 2, label %do.body8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tlan_phy_power_down(ptr noundef %1)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %6 = load i32, ptr @debug, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb2.do.end4.i_crit_edge, label %do.end.i

sw.bb2.do.end4.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4.i

do.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %1) #12
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %sw.bb2.do.end4.i_crit_edge
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr.i, align 32
  %conv.i = trunc i32 %8 to i16
  tail call fastcc void @tlan_mii_sync(i16 noundef zeroext %conv.i) #9
  %phy_num.i = getelementptr i8, ptr %1, i32 2528
  %9 = ptrtoint ptr %phy_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_num.i, align 4
  %arrayidx.i = getelementptr %struct.tlan_priv, ptr %add.ptr.i.i, i32 0, i32 32, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %conv5.i = trunc i32 %12 to i16
  %lock.i.i = getelementptr i8, ptr %1, i32 2540
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  tail call fastcc void @__tlan_mii_write_reg(ptr noundef %1, i16 noundef zeroext %conv5.i, i16 noundef zeroext 0, i16 noundef zeroext 16384) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #9
  %13 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_addr.i, align 32
  %conv7.i = trunc i32 %14 to i16
  tail call fastcc void @tlan_mii_sync(i16 noundef zeroext %conv7.i) #9
  %call3.i16.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %timer.i.i = getelementptr i8, ptr %1, i32 2404
  %function.i.i = getelementptr i8, ptr %1, i32 2416
  %15 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %function.i.i, align 4
  %cmp6.not.i.i = icmp eq ptr %16, null
  br i1 %cmp6.not.i.i, label %do.end4.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

do.end4.i.if.end.i.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %do.end4.i
  %timer_type.i.i = getelementptr i8, ptr %1, i32 2400
  %17 = ptrtoint ptr %timer_type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timer_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp8.not.i.i = icmp eq i32 %18, 2
  br i1 %cmp8.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i16.i) #9
  br label %sw.epilog

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %do.end4.i.if.end.i.i_crit_edge
  %19 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tlan_timer, ptr %function.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i16.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at.i.i = getelementptr i8, ptr %1, i32 2396
  %21 = ptrtoint ptr %timer_set_at.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %timer_set_at.i.i, align 4
  %timer_type14.i.i = getelementptr i8, ptr %1, i32 2400
  %22 = ptrtoint ptr %timer_type14.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %timer_type14.i.i, align 4
  %23 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %23, 50
  %call16.i.i = tail call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i.i) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %add.ptr.i.i44 = getelementptr i8, ptr %1, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %24, 100
  %phy_num.i45 = getelementptr i8, ptr %1, i32 2528
  %25 = ptrtoint ptr %phy_num.i45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phy_num.i45, align 4
  %arrayidx.i46 = getelementptr %struct.tlan_priv, ptr %add.ptr.i.i44, i32 0, i32 32, i32 %26
  %27 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i46, align 4
  %conv.i47 = trunc i32 %28 to i16
  %29 = load i32, ptr @debug, align 4
  %and.i48 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i49 = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i49, label %sw.bb3.do.end5.i_crit_edge, label %do.end.i50

sw.bb3.do.end5.i_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5.i

do.end.i50:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %1) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i50, %sw.bb3.do.end5.i_crit_edge
  %base_addr.i51 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %base_addr.i51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base_addr.i51, align 32
  %conv6.i = trunc i32 %31 to i16
  tail call fastcc void @tlan_mii_sync(i16 noundef zeroext %conv6.i) #9
  %32 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -16384, ptr %value.i, align 2
  %lock.i.i52 = getelementptr i8, ptr %1, i32 2540
  %call3.i.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i52) #9
  tail call fastcc void @__tlan_mii_write_reg(ptr noundef %1, i16 noundef zeroext %conv.i47, i16 noundef zeroext 0, i16 noundef zeroext -16384) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i52, i32 noundef %call3.i.i53) #9
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.cond11.i.do.body7.i_crit_edge, %do.end5.i
  %call3.i29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i52) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %1, i16 noundef zeroext %conv.i47, i16 noundef zeroext 0, ptr noundef nonnull %value.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i52, i32 noundef %call3.i29.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then9.i, label %do.cond11.i

if.then9.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.66) #12
  br label %tlan_phy_reset.exit

do.cond11.i:                                      ; preds = %do.body7.i
  %34 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %value.i, align 2
  %tobool14.not.i = icmp sgt i16 %35, -1
  br i1 %tobool14.not.i, label %do.end15.i, label %do.cond11.i.do.body7.i_crit_edge

do.cond11.i.do.body7.i_crit_edge:                 ; preds = %do.cond11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7.i

do.end15.i:                                       ; preds = %do.cond11.i
  %call3.i31.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i52) #9
  %timer.i.i54 = getelementptr i8, ptr %1, i32 2404
  %function.i.i55 = getelementptr i8, ptr %1, i32 2416
  %36 = ptrtoint ptr %function.i.i55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %function.i.i55, align 4
  %cmp6.not.i.i56 = icmp eq ptr %37, null
  br i1 %cmp6.not.i.i56, label %do.end15.i.if.end.i.i65_crit_edge, label %land.lhs.true.i.i59

do.end15.i.if.end.i.i65_crit_edge:                ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i65

land.lhs.true.i.i59:                              ; preds = %do.end15.i
  %timer_type.i.i57 = getelementptr i8, ptr %1, i32 2400
  %38 = ptrtoint ptr %timer_type.i.i57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timer_type.i.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp8.not.i.i58 = icmp eq i32 %39, 2
  br i1 %cmp8.not.i.i58, label %land.lhs.true.i.i59.if.end.i.i65_crit_edge, label %if.then.i.i60

land.lhs.true.i.i59.if.end.i.i65_crit_edge:       ; preds = %land.lhs.true.i.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i65

if.then.i.i60:                                    ; preds = %land.lhs.true.i.i59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i52, i32 noundef %call3.i31.i) #9
  br label %tlan_phy_reset.exit

if.end.i.i65:                                     ; preds = %land.lhs.true.i.i59.if.end.i.i65_crit_edge, %do.end15.i.if.end.i.i65_crit_edge
  %40 = ptrtoint ptr %function.i.i55 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @tlan_timer, ptr %function.i.i55, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i52, i32 noundef %call3.i31.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at.i.i61 = getelementptr i8, ptr %1, i32 2396
  %42 = ptrtoint ptr %timer_set_at.i.i61 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %timer_set_at.i.i61, align 4
  %timer_type14.i.i62 = getelementptr i8, ptr %1, i32 2400
  %43 = ptrtoint ptr %timer_type14.i.i62 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 6, ptr %timer_type14.i.i62, align 4
  %44 = load volatile i32, ptr @jiffies, align 128
  %add.i.i63 = add i32 %44, 5
  %call16.i.i64 = tail call i32 @mod_timer(ptr noundef %timer.i.i54, i32 noundef %add.i.i63) #9
  br label %tlan_phy_reset.exit

tlan_phy_reset.exit:                              ; preds = %if.end.i.i65, %if.then.i.i60, %if.then9.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %add.ptr.i.i66 = getelementptr i8, ptr %1, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ability.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #9
  %45 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %status.i, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tctl.i) #9
  %46 = ptrtoint ptr %tctl.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %tctl.i, align 2, !annotation !490
  %phy_num.i67 = getelementptr i8, ptr %1, i32 2528
  %47 = ptrtoint ptr %phy_num.i67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %phy_num.i67, align 4
  %arrayidx.i68 = getelementptr %struct.tlan_priv, ptr %add.ptr.i.i66, i32 0, i32 32, i32 %48
  %49 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i68, align 4
  %conv.i69 = trunc i32 %50 to i16
  %51 = load i32, ptr @debug, align 4
  %and.i70 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool.not.i71 = icmp eq i32 %and.i70, 0
  br i1 %tobool.not.i71, label %sw.bb4.do.end5.i76_crit_edge, label %do.end.i73

sw.bb4.do.end5.i76_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5.i76

do.end.i73:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %1) #12
  br label %do.end5.i76

do.end5.i76:                                      ; preds = %do.end.i73, %sw.bb4.do.end5.i76_crit_edge
  %lock.i.i74 = getelementptr i8, ptr %1, i32 2540
  %call3.i.i75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i74) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %1, i16 noundef zeroext %conv.i69, i16 noundef zeroext 1, ptr noundef nonnull %status.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call3.i.i75) #9
  %call3.i156.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i74) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %1, i16 noundef zeroext %conv.i69, i16 noundef zeroext 1, ptr noundef nonnull %ability.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call3.i156.i) #9
  %52 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %status.i, align 2
  %54 = and i16 %53, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool8.not.i = icmp eq i16 %54, 0
  br i1 %tobool8.not.i, label %do.end5.i76.if.end52.i_crit_edge, label %land.lhs.true.i

do.end5.i76.if.end52.i_crit_edge:                 ; preds = %do.end5.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

land.lhs.true.i:                                  ; preds = %do.end5.i76
  %aui.i = getelementptr i8, ptr %1, i32 2508
  %55 = ptrtoint ptr %aui.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %aui.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool9.not.i = icmp eq i32 %56, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %land.lhs.true.i.if.end52.i_crit_edge

land.lhs.true.i.if.end52.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %57 = lshr i16 %53, 11
  %58 = ptrtoint ptr %ability.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %ability.i, align 2
  %speed.i = getelementptr i8, ptr %1, i32 2532
  %59 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %speed.i, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %60, label %if.then10.i.if.else45.i_crit_edge [
    i32 10, label %land.lhs.true14.i
    i32 100, label %land.lhs.true30.i
  ]

if.then10.i.if.else45.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.i

land.lhs.true14.i:                                ; preds = %if.then10.i
  %duplex.i = getelementptr i8, ptr %1, i32 2516
  %62 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %duplex.i, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %63, label %land.lhs.true14.i.if.else45.i_crit_edge [
    i32 1, label %land.lhs.true14.i.if.end52.sink.split.i_crit_edge
    i32 2, label %land.lhs.true14.i.if.end52.sink.split.sink.split.i_crit_edge
  ]

land.lhs.true14.i.if.end52.sink.split.sink.split.i_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.sink.split.sink.split.i

land.lhs.true14.i.if.end52.sink.split.i_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.sink.split.i

land.lhs.true14.i.if.else45.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.i

land.lhs.true30.i:                                ; preds = %if.then10.i
  %duplex31.i = getelementptr i8, ptr %1, i32 2516
  %65 = ptrtoint ptr %duplex31.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %duplex31.i, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %66, label %land.lhs.true30.i.if.else45.i_crit_edge [
    i32 1, label %land.lhs.true30.i.if.end52.sink.split.i_crit_edge
    i32 2, label %land.lhs.true30.i.if.end52.sink.split.sink.split.i_crit_edge
  ]

land.lhs.true30.i.if.end52.sink.split.sink.split.i_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.sink.split.sink.split.i

land.lhs.true30.i.if.end52.sink.split.i_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.sink.split.i

land.lhs.true30.i.if.else45.i_crit_edge:          ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.i

if.else45.i:                                      ; preds = %land.lhs.true30.i.if.else45.i_crit_edge, %land.lhs.true14.i.if.else45.i_crit_edge, %if.then10.i.if.else45.i_crit_edge
  %shl.i = shl nuw nsw i16 %57, 5
  %or.i = or i16 %shl.i, 1
  tail call fastcc void @tlan_mii_write_reg(ptr noundef %1, i16 noundef zeroext %conv.i69, i16 noundef zeroext 4, i16 noundef zeroext %or.i) #9
  tail call fastcc void @tlan_mii_write_reg(ptr noundef %1, i16 noundef zeroext %conv.i69, i16 noundef zeroext 0, i16 noundef zeroext 4096) #9
  tail call fastcc void @tlan_mii_write_reg(ptr noundef %1, i16 noundef zeroext %conv.i69, i16 noundef zeroext 0, i16 noundef zeroext 4608) #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.69) #12
  tail call fastcc void @tlan_set_timer(ptr noundef %1, i32 noundef 200, i32 noundef 7) #9
  br label %tlan_phy_start_link.exit

if.end52.sink.split.sink.split.i:                 ; preds = %land.lhs.true30.i.if.end52.sink.split.sink.split.i_crit_edge, %land.lhs.true14.i.if.end52.sink.split.sink.split.i_crit_edge
  %.sink.ph.i = phi i16 [ 256, %land.lhs.true14.i.if.end52.sink.split.sink.split.i_crit_edge ], [ 8448, %land.lhs.true30.i.if.end52.sink.split.sink.split.i_crit_edge ]
  %tlan_full_duplex.i = getelementptr i8, ptr %1, i32 2537
  %68 = ptrtoint ptr %tlan_full_duplex.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %tlan_full_duplex.i, align 1
  br label %if.end52.sink.split.i

if.end52.sink.split.i:                            ; preds = %if.end52.sink.split.sink.split.i, %land.lhs.true30.i.if.end52.sink.split.i_crit_edge, %land.lhs.true14.i.if.end52.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 0, %land.lhs.true14.i.if.end52.sink.split.i_crit_edge ], [ 8192, %land.lhs.true30.i.if.end52.sink.split.i_crit_edge ], [ %.sink.ph.i, %if.end52.sink.split.sink.split.i ]
  %call3.i158.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i74) #9
  tail call fastcc void @__tlan_mii_write_reg(ptr noundef %1, i16 noundef zeroext %conv.i69, i16 noundef zeroext 0, i16 noundef zeroext %.sink.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call3.i158.i) #9
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end52.sink.split.i, %land.lhs.true.i.if.end52.i_crit_edge, %do.end5.i76.if.end52.i_crit_edge
  %aui53.i = getelementptr i8, ptr %1, i32 2508
  %69 = ptrtoint ptr %aui53.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %aui53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool54.not.i = icmp eq i32 %70, 0
  %71 = ptrtoint ptr %phy_num.i67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr.i = load i32, ptr %phy_num.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp65.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool54.not.i, label %if.else63.i, label %land.lhs.true55.i

land.lhs.true55.i:                                ; preds = %if.end52.i
  br i1 %cmp65.i, label %land.lhs.true55.i.if.then67.i_crit_edge, label %if.then59.i

land.lhs.true55.i.if.then67.i_crit_edge:          ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67.i

if.then59.i:                                      ; preds = %land.lhs.true55.i
  %72 = ptrtoint ptr %phy_num.i67 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %phy_num.i67, align 4
  %base_addr.i77 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %73 = ptrtoint ptr %base_addr.i77 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base_addr.i77, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !480
  tail call void @arm_heavy_mb() #9
  %conv.i.i = and i32 %74, 65535
  %add1.i.i = add nuw nsw i32 %conv.i.i, -18874360
  %75 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %75, i16 1024) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !481
  tail call void @arm_heavy_mb() #9
  %add8.i.i = add nuw nsw i32 %conv.i.i, -18874356
  %76 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %76, i16 -32762) #9, !srcloc !447
  %call3.i166.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i74) #9
  %timer.i.i78 = getelementptr i8, ptr %1, i32 2404
  %function.i.i79 = getelementptr i8, ptr %1, i32 2416
  %77 = ptrtoint ptr %function.i.i79 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %function.i.i79, align 4
  %cmp6.not.i.i80 = icmp eq ptr %78, null
  br i1 %cmp6.not.i.i80, label %if.then59.i.if.end.i.i89_crit_edge, label %land.lhs.true.i.i83

if.then59.i.if.end.i.i89_crit_edge:               ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i89

land.lhs.true.i.i83:                              ; preds = %if.then59.i
  %timer_type.i.i81 = getelementptr i8, ptr %1, i32 2400
  %79 = ptrtoint ptr %timer_type.i.i81 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %timer_type.i.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp8.not.i.i82 = icmp eq i32 %80, 2
  br i1 %cmp8.not.i.i82, label %land.lhs.true.i.i83.if.end.i.i89_crit_edge, label %if.then.i.i84

land.lhs.true.i.i83.if.end.i.i89_crit_edge:       ; preds = %land.lhs.true.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i89

if.then.i.i84:                                    ; preds = %land.lhs.true.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call3.i166.i) #9
  br label %tlan_phy_start_link.exit

if.end.i.i89:                                     ; preds = %land.lhs.true.i.i83.if.end.i.i89_crit_edge, %if.then59.i.if.end.i.i89_crit_edge
  %81 = ptrtoint ptr %function.i.i79 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @tlan_timer, ptr %function.i.i79, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call3.i166.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at.i.i85 = getelementptr i8, ptr %1, i32 2396
  %83 = ptrtoint ptr %timer_set_at.i.i85 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %timer_set_at.i.i85, align 4
  %timer_type14.i.i86 = getelementptr i8, ptr %1, i32 2400
  %84 = ptrtoint ptr %timer_type14.i.i86 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 3, ptr %timer_type14.i.i86, align 4
  %85 = load volatile i32, ptr @jiffies, align 128
  %add.i.i87 = add i32 %85, 4
  %call16.i.i88 = tail call i32 @mod_timer(ptr noundef %timer.i.i78, i32 noundef %add.i.i87) #9
  br label %tlan_phy_start_link.exit

if.else63.i:                                      ; preds = %if.end52.i
  br i1 %cmp65.i, label %if.else63.i.if.then67.i_crit_edge, label %if.else63.i.if.end97.i_crit_edge

if.else63.i.if.end97.i_crit_edge:                 ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i

if.else63.i.if.then67.i_crit_edge:                ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67.i

if.then67.i:                                      ; preds = %if.else63.i.if.then67.i_crit_edge, %land.lhs.true55.i.if.then67.i_crit_edge
  %call3.i168.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i74) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %1, i16 noundef zeroext %conv.i69, i16 noundef zeroext 17, ptr noundef nonnull %tctl.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call3.i168.i) #9
  %86 = ptrtoint ptr %aui53.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %aui53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool69.not.i = icmp eq i32 %87, 0
  %88 = ptrtoint ptr %tctl.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %tctl.i, align 2
  br i1 %tobool69.not.i, label %if.else74.i, label %if.then70.i

if.then70.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = or i16 %89, 8192
  %91 = ptrtoint ptr %tctl.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %tctl.i, align 2
  br label %if.end95.i

if.else74.i:                                      ; preds = %if.then67.i
  %92 = and i16 %89, -8193
  %93 = ptrtoint ptr %tctl.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %tctl.i, align 2
  %duplex78.i = getelementptr i8, ptr %1, i32 2516
  %94 = ptrtoint ptr %duplex78.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %duplex78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp79.i = icmp eq i32 %95, 2
  br i1 %cmp79.i, label %if.then81.i, label %if.else74.i.if.end86.i_crit_edge

if.else74.i.if.end86.i_crit_edge:                 ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

if.then81.i:                                      ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #11
  %tlan_full_duplex85.i = getelementptr i8, ptr %1, i32 2537
  %96 = ptrtoint ptr %tlan_full_duplex85.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %tlan_full_duplex85.i, align 1
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then81.i, %if.else74.i.if.end86.i_crit_edge
  %control.0.i = phi i16 [ 256, %if.then81.i ], [ 0, %if.else74.i.if.end86.i_crit_edge ]
  %speed87.i = getelementptr i8, ptr %1, i32 2532
  %97 = ptrtoint ptr %speed87.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %speed87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %98)
  %cmp88.i = icmp eq i32 %98, 100
  %99 = or i16 %control.0.i, 8192
  %spec.select.i = select i1 %cmp88.i, i16 %99, i16 %control.0.i
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.end86.i, %if.then70.i
  %control.1.i = phi i16 [ 0, %if.then70.i ], [ %spec.select.i, %if.end86.i ]
  %call3.i170.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i74) #9
  tail call fastcc void @__tlan_mii_write_reg(ptr noundef %1, i16 noundef zeroext %conv.i69, i16 noundef zeroext 0, i16 noundef zeroext %control.1.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call3.i170.i) #9
  %100 = ptrtoint ptr %tctl.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %tctl.i, align 2
  %call3.i172.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i74) #9
  tail call fastcc void @__tlan_mii_write_reg(ptr noundef %1, i16 noundef zeroext %conv.i69, i16 noundef zeroext 17, i16 noundef zeroext %101) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call3.i172.i) #9
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.end95.i, %if.else63.i.if.end97.i_crit_edge
  %call3.i174.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i74) #9
  %timer.i175.i = getelementptr i8, ptr %1, i32 2404
  %function.i176.i = getelementptr i8, ptr %1, i32 2416
  %102 = ptrtoint ptr %function.i176.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %function.i176.i, align 4
  %cmp6.not.i177.i = icmp eq ptr %103, null
  br i1 %cmp6.not.i177.i, label %if.end97.i.if.end.i186.i_crit_edge, label %land.lhs.true.i180.i

if.end97.i.if.end.i186.i_crit_edge:               ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i186.i

land.lhs.true.i180.i:                             ; preds = %if.end97.i
  %timer_type.i178.i = getelementptr i8, ptr %1, i32 2400
  %104 = ptrtoint ptr %timer_type.i178.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %timer_type.i178.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %cmp8.not.i179.i = icmp eq i32 %105, 2
  br i1 %cmp8.not.i179.i, label %land.lhs.true.i180.i.if.end.i186.i_crit_edge, label %if.then.i181.i

land.lhs.true.i180.i.if.end.i186.i_crit_edge:     ; preds = %land.lhs.true.i180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i186.i

if.then.i181.i:                                   ; preds = %land.lhs.true.i180.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call3.i174.i) #9
  br label %tlan_phy_start_link.exit

if.end.i186.i:                                    ; preds = %land.lhs.true.i180.i.if.end.i186.i_crit_edge, %if.end97.i.if.end.i186.i_crit_edge
  %106 = ptrtoint ptr %function.i176.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @tlan_timer, ptr %function.i176.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call3.i174.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at.i182.i = getelementptr i8, ptr %1, i32 2396
  %108 = ptrtoint ptr %timer_set_at.i182.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %timer_set_at.i182.i, align 4
  %timer_type14.i183.i = getelementptr i8, ptr %1, i32 2400
  %109 = ptrtoint ptr %timer_type14.i183.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 8, ptr %timer_type14.i183.i, align 4
  %110 = load volatile i32, ptr @jiffies, align 128
  %add.i184.i = add i32 %110, 400
  %call16.i185.i = tail call i32 @mod_timer(ptr noundef %timer.i175.i, i32 noundef %add.i184.i) #9
  br label %tlan_phy_start_link.exit

tlan_phy_start_link.exit:                         ; preds = %if.end.i186.i, %if.then.i181.i, %if.end.i.i89, %if.then.i.i84, %if.else45.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tctl.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ability.i) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %add.ptr.i.i91 = getelementptr i8, ptr %1, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %an_adv.i) #9
  %111 = ptrtoint ptr %an_adv.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -1, ptr %an_adv.i, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %an_lpa.i) #9
  %112 = ptrtoint ptr %an_lpa.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %an_lpa.i, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i90) #9
  %113 = ptrtoint ptr %status.i90 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 -1, ptr %status.i90, align 2, !annotation !490
  %phy_num.i92 = getelementptr i8, ptr %1, i32 2528
  %114 = ptrtoint ptr %phy_num.i92 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %phy_num.i92, align 4
  %arrayidx.i93 = getelementptr %struct.tlan_priv, ptr %add.ptr.i.i91, i32 0, i32 32, i32 %115
  %116 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i93, align 4
  %conv.i94 = trunc i32 %117 to i16
  %lock.i.i95 = getelementptr i8, ptr %1, i32 2540
  %call3.i.i96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i95) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %1, i16 noundef zeroext %conv.i94, i16 noundef zeroext 1, ptr noundef nonnull %status.i90) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i95, i32 noundef %call3.i.i96) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #9
  %call3.i87.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i95) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %1, i16 noundef zeroext %conv.i94, i16 noundef zeroext 1, ptr noundef nonnull %status.i90) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i95, i32 noundef %call3.i87.i) #9
  %119 = ptrtoint ptr %status.i90 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %status.i90, align 2
  %121 = and i16 %120, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool.not.i97 = icmp eq i16 %121, 0
  br i1 %tobool.not.i97, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb5
  %call3.i89.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i95) #9
  %timer.i.i98 = getelementptr i8, ptr %1, i32 2404
  %function.i.i99 = getelementptr i8, ptr %1, i32 2416
  %122 = ptrtoint ptr %function.i.i99 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %function.i.i99, align 4
  %cmp6.not.i.i100 = icmp eq ptr %123, null
  br i1 %cmp6.not.i.i100, label %if.then.i.if.end.i.i109_crit_edge, label %land.lhs.true.i.i103

if.then.i.if.end.i.i109_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i109

land.lhs.true.i.i103:                             ; preds = %if.then.i
  %timer_type.i.i101 = getelementptr i8, ptr %1, i32 2400
  %124 = ptrtoint ptr %timer_type.i.i101 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %timer_type.i.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %125)
  %cmp8.not.i.i102 = icmp eq i32 %125, 2
  br i1 %cmp8.not.i.i102, label %land.lhs.true.i.i103.if.end.i.i109_crit_edge, label %if.then.i.i104

land.lhs.true.i.i103.if.end.i.i109_crit_edge:     ; preds = %land.lhs.true.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i109

if.then.i.i104:                                   ; preds = %land.lhs.true.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i95, i32 noundef %call3.i89.i) #9
  br label %tlan_phy_finish_auto_neg.exit

if.end.i.i109:                                    ; preds = %land.lhs.true.i.i103.if.end.i.i109_crit_edge, %if.then.i.if.end.i.i109_crit_edge
  %126 = ptrtoint ptr %function.i.i99 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @tlan_timer, ptr %function.i.i99, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i95, i32 noundef %call3.i89.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at.i.i105 = getelementptr i8, ptr %1, i32 2396
  %128 = ptrtoint ptr %timer_set_at.i.i105 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %timer_set_at.i.i105, align 4
  %timer_type14.i.i106 = getelementptr i8, ptr %1, i32 2400
  %129 = ptrtoint ptr %timer_type14.i.i106 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 7, ptr %timer_type14.i.i106, align 4
  %130 = load volatile i32, ptr @jiffies, align 128
  %add.i.i107 = add i32 %130, 200
  %call16.i.i108 = tail call i32 @mod_timer(ptr noundef %timer.i.i98, i32 noundef %add.i.i107) #9
  br label %tlan_phy_finish_auto_neg.exit

if.end.i:                                         ; preds = %sw.bb5
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.70) #12
  %call3.i91.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i95) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %1, i16 noundef zeroext %conv.i94, i16 noundef zeroext 4, ptr noundef nonnull %an_adv.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i95, i32 noundef %call3.i91.i) #9
  %call3.i93.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i95) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %1, i16 noundef zeroext %conv.i94, i16 noundef zeroext 5, ptr noundef nonnull %an_lpa.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i95, i32 noundef %call3.i93.i) #9
  %131 = ptrtoint ptr %an_adv.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %an_adv.i, align 2
  %133 = ptrtoint ptr %an_lpa.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %an_lpa.i, align 2
  %and584.i = and i16 %134, %132
  %135 = and i16 %and584.i, 992
  %conv8.i = zext i16 %135 to i32
  %and9.i = and i32 %conv8.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp ne i32 %and9.i, 0
  %136 = and i32 %conv8.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %136)
  %.not.i = icmp eq i32 %136, 64
  %or.cond.i = or i1 %tobool10.not.i, %.not.i
  br i1 %or.cond.i, label %if.end21.sink.split.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.end21.sink.split.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %tlan_full_duplex19.i = getelementptr i8, ptr %1, i32 2537
  %137 = ptrtoint ptr %tlan_full_duplex19.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %tlan_full_duplex19.i, align 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %if.end.i.if.end21.i_crit_edge
  %and23.i = and i32 %conv8.i, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %if.end21.i.if.end34.i_crit_edge

if.end21.i.if.end34.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true25.i:                                ; preds = %if.end21.i
  %adapter.i = getelementptr i8, ptr %1, i32 2500
  %138 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %adapter.i, align 4
  %flags.i = getelementptr inbounds %struct.board, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags.i, align 4
  %and26.i = and i32 %141, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.if.end34.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %142 = ptrtoint ptr %phy_num.i92 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %phy_num.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.not.i = icmp eq i32 %143, 0
  br i1 %cmp.not.i, label %land.lhs.true28.i.if.then38.i_crit_edge, label %if.then31.i

land.lhs.true28.i.if.then38.i_crit_edge:          ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then31.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %phy_num.i92 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %phy_num.i92, align 4
  tail call fastcc void @tlan_set_timer(ptr noundef %1, i32 noundef 40, i32 noundef 3) #9
  br label %tlan_phy_finish_auto_neg.exit

if.end34.i:                                       ; preds = %land.lhs.true25.i.if.end34.i_crit_edge, %if.end21.i.if.end34.i_crit_edge
  %145 = ptrtoint ptr %phy_num.i92 to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pr.i110 = load i32, ptr %phy_num.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i110)
  %cmp36.i = icmp eq i32 %.pr.i110, 0
  br i1 %cmp36.i, label %if.end34.i.if.then38.i_crit_edge, label %if.end34.i.if.end49.i_crit_edge

if.end34.i.if.end49.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.end34.i.if.then38.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.end34.i.if.then38.i_crit_edge, %land.lhs.true28.i.if.then38.i_crit_edge
  %duplex.i111 = getelementptr i8, ptr %1, i32 2516
  %146 = ptrtoint ptr %duplex.i111 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %duplex.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %147)
  %cmp39.i = icmp ne i32 %147, 2
  %148 = and i16 %and584.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %tobool45.not.i = icmp eq i16 %148, 0
  %or.cond110.i = select i1 %cmp39.i, i1 %tobool45.not.i, i1 false
  %..i = select i1 %or.cond110.i, i16 4096, i16 4352
  %.str.72..str.71.i = select i1 %or.cond110.i, ptr @.str.72, ptr @.str.71
  tail call fastcc void @tlan_mii_write_reg(ptr noundef %1, i16 noundef zeroext %conv.i94, i16 noundef zeroext 0, i16 noundef zeroext %..i) #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull %.str.72..str.71.i) #12
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then38.i, %if.end34.i.if.end49.i_crit_edge
  %call3.i95.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i95) #9
  %timer.i96.i = getelementptr i8, ptr %1, i32 2404
  %function.i97.i = getelementptr i8, ptr %1, i32 2416
  %149 = ptrtoint ptr %function.i97.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %function.i97.i, align 4
  %cmp6.not.i98.i = icmp eq ptr %150, null
  br i1 %cmp6.not.i98.i, label %if.end49.i.if.end.i107.i_crit_edge, label %land.lhs.true.i101.i

if.end49.i.if.end.i107.i_crit_edge:               ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i107.i

land.lhs.true.i101.i:                             ; preds = %if.end49.i
  %timer_type.i99.i = getelementptr i8, ptr %1, i32 2400
  %151 = ptrtoint ptr %timer_type.i99.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %timer_type.i99.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %152)
  %cmp8.not.i100.i = icmp eq i32 %152, 2
  br i1 %cmp8.not.i100.i, label %land.lhs.true.i101.i.if.end.i107.i_crit_edge, label %if.then.i102.i

land.lhs.true.i101.i.if.end.i107.i_crit_edge:     ; preds = %land.lhs.true.i101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i107.i

if.then.i102.i:                                   ; preds = %land.lhs.true.i101.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i95, i32 noundef %call3.i95.i) #9
  br label %tlan_phy_finish_auto_neg.exit

if.end.i107.i:                                    ; preds = %land.lhs.true.i101.i.if.end.i107.i_crit_edge, %if.end49.i.if.end.i107.i_crit_edge
  %153 = ptrtoint ptr %function.i97.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @tlan_timer, ptr %function.i97.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i95, i32 noundef %call3.i95.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %154 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at.i103.i = getelementptr i8, ptr %1, i32 2396
  %155 = ptrtoint ptr %timer_set_at.i103.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %timer_set_at.i103.i, align 4
  %timer_type14.i104.i = getelementptr i8, ptr %1, i32 2400
  %156 = ptrtoint ptr %timer_type14.i104.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 8, ptr %timer_type14.i104.i, align 4
  %157 = load volatile i32, ptr @jiffies, align 128
  %add.i105.i = add i32 %157, 10
  %call16.i106.i = tail call i32 @mod_timer(ptr noundef %timer.i96.i, i32 noundef %add.i105.i) #9
  br label %tlan_phy_finish_auto_neg.exit

tlan_phy_finish_auto_neg.exit:                    ; preds = %if.end.i107.i, %if.then.i102.i, %if.then31.i, %if.end.i.i109, %if.then.i.i104
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i90) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %an_lpa.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %an_adv.i) #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tlan_finish_reset(ptr noundef %1)
  br label %sw.epilog

do.body8:                                         ; preds = %entry
  %lock = getelementptr i8, ptr %t, i32 136
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %158 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %function, align 4
  %cmp15 = icmp eq ptr %159, null
  br i1 %cmp15, label %if.then, label %do.body8.if.end25_crit_edge

do.body8.if.end25_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %do.body8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %160 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at = getelementptr i8, ptr %t, i32 -8
  %161 = ptrtoint ptr %timer_set_at to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %timer_set_at, align 4
  %sub = sub i32 %160, %162
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub)
  %cmp17 = icmp ugt i32 %sub, 9
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %163 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i112 = and i32 %164, 65535
  %add1.i = add nuw nsw i32 %conv.i112, -18874360
  %165 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %165, i16 17408) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add8.i = add nuw nsw i32 %conv.i112, -18874356
  %166 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 1) #9, !srcloc !487
  br label %if.end25

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %162, 10
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %167 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %add, ptr %expires, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  tail call void @add_timer(ptr noundef %t) #9
  br label %sw.epilog

if.end25:                                         ; preds = %if.then19, %do.body8.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end25, %if.else, %sw.bb6, %tlan_phy_finish_auto_neg.exit, %tlan_phy_start_link.exit, %tlan_phy_reset.exit, %if.end.i.i, %if.then.i.i, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tlan_ee_read_byte(ptr noundef %dev, i8 noundef zeroext %ee_addr, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2540
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %conv6 = trunc i32 %1 to i16
  tail call fastcc void @tlan_ee_send_start(i16 noundef zeroext %conv6)
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %conv8 = trunc i32 %3 to i16
  %call9 = tail call fastcc i32 @tlan_ee_send_byte(i16 noundef zeroext %conv8, i8 noundef zeroext -96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  %conv11 = trunc i32 %5 to i16
  %call12 = tail call fastcc i32 @tlan_ee_send_byte(i16 noundef zeroext %conv11, i8 noundef zeroext %ee_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end15:                                         ; preds = %if.end
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr, align 32
  %conv17 = trunc i32 %7 to i16
  tail call fastcc void @tlan_ee_send_start(i16 noundef zeroext %conv17)
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr, align 32
  %conv19 = trunc i32 %9 to i16
  %call20 = tail call fastcc i32 @tlan_ee_send_byte(i16 noundef zeroext %conv19, i8 noundef zeroext -95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end15.fail_crit_edge

if.end15.fail_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end23:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !502
  tail call void @arm_heavy_mb() #9
  %conv.i = and i32 %11, 65535
  %add1.i = add nuw nsw i32 %conv.i, -18874360
  %12 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 256) #9, !srcloc !447
  %add4.i = add i32 %11, 13
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %data, align 1
  %conv6.i = and i32 %add4.i, 65535
  %add.i.i = or i32 %conv6.i, -18874368
  %14 = inttoptr i32 %add.i.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %16 = and i8 %15, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %16) #9, !srcloc !487
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end23
  %place.042.i = phi i8 [ -128, %if.end23 ], [ %25, %if.end.i.for.body.i_crit_edge ]
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %18 = or i8 %17, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %18) #9, !srcloc !487
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %20 = and i8 %19, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool21.not.i = icmp eq i8 %20, 0
  br i1 %tobool21.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data, align 1
  %or241.i = or i8 %22, %place.042.i
  store i8 %or241.i, ptr %data, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %24 = and i8 %23, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %24) #9, !srcloc !487
  %25 = lshr i8 %place.042.i, 1
  %tobool.not.i = icmp ult i8 %place.042.i, 2
  br i1 %tobool.not.i, label %tlan_ee_receive_byte.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

tlan_ee_receive_byte.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %27 = or i8 %26, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %27) #9, !srcloc !487
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %29 = or i8 %28, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %29) #9, !srcloc !487
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %31 = or i8 %30, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %31) #9, !srcloc !487
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %33 = and i8 %32, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %33) #9, !srcloc !487
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %35 = and i8 %34, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %35) #9, !srcloc !487
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %37 = or i8 %36, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %37) #9, !srcloc !487
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %39 = or i8 %38, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %39) #9, !srcloc !487
  br label %fail

fail:                                             ; preds = %tlan_ee_receive_byte.exit, %if.end15.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ 0, %tlan_ee_receive_byte.exit ], [ 1, %entry.fail_crit_edge ], [ 2, %if.end.fail_crit_edge ], [ 3, %if.end15.fail_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tlan_ee_send_start(i16 noundef zeroext %io_base) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !503
  tail call void @arm_heavy_mb() #9
  %conv = zext i16 %io_base to i32
  %add1 = add nuw nsw i32 %conv, -18874360
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 256) #9, !srcloc !447
  %add4 = add i16 %io_base, 13
  %conv6 = zext i16 %add4 to i32
  %add.i = or i32 %conv6, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %3 = or i8 %2, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %3) #9, !srcloc !487
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %5 = or i8 %4, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %5) #9, !srcloc !487
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %7 = or i8 %6, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %7) #9, !srcloc !487
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %9 = and i8 %8, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %9) #9, !srcloc !487
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %11 = and i8 %10, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %11) #9, !srcloc !487
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tlan_ee_send_byte(i16 noundef zeroext %io_base, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !504
  tail call void @arm_heavy_mb() #9
  %conv = zext i16 %io_base to i32
  %add1 = add nuw nsw i32 %conv, -18874360
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 256) #9, !srcloc !447
  %add4 = add i16 %io_base, 13
  %conv9 = zext i8 %data to i32
  %conv11 = zext i16 %add4 to i32
  %add.i = or i32 %conv11, -18874368
  %1 = inttoptr i32 %add.i to ptr
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %place.033 = phi i32 [ 128, %entry ], [ %9, %if.end.for.body_crit_edge ]
  %and10 = and i32 %place.033, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = or i8 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %3) #9, !srcloc !487
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = and i8 %2, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %4) #9, !srcloc !487
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %6 = or i8 %5, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %6) #9, !srcloc !487
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %8 = and i8 %7, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %8) #9, !srcloc !487
  %9 = lshr i32 %place.033, 1
  %cmp.not = icmp ult i32 %place.033, 2
  br i1 %cmp.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %11 = and i8 %10, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %11) #9, !srcloc !487
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %13 = or i8 %12, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %13) #9, !srcloc !487
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %15 = and i8 %14, 16
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %17 = and i8 %16, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %17) #9, !srcloc !487
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %19 = or i8 %18, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %19) #9, !srcloc !487
  %and51 = zext i8 %15 to i32
  ret i32 %and51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !491
  tail call void @arm_heavy_mb() #9
  %conv.i = and i32 %1, 65535
  %add1.i = add nuw nsw i32 %conv.i, -18874360
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 3072) #9, !srcloc !447
  %add6.i = add nuw nsw i32 %conv.i, -18874356
  %3 = inttoptr i32 %add6.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !492
  %tlan_rev = getelementptr i8, ptr %dev, i32 2536
  %5 = ptrtoint ptr %tlan_rev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tlan_rev, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @tlan_handle_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %9) #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %timer = getelementptr i8, ptr %dev, i32 2404
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.81, ptr noundef nonnull @tlan_open.__key) #9
  %media_timer = getelementptr i8, ptr %dev, i32 2452
  tail call void @init_timer_key(ptr noundef %media_timer, ptr noundef nonnull @tlan_phy_monitor, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef nonnull @tlan_open.__key.82) #9
  tail call fastcc void @tlan_reset_lists(ptr noundef %dev) #9
  tail call fastcc void @tlan_read_and_clear_stats(ptr noundef %dev, i32 noundef 0) #9
  tail call fastcc void @tlan_reset_adapter(ptr noundef %dev) #9
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %11) #9
  %12 = load i32, ptr @debug, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %do.end12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end12:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %tlan_rev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tlan_rev, align 4
  %conv16 = zext i8 %14 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %dev, i32 noundef %conv16) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.body.cleanup_crit_edge, %if.then
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %media_timer.i = getelementptr i8, ptr %dev, i32 2452
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %media_timer.i) #9
  tail call fastcc void @tlan_read_and_clear_stats(ptr noundef %dev, i32 noundef 1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !505
  tail call void @arm_heavy_mb() #9
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr.i, align 32
  %and.i = and i32 %1, 1048575
  %add2.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 8388608) #9, !srcloc !475
  tail call fastcc void @tlan_reset_adapter(ptr noundef %dev) #9
  %function.i = getelementptr i8, ptr %dev, i32 2416
  %3 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %function.i, align 4
  %cmp.not.i = icmp eq ptr %4, null
  br i1 %cmp.not.i, label %entry.tlan_stop.exit_crit_edge, label %if.then.i

entry.tlan_stop.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tlan_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %timer.i = getelementptr i8, ptr %dev, i32 2404
  %call5.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #9
  %5 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %function.i, align 4
  br label %tlan_stop.exit

tlan_stop.exit:                                   ; preds = %if.then.i, %entry.tlan_stop.exit_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %7, ptr noundef %dev) #9
  tail call fastcc void @tlan_free_lists(ptr noundef %dev)
  %8 = load i32, ptr @debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %tlan_stop.exit.do.end3_crit_edge, label %do.end

tlan_stop.exit.do.end3_crit_edge:                 ; preds = %tlan_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %tlan_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %dev) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %tlan_stop.exit.do.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_start_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_online = getelementptr i8, ptr %dev, i32 2392
  %0 = ptrtoint ptr %phy_online to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %dev) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %4)
  %cmp.i = icmp ugt i32 %4, 63
  br i1 %cmp.i, label %if.end7.if.end11_crit_edge, label %skb_padto.exit, !prof !445

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

skb_padto.exit:                                   ; preds = %if.end7
  %sub.i = sub nuw nsw i32 64, %4
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not, label %skb_padto.exit.if.end11_crit_edge, label %skb_padto.exit.cleanup_crit_edge

skb_padto.exit.cleanup_crit_edge:                 ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

skb_padto.exit.if.end11_crit_edge:                ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %skb_padto.exit.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len1.i, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 64)
  %tx_list = getelementptr i8, ptr %dev, i32 2360
  %8 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_list, align 4
  %tx_tail = getelementptr i8, ptr %dev, i32 2384
  %10 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_tail, align 4
  %tx_list_dma = getelementptr i8, ptr %dev, i32 2364
  %12 = ptrtoint ptr %tx_list_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_list_dma, align 4
  %mul = mul i32 %11, 88
  %add = add i32 %13, %mul
  %c_stat = getelementptr %struct.tlan_list, ptr %9, i32 %11, i32 1
  %14 = ptrtoint ptr %c_stat to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %c_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %15)
  %cmp14.not = icmp eq i16 %15, -32768
  br i1 %cmp14.not, label %if.end32, label %do.body17

do.body17:                                        ; preds = %if.end11
  %16 = load i32, ptr @debug, align 4
  %and18 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.do.end31_crit_edge, label %do.end23

do.body17.do.end31_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %tx_head = getelementptr i8, ptr %dev, i32 2376
  %17 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_head, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %dev, i32 noundef %18, i32 noundef %11) #12
  br label %do.end31

do.end31:                                         ; preds = %do.end23, %do.body17.do.end31_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %tx_busy_count = getelementptr i8, ptr %dev, i32 2388
  %21 = ptrtoint ptr %tx_busy_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_busy_count, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %tx_busy_count, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end11
  %add.ptr = getelementptr %struct.tlan_list, ptr %9, i32 %11
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %add.ptr, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 2308
  %24 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %27) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end32
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !445

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev33) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev33, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i ], [ %29, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev33, ptr noundef %27, i32 noundef %7) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %27 to i32
  %sub.i170 = add i32 %33, 1073741824
  %shr.i = lshr i32 %sub.i170, 12
  %add.ptr.i171 = getelementptr %struct.page, ptr %32, i32 %shr.i
  %and.i = and i32 %33, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev33, ptr noundef %add.ptr.i171, i32 noundef %and.i, i32 noundef %7, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i172 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %buffer = getelementptr %struct.tlan_list, ptr %9, i32 %11, i32 3
  %address = getelementptr inbounds %struct.tlan_buffer, ptr %buffer, i32 0, i32 1
  %34 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i172, ptr %address, align 4
  %35 = ptrtoint ptr %skb to i32
  %address.i = getelementptr %struct.tlan_list, ptr %9, i32 %11, i32 3, i32 9, i32 1
  %36 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %address.i, align 4
  %address4.i = getelementptr %struct.tlan_list, ptr %9, i32 %11, i32 3, i32 8, i32 1
  %37 = ptrtoint ptr %address4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %address4.i, align 4
  %conv35 = trunc i32 %7 to i16
  %frame_size = getelementptr %struct.tlan_list, ptr %9, i32 %11, i32 2
  %38 = ptrtoint ptr %frame_size to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv35, ptr %frame_size, align 2
  %or = or i32 %7, -2147483648
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %buffer, align 4
  %arrayidx39 = getelementptr %struct.tlan_list, ptr %9, i32 %11, i32 3, i32 1
  %40 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx39, align 4
  %address43 = getelementptr %struct.tlan_list, ptr %9, i32 %11, i32 3, i32 1, i32 1
  %41 = ptrtoint ptr %address43 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %address43, align 4
  %lock = getelementptr i8, ptr %dev, i32 2540
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %42 = ptrtoint ptr %c_stat to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 12288, ptr %c_stat, align 4
  %tx_in_progress = getelementptr i8, ptr %dev, i32 2380
  %43 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool56.not = icmp eq i32 %44, 0
  br i1 %tobool56.not, label %if.then57, label %do.body87

if.then57:                                        ; preds = %dma_map_single_attrs.exit
  %45 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %tx_in_progress, align 4
  %46 = load i32, ptr @debug, align 4
  %and60 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then57.do.body72_crit_edge, label %do.end65

if.then57.do.body72_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

do.end65:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_tail, align 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %48) #12
  br label %do.body72

do.body72:                                        ; preds = %do.end65, %if.then57.do.body72_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !506
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %add)
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %50 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base_addr, align 32
  %add75 = add i32 %51, 4
  %and76 = and i32 %add75, 1048575
  %add77 = or i32 %and76, -18874368
  %52 = inttoptr i32 %add77 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 %49) #9, !srcloc !475
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !507
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base_addr, align 32
  %and84 = and i32 %54, 1048575
  %add85 = or i32 %and84, -18874368
  %55 = inttoptr i32 %add85 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 128) #9, !srcloc !475
  br label %if.end113

do.body87:                                        ; preds = %dma_map_single_attrs.exit
  %56 = load i32, ptr @debug, align 4
  %and88 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body87.do.end99_crit_edge, label %do.end93

do.body87.do.end99_crit_edge:                     ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end99

do.end93:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_tail, align 4
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %58) #12
  br label %do.end99

do.end99:                                         ; preds = %do.end93, %do.body87.do.end99_crit_edge
  %59 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_tail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp101 = icmp eq i32 %60, 0
  %61 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_list, align 4
  br i1 %cmp101, label %if.then103, label %if.else107

if.then103:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr105 = getelementptr %struct.tlan_list, ptr %62, i32 63
  %63 = ptrtoint ptr %add.ptr105 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add, ptr %add.ptr105, align 4
  br label %if.end113

if.else107:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %60, -1
  %add.ptr110 = getelementptr %struct.tlan_list, ptr %62, i32 %sub
  %64 = ptrtoint ptr %add.ptr110 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add, ptr %add.ptr110, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.else107, %if.then103, %do.body72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call50) #9
  %65 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_tail, align 4
  %inc116 = add i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %inc116)
  %cmp117 = icmp ugt i32 %inc116, 63
  %spec.select = select i1 %cmp117, i32 0, i32 %inc116
  %67 = ptrtoint ptr %tx_tail to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %spec.select, ptr %tx_tail, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %do.end31, %skb_padto.exit.cleanup_crit_edge, %do.end6
  %retval.0 = phi i32 [ 16, %do.end31 ], [ 0, %if.end113 ], [ 0, %do.end6 ], [ 0, %skb_padto.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_ioctl(ptr noundef %dev, ptr nocapture noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %phy_num = getelementptr i8, ptr %dev, i32 2528
  %0 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_num, align 4
  %arrayidx = getelementptr %struct.tlan_priv, ptr %add.ptr.i, i32 0, i32 32, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %phy_online = getelementptr i8, ptr %dev, i32 2392
  %4 = ptrtoint ptr %phy_online to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %if.end.sw.bb3_crit_edge
    i32 35145, label %sw.bb10
  ]

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %3 to i16
  %7 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %ifr_ifru.i, align 2
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %if.end.sw.bb3_crit_edge
  %8 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ifr_ifru.i, align 2
  %10 = and i16 %9, 31
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg_num, align 2
  %13 = and i16 %12, 31
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %lock.i = getelementptr i8, ptr %dev, i32 2540
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  tail call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %10, i16 noundef zeroext %13, ptr noundef %val_out) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ifr_ifru.i, align 2
  %16 = and i16 %15, 31
  %reg_num15 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %17 = ptrtoint ptr %reg_num15 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %reg_num15, align 2
  %19 = and i16 %18, 31
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val_in, align 2
  %lock.i31 = getelementptr i8, ptr %dev, i32 2540
  %call3.i32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i31) #9
  tail call fastcc void @__tlan_mii_write_reg(ptr noundef %dev, i16 noundef zeroext %16, i16 noundef zeroext %19, i16 noundef zeroext %21) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i31, i32 noundef %call3.i32) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb10 ], [ 0, %sw.bb3 ], [ -11, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tlan_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tlan_read_and_clear_stats(ptr noundef %dev, i32 noundef 1)
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_eoc_count = getelementptr i8, ptr %dev, i32 2356
  %1 = ptrtoint ptr %rx_eoc_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rx_eoc_count, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %dev, i32 noundef %2) #12
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %3 = load i32, ptr @debug, align 4
  %and6 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end18_crit_edge, label %do.end11

do.body5.do.end18_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %tx_busy_count = getelementptr i8, ptr %dev, i32 2388
  %4 = ptrtoint ptr %tx_busy_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_busy_count, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %dev, i32 noundef %5) #12
  br label %do.end18

do.end18:                                         ; preds = %do.end11, %do.body5.do.end18_crit_edge
  %6 = load i32, ptr @debug, align 4
  %and19 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.end18.if.end22_crit_edge, label %if.then21

do.end18.if.end22_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %do.end18
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr, align 32
  %conv.i = and i32 %8, 65535
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %conv.i) #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #12
  %add1.i.i = add nuw nsw i32 %conv.i, -18874360
  %9 = inttoptr i32 %add1.i.i to ptr
  %add5.i.i = add nuw nsw i32 %conv.i, -18874356
  %10 = inttoptr i32 %add5.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then21
  %i.026.i = phi i32 [ 0, %if.then21 ], [ %add16.i, %for.body.i.for.body.i_crit_edge ]
  %conv7.i = trunc i32 %i.026.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !508
  tail call void @arm_heavy_mb() #9
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv7.i) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %11) #9, !srcloc !447
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #9, !srcloc !472
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !509
  %conv9.i = or i16 %conv7.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !508
  tail call void @arm_heavy_mb() #9
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv9.i) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %14) #9, !srcloc !447
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #9, !srcloc !472
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !509
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %i.026.i, i32 noundef %13, i32 noundef %16) #12
  %add16.i = add nuw nsw i32 %i.026.i, 8
  %cmp.i = icmp ult i32 %i.026.i, 68
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %tlan_print_dio.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

tlan_print_dio.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr i8, ptr %dev, i32 2540
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  tail call fastcc void @__tlan_phy_print(ptr noundef %dev) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  br label %if.end22

if.end22:                                         ; preds = %tlan_print_dio.exit, %do.end18.if.end22_crit_edge
  %17 = load i32, ptr @debug, align 4
  %and23 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end35_crit_edge, label %for.cond.preheader

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

for.cond.preheader:                               ; preds = %if.end22
  %rx_list = getelementptr i8, ptr %dev, i32 2332
  br label %for.body

for.cond27.preheader:                             ; preds = %for.body
  %tx_list = getelementptr i8, ptr %dev, i32 2360
  br label %for.body30

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.069 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_list, align 4
  %add.ptr = getelementptr %struct.tlan_list, ptr %19, i32 %i.069
  %call.i52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.140, i32 noundef %i.069, ptr noundef %add.ptr) #12
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  %call5.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %21) #12
  %c_stat.i = getelementptr %struct.tlan_list, ptr %19, i32 %i.069, i32 1
  %22 = ptrtoint ptr %c_stat.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %c_stat.i, align 4
  %conv.i54 = zext i16 %23 to i32
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %conv.i54) #12
  %frame_size.i = getelementptr %struct.tlan_list, ptr %19, i32 %i.069, i32 2
  %24 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %frame_size.i, align 2
  %conv15.i = zext i16 %25 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, i32 noundef %conv15.i) #12
  %arrayidx.i = getelementptr %struct.tlan_list, ptr %19, i32 %i.069, i32 3, i32 0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %address.i = getelementptr %struct.tlan_list, ptr %19, i32 %i.069, i32 3, i32 0, i32 1
  %28 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %address.i, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef 0, i32 noundef %27, i32 noundef %29) #12
  %arrayidx.1.i = getelementptr %struct.tlan_list, ptr %19, i32 %i.069, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i, align 4
  %address.1.i = getelementptr %struct.tlan_list, ptr %19, i32 %i.069, i32 3, i32 1, i32 1
  %32 = ptrtoint ptr %address.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %address.1.i, align 4
  %call24.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef 1, i32 noundef %31, i32 noundef %33) #12
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond27.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.cond27.preheader
  %i.170 = phi i32 [ 0, %for.cond27.preheader ], [ %inc33, %for.body30.for.body30_crit_edge ]
  %34 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_list, align 4
  %add.ptr31 = getelementptr %struct.tlan_list, ptr %35, i32 %i.170
  %call.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.141, i32 noundef %i.170, ptr noundef %add.ptr31) #12
  %36 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr31, align 4
  %call5.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %37) #12
  %c_stat.i57 = getelementptr %struct.tlan_list, ptr %35, i32 %i.170, i32 1
  %38 = ptrtoint ptr %c_stat.i57 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %c_stat.i57, align 4
  %conv.i58 = zext i16 %39 to i32
  %call10.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %conv.i58) #12
  %frame_size.i60 = getelementptr %struct.tlan_list, ptr %35, i32 %i.170, i32 2
  %40 = ptrtoint ptr %frame_size.i60 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %frame_size.i60, align 2
  %conv15.i61 = zext i16 %41 to i32
  %call16.i62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, i32 noundef %conv15.i61) #12
  %arrayidx.i63 = getelementptr %struct.tlan_list, ptr %35, i32 %i.170, i32 3, i32 0
  %42 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i63, align 4
  %address.i64 = getelementptr %struct.tlan_list, ptr %35, i32 %i.170, i32 3, i32 0, i32 1
  %44 = ptrtoint ptr %address.i64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %address.i64, align 4
  %call24.i65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef 0, i32 noundef %43, i32 noundef %45) #12
  %arrayidx.1.i66 = getelementptr %struct.tlan_list, ptr %35, i32 %i.170, i32 3, i32 1
  %46 = ptrtoint ptr %arrayidx.1.i66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.1.i66, align 4
  %address.1.i67 = getelementptr %struct.tlan_list, ptr %35, i32 %i.170, i32 3, i32 1, i32 1
  %48 = ptrtoint ptr %address.1.i67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %address.1.i67, align 4
  %call24.1.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef 1, i32 noundef %47, i32 noundef %49) #12
  %inc33 = add nuw nsw i32 %i.170, 1
  %exitcond71.not = icmp eq i32 %inc33, 64
  br i1 %exitcond71.not, label %for.body30.if.end35_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30

for.body30.if.end35_crit_edge:                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end35:                                         ; preds = %for.body30.if.end35_crit_edge, %if.end22.if.end35_crit_edge
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tlan_poll(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #9
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @tlan_handle_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_handle_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev_id, i32 2540
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 10
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #9, !srcloc !443
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !510
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !511
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr, align 32
  %add7 = add i32 %8, 10
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %9 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %3) #9, !srcloc !447
  %idxprom = zext i16 %6 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @tlan_int_vector, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 %11(ptr noundef %dev_id, i16 noundef zeroext %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then.if.end24_crit_edge, label %if.then13

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 %idxprom, 18
  %or = or i32 %shl, %call11
  %or15 = or i32 %or, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !512
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %13 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_addr, align 32
  %and21 = and i32 %14, 1048575
  %add22 = or i32 %and21, -18874368
  %15 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #9, !srcloc !475
  br label %if.end24

if.end24:                                         ; preds = %if.then13, %if.then.if.end24_crit_edge, %entry.if.end24_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool27.not = icmp ne i16 %6, 0
  %cond = zext i1 %tobool27.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tlan_phy_monitor(ptr noundef %t) #2 align 64 {
entry:
  %phy_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 -140
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status) #9
  %2 = ptrtoint ptr %phy_status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %phy_status, align 2, !annotation !490
  %phy2 = getelementptr i8, ptr %t, i32 68
  %phy_num = getelementptr i8, ptr %t, i32 76
  %3 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_num, align 4
  %arrayidx = getelementptr [2 x i32], ptr %phy2, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %6 to i16
  %lock.i = getelementptr i8, ptr %1, i32 2540
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call fastcc void @__tlan_mii_read_reg(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext 1, ptr noundef nonnull %phy_status) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %7 = ptrtoint ptr %phy_status to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %phy_status, align 2
  %9 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %do.end, label %if.then.if.end34_crit_edge

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end:                                           ; preds = %if.then
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %1) #12
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i = and i32 %14, 65535
  %add1.i = add nuw nsw i32 %conv.i, -18874360
  %15 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 17408) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add8.i = add nuw nsw i32 %conv.i, -18874356
  %16 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #9, !srcloc !487
  tail call void @netif_carrier_off(ptr noundef %1) #9
  %adapter = getelementptr i8, ptr %t, i32 48
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 4
  %flags = getelementptr inbounds %struct.board, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and8 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end.if.end34_crit_edge, label %if.then10

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base_addr, align 32
  %conv12 = trunc i32 %22 to i16
  tail call fastcc void @tlan_mii_sync(i16 noundef zeroext %conv12)
  %23 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phy2, align 4
  %conv15 = trunc i32 %24 to i16
  tail call fastcc void @tlan_mii_write_reg(ptr noundef %1, i16 noundef zeroext %conv15, i16 noundef zeroext 0, i16 noundef zeroext 19456)
  %25 = ptrtoint ptr %phy_num to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %phy_num, align 4
  tail call fastcc void @tlan_set_timer(ptr noundef %1, i32 noundef 40, i32 noundef 3)
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool.not.i, label %land.lhs.true.if.end34_crit_edge, label %if.then24

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %base_addr25 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %base_addr25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_addr25, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i59 = and i32 %27, 65535
  %add1.i60 = add nuw nsw i32 %conv.i59, -18874360
  %28 = inttoptr i32 %add1.i60 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 17408) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add8.i61 = add nuw nsw i32 %conv.i59, -18874356
  %29 = inttoptr i32 %add8.i61 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 1) #9, !srcloc !487
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %1) #12
  tail call void @netif_carrier_on(ptr noundef %1) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then24, %land.lhs.true.if.end34_crit_edge, %do.end.if.end34_crit_edge, %if.then.if.end34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %30, 100
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %31 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_handle_tx_eof(ptr noundef %dev, i16 noundef zeroext %host_int) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_head = getelementptr i8, ptr %dev, i32 2376
  %1 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_head, align 4
  %tx_tail = getelementptr i8, ptr %dev, i32 2384
  %3 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_tail, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %2, i32 noundef %4) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tx_list = getelementptr i8, ptr %dev, i32 2360
  %5 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_list, align 4
  %tx_head5 = getelementptr i8, ptr %dev, i32 2376
  %7 = ptrtoint ptr %tx_head5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_head5, align 4
  %c_stat141 = getelementptr %struct.tlan_list, ptr %6, i32 %8, i32 1
  %9 = ptrtoint ptr %c_stat141 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %c_stat141, align 4
  %conv142 = zext i16 %10 to i32
  %and6143 = and i32 %conv142, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6143)
  %tobool7.not144.not = icmp eq i32 %and6143, 0
  br i1 %tobool7.not144.not, label %if.end39.thread, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %do.end4
  %add.ptr = getelementptr %struct.tlan_list, ptr %6, i32 %8
  %pci_dev = getelementptr i8, ptr %dev, i32 2308
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %conv149 = phi i32 [ %conv142, %while.body.lr.ph ], [ %conv, %while.body.while.body_crit_edge ]
  %c_stat148 = phi ptr [ %c_stat141, %while.body.lr.ph ], [ %c_stat, %while.body.while.body_crit_edge ]
  %eoc.0147 = phi i32 [ 0, %while.body.lr.ph ], [ %eoc.1, %while.body.while.body_crit_edge ]
  %head_list.0146 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr36, %while.body.while.body_crit_edge ]
  %ack.0145 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %address.i = getelementptr %struct.tlan_list, ptr %head_list.0146, i32 0, i32 3, i32 9, i32 1
  %11 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address.i, align 4
  %13 = inttoptr i32 %12 to ptr
  %inc = add nuw nsw i32 %ack.0145, 1
  %14 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %address = getelementptr inbounds %struct.tlan_list, ptr %head_list.0146, i32 0, i32 3, i32 0, i32 1
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 64)
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10, i32 noundef %17, i32 noundef %20, i32 noundef 1, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %13, i32 noundef 1) #9
  %address16 = getelementptr %struct.tlan_list, ptr %head_list.0146, i32 0, i32 3, i32 8, i32 1
  %21 = ptrtoint ptr %address16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %address16, align 4
  %22 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %address.i, align 4
  %and21 = and i32 %conv149, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %eoc.1 = select i1 %tobool22.not, i32 %eoc.0147, i32 1
  %frame_size = getelementptr inbounds %struct.tlan_list, ptr %head_list.0146, i32 0, i32 2
  %23 = ptrtoint ptr %frame_size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %frame_size, align 2
  %conv25 = zext i16 %24 to i32
  %25 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %26, %conv25
  store i32 %add, ptr %tx_bytes, align 4
  %27 = ptrtoint ptr %c_stat148 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -32768, ptr %c_stat148, align 4
  %28 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %30 = ptrtoint ptr %tx_head5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_head5, align 4
  %inc28 = add i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %inc28)
  %cmp29 = icmp ugt i32 %inc28, 63
  %storemerge = select i1 %cmp29, i32 0, i32 %inc28
  %32 = ptrtoint ptr %tx_head5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %tx_head5, align 4
  %33 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_list, align 4
  %add.ptr36 = getelementptr %struct.tlan_list, ptr %34, i32 %storemerge
  %c_stat = getelementptr %struct.tlan_list, ptr %34, i32 %storemerge, i32 1
  %35 = ptrtoint ptr %c_stat to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %c_stat, align 4
  %conv = zext i16 %36 to i32
  %and6 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp ne i32 %and6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %ack.0145)
  %cmp = icmp ult i32 %ack.0145, 254
  %or.cond = select i1 %tobool7.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %if.end39

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end39.thread:                                  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.88) #12
  br label %if.end75

if.end39:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eoc.1)
  %tobool40.not = icmp eq i32 %eoc.1, 0
  br i1 %tobool40.not, label %if.end39.if.end75_crit_edge, label %do.body42

if.end39.if.end75_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.body42:                                        ; preds = %if.end39
  %37 = load i32, ptr @debug, align 4
  %and43 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.end55_crit_edge, label %do.end48

do.body42.do.end55_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %tx_head5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_head5, align 4
  %tx_tail51 = getelementptr i8, ptr %dev, i32 2384
  %40 = ptrtoint ptr %tx_tail51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_tail51, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %39, i32 noundef %41) #12
  br label %do.end55

do.end55:                                         ; preds = %do.end48, %do.body42.do.end55_crit_edge
  %42 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_list, align 4
  %44 = ptrtoint ptr %tx_head5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_head5, align 4
  %c_stat61 = getelementptr %struct.tlan_list, ptr %43, i32 %45, i32 1
  %46 = ptrtoint ptr %c_stat61 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %c_stat61, align 4
  %48 = and i16 %47, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %48)
  %cmp64 = icmp eq i16 %48, 12288
  br i1 %cmp64, label %do.body67, label %if.else

do.body67:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  %tx_list_dma = getelementptr i8, ptr %dev, i32 2364
  %49 = ptrtoint ptr %tx_list_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_list_dma, align 4
  %mul = mul i32 %45, 88
  %add60 = add i32 %50, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !513
  tail call void @arm_heavy_mb() #9
  %51 = tail call i32 @llvm.bswap.i32(i32 %add60)
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %52 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base_addr, align 32
  %add70 = add i32 %53, 4
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %54 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %54, i32 %51) #9, !srcloc !475
  %or = or i32 %inc, -2147483648
  br label %if.end75

if.else:                                          ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  %tx_in_progress = getelementptr i8, ptr %dev, i32 2380
  %55 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %tx_in_progress, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.else, %do.body67, %if.end39.if.end75_crit_edge, %if.end39.thread
  %ack.1 = phi i32 [ %or, %do.body67 ], [ %inc, %if.else ], [ %inc, %if.end39.if.end75_crit_edge ], [ 0, %if.end39.thread ]
  %adapter = getelementptr i8, ptr %dev, i32 2500
  %56 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter, align 4
  %flags = getelementptr inbounds %struct.board, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 4
  %and76 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end97_crit_edge, label %if.then78

if.end75.if.end97_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then78:                                        ; preds = %if.end75
  %base_addr79 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %60 = ptrtoint ptr %base_addr79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %base_addr79, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i = and i32 %61, 65535
  %add1.i = add nuw nsw i32 %conv.i, -18874360
  %62 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %62, i16 17408) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add8.i = add nuw nsw i32 %conv.i, -18874356
  %63 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 17) #9, !srcloc !487
  %function = getelementptr i8, ptr %dev, i32 2416
  %64 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %function, align 4
  %cmp81 = icmp eq ptr %65, null
  br i1 %cmp81, label %if.then83, label %if.else89

if.then83:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  %timer = getelementptr i8, ptr %dev, i32 2404
  %66 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @tlan_timer, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %add86 = add i32 %67, 10
  %expires = getelementptr i8, ptr %dev, i32 2412
  %68 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add86, ptr %expires, align 4
  %69 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at = getelementptr i8, ptr %dev, i32 2396
  %70 = ptrtoint ptr %timer_set_at to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %timer_set_at, align 4
  %timer_type = getelementptr i8, ptr %dev, i32 2400
  %71 = ptrtoint ptr %timer_type to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %timer_type, align 4
  tail call void @add_timer(ptr noundef %timer) #9
  br label %if.end97

if.else89:                                        ; preds = %if.then78
  %timer_type90 = getelementptr i8, ptr %dev, i32 2400
  %72 = ptrtoint ptr %timer_type90 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %timer_type90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp91 = icmp eq i32 %73, 2
  br i1 %cmp91, label %if.then93, label %if.else89.if.end97_crit_edge

if.else89.if.end97_crit_edge:                     ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then93:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at94 = getelementptr i8, ptr %dev, i32 2396
  %75 = ptrtoint ptr %timer_set_at94 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %timer_set_at94, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.else89.if.end97_crit_edge, %if.then83, %if.end75.if.end97_crit_edge
  ret i32 %ack.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_handle_stat_overflow(ptr noundef %dev, i16 noundef zeroext %host_int) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tlan_read_and_clear_stats(ptr noundef %dev, i32 noundef 1)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_handle_rx_eof(ptr noundef %dev, i16 noundef zeroext %host_int) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_head = getelementptr i8, ptr %dev, i32 2348
  %1 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rx_head, align 4
  %rx_tail = getelementptr i8, ptr %dev, i32 2352
  %3 = ptrtoint ptr %rx_tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_tail, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %2, i32 noundef %4) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %rx_list = getelementptr i8, ptr %dev, i32 2332
  %5 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_list, align 4
  %rx_head5 = getelementptr i8, ptr %dev, i32 2348
  %7 = ptrtoint ptr %rx_head5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_head5, align 4
  %rx_list_dma = getelementptr i8, ptr %dev, i32 2336
  %c_stat177 = getelementptr %struct.tlan_list, ptr %6, i32 %8, i32 1
  %9 = ptrtoint ptr %c_stat177 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %c_stat177, align 4
  %conv178 = zext i16 %10 to i32
  %and7179 = and i32 %conv178, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7179)
  %tobool8.not180.not = icmp eq i32 %and7179, 0
  br i1 %tobool8.not180.not, label %if.end61.thread, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %do.end4
  %add.ptr = getelementptr %struct.tlan_list, ptr %6, i32 %8
  %11 = ptrtoint ptr %rx_list_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_list_dma, align 4
  %mul = mul i32 %8, 88
  %add = add i32 %12, %mul
  %pci_dev = getelementptr i8, ptr %dev, i32 2308
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %rx_tail35 = getelementptr i8, ptr %dev, i32 2352
  br label %while.body

while.body:                                       ; preds = %drop_and_reuse.while.body_crit_edge, %while.body.lr.ph
  %conv187 = phi i32 [ %conv178, %while.body.lr.ph ], [ %conv, %drop_and_reuse.while.body_crit_edge ]
  %c_stat186 = phi ptr [ %c_stat177, %while.body.lr.ph ], [ %c_stat, %drop_and_reuse.while.body_crit_edge ]
  %ack.0185 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %drop_and_reuse.while.body_crit_edge ]
  %head_list_phys.0184 = phi i32 [ %add, %while.body.lr.ph ], [ %add58, %drop_and_reuse.while.body_crit_edge ]
  %head_list.0182 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr54, %drop_and_reuse.while.body_crit_edge ]
  %eoc.0181 = phi i32 [ 0, %while.body.lr.ph ], [ %spec.select, %drop_and_reuse.while.body_crit_edge ]
  %address = getelementptr inbounds %struct.tlan_list, ptr %head_list.0182, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %address, align 4
  %frame_size10 = getelementptr inbounds %struct.tlan_list, ptr %head_list.0182, i32 0, i32 2
  %15 = ptrtoint ptr %frame_size10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %frame_size10, align 2
  %inc = add nuw nsw i32 %ack.0185, 1
  %and13 = and i32 %conv187, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select = select i1 %tobool14.not, i32 %eoc.0181, i32 1
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1607, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.body.drop_and_reuse_crit_edge, label %if.end20

while.body.drop_and_reuse_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_and_reuse

if.end20:                                         ; preds = %while.body
  %conv11 = zext i16 %16 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %20, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %address.i = getelementptr %struct.tlan_list, ptr %head_list.0182, i32 0, i32 3, i32 9, i32 1
  %21 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %address.i, align 4
  %23 = inttoptr i32 %22 to ptr
  %24 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22, i32 noundef %14, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #9
  %call23 = tail call ptr @skb_put(ptr noundef %23, i32 noundef %conv11) #9
  %26 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_bytes, align 8
  %add24 = add i32 %27, %conv11
  store i32 %add24, ptr %rx_bytes, align 8
  %call25 = tail call zeroext i16 @eth_type_trans(ptr noundef %23, ptr noundef %dev) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 15, i32 0, i32 18
  %28 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %call25, ptr %protocol, align 8
  %call26 = tail call i32 @netif_rx(ptr noundef %23) #9
  %29 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %32) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end20
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !445

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev28) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44, i32 3
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i174 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i174, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev28, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %36, %if.end.i.i ], [ %34, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev28, ptr noundef %32, i32 noundef 1600) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %32 to i32
  %sub.i = add i32 %38, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i175 = getelementptr %struct.page, ptr %37, i32 %shr.i
  %and.i = and i32 %38, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev28, ptr noundef %add.ptr.i175, i32 noundef %and.i, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %39 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i, ptr %address, align 4
  %40 = ptrtoint ptr %call.i.i to i32
  %41 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %address.i, align 4
  %address4.i = getelementptr %struct.tlan_list, ptr %head_list.0182, i32 0, i32 3, i32 8, i32 1
  %42 = ptrtoint ptr %address4.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %address4.i, align 4
  br label %drop_and_reuse

drop_and_reuse:                                   ; preds = %dma_map_single_attrs.exit, %while.body.drop_and_reuse_crit_edge
  %43 = ptrtoint ptr %head_list.0182 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %head_list.0182, align 4
  %44 = ptrtoint ptr %c_stat186 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %c_stat186, align 4
  %45 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_list, align 4
  %47 = ptrtoint ptr %rx_tail35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_tail35, align 4
  %add.ptr36 = getelementptr %struct.tlan_list, ptr %46, i32 %48
  %49 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %head_list_phys.0184, ptr %add.ptr36, align 4
  %50 = ptrtoint ptr %rx_head5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_head5, align 4
  %inc39 = add i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc39)
  %cmp40 = icmp ugt i32 %inc39, 31
  %spec.select173 = select i1 %cmp40, i32 0, i32 %inc39
  %52 = ptrtoint ptr %rx_head5 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select173, ptr %rx_head5, align 4
  %53 = ptrtoint ptr %rx_tail35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_tail35, align 4
  %inc46 = add i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc46)
  %cmp47 = icmp ugt i32 %inc46, 31
  %storemerge = select i1 %cmp47, i32 0, i32 %inc46
  %55 = ptrtoint ptr %rx_tail35 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge, ptr %rx_tail35, align 4
  %56 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rx_list, align 4
  %add.ptr54 = getelementptr %struct.tlan_list, ptr %57, i32 %spec.select173
  %58 = ptrtoint ptr %rx_list_dma to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_list_dma, align 4
  %mul57 = mul nuw nsw i32 %spec.select173, 88
  %add58 = add i32 %59, %mul57
  %c_stat = getelementptr %struct.tlan_list, ptr %57, i32 %spec.select173, i32 1
  %60 = ptrtoint ptr %c_stat to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %c_stat, align 4
  %conv = zext i16 %61 to i32
  %and7 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp ne i32 %and7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %ack.0185)
  %cmp = icmp ult i32 %ack.0185, 254
  %or.cond = select i1 %tobool8.not, i1 %cmp, i1 false
  br i1 %or.cond, label %drop_and_reuse.while.body_crit_edge, label %if.end61

drop_and_reuse.while.body_crit_edge:              ; preds = %drop_and_reuse
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end61.thread:                                  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.94) #12
  br label %if.end93

if.end61:                                         ; preds = %drop_and_reuse
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool62.not = icmp eq i32 %spec.select, 0
  br i1 %tobool62.not, label %if.end61.if.end93_crit_edge, label %do.body64

if.end61.if.end93_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

do.body64:                                        ; preds = %if.end61
  %62 = load i32, ptr @debug, align 4
  %and65 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body64.do.end77_crit_edge, label %do.end70

do.body64.do.end77_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %rx_head5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_head5, align 4
  %rx_tail73 = getelementptr i8, ptr %dev, i32 2352
  %65 = ptrtoint ptr %rx_tail73 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_tail73, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %64, i32 noundef %66) #12
  br label %do.end77

do.end77:                                         ; preds = %do.end70, %do.body64.do.end77_crit_edge
  %67 = ptrtoint ptr %rx_head5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_head5, align 4
  %69 = ptrtoint ptr %rx_list_dma to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_list_dma, align 4
  %mul83 = mul i32 %68, 88
  %add84 = add i32 %70, %mul83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !514
  tail call void @arm_heavy_mb() #9
  %71 = tail call i32 @llvm.bswap.i32(i32 %add84)
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %72 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %base_addr, align 32
  %add88 = add i32 %73, 4
  %and89 = and i32 %add88, 1048575
  %add90 = or i32 %and89, -18874368
  %74 = inttoptr i32 %add90 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %74, i32 %71) #9, !srcloc !475
  %or = or i32 %inc, -2146959360
  %rx_eoc_count = getelementptr i8, ptr %dev, i32 2356
  %75 = ptrtoint ptr %rx_eoc_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_eoc_count, align 4
  %inc92 = add i32 %76, 1
  store i32 %inc92, ptr %rx_eoc_count, align 4
  br label %if.end93

if.end93:                                         ; preds = %do.end77, %if.end61.if.end93_crit_edge, %if.end61.thread
  %ack.1 = phi i32 [ %or, %do.end77 ], [ %inc, %if.end61.if.end93_crit_edge ], [ 0, %if.end61.thread ]
  %adapter = getelementptr i8, ptr %dev, i32 2500
  %77 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter, align 4
  %flags = getelementptr inbounds %struct.board, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags, align 4
  %and94 = and i32 %80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end114_crit_edge, label %if.then96

if.end93.if.end114_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then96:                                        ; preds = %if.end93
  %base_addr97 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %81 = ptrtoint ptr %base_addr97 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %base_addr97, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i = and i32 %82, 65535
  %add1.i = add nuw nsw i32 %conv.i, -18874360
  %83 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %83, i16 17408) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add8.i = add nuw nsw i32 %conv.i, -18874356
  %84 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 17) #9, !srcloc !487
  %function = getelementptr i8, ptr %dev, i32 2416
  %85 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %function, align 4
  %cmp99 = icmp eq ptr %86, null
  br i1 %cmp99, label %if.then101, label %if.else

if.then101:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  %timer = getelementptr i8, ptr %dev, i32 2404
  %87 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @tlan_timer, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %add104 = add i32 %88, 10
  %expires = getelementptr i8, ptr %dev, i32 2412
  %89 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add104, ptr %expires, align 4
  %90 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at = getelementptr i8, ptr %dev, i32 2396
  %91 = ptrtoint ptr %timer_set_at to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %timer_set_at, align 4
  %timer_type = getelementptr i8, ptr %dev, i32 2400
  %92 = ptrtoint ptr %timer_type to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %timer_type, align 4
  tail call void @add_timer(ptr noundef %timer) #9
  br label %if.end114

if.else:                                          ; preds = %if.then96
  %timer_type107 = getelementptr i8, ptr %dev, i32 2400
  %93 = ptrtoint ptr %timer_type107 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %timer_type107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %cmp108 = icmp eq i32 %94, 2
  br i1 %cmp108, label %if.then110, label %if.else.if.end114_crit_edge

if.else.if.end114_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then110:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %timer_set_at111 = getelementptr i8, ptr %dev, i32 2396
  %96 = ptrtoint ptr %timer_set_at111 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %timer_set_at111, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %if.else.if.end114_crit_edge, %if.then101, %if.end93.if.end114_crit_edge
  ret i32 %ack.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_handle_dummy(ptr noundef %dev, i16 noundef zeroext %host_int) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.98) #12
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_handle_tx_eoc(ptr nocapture noundef %dev, i16 noundef zeroext %host_int) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tlan_rev = getelementptr i8, ptr %dev, i32 2536
  %0 = ptrtoint ptr %tlan_rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tlan_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cmp = icmp ult i8 %1, 48
  br i1 %cmp, label %do.body, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %tx_head = getelementptr i8, ptr %dev, i32 2376
  %3 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_head, align 4
  %tx_tail = getelementptr i8, ptr %dev, i32 2384
  %5 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_tail, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %4, i32 noundef %6) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %tx_list = getelementptr i8, ptr %dev, i32 2360
  %7 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_list, align 4
  %tx_head7 = getelementptr i8, ptr %dev, i32 2376
  %9 = ptrtoint ptr %tx_head7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_head7, align 4
  %c_stat = getelementptr %struct.tlan_list, ptr %8, i32 %10, i32 1
  %11 = ptrtoint ptr %c_stat to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %c_stat, align 4
  %13 = and i16 %12, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %13)
  %cmp11 = icmp eq i16 %13, 12288
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %tx_list_dma = getelementptr i8, ptr %dev, i32 2364
  %14 = ptrtoint ptr %tx_list_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_list_dma, align 4
  %mul = mul i32 %10, 88
  %add = add i32 %15, %mul
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %add)
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %19 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_addr, align 32
  %add17 = add i32 %20, 4
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %21 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %18) #9, !srcloc !475
  br label %if.end22

if.else:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %tx_in_progress = getelementptr i8, ptr %dev, i32 2380
  %22 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tx_in_progress, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then13, %entry.if.end22_crit_edge
  %ack.0 = phi i32 [ -2147483647, %if.then13 ], [ 1, %if.else ], [ 1, %entry.if.end22_crit_edge ]
  ret i32 %ack.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_handle_status_check(ptr noundef %dev, i16 noundef zeroext %host_int) #2 align 64 {
entry:
  %tlphy_ctl = alloca i16, align 2
  %tlphy_sts = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tlphy_ctl) #9
  %0 = ptrtoint ptr %tlphy_ctl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tlphy_ctl, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tlphy_sts) #9
  %1 = ptrtoint ptr %tlphy_sts to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %tlphy_sts, align 2, !annotation !490
  %2 = and i16 %host_int, 8160
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_addr, align 32
  %add = add i32 %6, 4
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %7 = inttoptr i32 %add2 to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #9, !srcloc !472
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !516
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.101, i32 noundef %9) #12
  tail call fastcc void @tlan_read_and_clear_stats(ptr noundef %dev, i32 noundef 1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !517
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr, align 32
  %and7 = and i32 %11, 1048575
  %add8 = or i32 %and7, -18874368
  %12 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 8388608) #9, !srcloc !475
  %tlan_tqueue = getelementptr i8, ptr %dev, i32 2584
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %tlan_tqueue) #9
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %15) #9
  br label %if.end86

do.body11:                                        ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  %and12 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end21_crit_edge, label %do.end17

do.body11.do.end21_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %dev) #12
  br label %do.end21

do.end21:                                         ; preds = %do.end17, %do.body11.do.end21_crit_edge
  %phy_num = getelementptr i8, ptr %dev, i32 2528
  %17 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phy_num, align 4
  %arrayidx = getelementptr %struct.tlan_priv, ptr %add.ptr.i, i32 0, i32 32, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %base_addr23 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %21 = ptrtoint ptr %base_addr23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base_addr23, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !491
  tail call void @arm_heavy_mb() #9
  %conv.i = and i32 %22, 65535
  %add1.i = add nuw nsw i32 %conv.i, -18874360
  %23 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 512) #9, !srcloc !447
  %add8.i = add nuw nsw i32 %conv.i, -18874354
  %24 = inttoptr i32 %add8.i to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !492
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool26.not = icmp eq i8 %25, 0
  br i1 %tobool26.not, label %do.end21.if.end86_crit_edge, label %if.then27

do.end21.if.end86_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then27:                                        ; preds = %do.end21
  %26 = ptrtoint ptr %base_addr23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_addr23, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %conv.i112 = and i32 %27, 65535
  %add1.i113 = add nuw nsw i32 %conv.i112, -18874360
  %28 = inttoptr i32 %add1.i113 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 512) #9, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %add10.i = add nuw nsw i32 %conv.i112, -18874354
  %29 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %25) #9, !srcloc !487
  %30 = load i32, ptr @debug, align 4
  %and31 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then27.if.end45_crit_edge, label %do.end36

if.then27.if.end45_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.end36:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %conv40 = zext i8 %25 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %dev, i32 noundef %conv40) #12
  br label %if.end45

if.end45:                                         ; preds = %do.end36, %if.then27.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %tobool48.not = icmp sgt i8 %25, -1
  br i1 %tobool48.not, label %if.end45.if.end86_crit_edge, label %land.lhs.true

if.end45.if.end86_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

land.lhs.true:                                    ; preds = %if.end45
  %31 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phy_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp = icmp eq i32 %32, 0
  br i1 %cmp, label %if.then51, label %land.lhs.true.if.end86_crit_edge

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then51:                                        ; preds = %land.lhs.true
  %conv52 = trunc i32 %20 to i16
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv52, i16 noundef zeroext 18, ptr noundef nonnull %tlphy_sts)
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv52, i16 noundef zeroext 17, ptr noundef nonnull %tlphy_ctl)
  %33 = ptrtoint ptr %tlphy_sts to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tlphy_sts, align 2
  %35 = and i16 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool58.not = icmp eq i16 %35, 0
  %36 = ptrtoint ptr %tlphy_ctl to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %tlphy_ctl, align 2
  %38 = and i16 %37, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool62.not = icmp eq i16 %38, 0
  br i1 %tobool58.not, label %land.lhs.true59, label %land.lhs.true71

land.lhs.true59:                                  ; preds = %if.then51
  br i1 %tobool62.not, label %if.then63, label %land.lhs.true59.if.end81_crit_edge

land.lhs.true59.if.end81_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then63:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i16 %37, 16384
  br label %if.end81.sink.split

land.lhs.true71:                                  ; preds = %if.then51
  br i1 %tobool62.not, label %land.lhs.true71.if.end81_crit_edge, label %if.then75

land.lhs.true71.if.end81_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then75:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #11
  %and77 = and i16 %37, -16385
  br label %if.end81.sink.split

if.end81.sink.split:                              ; preds = %if.then75, %if.then63
  %and77.sink = phi i16 [ %and77, %if.then75 ], [ %or, %if.then63 ]
  %39 = ptrtoint ptr %tlphy_ctl to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %and77.sink, ptr %tlphy_ctl, align 2
  tail call fastcc void @__tlan_mii_write_reg(ptr noundef %dev, i16 noundef zeroext %conv52, i16 noundef zeroext 17, i16 noundef zeroext %and77.sink)
  br label %if.end81

if.end81:                                         ; preds = %if.end81.sink.split, %land.lhs.true71.if.end81_crit_edge, %land.lhs.true59.if.end81_crit_edge
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool82.not = icmp eq i32 %40, 0
  br i1 %tobool82.not, label %if.end81.if.end86_crit_edge, label %if.then83

if.end81.if.end86_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__tlan_phy_print(ptr noundef %dev)
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end81.if.end86_crit_edge, %land.lhs.true.if.end86_crit_edge, %if.end45.if.end86_crit_edge, %do.end21.if.end86_crit_edge, %if.then
  %ack.0 = phi i32 [ 0, %if.then ], [ 1, %if.then83 ], [ 1, %if.end81.if.end86_crit_edge ], [ 1, %land.lhs.true.if.end86_crit_edge ], [ 1, %if.end45.if.end86_crit_edge ], [ 1, %do.end21.if.end86_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tlphy_sts) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tlphy_ctl) #9
  ret i32 %ack.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_handle_rx_eoc(ptr nocapture noundef %dev, i16 noundef zeroext %host_int) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tlan_rev = getelementptr i8, ptr %dev, i32 2536
  %0 = ptrtoint ptr %tlan_rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tlan_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cmp = icmp ult i8 %1, 48
  br i1 %cmp, label %do.body, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %rx_head = getelementptr i8, ptr %dev, i32 2348
  %3 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_head, align 4
  %rx_tail = getelementptr i8, ptr %dev, i32 2352
  %5 = ptrtoint ptr %rx_tail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_tail, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %4, i32 noundef %6) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %rx_list_dma = getelementptr i8, ptr %dev, i32 2336
  %7 = ptrtoint ptr %rx_list_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_list_dma, align 4
  %rx_head7 = getelementptr i8, ptr %dev, i32 2348
  %9 = ptrtoint ptr %rx_head7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_head7, align 4
  %mul = mul i32 %10, 88
  %add = add i32 %mul, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !518
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %add)
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr, align 32
  %add11 = add i32 %13, 4
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %14 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #9, !srcloc !475
  %rx_eoc_count = getelementptr i8, ptr %dev, i32 2356
  %15 = ptrtoint ptr %rx_eoc_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_eoc_count, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %rx_eoc_count, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end6, %entry.if.end15_crit_edge
  %ack.0 = phi i32 [ -2146959359, %do.end6 ], [ 1, %entry.if.end15_crit_edge ]
  ret i32 %ack.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tlan_phy_print(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %data0 = alloca i16, align 2
  %data1 = alloca i16, align 2
  %data2 = alloca i16, align 2
  %data3 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data0) #9
  %0 = ptrtoint ptr %data0 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data0, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data1) #9
  %1 = ptrtoint ptr %data1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %data1, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data2) #9
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data2, align 2, !annotation !490
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data3) #9
  %3 = ptrtoint ptr %data3 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %data3, align 2, !annotation !490
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr i8, ptr %dev, i32 2556
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !497

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2400, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %phy_num = getelementptr i8, ptr %dev, i32 2528
  %5 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phy_num, align 4
  %arrayidx = getelementptr %struct.tlan_priv, ptr %add.ptr.i, i32 0, i32 32, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %8 to i16
  %adapter = getelementptr i8, ptr %dev, i32 2500
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 4
  %flags = getelementptr inbounds %struct.board, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.else, label %if.end.if.end68.sink.split_crit_edge

if.end.if.end68.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.sink.split

if.else:                                          ; preds = %if.end
  %conv28 = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv28)
  %cmp29 = icmp ult i32 %conv28, 32
  br i1 %cmp29, label %if.then31, label %if.else.if.end68.sink.split_crit_edge

if.else.if.end68.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.sink.split

if.then31:                                        ; preds = %if.else
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.108, i32 noundef %conv28) #12
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then31
  %indvars.iv = phi i32 [ 0, %if.then31 ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %13 = trunc i32 %indvars.iv to i16
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext %13, ptr noundef nonnull %data0)
  %14 = trunc i32 %indvars.iv to i16
  %15 = or i16 %14, 1
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext %15, ptr noundef nonnull %data1)
  %16 = trunc i32 %indvars.iv to i16
  %17 = or i16 %16, 2
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext %17, ptr noundef nonnull %data2)
  %18 = trunc i32 %indvars.iv to i16
  %19 = or i16 %18, 3
  call fastcc void @__tlan_mii_read_reg(ptr noundef %dev, i16 noundef zeroext %conv, i16 noundef zeroext %19, ptr noundef nonnull %data3)
  %20 = ptrtoint ptr %data0 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %data0, align 2
  %conv58 = zext i16 %21 to i32
  %22 = ptrtoint ptr %data1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %data1, align 2
  %conv59 = zext i16 %23 to i32
  %24 = ptrtoint ptr %data2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %data2, align 2
  %conv60 = zext i16 %25 to i32
  %26 = ptrtoint ptr %data3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data3, align 2
  %conv61 = zext i16 %27 to i32
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %indvars.iv, i32 noundef %conv58, i32 noundef %conv59, i32 noundef %conv60, i32 noundef %conv61) #12
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 4
  %cmp39 = icmp ult i32 %indvars.iv, 28
  br i1 %cmp39, label %for.body.for.body_crit_edge, label %for.body.if.end68_crit_edge

for.body.if.end68_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end68.sink.split:                              ; preds = %if.else.if.end68.sink.split_crit_edge, %if.end.if.end68.sink.split_crit_edge
  %.str.114.sink = phi ptr [ @.str.107, %if.end.if.end68.sink.split_crit_edge ], [ @.str.114, %if.else.if.end68.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull %.str.114.sink) #12
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %for.body.if.end68_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data1) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tlan_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #9
  %pci_dev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  %bus_info6 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.pci_name.exit_crit_edge

if.then.pci_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.pci_name.exit_crit_edge ]
  %call5 = tail call i32 @strlcpy(ptr noundef %bus_info6, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 @strlcpy(ptr noundef %bus_info6, ptr noundef nonnull @.str.164, i32 noundef 32) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %pci_name.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tlan_get_eeprom_len(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 256
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_get_eeprom(ptr noundef %dev, ptr nocapture noundef readnone %eeprom, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %conv = trunc i32 %i.04 to i8
  %arrayidx = getelementptr i8, ptr %data, i32 %i.04
  %call = tail call fastcc i32 @tlan_ee_read_byte(ptr noundef %dev, i8 noundef zeroext %conv, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %media_timer.i = getelementptr i8, ptr %1, i32 2452
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %media_timer.i) #9
  tail call fastcc void @tlan_read_and_clear_stats(ptr noundef %1, i32 noundef 1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !505
  tail call void @arm_heavy_mb() #9
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr.i, align 32
  %and.i = and i32 %5, 1048575
  %add2.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 8388608) #9, !srcloc !475
  tail call fastcc void @tlan_reset_adapter(ptr noundef %1) #9
  %function.i = getelementptr i8, ptr %1, i32 2416
  %7 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %function.i, align 4
  %cmp.not.i = icmp eq ptr %8, null
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %timer.i = getelementptr i8, ptr %1, i32 2404
  %call5.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #9
  %9 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %function.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @netif_device_detach(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlan_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @netif_device_attach(ptr noundef %1) #9
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tlan_reset_lists(ptr noundef %1) #9
  tail call fastcc void @tlan_read_and_clear_stats(ptr noundef %1, i32 noundef 0) #9
  tail call fastcc void @tlan_reset_adapter(ptr noundef %1) #9
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !153, !154, !155, !157, !158, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !189, !190, !191, !192, !194, !196, !198, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !218, !220, !221, !223, !224, !226, !227, !228, !229, !231, !233, !234, !235, !236, !238, !240, !241, !242, !244, !245, !246, !247, !249, !251, !252, !253, !255, !257, !258, !259, !260, !262, !264, !265, !266, !267, !269, !270, !271, !273, !275, !277, !278, !279, !280, !282, !283, !284, !286, !288, !289, !290, !291, !293, !294, !295, !296, !298, !299, !300, !302, !303, !304, !305, !307, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !327, !329, !330, !331, !333, !335, !337, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !373, !375, !377, !379, !381, !383, !384, !385, !386, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !402, !403, !404, !406, !408, !409, !410, !411, !413, !414, !415, !417, !418, !420, !421, !422, !424, !425, !426, !428, !429, !430, !432, !433}
!llvm.module.flags = !{!434, !435, !436, !437, !438, !439, !440, !441}
!llvm.ident = !{!442}

!0 = !{ptr @__param_aui, !1, !"__param_aui", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_auitype341, !1, !"__UNIQUE_ID_auitype341", i1 false, i1 false}
!3 = !{ptr @__param_duplex, !4, !"__param_duplex", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 61, i32 1}
!5 = !{ptr @__UNIQUE_ID_duplextype342, !4, !"__UNIQUE_ID_duplextype342", i1 false, i1 false}
!6 = !{ptr @__param_speed, !7, !"__param_speed", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 62, i32 1}
!8 = !{ptr @__UNIQUE_ID_speedtype343, !7, !"__UNIQUE_ID_speedtype343", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_aui344, !10, !"__UNIQUE_ID_aui344", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 63, i32 1}
!11 = !{ptr @__UNIQUE_ID_duplex345, !12, !"__UNIQUE_ID_duplex345", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 64, i32 1}
!13 = !{ptr @__UNIQUE_ID_speed346, !14, !"__UNIQUE_ID_speed346", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 66, i32 1}
!15 = !{ptr @__UNIQUE_ID_author347, !16, !"__UNIQUE_ID_author347", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 68, i32 1}
!17 = !{ptr @__UNIQUE_ID_description348, !18, !"__UNIQUE_ID_description348", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 69, i32 1}
!19 = !{ptr @__UNIQUE_ID_file349, !20, !"__UNIQUE_ID_file349", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 70, i32 1}
!21 = !{ptr @__UNIQUE_ID_license350, !20, !"__UNIQUE_ID_license350", i1 false, i1 false}
!22 = !{ptr @__param_debug, !23, !"__param_debug", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 76, i32 1}
!24 = !{ptr @__UNIQUE_ID_debugtype351, !23, !"__UNIQUE_ID_debugtype351", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_debug352, !26, !"__UNIQUE_ID_debug352", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 77, i32 1}
!27 = !{ptr @__initcall__kmod_tlan__353_634_tlan_probe6, !28, !"__initcall__kmod_tlan__353_634_tlan_probe6", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 634, i32 1}
!29 = !{ptr @__exitcall_tlan_exit, !30, !"__exitcall_tlan_exit", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 635, i32 1}
!31 = !{ptr @debug, !32, !"debug", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 75, i32 14}
!33 = !{ptr @tlan_have_eisa, !34, !"tlan_have_eisa", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 82, i32 13}
!35 = !{ptr @__param_str_aui, !1, !"__param_str_aui", i1 false, i1 false}
!36 = !{ptr @__param_arr_aui, !1, !"__param_arr_aui", i1 false, i1 false}
!37 = !{ptr @aui, !38, !"aui", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 56, i32 13}
!39 = !{ptr @__param_str_duplex, !4, !"__param_str_duplex", i1 false, i1 false}
!40 = !{ptr @__param_arr_duplex, !4, !"__param_arr_duplex", i1 false, i1 false}
!41 = !{ptr @duplex, !42, !"duplex", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 57, i32 13}
!43 = !{ptr @__param_str_speed, !7, !"__param_str_speed", i1 false, i1 false}
!44 = !{ptr @__param_arr_speed, !7, !"__param_arr_speed", i1 false, i1 false}
!45 = !{ptr @speed, !46, !"speed", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 58, i32 13}
!47 = !{ptr @__param_str_debug, !23, !"__param_str_debug", i1 false, i1 false}
!48 = !{ptr @.str, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 372, i32 11}
!50 = !{ptr @tlan_driver, !51, !"tlan_driver", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 371, i32 26}
!52 = !{ptr @tlan_pci_tbl, !53, !"tlan_pci_tbl", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 121, i32 35}
!54 = !{ptr @.str.1, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 459, i32 4}
!56 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tlan_probe1._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @tlan_probe1._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.5, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 485, i32 4}
!62 = !{ptr @tlan_probe1._entry.4, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tlan_probe1._entry_ptr.6, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.8, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 492, i32 5}
!66 = !{ptr @tlan_probe1._entry.7, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tlan_probe1._entry_ptr.9, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.11, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 499, i32 4}
!70 = !{ptr @tlan_probe1._entry.10, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tlan_probe1._entry_ptr.12, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @tlan_probe1.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 548, i32 2}
!74 = !{ptr @.str.13, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tlan_probe1.__key.14, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 550, i32 2}
!77 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.17, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 554, i32 3}
!80 = !{ptr @tlan_probe1._entry.16, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @tlan_probe1._entry_ptr.18, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 560, i32 3}
!84 = !{ptr @tlan_probe1._entry.19, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @tlan_probe1._entry_ptr.21, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 577, i32 19}
!88 = !{ptr @tlan_signature, !89, !"tlan_signature", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 79, i32 19}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 94, i32 4}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 95, i32 4}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 97, i32 4}
!96 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 98, i32 4}
!98 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 101, i32 4}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 103, i32 4}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 105, i32 4}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 107, i32 4}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 108, i32 4}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 110, i32 4}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 112, i32 4}
!112 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 113, i32 4}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 114, i32 4}
!116 = !{ptr @board_info, !117, !"board_info", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 93, i32 3}
!118 = !{ptr @boards_found, !119, !"boards_found", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 59, i32 13}
!120 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 981, i32 2}
!122 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @tlan_tx_timeout._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @tlan_tx_timeout._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!127 = !{ptr @.str.38, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.40, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2478, i32 4}
!131 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @tlan_phy_detect._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @tlan_phy_detect._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.42, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2493, i32 20}
!136 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2259, i32 20}
!138 = !{ptr @.str.44, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2274, i32 6}
!140 = !{ptr @.str.45, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2276, i32 8}
!142 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2276, i32 19}
!144 = !{ptr @.str.47, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2280, i32 8}
!146 = !{ptr @.str.48, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2280, i32 17}
!148 = !{ptr @.str.49, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2283, i32 23}
!150 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2286, i32 8}
!152 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @tlan_finish_reset._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @tlan_finish_reset._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.53, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2288, i32 6}
!157 = !{ptr @tlan_finish_reset._entry.52, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @tlan_finish_reset._entry_ptr.54, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2291, i32 22}
!161 = !{ptr @.str.56, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2319, i32 20}
!163 = !{ptr @.str.57, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 85, i32 2}
!165 = !{ptr @.str.58, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 85, i32 16}
!167 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 85, i32 30}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 86, i32 2}
!171 = !{ptr @.str.61, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 86, i32 18}
!173 = distinct !{null, !174, !"media", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 84, i32 27}
!175 = !{ptr @.str.62, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2533, i32 2}
!177 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @tlan_phy_power_up._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @tlan_phy_power_up._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.64, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2558, i32 2}
!182 = !{ptr @.str.65, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @tlan_phy_reset._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @tlan_phy_reset._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.66, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2565, i32 20}
!187 = !{ptr @.str.67, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2592, i32 2}
!189 = !{ptr @.str.68, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @tlan_phy_start_link._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @tlan_phy_start_link._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.69, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2627, i32 21}
!194 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2692, i32 19}
!196 = !{ptr @.str.71, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2715, i32 21}
!198 = !{ptr @.str.72, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2719, i32 21}
!200 = !{ptr @.str.73, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2505, i32 2}
!202 = !{ptr @.str.74, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @tlan_phy_power_down._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @tlan_phy_power_down._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.75, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 831, i32 3}
!207 = !{ptr @.str.76, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @tlan_init._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @tlan_init._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.78, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 848, i32 3}
!212 = !{ptr @tlan_init._entry.77, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @tlan_init._entry_ptr.79, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @tlan_netdev_ops, !215, !"tlan_netdev_ops", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 745, i32 36}
!216 = !{ptr @.str.80, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 902, i32 19}
!218 = !{ptr @tlan_open.__key, !219, !"__key", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 907, i32 2}
!220 = !{ptr @.str.81, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @tlan_open.__key.82, !222, !"__key", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 908, i32 2}
!223 = !{ptr @.str.83, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.84, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 912, i32 2}
!226 = !{ptr @.str.85, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @tlan_open._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @tlan_open._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @tlan_int_vector, !230, !"tlan_int_vector", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 237, i32 3}
!231 = !{ptr @.str.86, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1355, i32 2}
!233 = !{ptr @.str.87, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @tlan_handle_tx_eof._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @tlan_handle_tx_eof._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.88, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1386, i32 8}
!238 = !{ptr @.str.90, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1389, i32 3}
!240 = !{ptr @tlan_handle_tx_eof._entry.89, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @tlan_handle_tx_eof._entry_ptr.91, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.92, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1489, i32 2}
!244 = !{ptr @.str.93, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @tlan_handle_rx_eof._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @tlan_handle_rx_eof._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.94, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1540, i32 8}
!249 = !{ptr @.str.96, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1544, i32 3}
!251 = !{ptr @tlan_handle_rx_eof._entry.95, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @tlan_handle_rx_eof._entry_ptr.97, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.98, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1595, i32 19}
!255 = !{ptr @.str.99, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1631, i32 3}
!257 = !{ptr @.str.100, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @tlan_handle_tx_eoc._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @tlan_handle_tx_eoc._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.101, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1688, i32 20}
!262 = !{ptr @.str.102, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1697, i32 3}
!264 = !{ptr @.str.103, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @tlan_handle_status_check._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @tlan_handle_status_check._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.105, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1703, i32 4}
!269 = !{ptr @tlan_handle_status_check._entry.104, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @tlan_handle_status_check._entry_ptr.106, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.107, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2405, i32 20}
!273 = !{ptr @.str.108, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2407, i32 20}
!275 = !{ptr @.str.109, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2408, i32 3}
!277 = !{ptr @.str.110, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @__tlan_phy_print._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @__tlan_phy_print._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.112, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2414, i32 4}
!282 = !{ptr @__tlan_phy_print._entry.111, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @__tlan_phy_print._entry_ptr.113, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.114, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2418, i32 20}
!286 = !{ptr @.str.115, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1760, i32 3}
!288 = !{ptr @.str.116, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @tlan_handle_rx_eoc._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @tlan_handle_rx_eoc._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.117, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2762, i32 4}
!293 = !{ptr @.str.118, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @tlan_phy_monitor._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @tlan_phy_monitor._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.120, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2787, i32 3}
!298 = !{ptr @tlan_phy_monitor._entry.119, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @tlan_phy_monitor._entry_ptr.121, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.122, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1184, i32 2}
!302 = !{ptr @.str.123, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @tlan_close._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @tlan_close._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.124, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1044, i32 3}
!307 = !{ptr @.str.125, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @tlan_start_tx._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @tlan_start_tx._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.127, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1059, i32 3}
!312 = !{ptr @tlan_start_tx._entry.126, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @tlan_start_tx._entry_ptr.128, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.130, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1083, i32 3}
!316 = !{ptr @tlan_start_tx._entry.129, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @tlan_start_tx._entry_ptr.131, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.133, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1089, i32 3}
!320 = !{ptr @tlan_start_tx._entry.132, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @tlan_start_tx._entry_ptr.134, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.135, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1216, i32 2}
!324 = !{ptr @.str.136, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @tlan_get_stats._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @tlan_get_stats._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.138, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1218, i32 2}
!329 = !{ptr @tlan_get_stats._entry.137, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @tlan_get_stats._entry_ptr.139, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.140, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1226, i32 39}
!333 = !{ptr @.str.141, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 1228, i32 39}
!335 = !{ptr @.str.142, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2000, i32 2}
!337 = !{ptr @.str.143, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @tlan_print_dio._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @tlan_print_dio._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.145, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2002, i32 2}
!342 = !{ptr @tlan_print_dio._entry.144, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @tlan_print_dio._entry_ptr.146, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.148, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2006, i32 3}
!346 = !{ptr @tlan_print_dio._entry.147, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @tlan_print_dio._entry_ptr.149, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.150, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2035, i32 2}
!350 = !{ptr @.str.151, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @tlan_print_list._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @tlan_print_list._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.153, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2036, i32 2}
!355 = !{ptr @tlan_print_list._entry.152, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @tlan_print_list._entry_ptr.154, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.156, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2037, i32 2}
!359 = !{ptr @tlan_print_list._entry.155, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @tlan_print_list._entry_ptr.157, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.159, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2038, i32 2}
!363 = !{ptr @tlan_print_list._entry.158, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @tlan_print_list._entry_ptr.160, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.162, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 2041, i32 3}
!367 = !{ptr @tlan_print_list._entry.161, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @tlan_print_list._entry_ptr.163, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @tlan_ethtool_ops, !370, !"tlan_ethtool_ops", i1 false, i1 false}
!370 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 790, i32 33}
!371 = !{ptr @.str.164, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 770, i32 27}
!373 = !{ptr @tlan_devices_installed, !374, !"tlan_devices_installed", i1 false, i1 false}
!374 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 53, i32 13}
!375 = !{ptr @tlan_have_pci, !376, !"tlan_have_pci", i1 false, i1 false}
!376 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 81, i32 13}
!377 = !{ptr @tlan_eisa_devices, !378, !"tlan_eisa_devices", i1 false, i1 false}
!378 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 51, i32 27}
!379 = !{ptr @tlan_pm_ops, !380, !"tlan_pm_ops", i1 false, i1 false}
!380 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 369, i32 8}
!381 = !{ptr @.str.165, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 383, i32 2}
!383 = !{ptr @.str.166, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @tlan_probe._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @tlan_probe._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.168, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 385, i32 2}
!388 = !{ptr @tlan_probe._entry.167, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @tlan_probe._entry_ptr.169, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.171, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 392, i32 3}
!392 = !{ptr @tlan_probe._entry.170, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @tlan_probe._entry_ptr.172, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.174, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 396, i32 2}
!396 = !{ptr @tlan_probe._entry.173, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @tlan_probe._entry_ptr.175, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.177, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 399, i32 2}
!400 = !{ptr @tlan_probe._entry.176, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @tlan_probe._entry_ptr.178, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.179, !399, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @.str.180, !399, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @tlan_banner, !405, !"tlan_banner", i1 false, i1 false}
!405 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 80, i32 20}
!406 = !{ptr @.str.181, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 659, i32 3}
!408 = !{ptr @.str.182, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @tlan_eisa_probe._entry, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @tlan_eisa_probe._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.184, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 666, i32 3}
!413 = !{ptr @tlan_eisa_probe._entry.183, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @tlan_eisa_probe._entry_ptr.185, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @tlan_eisa_probe._entry.186, !416, !"_entry", i1 false, i1 false}
!416 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 668, i32 3}
!417 = !{ptr @tlan_eisa_probe._entry_ptr.187, !416, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.189, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 672, i32 3}
!420 = !{ptr @tlan_eisa_probe._entry.188, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @tlan_eisa_probe._entry_ptr.190, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.192, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 696, i32 4}
!424 = !{ptr @tlan_eisa_probe._entry.191, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @tlan_eisa_probe._entry_ptr.193, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.195, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 724, i32 4}
!428 = !{ptr @tlan_eisa_probe._entry.194, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @tlan_eisa_probe._entry_ptr.196, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.198, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/ethernet/ti/tlan.c", i32 729, i32 4}
!432 = !{ptr @tlan_eisa_probe._entry.197, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @tlan_eisa_probe._entry_ptr.199, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{i32 1, !"wchar_size", i32 2}
!435 = !{i32 1, !"min_enum_size", i32 4}
!436 = !{i32 8, !"branch-target-enforcement", i32 0}
!437 = !{i32 8, !"sign-return-address", i32 0}
!438 = !{i32 8, !"sign-return-address-all", i32 0}
!439 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!440 = !{i32 7, !"uwtable", i32 1}
!441 = !{i32 7, !"frame-pointer", i32 2}
!442 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!443 = !{i64 4258188}
!444 = !{i64 2156648707}
!445 = !{!"branch_weights", i32 2000, i32 1}
!446 = !{i64 2156743909}
!447 = !{i64 4257988}
!448 = !{i64 4258806}
!449 = !{i64 2156744444}
!450 = !{i64 2156744760}
!451 = !{i64 2156745076}
!452 = !{i64 2156745392}
!453 = !{i64 2156745661}
!454 = !{i64 2156746196}
!455 = !{i64 2156746512}
!456 = !{i64 2156746828}
!457 = !{i64 2156747144}
!458 = !{i64 2156747413}
!459 = !{i64 2156747948}
!460 = !{i64 2156748264}
!461 = !{i64 2156748580}
!462 = !{i64 2156748896}
!463 = !{i64 2156749165}
!464 = !{i64 2156749700}
!465 = !{i64 2156750016}
!466 = !{i64 2156750332}
!467 = !{i64 2156750648}
!468 = !{i64 2156750917}
!469 = !{i64 2156751452}
!470 = !{i64 2156751768}
!471 = !{i64 2156752084}
!472 = !{i64 4259026}
!473 = !{i64 2156752783}
!474 = !{i64 2156753058}
!475 = !{i64 4258608}
!476 = !{i64 2156754538}
!477 = !{i64 2156754813}
!478 = !{i64 2156601237}
!479 = !{i64 2156601760}
!480 = !{i64 2156600031}
!481 = !{i64 2156600554}
!482 = !{i64 2156755364}
!483 = !{i64 2156755904}
!484 = !{i64 2156756424}
!485 = !{i64 2151792482}
!486 = !{i64 2151794467}
!487 = !{i64 4258411}
!488 = !{i64 2156598958}
!489 = !{i64 2156599445}
!490 = !{!"auto-init"}
!491 = !{i64 2156595109}
!492 = !{i64 2156595701}
!493 = !{i64 2156760522}
!494 = !{i64 2156760920}
!495 = !{i64 2156761331}
!496 = !{i64 2156761889}
!497 = !{!"branch_weights", i32 1, i32 2000}
!498 = !{i64 2156781885}
!499 = !{i64 2156784619}
!500 = !{i64 2156783710}
!501 = !{i64 2156786080}
!502 = !{i64 2156789282}
!503 = !{i64 2156787235}
!504 = !{i64 2156788044}
!505 = !{i64 2156627508}
!506 = !{i64 2156688103}
!507 = !{i64 2156688631}
!508 = !{i64 2156597602}
!509 = !{i64 2156598521}
!510 = !{i64 2156691412}
!511 = !{i64 2156691687}
!512 = !{i64 2156692201}
!513 = !{i64 2156707409}
!514 = !{i64 2156712014}
!515 = !{i64 2156714536}
!516 = !{i64 2156715500}
!517 = !{i64 2156715783}
!518 = !{i64 2156721546}
