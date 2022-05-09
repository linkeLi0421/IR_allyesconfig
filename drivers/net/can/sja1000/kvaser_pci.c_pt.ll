; ModuleID = '/llk/IR_all_yes/drivers/net/can/sja1000/kvaser_pci.c_pt.bc'
source_filename = "../drivers/net/can/sja1000/kvaser_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.126 = type { ptr }
%struct.kvaser_pci = type { i32, ptr, [3 x ptr], ptr, ptr, i32, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sja1000_priv = type { %struct.can_priv, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i16, i8, i8 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }

@__UNIQUE_ID_author461 = internal constant [47 x i8] c"kvaser_pci.author=Per Dalen <per.dalen@cnw.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_description462 = internal constant [67 x i8] c"kvaser_pci.description=Socket-CAN driver for KVASER PCAN PCI cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file463 = internal constant [51 x i8] c"kvaser_pci.file=drivers/net/can/sja1000/kvaser_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license464 = internal constant [26 x i8] c"kvaser_pci.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_kvaser_pci__465_384_kvaser_pci_driver_init6 = internal global ptr @kvaser_pci_driver_init, section ".initcall6.init", align 4
@kvaser_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @kvaser_pci_tbl, ptr @kvaser_pci_init_one, ptr @kvaser_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_kvaser_pci_driver_exit = internal global ptr @kvaser_pci_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kvaser_pci\00", [21 x i8] zeroinitializer }, align 32
@kvaser_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4328, i32 33798, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6663, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@kvaser_pci_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 292, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"initializing device %04x:%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kvaser_pci_init_one\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/can/sja1000/kvaser_pci.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kvaser_pci_init_one._entry_ptr = internal global ptr @kvaser_pci_init_one._entry, section ".printk_index", align 4
@kvaser_pci_init_one._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"xilinx version=%d number of channels=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@kvaser_pci_init_one._entry_ptr.8 = internal global ptr @kvaser_pci_init_one._entry.6, section ".printk_index", align 4
@kvaser_pci_add_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg_base=%p conf_addr=%p irq=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kvaser_pci_add_chan\00", [44 x i8] zeroinitializer }, align 32
@kvaser_pci_add_chan._entry_ptr = internal global ptr @kvaser_pci_add_chan._entry, section ".printk_index", align 4
@kvaser_pci_add_chan._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 264, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Registering device failed (err=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@kvaser_pci_add_chan._entry_ptr.14 = internal global ptr @kvaser_pci_add_chan._entry.11, section ".printk_index", align 4
@kvaser_pci_del_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Removing device %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kvaser_pci_del_chan\00", [44 x i8] zeroinitializer }, align 32
@kvaser_pci_del_chan._entry_ptr = internal global ptr @kvaser_pci_del_chan._entry, section ".printk_index", align 4
@kvaser_pci_del_chan._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@kvaser_pci_del_chan._entry_ptr.18 = internal global ptr @kvaser_pci_del_chan._entry.17, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"kvaser_pci_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 377, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 384, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"kvaser_pci_tbl\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 98, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 291, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 339, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 254, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 263, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 173, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private constant [40 x i8] c"../drivers/net/can/sja1000/kvaser_pci.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 181, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author461, ptr @__UNIQUE_ID_description462, ptr @__UNIQUE_ID_file463, ptr @__UNIQUE_ID_license464, ptr @__exitcall_kvaser_pci_driver_exit, ptr @__initcall__kmod_kvaser_pci__465_384_kvaser_pci_driver_init6, ptr @kvaser_pci_add_chan._entry, ptr @kvaser_pci_add_chan._entry.11, ptr @kvaser_pci_add_chan._entry_ptr, ptr @kvaser_pci_add_chan._entry_ptr.14, ptr @kvaser_pci_del_chan._entry, ptr @kvaser_pci_del_chan._entry.17, ptr @kvaser_pci_del_chan._entry_ptr, ptr @kvaser_pci_del_chan._entry_ptr.18, ptr @kvaser_pci_driver_exit, ptr @kvaser_pci_init_one._entry, ptr @kvaser_pci_init_one._entry.6, ptr @kvaser_pci_init_one._entry_ptr, ptr @kvaser_pci_init_one._entry_ptr.8, ptr @kvaser_pci_driver, ptr @.str, ptr @kvaser_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pci_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pci_init_one._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pci_add_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pci_add_chan._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pci_del_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pci_del_chan._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @kvaser_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @kvaser_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_pci_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  %conv = zext i16 %1 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %conv1 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv1) #7
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.failure_release_pci_crit_edge

if.end.failure_release_pci_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %failure_release_pci

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 128) #4
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.end5.failure_release_regions_crit_edge, label %if.end9

if.end5.failure_release_regions_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %failure_release_regions

if.end9:                                          ; preds = %if.end5
  %call10 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 2, i32 noundef 8) #4
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.end9.failure_release_regions.sink.split_crit_edge, label %if.end14

