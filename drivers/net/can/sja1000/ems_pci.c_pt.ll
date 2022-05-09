; ModuleID = '/llk/IR_all_yes/drivers/net/can/sja1000/ems_pci.c_pt.bc'
source_filename = "../drivers/net/can/sja1000/ems_pci.c"
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
%struct.ems_pci_card = type { i32, i32, ptr, [4 x ptr], ptr, ptr }
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

@__UNIQUE_ID_author461 = internal constant [53 x i8] c"ems_pci.author=Sebastian Haas <haas@ems-wuenche.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description462 = internal constant [74 x i8] c"ems_pci.description=Socket-CAN driver for EMS CPC-PCI/PCIe/104P CAN cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file463 = internal constant [45 x i8] c"ems_pci.file=drivers/net/can/sja1000/ems_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license464 = internal constant [23 x i8] c"ems_pci.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_ems_pci__465_360_ems_pci_driver_init6 = internal global ptr @ems_pci_driver_init, section ".initcall6.init", align 4
@ems_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ems_pci_tbl, ptr @ems_pci_add_card, ptr @ems_pci_del_card, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ems_pci_driver_exit = internal global ptr @ems_pci_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ems_pci\00", [24 x i8] zeroinitializer }, align 32
@ems_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4362, i32 8452, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 4277, i32 16384, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 4277, i32 16386, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ems_pci_add_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enabling PCI device failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ems_pci_add_card\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/can/sja1000/ems_pci.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ems_pci_add_card._entry_ptr = internal global ptr @ems_pci_add_card._entry, section ".printk_index", align 4
@ems_pci_add_card._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Not EMS Dr. Thomas Wuensche interface\0A\00", [57 x i8] zeroinitializer }, align 32
@ems_pci_add_card._entry_ptr.8 = internal global ptr @ems_pci_add_card._entry.6, section ".printk_index", align 4
@ems_pci_add_card._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Registering device failed (err=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@ems_pci_add_card._entry_ptr.11 = internal global ptr @ems_pci_add_card._entry.9, section ".printk_index", align 4
@ems_pci_add_card._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 337, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Channel #%d at 0x%p, irq %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ems_pci_add_card._entry_ptr.15 = internal global ptr @ems_pci_add_card._entry.12, section ".printk_index", align 4
@ems_pci_add_card._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error: %d. Cleaning Up.\0A\00", [39 x i8] zeroinitializer }, align 32
@ems_pci_add_card._entry_ptr.18 = internal global ptr @ems_pci_add_card._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ems_pci_del_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 183, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Removing %s.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ems_pci_del_card\00", [47 x i8] zeroinitializer }, align 32
@ems_pci_del_card._entry_ptr = internal global ptr @ems_pci_del_card._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"ems_pci_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 353, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 360, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"ems_pci_tbl\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 92, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 220, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 272, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 328, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 336, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 346, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [37 x i8] c"../drivers/net/can/sja1000/ems_pci.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 183, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author461, ptr @__UNIQUE_ID_description462, ptr @__UNIQUE_ID_file463, ptr @__UNIQUE_ID_license464, ptr @__exitcall_ems_pci_driver_exit, ptr @__initcall__kmod_ems_pci__465_360_ems_pci_driver_init6, ptr @ems_pci_add_card._entry, ptr @ems_pci_add_card._entry.12, ptr @ems_pci_add_card._entry.16, ptr @ems_pci_add_card._entry.6, ptr @ems_pci_add_card._entry.9, ptr @ems_pci_add_card._entry_ptr, ptr @ems_pci_add_card._entry_ptr.11, ptr @ems_pci_add_card._entry_ptr.15, ptr @ems_pci_add_card._entry_ptr.18, ptr @ems_pci_add_card._entry_ptr.8, ptr @ems_pci_del_card._entry, ptr @ems_pci_del_card._entry_ptr, ptr @ems_pci_driver_exit, ptr @ems_pci_driver, ptr @.str, ptr @ems_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pci_add_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pci_add_card._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pci_add_card._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pci_add_card._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pci_add_card._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pci_del_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ems_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ems_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @ems_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_pci_add_card(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #9
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %pci_dev = getelementptr inbounds %struct.ems_pci_card, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pci_dev, align 8
  %channels = getelementptr inbounds %struct.ems_pci_card, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %channels, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4277, i16 %5)
  %cmp6 = icmp eq i16 %5, 4277
  %. = select i1 %cmp6, i32 2, i32 1
  %.202 = select i1 %cmp6, i32 4, i32 2
  %.203 = select i1 %cmp6, i32 128, i32 4096
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %call7.i.i, align 8
  %call11 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef %.203) #5
  %conf_addr = getelementptr inbounds %struct.ems_pci_card, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %conf_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %conf_addr, align 4
  %cmp13 = icmp eq ptr %call11, null
  br i1 %cmp13, label %if.end5.do.end124_crit_edge, label %if.end16

