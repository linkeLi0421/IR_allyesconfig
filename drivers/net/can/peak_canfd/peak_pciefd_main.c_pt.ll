; ModuleID = '/llk/IR_all_yes/drivers/net/can/peak_canfd/peak_pciefd_main.c_pt.bc'
source_filename = "../drivers/net/can/peak_canfd/peak_pciefd_main.c"
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
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.126 = type { ptr }
%struct.pciefd_board = type { ptr, ptr, i32, %struct.spinlock, [0 x ptr] }
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
%struct.peak_canfd_priv = type { %struct.can_priv, ptr, i32, %struct.can_berr_counter, i32, %struct.spinlock, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.can_berr_counter = type { i16, i16 }
%struct.pciefd_can = type { %struct.peak_canfd_priv, ptr, ptr, %struct.pucan_command, i32, ptr, i32, ptr, [2 x %struct.pciefd_page], i16, i16, %struct.spinlock, i32, i32 }
%struct.pucan_command = type { i16, [3 x i16] }
%struct.pciefd_page = type { ptr, i32, i32, i32 }
%struct.pciefd_tx_link = type { i16, i16, i32, i32 }
%struct.pciefd_rx_dma = type { i32, i32, i32, [0 x %struct.pucan_rx_msg] }
%struct.pucan_rx_msg = type { i16, i16, i32, i32, i32, i32, i8, i8, i16, i32, [0 x i8] }

@__UNIQUE_ID_author461 = internal constant [66 x i8] c"peak_pciefd.author=Stephane Grosjean <s.grosjean@peak-system.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description462 = internal constant [81 x i8] c"peak_pciefd.description=Socket-CAN driver for PEAK PCAN PCIe/M.2 FD family cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file463 = internal constant [56 x i8] c"peak_pciefd.file=drivers/net/can/peak_canfd/peak_pciefd\00", section ".modinfo", align 1
@__UNIQUE_ID_license464 = internal constant [27 x i8] c"peak_pciefd.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_peak_pciefd__466_866_peak_pciefd_driver_init6 = internal global ptr @peak_pciefd_driver_init, section ".initcall6.init", align 4
@peak_pciefd_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @peak_pciefd_tbl, ptr @peak_pciefd_probe, ptr @peak_pciefd_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_peak_pciefd_driver_exit = internal global ptr @peak_pciefd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peak_pciefd\00", [20 x i8] zeroinitializer }, align 32
@peak_pciefd_tbl = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 28, i32 19, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 28, i32 20, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 28, i32 23, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 28, i32 24, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 28, i32 25, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 28, i32 26, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@peak_pciefd_probe.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"peak_pciefd_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/can/peak_canfd/peak_pciefd_main.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"probing device %04x:%04x:%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@peak_pciefd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pciefd->cmd_lock\00", [46 x i8] zeroinitializer }, align 32
@peak_pciefd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 761, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to map PCI resource #0\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@peak_pciefd_probe._entry_ptr = internal global ptr @peak_pciefd_probe._entry, section ".printk_index", align 4
@peak_pciefd_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 775, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%ux CAN-FD PCAN-PCIe FPGA v%u.%u.%u:\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@peak_pciefd_probe._entry_ptr.11 = internal global ptr @peak_pciefd_probe._entry.8, section ".printk_index", align 4
@pciefd_can_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 585, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to alloc candev object\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pciefd_can_probe\00", [47 x i8] zeroinitializer }, align 32
@pciefd_can_probe._entry_ptr = internal global ptr @pciefd_can_probe._entry, section ".printk_index", align 4
@pciefd_can_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 618, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Rx dmam_alloc_coherent(%u) failure\0A\00", [60 x i8] zeroinitializer }, align 32
@pciefd_can_probe._entry_ptr.16 = internal global ptr @pciefd_can_probe._entry.14, section ".printk_index", align 4
@pciefd_can_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 630, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Tx dmam_alloc_coherent(%u) failure\0A\00", [60 x i8] zeroinitializer }, align 32
@pciefd_can_probe._entry_ptr.19 = internal global ptr @pciefd_can_probe._entry.17, section ".printk_index", align 4
@pciefd_can_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 672, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register CAN device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pciefd_can_probe._entry_ptr.22 = internal global ptr @pciefd_can_probe._entry.20, section ".printk_index", align 4
@pciefd_can_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@pciefd_can_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.2, i32 682, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s at reg_base=0x%p irq=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@pciefd_can_probe._entry_ptr.26 = internal global ptr @pciefd_can_probe._entry.24, section ".printk_index", align 4
@switch.table.peak_pciefd_probe = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 80000000, i32 20000000, i32 20000000, i32 20000000, i32 20000000, i32 20000000, i32 20000000, i32 20000000, i32 60000000, i32 40000000, i32 30000000, i32 24000000, i32 20000000], [44 x i8] zeroinitializer }, align 32
@switch.table.peak_pciefd_probe.27 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"peak_pciefd_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 859, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 866, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"peak_pciefd_tbl\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 198, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 734, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 756, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 761, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 773, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 584, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 616, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 628, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 671, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 676, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [49 x i8] c"../drivers/net/can/peak_canfd/peak_pciefd_main.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 681, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [31 x i8] c"switch.table.peak_pciefd_probe\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [34 x i8] c"switch.table.peak_pciefd_probe.27\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author461, ptr @__UNIQUE_ID_description462, ptr @__UNIQUE_ID_file463, ptr @__UNIQUE_ID_license464, ptr @__exitcall_peak_pciefd_driver_exit, ptr @__initcall__kmod_peak_pciefd__466_866_peak_pciefd_driver_init6, ptr @pciefd_can_probe._entry, ptr @pciefd_can_probe._entry.14, ptr @pciefd_can_probe._entry.17, ptr @pciefd_can_probe._entry.20, ptr @pciefd_can_probe._entry.24, ptr @pciefd_can_probe._entry_ptr, ptr @pciefd_can_probe._entry_ptr.16, ptr @pciefd_can_probe._entry_ptr.19, ptr @pciefd_can_probe._entry_ptr.22, ptr @pciefd_can_probe._entry_ptr.26, ptr @peak_pciefd_driver_exit, ptr @peak_pciefd_probe._entry, ptr @peak_pciefd_probe._entry.8, ptr @peak_pciefd_probe._entry_ptr, ptr @peak_pciefd_probe._entry_ptr.11, ptr @peak_pciefd_driver, ptr @.str, ptr @peak_pciefd_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @peak_pciefd_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @pciefd_can_probe.__key, ptr @.str.23, ptr @.str.25, ptr @switch.table.peak_pciefd_probe, ptr @switch.table.peak_pciefd_probe.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pciefd_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pciefd_tbl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pciefd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pciefd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pciefd_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciefd_can_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciefd_can_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciefd_can_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciefd_can_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciefd_can_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciefd_can_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.peak_pciefd_probe to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.peak_pciefd_probe.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_pciefd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @peak_pciefd_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @peak_pciefd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @peak_pciefd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_pciefd_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %sub_sys_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sub_sys_id) #6
  %0 = ptrtoint ptr %sub_sys_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %sub_sys_id, align 2, !annotation !67
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_disable_pci_crit_edge