if.end9.failure_release_regions.sink.split_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %failure_release_regions.sink.split

if.end14:                                         ; preds = %if.end9
  %call15 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 128) #4
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.end14.if.end46_crit_edge, label %if.end19

if.end14.if.end46_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.end19:                                         ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %call15, i8 1) #4, !srcloc !55
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call15) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end19.if.end46_crit_edge, label %for.inc.i

if.end19.if.end46_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

for.inc.i:                                        ; preds = %if.end19
  %add.ptr.1.i = getelementptr i8, ptr %call15, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.1.i, i8 1) #4, !srcloc !55
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.1.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1.i = icmp eq i8 %7, 0
  br i1 %tobool.not.1.i, label %for.inc.i.number_of_sja1000_chip.exit_crit_edge, label %for.inc.1.i

for.inc.i.number_of_sja1000_chip.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %number_of_sja1000_chip.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %add.ptr.2.i = getelementptr i8, ptr %call15, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.2.i, i8 1) #4, !srcloc !55
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.2.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.2.i = icmp eq i8 %9, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.number_of_sja1000_chip.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.number_of_sja1000_chip.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %number_of_sja1000_chip.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.3.i = getelementptr i8, ptr %call15, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.3.i, i8 1) #4, !srcloc !55
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.3.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.3.i = icmp eq i8 %11, 0
  %spec.select.i = select i1 %tobool.not.3.i, i32 3, i32 4
  br label %number_of_sja1000_chip.exit

number_of_sja1000_chip.exit:                      ; preds = %for.inc.2.i, %for.inc.1.i.number_of_sja1000_chip.exit_crit_edge, %for.inc.i.number_of_sja1000_chip.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 1, %for.inc.i.number_of_sja1000_chip.exit_crit_edge ], [ 2, %for.inc.1.i.number_of_sja1000_chip.exit_crit_edge ], [ %spec.select.i, %for.inc.2.i ]
  %add.ptr.i = getelementptr i8, ptr %call10, i32 7
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  br label %for.body

for.body:                                         ; preds = %if.end33.i.for.body_crit_edge, %number_of_sja1000_chip.exit
  %i.0119 = phi i32 [ 0, %number_of_sja1000_chip.exit ], [ %inc, %if.end33.i.for.body_crit_edge ]
  %master_dev.0118 = phi ptr [ null, %number_of_sja1000_chip.exit ], [ %spec.select, %if.end33.i.for.body_crit_edge ]
  %call.i = tail call ptr @alloc_sja1000dev(i32 noundef 36) #4
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %for.body.if.then41_crit_edge, label %if.end.i

for.body.if.then41_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41