if.end5.do.end124_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end124

if.end16:                                         ; preds = %if.end5
  %call17 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %., i32 noundef 4096) #5
  %base_addr = getelementptr inbounds %struct.ems_pci_card, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %base_addr, align 8
  %cmp19 = icmp eq ptr %call17, null
  br i1 %cmp19, label %if.end16.do.end124_crit_edge, label %if.end22

if.end16.do.end124_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end124

if.end22:                                         ; preds = %if.end16
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp24 = icmp eq i32 %10, 1
  br i1 %cmp24, label %do.body27, label %if.end22.if.end60_crit_edge

if.end22.if.end60_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

do.body27:                                        ; preds = %if.end22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conf_addr, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4) #5, !srcloc !55
  %13 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr, align 8
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %15)
  %cmp33.not = icmp eq i8 %15, 85
  br i1 %cmp33.not, label %lor.lhs.false, label %do.body27.do.end57_crit_edge

do.body27.do.end57_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end57

lor.lhs.false:                                    ; preds = %do.body27
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %18)
  %cmp37.not = icmp eq i8 %18, -86
  br i1 %cmp37.not, label %lor.lhs.false39, label %lor.lhs.false.do.end57_crit_edge

lor.lhs.false.do.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end57

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_addr, align 8
  %add.ptr.i206 = getelementptr i8, ptr %20, i32 8
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i206) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp42.not = icmp eq i8 %21, 1
  br i1 %cmp42.not, label %lor.lhs.false44, label %lor.lhs.false39.do.end57_crit_edge

lor.lhs.false39.do.end57_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end57

lor.lhs.false44:                                  ; preds = %lor.lhs.false39
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr, align 8
  %add.ptr.i208 = getelementptr i8, ptr %23, i32 12
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i208) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -53, i8 %24)
  %cmp47.not = icmp eq i8 %24, -53
  br i1 %cmp47.not, label %lor.lhs.false49, label %lor.lhs.false44.do.end57_crit_edge

lor.lhs.false44.do.end57_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end57

lor.lhs.false49:                                  ; preds = %lor.lhs.false44
  %25 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_addr, align 8
  %add.ptr.i210 = getelementptr i8, ptr %26, i32 16
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i210) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %27)
  %cmp52.not = icmp eq i8 %27, 17
  br i1 %cmp52.not, label %lor.lhs.false49.if.end60_crit_edge, label %lor.lhs.false49.do.end57_crit_edge

lor.lhs.false49.do.end57_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end57

lor.lhs.false49.if.end60_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

do.end57:                                         ; preds = %lor.lhs.false49.do.end57_crit_edge, %lor.lhs.false44.do.end57_crit_edge, %lor.lhs.false39.do.end57_crit_edge, %lor.lhs.false.do.end57_crit_edge, %do.body27.do.end57_crit_edge
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.7) #8
  br label %do.end124

if.end60:                                         ; preds = %lor.lhs.false49.if.end60_crit_edge, %if.end22.if.end60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 0) #5, !srcloc !59
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end60
  %i.0214 = phi i32 [ 0, %if.end60 ], [ %inc121.pre-phi, %for.inc.for.body_crit_edge ]
  %call63 = tail call ptr @alloc_sja1000dev(i32 noundef 0) #5
  %cmp64 = icmp eq ptr %call63, null
  br i1 %cmp64, label %for.body.do.end124_crit_edge, label %if.end67

for.body.do.end124_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end124