if.end.err_disable_pci_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_pci

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 46, ptr noundef nonnull %sub_sys_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body, label %if.end4.err_release_regions_crit_edge

if.end4.err_release_regions_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_release_regions

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @peak_pciefd_probe.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@peak_pciefd_probe, %do.end)) #6
          to label %if.then14 [label %do.end], !srcloc !68

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %1 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vendor, align 8
  %conv = zext i16 %2 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device, align 2
  %conv15 = zext i16 %4 to i32
  %5 = ptrtoint ptr %sub_sys_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sub_sys_id, align 2
  %conv16 = zext i16 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @peak_pciefd_probe.__UNIQUE_ID_ddebug465, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv15, i32 noundef %conv16) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %7 = ptrtoint ptr %sub_sys_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sub_sys_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %8)
  %cmp = icmp ugt i16 %8, 17
  br i1 %cmp, label %do.end.if.end33_crit_edge, label %if.else

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %8)
  %cmp22 = icmp ugt i16 %8, 15
  br i1 %cmp22, label %if.else.if.end33_crit_edge, label %if.else25

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %8)
  %cmp27 = icmp ugt i16 %8, 3
  %. = select i1 %cmp27, i32 2, i32 1
  br label %if.end33

if.end33:                                         ; preds = %if.else25, %if.else.if.end33_crit_edge, %do.end.if.end33_crit_edge
  %can_count.0 = phi i32 [ 4, %do.end.if.end33_crit_edge ], [ 3, %if.else.if.end33_crit_edge ], [ %., %if.else25 ]
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %9 = shl nuw nsw i32 %can_count.0, 2
  %spec.select.i140 = add nuw nsw i32 %9, 56
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev34, i32 noundef %spec.select.i140, i32 noundef 3520) #6
  %tobool37.not = icmp eq ptr %call.i, null
  br i1 %tobool37.not, label %if.end33.err_release_regions_crit_edge, label %if.end39

if.end33.err_release_regions_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_release_regions

if.end39:                                         ; preds = %if.end33
  %pci_dev = getelementptr inbounds %struct.pciefd_board, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdev, ptr %pci_dev, align 4
  %cmd_lock = getelementptr inbounds %struct.pciefd_board, ptr %call.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @peak_pciefd_probe.__key, i16 noundef signext 3) #6
  %call44 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 65536) #6
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call44, ptr %call.i, align 4
  %tobool46.not = icmp eq ptr %call44, null
  br i1 %tobool46.not, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.5) #9
  br label %err_release_regions