if.end.i:                                         ; preds = %for.body
  %priv2.i = getelementptr i8, ptr %call.i, i32 2636
  %12 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv2.i, align 4
  %pci_dev.i = getelementptr inbounds %struct.kvaser_pci, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdev, ptr %pci_dev.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.0119, ptr %13, align 4
  %conf_addr4.i = getelementptr inbounds %struct.kvaser_pci, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %conf_addr4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %conf_addr4.i, align 4
  %res_addr5.i = getelementptr inbounds %struct.kvaser_pci, ptr %13, i32 0, i32 4
  %17 = ptrtoint ptr %res_addr5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call10, ptr %res_addr5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0119)
  %cmp6.i = icmp eq i32 %i.0119, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %19 = lshr i8 %18, 4
  %xilinx_ver.i = getelementptr inbounds %struct.kvaser_pci, ptr %13, i32 0, i32 6
  %20 = ptrtoint ptr %xilinx_ver.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %xilinx_ver.i, align 4
  %21 = ptrtoint ptr %conf_addr4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conf_addr4.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %22, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 -2139062144) #4, !srcloc !59
  %23 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv2.i, align 4
  %conf_addr.i.i = getelementptr inbounds %struct.kvaser_pci, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %conf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conf_addr.i.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %26, i32 56
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #4, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  %28 = or i32 %27, 2097152
  %29 = ptrtoint ptr %conf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conf_addr.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %30, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %28) #4, !srcloc !59
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %priv14.i = getelementptr i8, ptr %master_dev.0118, i32 2636
  %31 = ptrtoint ptr %priv14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv14.i, align 4
  %sub.i = add nsw i32 %i.0119, -1
  %arrayidx.i = getelementptr %struct.kvaser_pci, ptr %32, i32 0, i32 2, i32 %sub.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %add.i = add nuw nsw i32 %i.0119, 1
  %no_channels.i = getelementptr inbounds %struct.kvaser_pci, ptr %32, i32 0, i32 5
  %34 = ptrtoint ptr %no_channels.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i, ptr %no_channels.i, align 4
  %xilinx_ver15.i = getelementptr inbounds %struct.kvaser_pci, ptr %32, i32 0, i32 6
  %35 = ptrtoint ptr %xilinx_ver15.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %xilinx_ver15.i, align 4
  %xilinx_ver16.i = getelementptr inbounds %struct.kvaser_pci, ptr %13, i32 0, i32 6
  %37 = ptrtoint ptr %xilinx_ver16.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %xilinx_ver16.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then7.i
  %mul.i = shl i32 %i.0119, 5
  %add.ptr18.i = getelementptr i8, ptr %call15, i32 %mul.i
  %reg_base.i = getelementptr i8, ptr %call.i, i32 2644
  %38 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr18.i, ptr %reg_base.i, align 4
  %read_reg.i = getelementptr i8, ptr %call.i, i32 2620
  %39 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kvaser_pci_read_reg, ptr %read_reg.i, align 4
  %write_reg.i = getelementptr i8, ptr %call.i, i32 2624
  %40 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @kvaser_pci_write_reg, ptr %write_reg.i, align 4
  %clock.i = getelementptr i8, ptr %call.i, i32 2440
  %41 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8000000, ptr %clock.i, align 4
  %ocr.i = getelementptr i8, ptr %call.i, i32 2698
  %42 = ptrtoint ptr %ocr.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -40, ptr %ocr.i, align 2
  %cdr.i = getelementptr i8, ptr %call.i, i32 2699
  %43 = ptrtoint ptr %cdr.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 71, ptr %cdr.i, align 1
  %irq_flags.i = getelementptr i8, ptr %call.i, i32 2648
  %44 = ptrtoint ptr %irq_flags.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 128, ptr %irq_flags.i, align 4
  %45 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq.i, align 4
  %irq19.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 64
  %47 = ptrtoint ptr %irq19.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %irq19.i, align 4
  %48 = ptrtoint ptr %conf_addr4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %conf_addr4.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %add.ptr18.i, ptr noundef %49, i32 noundef %46) #7
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 133, i32 1
  %50 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev, ptr %parent.i, align 8
  %conv26.i = trunc i32 %i.0119 to i16
  %dev_id.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 60
  %51 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv26.i, ptr %dev_id.i, align 2
  %call27.i = tail call i32 @register_sja1000dev(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not.i91 = icmp eq i32 %call27.i, 0
  br i1 %tobool.not.i91, label %if.end33.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call27.i) #7
  tail call fastcc void @kvaser_pci_del_chan(ptr noundef nonnull %call.i) #4
  br label %if.then41