if.end67:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.ems_pci_card, ptr %call7.i.i, i32 0, i32 3, i32 %i.0214
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call63, ptr %arrayidx, align 4
  %add.ptr.i212 = getelementptr i8, ptr %call63, i32 2304
  %priv69 = getelementptr i8, ptr %call63, i32 2636
  %31 = ptrtoint ptr %priv69 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %priv69, align 4
  %irq_flags = getelementptr i8, ptr %call63, i32 2648
  %32 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128, ptr %irq_flags, align 4
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  %irq70 = getelementptr inbounds %struct.net_device, ptr %call63, i32 0, i32 64
  %35 = ptrtoint ptr %irq70 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %irq70, align 4
  %36 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_addr, align 8
  %add.ptr72 = getelementptr i8, ptr %37, i32 1024
  %mul = shl i32 %i.0214, 9
  %add.ptr73 = getelementptr i8, ptr %add.ptr72, i32 %mul
  %reg_base = getelementptr i8, ptr %call63, i32 2644
  %38 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr73, ptr %reg_base, align 4
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp75 = icmp eq i32 %40, 1
  %ems_pci_v2_read_reg.sink = select i1 %cmp75, ptr @ems_pci_v1_read_reg, ptr @ems_pci_v2_read_reg
  %ems_pci_v2_write_reg.sink = select i1 %cmp75, ptr @ems_pci_v1_write_reg, ptr @ems_pci_v2_write_reg
  %ems_pci_v2_post_irq.sink = select i1 %cmp75, ptr @ems_pci_v1_post_irq, ptr @ems_pci_v2_post_irq
  %41 = getelementptr i8, ptr %call63, i32 2620
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ems_pci_v2_read_reg.sink, ptr %41, align 4
  %43 = getelementptr i8, ptr %call63, i32 2624
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %ems_pci_v2_write_reg.sink, ptr %43, align 4
  %45 = getelementptr i8, ptr %call63, i32 2632
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ems_pci_v2_post_irq.sink, ptr %45, align 4
  tail call void %ems_pci_v2_write_reg.sink(ptr noundef %add.ptr.i212, i32 noundef 0, i8 noundef zeroext 1) #5
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %43, align 4
  tail call void %48(ptr noundef %add.ptr.i212, i32 noundef 31, i8 noundef zeroext -128) #5
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %41, align 4
  %call.i = tail call zeroext i8 %50(ptr noundef %add.ptr.i212, i32 noundef 31) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %call.i)
  %cmp.i.not = icmp eq i8 %call.i, -128
  br i1 %cmp.i.not, label %if.then84, label %if.else119

if.then84:                                        ; preds = %if.end67
  %clock = getelementptr i8, ptr %call63, i32 2440
  %51 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8000000, ptr %clock, align 4
  %ocr = getelementptr i8, ptr %call63, i32 2698
  %52 = ptrtoint ptr %ocr to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -40, ptr %ocr, align 2
  %cdr = getelementptr i8, ptr %call63, i32 2699
  %53 = ptrtoint ptr %cdr to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 71, ptr %cdr, align 1
  %parent = getelementptr inbounds %struct.net_device, ptr %call63, i32 0, i32 133, i32 1
  %54 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev85, ptr %parent, align 8
  %conv87 = trunc i32 %i.0214 to i16
  %dev_id = getelementptr inbounds %struct.net_device, ptr %call63, i32 0, i32 60
  %55 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv87, ptr %dev_id, align 2
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp89 = icmp eq i32 %57, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %conf_addr, align 4
  br i1 %cmp89, label %do.body92, label %do.body98

do.body92:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 33554944) #5, !srcloc !55
  br label %if.end103

do.body98:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr102 = getelementptr i8, ptr %59, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 1090781184) #5, !srcloc !55
  br label %if.end103

if.end103:                                        ; preds = %do.body98, %do.body92
  %call104 = tail call i32 @register_sja1000dev(ptr noundef nonnull %call63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end111, label %do.end109

do.end109:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.10, i32 noundef %call104) #8
  tail call void @free_sja1000dev(ptr noundef nonnull %call63) #5
  br label %do.end124

if.end111:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %channels, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr %channels, align 4
  %add = add nuw nsw i32 %i.0214, 1
  %62 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_base, align 4
  %64 = ptrtoint ptr %irq70 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq70, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev85, ptr noundef nonnull @.str.13, i32 noundef %add, ptr noundef %63, i32 noundef %65) #8
  br label %for.inc