if.end52:                                         ; preds = %if.end39
  %add.ptr.i = getelementptr i8, ptr %call44, i32 68
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !69
  %13 = call i32 @llvm.bswap.i32(i32 %12) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %and = lshr i32 %13, 12
  %conv54 = and i32 %and, 15
  %and55 = lshr i32 %13, 8
  %conv57 = and i32 %and55, 15
  %14 = lshr i32 %13, 4
  %conv67 = and i32 %14, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev34, ptr noundef nonnull @.str.9, i32 noundef %can_count.0, i32 noundef %conv54, i32 noundef %conv57, i32 noundef %conv67) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %16, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 33554432) #6, !srcloc !72
  call void @pci_set_master(ptr noundef %pdev) #6
  %can_count68 = getelementptr inbounds %struct.pciefd_board, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %can_count68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %can_count68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %can_count.0)
  %cmp69147 = icmp slt i32 %18, %can_count.0
  br i1 %cmp69147, label %if.end52.while.body_crit_edge, label %if.end52.while.end_crit_edge

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  br label %while.body

while.body:                                       ; preds = %if.end74.while.body_crit_edge, %if.end52.while.body_crit_edge
  %19 = phi i32 [ %inc, %if.end74.while.body_crit_edge ], [ %18, %if.end52.while.body_crit_edge ]
  %call.i128 = call ptr @alloc_peak_canfd_dev(i32 noundef 528, i32 noundef %19, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i128, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12) #9
  br label %err_free_canfd

if.end.i:                                         ; preds = %while.body
  %add.ptr.i.i = getelementptr i8, ptr %call.i128, i32 2304
  %pre_cmd.i = getelementptr i8, ptr %call.i128, i32 2688
  %22 = ptrtoint ptr %pre_cmd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pciefd_pre_cmd, ptr %pre_cmd.i, align 4
  %write_cmd.i = getelementptr i8, ptr %call.i128, i32 2692
  %23 = ptrtoint ptr %write_cmd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pciefd_write_cmd, ptr %write_cmd.i, align 4
  %post_cmd.i = getelementptr i8, ptr %call.i128, i32 2696
  %24 = ptrtoint ptr %post_cmd.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pciefd_post_cmd, ptr %post_cmd.i, align 4
  %enable_tx_path.i = getelementptr i8, ptr %call.i128, i32 2700
  %25 = ptrtoint ptr %enable_tx_path.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pciefd_enable_tx_path, ptr %enable_tx_path.i, align 4
  %alloc_tx_msg.i = getelementptr i8, ptr %call.i128, i32 2704
  %26 = ptrtoint ptr %alloc_tx_msg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @pciefd_alloc_tx_msg, ptr %alloc_tx_msg.i, align 4
  %write_tx_msg.i = getelementptr i8, ptr %call.i128, i32 2708
  %27 = ptrtoint ptr %write_tx_msg.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pciefd_write_tx_msg, ptr %write_tx_msg.i, align 4
  %pucan_cmd.i = getelementptr i8, ptr %call.i128, i32 2720
  %cmd_buffer.i = getelementptr i8, ptr %call.i128, i32 2680
  %28 = ptrtoint ptr %cmd_buffer.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pucan_cmd.i, ptr %cmd_buffer.i, align 4
  %cmd_maxlen.i = getelementptr i8, ptr %call.i128, i32 2684
  %29 = ptrtoint ptr %cmd_maxlen.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %cmd_maxlen.i, align 4
  %board.i = getelementptr i8, ptr %call.i128, i32 2716
  %30 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %board.i, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %index.i = getelementptr i8, ptr %call.i128, i32 2620
  %33 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index.i, align 4
  %add.i = shl i32 %34, 12
  %mul.i = add i32 %add.i, 4096
  %add.ptr.i129 = getelementptr i8, ptr %32, i32 %mul.i
  %reg_base10.i = getelementptr i8, ptr %call.i128, i32 2712
  %35 = ptrtoint ptr %reg_base10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i129, ptr %reg_base10.i, align 4
  %36 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_dev, align 4
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %rx_dma_laddr.i = getelementptr i8, ptr %call.i128, i32 2728
  %call.i.i = call ptr @dmam_alloc_attrs(ptr noundef %dev12.i, i32 noundef 4096, ptr noundef %rx_dma_laddr.i, i32 noundef 3264, i32 noundef 0) #6
  %rx_dma_vaddr.i = getelementptr i8, ptr %call.i128, i32 2732
  %38 = ptrtoint ptr %rx_dma_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i, ptr %rx_dma_vaddr.i, align 4
  %tobool15.not.i = icmp eq ptr %call.i.i, null
  %39 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci_dev, align 4
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  br i1 %tobool15.not.i, label %do.end19.i, label %if.end22.i

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.15, i32 noundef 4096) #9
  br label %err_free_candev.i