if.end33.i:                                       ; preds = %if.end17.i
  %spec.select = select i1 %cmp6.i, ptr %call.i, ptr %master_dev.0118
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, %i.0.lcssa.i
  br i1 %exitcond.not, label %for.end, label %if.end33.i.for.body_crit_edge

if.end33.i.for.body_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  %priv32 = getelementptr i8, ptr %spec.select, i32 2636
  %52 = ptrtoint ptr %priv32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv32, align 4
  %xilinx_ver = getelementptr inbounds %struct.kvaser_pci, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %xilinx_ver to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %xilinx_ver, align 4
  %conv37 = zext i8 %55 to i32
  %no_channels38 = getelementptr inbounds %struct.kvaser_pci, ptr %53, i32 0, i32 5
  %56 = ptrtoint ptr %no_channels38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %no_channels38, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv37, i32 noundef %57) #7
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %spec.select, ptr %driver_data.i.i, align 4
  br label %cleanup

if.then41:                                        ; preds = %do.end31.i, %for.body.if.then41_crit_edge
  %retval.0.i = phi i32 [ %call27.i, %do.end31.i ], [ -12, %for.body.if.then41_crit_edge ]
  tail call fastcc void @kvaser_pci_del_chan(ptr noundef %master_dev.0118)
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end19.if.end46_crit_edge, %if.end14.if.end46_crit_edge
  %err.0104 = phi i32 [ %retval.0.i, %if.then41 ], [ -12, %if.end14.if.end46_crit_edge ], [ -12, %if.end19.if.end46_crit_edge ]
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call6) #4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call10) #4
  br i1 %cmp16, label %if.end46.failure_release_regions_crit_edge, label %if.end46.failure_release_regions.sink.split_crit_edge

if.end46.failure_release_regions.sink.split_crit_edge: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %failure_release_regions.sink.split

if.end46.failure_release_regions_crit_edge:       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %failure_release_regions

failure_release_regions.sink.split:               ; preds = %if.end46.failure_release_regions.sink.split_crit_edge, %if.end9.failure_release_regions.sink.split_crit_edge
  %call6.sink = phi ptr [ %call6, %if.end9.failure_release_regions.sink.split_crit_edge ], [ %call15, %if.end46.failure_release_regions.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ -12, %if.end9.failure_release_regions.sink.split_crit_edge ], [ %err.0104, %if.end46.failure_release_regions.sink.split_crit_edge ]
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call6.sink) #4
  br label %failure_release_regions

failure_release_regions:                          ; preds = %failure_release_regions.sink.split, %if.end46.failure_release_regions_crit_edge, %if.end5.failure_release_regions_crit_edge
  %err.1 = phi i32 [ %err.0104, %if.end46.failure_release_regions_crit_edge ], [ -19, %if.end5.failure_release_regions_crit_edge ], [ %err.1.ph, %failure_release_regions.sink.split ]
  tail call void @pci_release_regions(ptr noundef %pdev) #4
  br label %failure_release_pci

failure_release_pci:                              ; preds = %failure_release_regions, %if.end.failure_release_pci_crit_edge
  %err.2 = phi i32 [ %call2, %if.end.failure_release_pci_crit_edge ], [ %err.1, %failure_release_regions ]
  tail call void @pci_disable_device(ptr noundef %pdev) #4
  br label %cleanup

