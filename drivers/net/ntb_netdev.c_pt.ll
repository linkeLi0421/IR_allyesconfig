; ModuleID = '/llk/IR_all_yes/drivers/net/ntb_netdev.c_pt.bc'
source_filename = "../drivers/net/ntb_netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ntb_transport_client = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntb_queue_handlers = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ntb_dev = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_description341 = internal constant [34 x i8] c"ntb_netdev.description=ntb_netdev\00", section ".modinfo", align 1
@__UNIQUE_ID_version342 = internal constant [23 x i8] c"ntb_netdev.version=0.7\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ntb_netdev\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.7\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file343 = internal constant [39 x i8] c"ntb_netdev.file=drivers/net/ntb_netdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [32 x i8] c"ntb_netdev.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author345 = internal constant [36 x i8] c"ntb_netdev.author=Intel Corporation\00", section ".modinfo", align 1
@__initcall__kmod_ntb_netdev__348_489_ntb_netdev_init_module6 = internal global ptr @ntb_netdev_init_module, section ".initcall6.init", align 4
@ntb_netdev_client = internal global { %struct.ntb_transport_client, [44 x i8] } { %struct.ntb_transport_client { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ntb_netdev_probe, ptr @ntb_netdev_remove }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ntb_netdev_exit_module = internal global ptr @ntb_netdev_exit_module, section ".exitcall.exit", align 4
@ntb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ntb_netdev_open, ptr @ntb_netdev_close, ptr @ntb_netdev_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntb_netdev_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ntb_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ntb_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntb_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ntb_netdev_handlers = internal constant { %struct.ntb_queue_handlers, [20 x i8] } { %struct.ntb_queue_handlers { ptr @ntb_netdev_rx_handler, ptr @ntb_netdev_tx_handler, ptr @ntb_netdev_event_handler }, [20 x i8] zeroinitializer }, align 32
@ntb_netdev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 453, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s created\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntb_netdev_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/ntb_netdev.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ntb_netdev_probe._entry_ptr = internal global ptr @ntb_netdev_probe._entry, section ".printk_index", align 4
@ntb_netdev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&dev->tx_timer)\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error changing MTU, device inoperable\0A\00", [57 x i8] zeroinitializer }, align 32
@ntb_netdev_rx_handler.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.5, ptr @.str.11, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ntb_netdev_rx_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: %d byte payload received\0A\00", [34 x i8] zeroinitializer }, align 32
@ntb_netdev_event_handler.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.5, ptr @.str.13, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ntb_netdev_event_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Event %x, Link %x\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 60, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"ntb_netdev_client\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 473, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"ntb_netdev_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 354, i32 36 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"ntb_ethtool_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 389, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"ntb_netdev_handlers\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 395, i32 40 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 453, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 269, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 350, i32 19 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 110, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [28 x i8] c"../drivers/net/ntb_netdev.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 88, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_version342, ptr @__exitcall_ntb_netdev_exit_module, ptr @__initcall__kmod_ntb_netdev__348_489_ntb_netdev_init_module6, ptr @__modver_attr, ptr @ntb_netdev_exit_module, ptr @ntb_netdev_probe._entry, ptr @ntb_netdev_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ntb_netdev_client, ptr @ntb_netdev_ops, ptr @ntb_ethtool_ops, ptr @ntb_netdev_handlers, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ntb_netdev_open.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_netdev_client to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_netdev_handlers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_netdev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_netdev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_netdev_init_module() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ntb_transport_register_client_dev(ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @ntb_transport_register_client(ptr noundef nonnull @ntb_netdev_client) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ntb_netdev_exit_module() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ntb_transport_unregister_client(ptr noundef nonnull @ntb_netdev_client) #8
  tail call void @ntb_transport_unregister_client_dev(ptr noundef nonnull @.str.1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_transport_unregister_client(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_transport_unregister_client_dev(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_transport_register_client_dev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_transport_register_client(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_netdev_probe(ptr noundef %client_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %client_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %pdev1 = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 60, i32 noundef 1, i32 noundef 1) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %parent6 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client_dev, ptr %parent6, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %ndev8 = getelementptr i8, ptr %call, i32 2308
  %5 = ptrtoint ptr %ndev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %ndev8, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %add.ptr.i, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %7 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 32, ptr %features, align 16
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %8 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %priv_flags, align 16
  %or = or i64 %9, 32768
  store i64 %or, ptr %priv_flags, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %10 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 32, ptr %hw_features, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %11 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 100, ptr %watchdog_timeo, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 54
  tail call void @get_random_bytes(ptr noundef %perm_addr, i32 noundef 6) #8
  %12 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %perm_addr, align 1
  %14 = and i8 %13, -4
  %15 = or i8 %14, 2
  store i8 %15, ptr %perm_addr, align 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 56
  %16 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %17 to i32
  tail call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %perm_addr, i32 noundef %conv.i) #8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %18 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ntb_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %19 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ntb_ethtool_ops, ptr %ethtool_ops, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %20 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %21 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65535, ptr %max_mtu, align 4
  %call14 = tail call ptr @ntb_transport_create_queue(ptr noundef nonnull %call, ptr noundef %client_dev, ptr noundef nonnull @ntb_netdev_handlers) #8
  %qp = getelementptr i8, ptr %call, i32 2312
  %22 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call14, ptr %qp, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.end4.err_crit_edge, label %if.end18

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end18:                                         ; preds = %if.end4
  %call20 = tail call i32 @ntb_transport_max_size(ptr noundef nonnull %call14) #8
  %sub = add i32 %call20, -14
  %mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 20
  %23 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %mtu, align 4
  %call21 = tail call i32 @register_netdev(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %err1

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i = getelementptr inbounds %struct.device, ptr %client_dev, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %driver_data.i, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev25, ptr noundef nonnull @.str.3, ptr noundef nonnull %call) #11
  br label %cleanup

err1:                                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qp, align 4
  tail call void @ntb_transport_free_queue(ptr noundef %26) #8
  br label %err

err:                                              ; preds = %err1, %if.end4.err_crit_edge
  %rc.0 = phi i32 [ %call21, %err1 ], [ -5, %if.end4.err_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err ], [ 0, %if.end24 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_netdev_remove(ptr nocapture noundef readonly %client_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %client_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #8
  %qp = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  tail call void @ntb_transport_free_queue(ptr noundef %3) #8
  tail call void @free_netdev(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntb_transport_create_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_transport_max_size(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_transport_free_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_netdev_open(ptr noundef %ndev) #3 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !61
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %qp = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.body, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %1 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mtu, align 4
  %add = add i32 %2, 14
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef %add, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.err_crit_edge, label %if.end

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qp, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu, align 4
  %add3 = add i32 %8, 14
  %call4 = tail call i32 @ntb_transport_rx_enqueue(ptr noundef %4, ptr noundef nonnull %call.i, ptr noundef %6, i32 noundef %add3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i) #8
  br label %err

do.body:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %tx_timer = getelementptr i8, ptr %ndev, i32 2316
  tail call void @init_timer_key(ptr noundef %tx_timer, ptr noundef nonnull @ntb_netdev_tx_timer, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @ntb_netdev_open.__key) #8
  tail call void @netif_carrier_off(ptr noundef %ndev) #8
  %9 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qp, align 4
  tail call void @ntb_transport_link_up(ptr noundef %10) #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %12, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %cleanup

err:                                              ; preds = %if.then6, %for.body.err_crit_edge
  %rc.0 = phi i32 [ %call4, %if.then6 ], [ -12, %for.body.err_crit_edge ]
  %13 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qp, align 4
  %call1032 = call ptr @ntb_transport_rx_remove(ptr noundef %14, ptr noundef nonnull %len) #8
  %tobool11.not33 = icmp eq ptr %call1032, null
  br i1 %tobool11.not33, label %err.cleanup_crit_edge, label %err.while.body_crit_edge

err.while.body_crit_edge:                         ; preds = %err
  br label %while.body

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err.while.body_crit_edge
  %call1034 = phi ptr [ %call10, %while.body.while.body_crit_edge ], [ %call1032, %err.while.body_crit_edge ]
  call void @consume_skb(ptr noundef nonnull %call1034) #8
  %15 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qp, align 4
  %call10 = call ptr @ntb_transport_rx_remove(ptr noundef %16, ptr noundef nonnull %len) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ %rc.0, %err.cleanup_crit_edge ], [ %rc.0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_netdev_close(ptr noundef %ndev) #3 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !61
  %qp = getelementptr i8, ptr %ndev, i32 2312
  %1 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qp, align 4
  tail call void @ntb_transport_link_down(ptr noundef %2) #8
  %3 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qp, align 4
  %call26 = call ptr @ntb_transport_rx_remove(ptr noundef %4, ptr noundef nonnull %len) #8
  %tobool.not7 = icmp eq ptr %call26, null
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call28 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call26, %entry.while.body_crit_edge ]
  call void @consume_skb(ptr noundef nonnull %call28) #8
  %5 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qp, align 4
  %call2 = call ptr @ntb_transport_rx_remove(ptr noundef %6, ptr noundef nonnull %len) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %tx_timer = getelementptr i8, ptr %ndev, i32 2316
  %call3 = call i32 @del_timer_sync(ptr noundef %tx_timer) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_netdev_start_xmit(ptr noundef %skb, ptr noundef %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  tail call fastcc void @ntb_netdev_maybe_stop_tx(ptr noundef %ndev, ptr noundef %1)
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %call3 = tail call i32 @ntb_transport_tx_enqueue(ptr noundef %3, ptr noundef %skb, ptr noundef %5, i32 noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %err

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp, align 4
  tail call fastcc void @ntb_netdev_maybe_stop_tx(ptr noundef %ndev, ptr noundef %9)
  br label %cleanup

err:                                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %10 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %12 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_errors, align 4
  %inc7 = add i32 %13, 1
  store i32 %inc7, ptr %tx_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end
  %retval.0 = phi i32 [ 16, %err ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_netdev_change_mtu(ptr noundef %ndev, i32 noundef %new_mtu) #3 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !61
  %qp = getelementptr i8, ptr %ndev, i32 2312
  %1 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qp, align 4
  %call1 = tail call i32 @ntb_transport_max_size(ptr noundef %2) #8
  %sub = add i32 %call1, -14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %new_mtu)
  %cmp = icmp ult i32 %sub, %new_mtu
  br i1 %cmp, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup33

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup33

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp, align 4
  tail call void @ntb_transport_link_down(ptr noundef %7) #8
  %mtu6 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %8 = ptrtoint ptr %mtu6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %new_mtu)
  %cmp7 = icmp ult i32 %9, %new_mtu
  br i1 %cmp7, label %for.cond.preheader, label %if.end4.if.end26_crit_edge

if.end4.if.end26_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.cond.preheader:                               ; preds = %if.end4
  %10 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qp, align 4
  %call1068 = call ptr @ntb_transport_rx_remove(ptr noundef %11, ptr noundef nonnull %len) #8
  %tobool.not69 = icmp eq ptr %call1068, null
  br i1 %tobool.not69, label %for.cond.preheader.if.end26_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end26_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.cond11.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool12.not72 = icmp eq i32 %inc, 0
  br i1 %tobool12.not72, label %for.cond11.preheader.if.end26_crit_edge, label %for.body13.lr.ph

for.cond11.preheader.if.end26_crit_edge:          ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.body13.lr.ph:                                 ; preds = %for.cond11.preheader
  %add = add i32 %new_mtu, 14
  br label %for.body13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call1071 = phi ptr [ %call10, %for.body.for.body_crit_edge ], [ %call1068, %for.cond.preheader.for.body_crit_edge ]
  %i.070 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @consume_skb(ptr noundef nonnull %call1071) #8
  %inc = add i32 %i.070, 1
  %12 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp, align 4
  %call10 = call ptr @ntb_transport_rx_remove(ptr noundef %13, ptr noundef nonnull %len) #8
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %for.cond11.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond11:                                       ; preds = %if.end17
  %dec = add i32 %i.173, -1
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %for.cond11.if.end26_crit_edge, label %for.cond11.for.body13_crit_edge

for.cond11.for.body13_crit_edge:                  ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

for.cond11.if.end26_crit_edge:                    ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.body13:                                       ; preds = %for.cond11.for.body13_crit_edge, %for.body13.lr.ph
  %i.173 = phi i32 [ %inc, %for.body13.lr.ph ], [ %dec, %for.cond11.for.body13_crit_edge ]
  %call.i = call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef %add, i32 noundef 2592) #8
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %for.body13.err_crit_edge, label %if.end17

for.body13.err_crit_edge:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end17:                                         ; preds = %for.body13
  %14 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qp, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call20 = call i32 @ntb_transport_rx_enqueue(ptr noundef %15, ptr noundef nonnull %call.i, ptr noundef %17, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.cond11, label %if.then22

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void @consume_skb(ptr noundef nonnull %call.i) #8
  br label %err

if.end26:                                         ; preds = %for.cond11.if.end26_crit_edge, %for.cond11.preheader.if.end26_crit_edge, %for.cond.preheader.if.end26_crit_edge, %if.end4.if.end26_crit_edge
  %18 = ptrtoint ptr %mtu6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %new_mtu, ptr %mtu6, align 4
  %19 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp, align 4
  call void @ntb_transport_link_up(ptr noundef %20) #8
  br label %cleanup33

err:                                              ; preds = %if.then22, %for.body13.err_crit_edge
  %rc.1.ph = phi i32 [ %call20, %if.then22 ], [ -12, %for.body13.err_crit_edge ]
  %21 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qp, align 4
  call void @ntb_transport_link_down(ptr noundef %22) #8
  %23 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qp, align 4
  %call3174 = call ptr @ntb_transport_rx_remove(ptr noundef %24, ptr noundef nonnull %len) #8
  %tobool32.not75 = icmp eq ptr %call3174, null
  br i1 %tobool32.not75, label %err.while.end_crit_edge, label %err.while.body_crit_edge

err.while.body_crit_edge:                         ; preds = %err
  br label %while.body

err.while.end_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err.while.body_crit_edge
  %call3176 = phi ptr [ %call31, %while.body.while.body_crit_edge ], [ %call3174, %err.while.body_crit_edge ]
  call void @consume_skb(ptr noundef nonnull %call3176) #8
  %25 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qp, align 4
  %call31 = call ptr @ntb_transport_rx_remove(ptr noundef %26, ptr noundef nonnull %len) #8
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %err.while.end_crit_edge
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.9) #11
  br label %cleanup33

cleanup33:                                        ; preds = %while.end, %if.end26, %if.then3, %entry.cleanup33_crit_edge
  %retval.0 = phi i32 [ %rc.1.ph, %while.end ], [ 0, %if.end26 ], [ 0, %if.then3 ], [ -22, %entry.cleanup33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_transport_rx_enqueue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_netdev_tx_timer(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %qp = getelementptr i8, ptr %t, i32 -4
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  %call = tail call i32 @ntb_transport_tx_free_entry(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp ult i32 %call, 5
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  %add = add i32 %spec.select.i, %4
  %call3 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %if.end9

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %do.end.if.end9_crit_edge, label %if.then8

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %6) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end.if.end9_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_transport_link_up(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntb_transport_rx_remove(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_transport_tx_free_entry(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_transport_link_down(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntb_netdev_maybe_stop_tx(ptr noundef %ndev, ptr noundef %qp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @ntb_transport_tx_free_entry(ptr noundef %qp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %cmp = icmp ugt i32 %call1, 4
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  %call4.i = tail call i32 @ntb_transport_tx_free_entry(ptr noundef %qp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call4.i)
  %cmp.i = icmp ult i32 %call4.i, 5
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !prof !64

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tx_timer.i = getelementptr i8, ptr %ndev, i32 2316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 1
  %add.i = add i32 %spec.select.i.i, %6
  %call7.i = tail call i32 @mod_timer(ptr noundef %tx_timer.i, i32 noundef %add.i) #8
  br label %return

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i2.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i2.i) #8
  br label %return

return:                                           ; preds = %if.end.i, %if.then.i, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_transport_tx_enqueue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #8
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntb_get_link_ksettings(ptr nocapture noundef readnone %dev, ptr nocapture noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65536, ptr %link_modes, align 4
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65536, ptr %advertising, align 4
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %port, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %phy_address, align 2
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %10 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %autoneg, align 1
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_netdev_rx_handler(ptr noundef %qp, ptr noundef %qp_data, ptr noundef %data, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ntb_netdev_rx_handler.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ntb_netdev_rx_handler, %if.then5)) #8
          to label %do.end8 [label %if.then5], !srcloc !65

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ntb_netdev_rx_handler.__UNIQUE_ID_ddebug347, ptr noundef %qp_data, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %len) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %rx_errors, align 8
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 10
  %2 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_length_errors, align 8
  %inc11 = add i32 %3, 1
  store i32 %inc11, ptr %rx_length_errors, align 8
  br label %enqueue_again

if.end12:                                         ; preds = %do.end8
  %call13 = tail call ptr @skb_put(ptr noundef nonnull %data, i32 noundef %len) #8
  %call14 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %data, ptr noundef %qp_data) #8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %data, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call14, ptr %protocol, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %data, i32 0, i32 15
  %5 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %call15 = tail call i32 @netif_rx(ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %rx_errors19 = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 4
  %6 = ptrtoint ptr %rx_errors19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_errors19, align 8
  %inc20 = add i32 %7, 1
  store i32 %inc20, ptr %rx_errors19, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 6
  br label %if.end26

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %stats23 = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36
  %8 = ptrtoint ptr %stats23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats23, align 8
  %inc24 = add i32 %9, 1
  store i32 %inc24, ptr %stats23, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 2
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then17
  %rx_bytes.sink78 = phi ptr [ %rx_bytes, %if.else ], [ %rx_dropped, %if.then17 ]
  %len.sink = phi i32 [ %len, %if.else ], [ 1, %if.then17 ]
  %10 = ptrtoint ptr %rx_bytes.sink78 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_bytes.sink78, align 8
  %add = add i32 %11, %len.sink
  store i32 %add, ptr %rx_bytes.sink78, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 20
  %12 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu, align 4
  %add27 = add i32 %13, 14
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %qp_data, i32 noundef %add27, i32 noundef 2592) #8
  %tobool29.not = icmp eq ptr %call.i, null
  br i1 %tobool29.not, label %if.then30, label %if.end26.enqueue_again_crit_edge

if.end26.enqueue_again_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %enqueue_again

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %rx_errors32 = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 4
  %14 = ptrtoint ptr %rx_errors32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_errors32, align 8
  %inc33 = add i32 %15, 1
  store i32 %inc33, ptr %rx_errors32, align 8
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 13
  %16 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_frame_errors, align 4
  %inc35 = add i32 %17, 1
  store i32 %inc35, ptr %rx_frame_errors, align 4
  br label %cleanup

enqueue_again:                                    ; preds = %if.end26.enqueue_again_crit_edge, %if.then9
  %skb.0 = phi ptr [ %data, %if.then9 ], [ %call.i, %if.end26.enqueue_again_crit_edge ]
  %data37 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %18 = ptrtoint ptr %data37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data37, align 4
  %mtu38 = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 20
  %20 = ptrtoint ptr %mtu38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mtu38, align 4
  %add39 = add i32 %21, 14
  %call40 = tail call i32 @ntb_transport_rx_enqueue(ptr noundef %qp, ptr noundef nonnull %skb.0, ptr noundef %19, i32 noundef %add39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %enqueue_again.cleanup_crit_edge, label %if.then42

enqueue_again.cleanup_crit_edge:                  ; preds = %enqueue_again
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %enqueue_again
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %skb.0) #8
  %rx_errors44 = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 4
  %22 = ptrtoint ptr %rx_errors44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_errors44, align 8
  %inc45 = add i32 %23, 1
  store i32 %inc45, ptr %rx_errors44, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 14
  %24 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_fifo_errors, align 8
  %inc47 = add i32 %25, 1
  store i32 %inc47, ptr %rx_fifo_errors, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %enqueue_again.cleanup_crit_edge, %if.then30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_netdev_tx_handler(ptr nocapture noundef readnone %qp, ptr noundef %qp_data, ptr noundef %data, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %tobool1.not = icmp eq ptr %qp_data, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp sgt i32 %len, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 1
  %0 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_packets, align 4
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len3, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 3
  %4 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %5, %3
  store i32 %add, ptr %tx_bytes, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 5
  %6 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_errors, align 4
  %inc6 = add i32 %7, 1
  store i32 %inc6, ptr %tx_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 36, i32 16
  %8 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_aborted_errors, align 8
  %inc8 = add i32 %9, 1
  store i32 %inc8, ptr %tx_aborted_errors, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2
  tail call void @consume_skb(ptr noundef nonnull %data) #8
  %qp10 = getelementptr i8, ptr %qp_data, i32 2312
  %10 = ptrtoint ptr %qp10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qp10, align 4
  %call11 = tail call i32 @ntb_transport_tx_free_entry(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call11)
  %cmp12 = icmp ugt i32 %call11, 9
  br i1 %cmp12, label %do.end, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %qp_data, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %do.end.cleanup_crit_edge, label %if.then18

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.end.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_netdev_event_handler(ptr noundef %data, i32 noundef %link_is_up) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ntb_netdev_event_handler.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ntb_netdev_event_handler, %if.then)) #8
          to label %do.end7 [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %qp = getelementptr i8, ptr %data, i32 2312
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %call5 = tail call zeroext i1 @ntb_transport_link_query(ptr noundef %1) #8
  %conv = zext i1 %call5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ntb_netdev_event_handler.__UNIQUE_ID_ddebug346, ptr noundef %data, ptr noundef nonnull @.str.13, i32 noundef %link_is_up, i32 noundef %conv) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_is_up)
  %tobool8.not = icmp eq i32 %link_is_up, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end7
  %qp10 = getelementptr i8, ptr %data, i32 2312
  %2 = ptrtoint ptr %qp10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp10, align 4
  %call11 = tail call zeroext i1 @ntb_transport_link_query(ptr noundef %3) #8
  br i1 %call11, label %if.then12, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_carrier_on(ptr noundef %data) #8
  br label %if.end14

if.else:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_carrier_off(ptr noundef %data) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12, %if.then9.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntb_transport_link_query(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__UNIQUE_ID_description341, !1, !"__UNIQUE_ID_description341", i1 false, i1 false}
!1 = !{!"../drivers/net/ntb_netdev.c", i32 59, i32 1}
!2 = !{ptr @__UNIQUE_ID_version342, !3, !"__UNIQUE_ID_version342", i1 false, i1 false}
!3 = !{!"../drivers/net/ntb_netdev.c", i32 60, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__modver_attr, !3, !"__modver_attr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file343, !9, !"__UNIQUE_ID_file343", i1 false, i1 false}
!9 = !{!"../drivers/net/ntb_netdev.c", i32 61, i32 1}
!10 = !{ptr @__UNIQUE_ID_license344, !9, !"__UNIQUE_ID_license344", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author345, !12, !"__UNIQUE_ID_author345", i1 false, i1 false}
!12 = !{!"../drivers/net/ntb_netdev.c", i32 62, i32 1}
!13 = !{ptr @__initcall__kmod_ntb_netdev__348_489_ntb_netdev_init_module6, !14, !"__initcall__kmod_ntb_netdev__348_489_ntb_netdev_init_module6", i1 false, i1 false}
!14 = !{!"../drivers/net/ntb_netdev.c", i32 489, i32 1}
!15 = !{ptr @__exitcall_ntb_netdev_exit_module, !16, !"__exitcall_ntb_netdev_exit_module", i1 false, i1 false}
!16 = !{!"../drivers/net/ntb_netdev.c", i32 496, i32 1}
!17 = !{ptr @ntb_netdev_client, !18, !"ntb_netdev_client", i1 false, i1 false}
!18 = !{!"../drivers/net/ntb_netdev.c", i32 473, i32 36}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ntb_netdev.c", i32 453, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ntb_netdev_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ntb_netdev_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @ntb_netdev_ops, !28, !"ntb_netdev_ops", i1 false, i1 false}
!28 = !{!"../drivers/net/ntb_netdev.c", i32 354, i32 36}
!29 = !{ptr @ntb_netdev_open.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/ntb_netdev.c", i32 269, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"tx_stop", i1 false, i1 false}
!33 = !{!"../drivers/net/ntb_netdev.c", i32 71, i32 21}
!34 = distinct !{null, !35, !"tx_time", i1 false, i1 false}
!35 = !{!"../drivers/net/ntb_netdev.c", i32 65, i32 21}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ntb_netdev.c", i32 350, i32 19}
!38 = !{ptr @ntb_ethtool_ops, !39, !"ntb_ethtool_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/ntb_netdev.c", i32 389, i32 33}
!40 = !{ptr @ntb_netdev_handlers, !41, !"ntb_netdev_handlers", i1 false, i1 false}
!41 = !{!"../drivers/net/ntb_netdev.c", i32 395, i32 40}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ntb_netdev.c", i32 110, i32 2}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ntb_netdev_rx_handler.__UNIQUE_ID_ddebug347, !43, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!46 = distinct !{null, !47, !"tx_start", i1 false, i1 false}
!47 = !{!"../drivers/net/ntb_netdev.c", i32 68, i32 21}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ntb_netdev.c", i32 88, i32 2}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ntb_netdev_event_handler.__UNIQUE_ID_ddebug346, !49, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{i64 2156538210}
!63 = !{i64 2156536616}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2148860107, i64 2148860112, i64 2148860125, i64 2148860169, i64 2148860203, i64 2148860224}
!66 = !{i64 2156536856}