if.end22.i:                                       ; preds = %if.end.i
  %tx_dma_laddr.i = getelementptr i8, ptr %call.i128, i32 2736
  %call.i142.i = call ptr @dmam_alloc_attrs(ptr noundef %dev21.i, i32 noundef 4096, ptr noundef %tx_dma_laddr.i, i32 noundef 3264, i32 noundef 0) #6
  %tx_dma_vaddr.i = getelementptr i8, ptr %call.i128, i32 2740
  %41 = ptrtoint ptr %tx_dma_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i142.i, ptr %tx_dma_vaddr.i, align 4
  %tobool27.not.i = icmp eq ptr %call.i142.i, null
  br i1 %tobool27.not.i, label %do.end31.i, label %if.end34.i

do.end31.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev, align 4
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.18, i32 noundef 4096) #9
  br label %err_free_candev.i

if.end34.i:                                       ; preds = %if.end22.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %reg_base10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base10.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 16777216) #6, !srcloc !72
  %46 = ptrtoint ptr %reg_base10.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base10.i, align 4
  %add.ptr.i144.i = getelementptr i8, ptr %47, i32 8
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144.i) #6, !srcloc !69
  %49 = call i32 @llvm.bswap.i32(i32 %48) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %49)
  %50 = icmp ult i32 %49, 13
  br i1 %50, label %switch.hole_check, label %if.end34.i.sw.default.i_crit_edge

if.end34.i.sw.default.i_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.default.i:                                     ; preds = %switch.hole_check.sw.default.i_crit_edge, %if.end34.i.sw.default.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %reg_base10.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_base10.i, align 4
  %add.ptr.i146.i = getelementptr i8, ptr %52, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146.i, i32 0) #6, !srcloc !72
  br label %sw.epilog.i

switch.hole_check:                                ; preds = %if.end34.i
  %switch.maskindex = trunc i32 %49 to i16
  %switch.shifted = lshr i16 7937, %switch.maskindex
  %53 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %switch.lobit.not = icmp eq i16 %53, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i_crit_edge, label %switch.lookup

switch.hole_check.sw.default.i_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.peak_pciefd_probe, i32 0, i32 %49
  %54 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %54)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %sw.default.i
  %.sink.i = phi i32 [ 80000000, %sw.default.i ], [ %switch.load, %switch.lookup ]
  %clock60.i = getelementptr i8, ptr %call.i128, i32 2440
  %55 = ptrtoint ptr %clock60.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink.i, ptr %clock60.i, align 4
  %56 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci_dev, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 46
  %58 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq.i, align 4
  %irq63.i = getelementptr inbounds %struct.net_device, ptr %call.i128, i32 0, i32 64
  %60 = ptrtoint ptr %irq63.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %irq63.i, align 4
  %61 = load ptr, ptr %pci_dev, align 4
  %dev65.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call.i128, i32 0, i32 133, i32 1
  %62 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dev65.i, ptr %parent.i, align 8
  %call67.i = call i32 @register_candev(ptr noundef nonnull %call.i128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end74, label %do.end72.i

do.end72.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci_dev, align 4
  %dev74.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74.i, ptr noundef nonnull @.str.21, i32 noundef %call67.i) #9
  br label %err_free_candev.i

err_free_candev.i:                                ; preds = %do.end72.i, %do.end31.i, %do.end19.i
  call void @free_candev(ptr noundef nonnull %call.i128) #6
  br label %err_free_canfd

if.end74:                                         ; preds = %sw.epilog.i
  %tx_lock.i = getelementptr i8, ptr %call.i128, i32 2780
  call void @__raw_spin_lock_init(ptr noundef %tx_lock.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @pciefd_can_probe.__key, i16 noundef signext 3) #6
  %65 = ptrtoint ptr %can_count68 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %can_count68, align 4
  %arrayidx.i = getelementptr %struct.pciefd_board, ptr %call.i, i32 0, i32 4, i32 %66
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i.i, ptr %arrayidx.i, align 4
  %68 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pci_dev, align 4
  %dev86.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %70 = ptrtoint ptr %reg_base10.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_base10.i, align 4
  %72 = ptrtoint ptr %irq63.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq63.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev86.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i128, ptr noundef %71, i32 noundef %73) #9
  %74 = ptrtoint ptr %can_count68 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %can_count68, align 4
  %inc = add i32 %75, 1
  store i32 %inc, ptr %can_count68, align 4
  %cmp69 = icmp slt i32 %inc, %can_count.0
  br i1 %cmp69, label %if.end74.while.body_crit_edge, label %if.end74.while.end_crit_edge

if.end74.while.end_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end74.while.body_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end74.while.end_crit_edge, %if.end52.while.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 16777216) #6, !srcloc !72
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %79, i32 64
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #6, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %82, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 16777216) #6, !srcloc !72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 33554432) #6, !srcloc !72
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %85 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_free_canfd:                                   ; preds = %err_free_candev.i, %do.end.i
  call fastcc void @pciefd_can_remove_all(ptr noundef nonnull %call.i)
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %87) #6
  br label %err_release_regions