cleanup:                                          ; preds = %failure_release_pci, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ], [ %err.2, %failure_release_pci ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_pci_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @kvaser_pci_del_chan(ptr noundef %1)
  tail call void @pci_release_regions(ptr noundef %pdev) #4
  tail call void @pci_disable_device(ptr noundef %pdev) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_pci_del_chan(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr i8, ptr %dev, i32 2636
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  %pci_dev = getelementptr inbounds %struct.kvaser_pci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.15, ptr noundef nonnull %dev) #7
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 4
  %conf_addr.i = getelementptr inbounds %struct.kvaser_pci, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %conf_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf_addr.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %7, i32 56
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #4, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  %9 = and i32 %8, -2097153
  %10 = ptrtoint ptr %conf_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conf_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %9) #4, !srcloc !59
  %no_channels = getelementptr inbounds %struct.kvaser_pci, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %no_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %no_channels, align 4
  %sub52 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub52)
  %cmp53 = icmp sgt i32 %sub52, 0
  br i1 %cmp53, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kvaser_pci, ptr %1, i32 0, i32 2, i32 %i.054
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %do.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.15, ptr noundef nonnull %15) #7
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @unregister_sja1000dev(ptr noundef %19) #4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  tail call void @free_sja1000dev(ptr noundef %21) #4
  br label %for.inc

for.inc:                                          ; preds = %do.end10, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.054, 1
  %22 = ptrtoint ptr %no_channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %no_channels, align 4
  %sub = add i32 %23, -1
  %cmp = icmp slt i32 %inc, %sub
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @unregister_sja1000dev(ptr noundef nonnull %dev) #4
  %24 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev, align 4
  %reg_base = getelementptr i8, ptr %dev, i32 2644
  %26 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base, align 4
  tail call void @pci_iounmap(ptr noundef %25, ptr noundef %27) #4
  %28 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev, align 4
  %conf_addr = getelementptr inbounds %struct.kvaser_pci, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %conf_addr, align 4
  tail call void @pci_iounmap(ptr noundef %29, ptr noundef %31) #4
  %32 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_dev, align 4
  %res_addr = getelementptr inbounds %struct.kvaser_pci, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %res_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %res_addr, align 4
  tail call void @pci_iounmap(ptr noundef %33, ptr noundef %35) #4
  tail call void @free_sja1000dev(ptr noundef nonnull %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_sja1000dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @kvaser_pci_read_reg(ptr nocapture noundef readonly %priv, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %port
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_pci_write_reg(ptr nocapture noundef readonly %priv, i32 noundef %port, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %port
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #4, !srcloc !55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__UNIQUE_ID_author461, !1, !"__UNIQUE_ID_author461", i1 false, i1 false}
!1 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_description462, !3, !"__UNIQUE_ID_description462", i1 false, i1 false}
!3 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_file463, !5, !"__UNIQUE_ID_file463", i1 false, i1 false}
!5 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 36, i32 1}
!6 = !{ptr @__UNIQUE_ID_license464, !5, !"__UNIQUE_ID_license464", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_kvaser_pci__465_384_kvaser_pci_driver_init6, !8, !"__initcall__kmod_kvaser_pci__465_384_kvaser_pci_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 384, i32 1}
!9 = !{ptr @__exitcall_kvaser_pci_driver_exit, !8, !"__exitcall_kvaser_pci_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @kvaser_pci_driver, !12, !"kvaser_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 377, i32 26}
!13 = !{ptr @kvaser_pci_tbl, !14, !"kvaser_pci_tbl", i1 false, i1 false}
!14 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 98, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 291, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @kvaser_pci_init_one._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @kvaser_pci_init_one._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 339, i32 2}
!25 = !{ptr @kvaser_pci_init_one._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @kvaser_pci_init_one._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 254, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @kvaser_pci_add_chan._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @kvaser_pci_add_chan._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 263, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @kvaser_pci_add_chan._entry.11, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @kvaser_pci_add_chan._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 173, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @kvaser_pci_del_chan._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @kvaser_pci_del_chan._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @kvaser_pci_del_chan._entry.17, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/net/can/sja1000/kvaser_pci.c", i32 181, i32 4}
!44 = !{ptr @kvaser_pci_del_chan._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2152164641}
!55 = !{i64 4623296}
!56 = !{i64 4623691}
!57 = !{i64 2152163036}
!58 = !{i64 2152165615}
!59 = !{i64 4623493}
!60 = !{i64 4623911}
!61 = !{i64 2152164260}