if.else119:                                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @free_sja1000dev(ptr noundef nonnull %call63) #5
  %.pre = add nuw nsw i32 %i.0214, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else119, %if.end111
  %inc121.pre-phi = phi i32 [ %add, %if.end111 ], [ %.pre, %if.else119 ]
  %exitcond.not = icmp eq i32 %inc121.pre-phi, %.202
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end124:                                        ; preds = %do.end109, %for.body.do.end124_crit_edge, %do.end57, %if.end16.do.end124_crit_edge, %if.end5.do.end124_crit_edge
  %err.0 = phi i32 [ -19, %do.end57 ], [ %call104, %do.end109 ], [ -12, %if.end5.do.end124_crit_edge ], [ -12, %if.end16.do.end124_crit_edge ], [ -12, %for.body.do.end124_crit_edge ]
  %dev125 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev125, ptr noundef nonnull @.str.17, i32 noundef %err.0) #8
  tail call void @ems_pci_del_card(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %do.end124, %for.inc.cleanup_crit_edge, %if.then4, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %if.then4 ], [ %err.0, %do.end124 ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ems_pci_del_card(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %channels = getelementptr inbounds %struct.ems_pci_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28 = icmp sgt i32 %3, 0
  br i1 %cmp28, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ems_pci_card, ptr %1, i32 0, i32 3, i32 %i.029
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef nonnull %5) #8
  tail call void @unregister_sja1000dev(ptr noundef nonnull %5) #5
  tail call void @free_sja1000dev(ptr noundef nonnull %5) #5
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %base_addr = getelementptr inbounds %struct.ems_pci_card, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr, align 4
  %cmp2.not = icmp eq ptr %9, null
  br i1 %cmp2.not, label %for.end.if.end5_crit_edge, label %if.then3

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev = getelementptr inbounds %struct.ems_pci_card, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_iounmap(ptr noundef %11, ptr noundef nonnull %9) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.end.if.end5_crit_edge
  %conf_addr = getelementptr inbounds %struct.ems_pci_card, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conf_addr, align 4
  %cmp6.not = icmp eq ptr %13, null
  br i1 %cmp6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev8 = getelementptr inbounds %struct.ems_pci_card, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %pci_dev8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev8, align 4
  tail call void @pci_iounmap(ptr noundef %15, ptr noundef nonnull %13) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  tail call void @kfree(ptr noundef %1) #5
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_sja1000dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ems_pci_v1_read_reg(ptr nocapture noundef readonly %priv, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %mul = shl i32 %port, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ems_pci_v1_write_reg(ptr nocapture noundef readonly %priv, i32 noundef %port, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %mul = shl i32 %port, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #5, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ems_pci_v1_post_irq(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %conf_addr = getelementptr inbounds %struct.ems_pci_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 33554944) #5, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ems_pci_v2_read_reg(ptr nocapture noundef readonly %priv, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %port
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ems_pci_v2_write_reg(ptr nocapture noundef readonly %priv, i32 noundef %port, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %port
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #5, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ems_pci_v2_post_irq(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %conf_addr = getelementptr inbounds %struct.ems_pci_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1090781184) #5, !srcloc !55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__UNIQUE_ID_author461, !1, !"__UNIQUE_ID_author461", i1 false, i1 false}
!1 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description462, !3, !"__UNIQUE_ID_description462", i1 false, i1 false}
!3 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file463, !5, !"__UNIQUE_ID_file463", i1 false, i1 false}
!5 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license464, !5, !"__UNIQUE_ID_license464", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ems_pci__465_360_ems_pci_driver_init6, !8, !"__initcall__kmod_ems_pci__465_360_ems_pci_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 360, i32 1}
!9 = !{ptr @__exitcall_ems_pci_driver_exit, !8, !"__exitcall_ems_pci_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ems_pci_driver, !12, !"ems_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 353, i32 26}
!13 = !{ptr @ems_pci_tbl, !14, !"ems_pci_tbl", i1 false, i1 false}
!14 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 92, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 220, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ems_pci_add_card._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ems_pci_add_card._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 272, i32 4}
!25 = !{ptr @ems_pci_add_card._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ems_pci_add_card._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 328, i32 5}
!29 = !{ptr @ems_pci_add_card._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ems_pci_add_card._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 336, i32 4}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ems_pci_add_card._entry.12, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ems_pci_add_card._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 346, i32 2}
!38 = !{ptr @ems_pci_add_card._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ems_pci_add_card._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/sja1000/ems_pci.c", i32 183, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ems_pci_del_card._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ems_pci_del_card._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2157242411}
!55 = !{i64 4623409}
!56 = !{i64 4623607}
!57 = !{i64 2157236078}
!58 = !{i64 2157240225}
!59 = !{i64 4623212}
!60 = !{i64 2157236330}
!61 = !{i64 2157236554}
!62 = !{i64 2157236883}
!63 = !{i64 2157237363}
!64 = !{i64 2157237581}
!65 = !{i64 2157237984}