err_release_regions:                              ; preds = %err_free_canfd, %do.end50, %if.end33.err_release_regions_crit_edge, %if.end4.err_release_regions_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4.err_release_regions_crit_edge ], [ -12, %err_free_canfd ], [ -12, %do.end50 ], [ -12, %if.end33.err_release_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #6
  br label %err_disable_pci

err_disable_pci:                                  ; preds = %err_release_regions, %if.end.err_disable_pci_crit_edge
  %err.1 = phi i32 [ %call1, %if.end.err_disable_pci_crit_edge ], [ %err.0, %err_release_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err.1)
  %cmp.i = icmp slt i32 %err.1, 1
  br i1 %cmp.i, label %err_disable_pci.cleanup_crit_edge, label %if.end.i133

err_disable_pci.cleanup_crit_edge:                ; preds = %err_disable_pci
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i133:                                      ; preds = %err_disable_pci
  %switch.tableidx = add i32 %err.1, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %88 = icmp ult i32 %switch.tableidx, 9
  br i1 %88, label %switch.lookup175, label %if.end.i133.cleanup_crit_edge

if.end.i133.cleanup_crit_edge:                    ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup175:                                 ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep176 = getelementptr inbounds [9 x i32], ptr @switch.table.peak_pciefd_probe.27, i32 0, i32 %switch.tableidx
  %89 = ptrtoint ptr %switch.gep176 to i32
  call void @__asan_load4_noabort(i32 %89)
  %switch.load177 = load i32, ptr %switch.gep176, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup175, %if.end.i133.cleanup_crit_edge, %err_disable_pci.cleanup_crit_edge, %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ %call, %entry.cleanup_crit_edge ], [ %err.1, %err_disable_pci.cleanup_crit_edge ], [ %switch.load177, %switch.lookup175 ], [ -34, %if.end.i133.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sub_sys_id) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @peak_pciefd_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_count.i = getelementptr inbounds %struct.pciefd_board, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %can_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %can_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.i = icmp sgt i32 %3, 0
  br i1 %cmp4.i, label %entry.while.body.i_crit_edge, label %entry.pciefd_can_remove_all.exit_crit_edge

entry.pciefd_can_remove_all.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pciefd_can_remove_all.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi i32 [ %13, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %4, -1
  %5 = ptrtoint ptr %can_count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec.i, ptr %can_count.i, align 4
  %arrayidx.i = getelementptr %struct.pciefd_board, ptr %1, i32 0, i32 4, i32 %dec.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %ndev.i.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev.i.i, align 4
  tail call void @unregister_candev(ptr noundef %9) #6
  %10 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev.i.i, align 4
  tail call void @free_candev(ptr noundef %11) #6
  %12 = ptrtoint ptr %can_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %can_count.i, align 4
  %cmp.i = icmp sgt i32 %13, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.pciefd_can_remove_all.exit_crit_edge

while.body.i.pciefd_can_remove_all.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pciefd_can_remove_all.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

pciefd_can_remove_all.exit:                       ; preds = %while.body.i.pciefd_can_remove_all.exit_crit_edge, %entry.pciefd_can_remove_all.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %15) #6
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pciefd_can_remove_all(ptr nocapture noundef %pciefd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %can_count = getelementptr inbounds %struct.pciefd_board, ptr %pciefd, i32 0, i32 2
  %0 = ptrtoint ptr %can_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %can_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i32 [ %11, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %2, -1
  %3 = ptrtoint ptr %can_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dec, ptr %can_count, align 4
  %arrayidx = getelementptr %struct.pciefd_board, ptr %pciefd, i32 0, i32 4, i32 %dec
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %ndev.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev.i, align 4
  tail call void @unregister_candev(ptr noundef %7) #6
  %8 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev.i, align 4
  tail call void @free_candev(ptr noundef %9) #6
  %10 = ptrtoint ptr %can_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %can_count, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_peak_canfd_dev(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciefd_pre_cmd(ptr noundef %ucan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pucan_cmd = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 3
  %0 = ptrtoint ptr %pucan_cmd to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %pucan_cmd, align 1
  %2 = and i16 %1, -509
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %2)
  %switch = icmp eq i16 %2, 512
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.can_priv, ptr %ucan, i32 0, i32 21
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %ndev = getelementptr inbounds %struct.peak_canfd_priv, ptr %ucan, i32 0, i32 1
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 64
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @pciefd_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %ucan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %reg_base.i.i = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 512) #6, !srcloc !72
  %rx_dma_laddr.i = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 4
  %11 = ptrtoint ptr %rx_dma_laddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_dma_laddr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %14 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %15, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %13) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %17, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %19, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 256) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 269090816) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %23, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 512) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #6, !srcloc !72
  %rx_dma_vaddr.i = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 5
  %26 = ptrtoint ptr %rx_dma_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_dma_vaddr.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %30 = lshr i32 %29, 24
  %irq_tag.i = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 13
  %inc.i = add nuw nsw i32 %30, 1
  %and.i = and i32 %inc.i, 15
  %31 = ptrtoint ptr %irq_tag.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i, ptr %irq_tag.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %32 = shl nuw nsw i32 %and.i, 24
  %33 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %34, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22, i32 %32) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %36, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 1024) #6, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciefd_write_cmd(ptr nocapture noundef readonly %ucan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 2
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 4
  %cmd_lock = getelementptr inbounds %struct.pciefd_board, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #6
  %cmd_buffer = getelementptr inbounds %struct.peak_canfd_priv, ptr %ucan, i32 0, i32 7
  %2 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_buffer, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %reg_base.i = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 1
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !72
  %9 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd_buffer, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %13) #6, !srcloc !72
  %16 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %board, align 4
  %cmd_lock7 = getelementptr inbounds %struct.pciefd_board, ptr %17, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock7, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciefd_post_cmd(ptr noundef %ucan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pucan_cmd = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 3
  %0 = ptrtoint ptr %pucan_cmd to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %pucan_cmd, align 1
  %2 = and i16 %1, -253
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %2)
  %cond = icmp eq i16 %2, 256
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.can_priv, ptr %ucan, i32 0, i32 21
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %reg_base.i = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 1
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1024) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 512) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %12, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16, i32 512) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i4.i17 = getelementptr i8, ptr %16, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i17, i32 0) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i6.i18 = getelementptr i8, ptr %18, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i18, i32 0) #6, !srcloc !72
  %board = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 2
  %19 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %board, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %add.ptr.i19 = getelementptr i8, ptr %22, i32 64
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %ndev = getelementptr inbounds %struct.peak_canfd_priv, ptr %ucan, i32 0, i32 1
  %24 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 64
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %27, ptr noundef %ucan) #6
  %28 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciefd_enable_tx_path(ptr nocapture noundef %ucan) #2 align 64 {
for.inc.1:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pages_free = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 9
  %0 = ptrtoint ptr %tx_pages_free to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %tx_pages_free, align 4
  %tx_page_index = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 10
  %1 = ptrtoint ptr %tx_page_index to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %tx_page_index, align 2
  %tx_dma_vaddr = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 7
  %2 = ptrtoint ptr %tx_dma_vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_dma_vaddr, align 4
  %tx_pages = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 8
  %4 = ptrtoint ptr %tx_pages to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %tx_pages, align 4
  %tx_dma_laddr = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 6
  %5 = ptrtoint ptr %tx_dma_laddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_dma_laddr, align 4
  %lbase = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 8, i32 0, i32 1
  %7 = ptrtoint ptr %lbase to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %lbase, align 4
  %offset = getelementptr %struct.pciefd_can, ptr %ucan, i32 0, i32 8, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %offset, align 4
  %size = getelementptr %struct.pciefd_can, ptr %ucan, i32 0, i32 8, i32 0, i32 3
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2036, ptr %size, align 4
  %offset.1 = getelementptr %struct.pciefd_can, ptr %ucan, i32 0, i32 8, i32 1, i32 2
  %10 = ptrtoint ptr %offset.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %offset.1, align 4
  %size.1 = getelementptr %struct.pciefd_can, ptr %ucan, i32 0, i32 8, i32 1, i32 3
  %11 = ptrtoint ptr %size.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2036, ptr %size.1, align 4
  %arrayidx4.1 = getelementptr %struct.pciefd_can, ptr %ucan, i32 0, i32 8, i32 1
  %12 = load ptr, ptr %tx_pages, align 4
  %add.ptr.1 = getelementptr i8, ptr %12, i32 2048
  %13 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.1, ptr %arrayidx4.1, align 4
  %14 = load i32, ptr %lbase, align 4
  %add.1 = add i32 %14, 2048
  %lbase19.1 = getelementptr %struct.pciefd_can, ptr %ucan, i32 0, i32 8, i32 1, i32 1
  %15 = ptrtoint ptr %lbase19.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.1, ptr %lbase19.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %reg_base.i.i = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 1
  %16 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 512) #6, !srcloc !72
  %18 = ptrtoint ptr %tx_dma_laddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_dma_laddr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  %21 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %22, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %20) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %24, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %26, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 256) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #6, !srcloc !72
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pciefd_alloc_tx_msg(ptr noundef %ucan, i16 noundef zeroext %msg_size, ptr nocapture noundef %room_left) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pages = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 8
  %tx_page_index = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 10
  %0 = ptrtoint ptr %tx_page_index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_page_index, align 2
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr %struct.pciefd_page, ptr %tx_pages, i32 %conv
  %tx_lock = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #6
  %offset = getelementptr %struct.pciefd_page, ptr %tx_pages, i32 %conv, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %conv6 = zext i16 %msg_size to i32
  %add = add i32 %3, %conv6
  %size = getelementptr %struct.pciefd_page, ptr %tx_pages, i32 %conv, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp7 = icmp ugt i32 %add, %5
  br i1 %cmp7, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then:                                          ; preds = %entry
  %tx_pages_free = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 9
  %6 = ptrtoint ptr %tx_pages_free to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_pages_free, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #6
  br label %cleanup39

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i16 %7, -1
  %8 = ptrtoint ptr %tx_pages_free to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %dec, ptr %tx_pages_free, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 %3
  %11 = ptrtoint ptr %tx_page_index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tx_page_index, align 2
  %13 = and i16 %12, 1
  %14 = xor i16 %13, 1
  store i16 %14, ptr %tx_page_index, align 2
  %conv22 = zext i16 %14 to i32
  %add.ptr23 = getelementptr %struct.pciefd_page, ptr %tx_pages, i32 %conv22
  %15 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 3072, ptr %add.ptr13, align 4
  %type = getelementptr inbounds %struct.pciefd_tx_link, ptr %add.ptr13, i32 0, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 272, ptr %type, align 2
  %lbase = getelementptr %struct.pciefd_page, ptr %tx_pages, i32 %conv22, i32 1
  %17 = ptrtoint ptr %lbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lbase, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %laddr_lo = getelementptr inbounds %struct.pciefd_tx_link, ptr %add.ptr13, i32 0, i32 2
  %20 = ptrtoint ptr %laddr_lo to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %laddr_lo, align 4
  %laddr_hi = getelementptr inbounds %struct.pciefd_tx_link, ptr %add.ptr13, i32 0, i32 3
  %21 = ptrtoint ptr %laddr_hi to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %laddr_hi, align 4
  %offset25 = getelementptr %struct.pciefd_page, ptr %tx_pages, i32 %conv22, i32 2
  %22 = ptrtoint ptr %offset25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %offset25, align 4
  br label %if.end26

if.end26:                                         ; preds = %cleanup, %entry.if.end26_crit_edge
  %page.1 = phi ptr [ %add.ptr23, %cleanup ], [ %add.ptr, %entry.if.end26_crit_edge ]
  %tx_pages_free27 = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 9
  %23 = ptrtoint ptr %tx_pages_free27 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tx_pages_free27, align 4
  %conv28 = zext i16 %24 to i32
  %size29 = getelementptr inbounds %struct.pciefd_page, ptr %page.1, i32 0, i32 3
  %25 = ptrtoint ptr %size29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size29, align 4
  %mul = mul i32 %26, %conv28
  %27 = ptrtoint ptr %room_left to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %room_left, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #6
  %28 = ptrtoint ptr %page.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page.1, align 4
  %offset32 = getelementptr inbounds %struct.pciefd_page, ptr %page.1, i32 0, i32 2
  %30 = ptrtoint ptr %offset32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset32, align 4
  %add.ptr33 = getelementptr i8, ptr %29, i32 %31
  %32 = ptrtoint ptr %size29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size29, align 4
  %34 = add i32 %31, %conv6
  %sub = sub i32 %33, %34
  %35 = ptrtoint ptr %room_left to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %room_left, align 4
  %add38 = add i32 %sub, %36
  store i32 %add38, ptr %room_left, align 4
  br label %cleanup39

cleanup39:                                        ; preds = %if.end26, %cleanup.thread
  %retval.1 = phi ptr [ %add.ptr33, %if.end26 ], [ null, %cleanup.thread ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciefd_write_tx_msg(ptr nocapture noundef %ucan, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pages = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 8
  %tx_page_index = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 10
  %0 = ptrtoint ptr %tx_page_index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_page_index, align 2
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %msg, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv1 = zext i16 %4 to i32
  %offset = getelementptr %struct.pciefd_page, ptr %tx_pages, i32 %conv, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %add = add i32 %6, %conv1
  store i32 %add, ptr %offset, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %reg_base.i = getelementptr inbounds %struct.pciefd_can, ptr %ucan, i32 0, i32 1
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !72
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciefd_irq_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_vaddr = getelementptr inbounds %struct.pciefd_can, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %rx_dma_vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_vaddr, align 4
  %board = getelementptr inbounds %struct.pciefd_can, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board, align 4
  %pci_dev = getelementptr inbounds %struct.pciefd_board, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %msi_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 5)
  %bf.load.i = load i40, ptr %msi_enabled.i, align 1
  %7 = and i40 %bf.load.i, 201326592
  %.not = icmp eq i40 %7, 0
  br i1 %.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %irq_status3 = getelementptr inbounds %struct.pciefd_can, ptr %arg, i32 0, i32 12
  %14 = ptrtoint ptr %irq_status3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %irq_status3, align 4
  %and.i = and i32 %13, 15
  %irq_tag = getelementptr inbounds %struct.pciefd_can, ptr %arg, i32 0, i32 13
  %15 = ptrtoint ptr %irq_tag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_tag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %16)
  %cmp.not = icmp eq i32 %and.i, %16
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %msg = getelementptr inbounds %struct.pciefd_rx_dma, ptr %1, i32 0, i32 3
  %and.i64 = lshr i32 %13, 4
  %shr.i = and i32 %and.i64, 127
  %call10 = tail call i32 @peak_canfd_handle_msgs_list(ptr noundef %arg, ptr noundef %msg, i32 noundef %shr.i) #6
  %17 = ptrtoint ptr %irq_status3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_status3, align 4
  %and.i65 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.not = icmp eq i32 %and.i65, 0
  br i1 %tobool.not, label %if.end7.if.end43_crit_edge, label %if.then13

if.end7.if.end43_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then13:                                        ; preds = %if.end7
  %tx_lock = getelementptr inbounds %struct.pciefd_can, ptr %arg, i32 0, i32 11
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #6
  %tx_pages_free = getelementptr inbounds %struct.pciefd_can, ptr %arg, i32 0, i32 9
  %19 = ptrtoint ptr %tx_pages_free to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tx_pages_free, align 4
  %inc = add i16 %20, 1
  store i16 %inc, ptr %tx_pages_free, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call17) #6
  %echo_lock = getelementptr inbounds %struct.peak_canfd_priv, ptr %arg, i32 0, i32 5
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %echo_lock) #6
  %echo_skb = getelementptr inbounds %struct.can_priv, ptr %arg, i32 0, i32 20
  %21 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %echo_skb, align 4
  %echo_idx = getelementptr inbounds %struct.peak_canfd_priv, ptr %arg, i32 0, i32 4
  %23 = ptrtoint ptr %echo_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %echo_idx, align 4
  %arrayidx = getelementptr ptr, ptr %22, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %tobool37.not = icmp eq ptr %26, null
  br i1 %tobool37.not, label %if.then38, label %if.then13.if.end40_crit_edge

if.then13.if.end40_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then38:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %ndev = getelementptr inbounds %struct.peak_canfd_priv, ptr %arg, i32 0, i32 1
  %27 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %30) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then13.if.end40_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %echo_lock, i32 noundef %call30) #6
  br label %if.end43

if.end43:                                         ; preds = %if.end40, %if.end7.if.end43_crit_edge
  %31 = ptrtoint ptr %rx_dma_vaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_dma_vaddr, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = lshr i32 %34, 24
  %inc.i = add nuw nsw i32 %35, 1
  %and.i66 = and i32 %inc.i, 15
  %36 = ptrtoint ptr %irq_tag to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i66, ptr %irq_tag, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %37 = shl nuw nsw i32 %and.i66, 24
  %reg_base.i.i = getelementptr inbounds %struct.pciefd_can, ptr %arg, i32 0, i32 1
  %38 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %37) #6, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end43 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @peak_canfd_handle_msgs_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__UNIQUE_ID_author461, !1, !"__UNIQUE_ID_author461", i1 false, i1 false}
!1 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description462, !3, !"__UNIQUE_ID_description462", i1 false, i1 false}
!3 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file463, !5, !"__UNIQUE_ID_file463", i1 false, i1 false}
!5 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license464, !5, !"__UNIQUE_ID_license464", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_peak_pciefd__466_866_peak_pciefd_driver_init6, !8, !"__initcall__kmod_peak_pciefd__466_866_peak_pciefd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 866, i32 1}
!9 = !{ptr @__exitcall_peak_pciefd_driver_exit, !8, !"__exitcall_peak_pciefd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @peak_pciefd_driver, !12, !"peak_pciefd_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 859, i32 26}
!13 = !{ptr @peak_pciefd_tbl, !14, !"peak_pciefd_tbl", i1 false, i1 false}
!14 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 198, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 734, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @peak_pciefd_probe.__UNIQUE_ID_ddebug465, !16, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!20 = !{ptr @peak_pciefd_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 756, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 761, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @peak_pciefd_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @peak_pciefd_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 773, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @peak_pciefd_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @peak_pciefd_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 584, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pciefd_can_probe._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pciefd_can_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 616, i32 3}
!41 = !{ptr @pciefd_can_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pciefd_can_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 628, i32 3}
!45 = !{ptr @pciefd_can_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @pciefd_can_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 671, i32 3}
!49 = !{ptr @pciefd_can_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pciefd_can_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @pciefd_can_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 676, i32 2}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/can/peak_canfd/peak_pciefd_main.c", i32 681, i32 2}
!56 = !{ptr @pciefd_can_probe._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pciefd_can_probe._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
!68 = !{i64 2148714851, i64 2148714856, i64 2148714869, i64 2148714913, i64 2148714947, i64 2148714968}
!69 = !{i64 4639646}
!70 = !{i64 2157258400}
!71 = !{i64 2157258786}
!72 = !{i64 4639228}
!73 = !{i64 2157260017}
!74 = !{i64 2157259631}
