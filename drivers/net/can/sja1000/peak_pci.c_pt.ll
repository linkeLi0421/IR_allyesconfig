; ModuleID = '/llk/IR_all_yes/drivers/net/can/sja1000/peak_pci.c_pt.bc'
source_filename = "../drivers/net/can/sja1000/peak_pci.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.peak_pci_chan = type { ptr, ptr, i16, ptr }
%struct.sja1000_priv = type { %struct.can_priv, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i16, i8, i8 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.peak_pciec_card = type { ptr, ptr, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, %struct.delayed_work, i32, [4 x %struct.peak_pciec_chan] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.peak_pciec_chan = type { ptr, i32, i32 }

@__UNIQUE_ID_author463 = internal constant [63 x i8] c"peak_pci.author=Stephane Grosjean <s.grosjean@peak-system.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description464 = internal constant [70 x i8] c"peak_pci.description=Socket-CAN driver for PEAK PCAN PCI family cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file465 = internal constant [47 x i8] c"peak_pci.file=drivers/net/can/sja1000/peak_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license466 = internal constant [24 x i8] c"peak_pci.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_peak_pci__468_781_peak_pci_driver_init6 = internal global ptr @peak_pci_driver_init, section ".initcall6.init", align 4
@peak_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @peak_pci_tbl, ptr @peak_pci_probe, ptr @peak_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_peak_pci_driver_exit = internal global ptr @peak_pci_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"peak_pci\00", [23 x i8] zeroinitializer }, align 32
@peak_pci_tbl = internal constant { [11 x %struct.pci_device_id], [64 x i8] } { [11 x %struct.pci_device_id] [%struct.pci_device_id { i32 28, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.1 to i32), i32 0 }, %struct.pci_device_id { i32 28, i32 3, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.2 to i32), i32 0 }, %struct.pci_device_id { i32 28, i32 5, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.3 to i32), i32 0 }, %struct.pci_device_id { i32 28, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.4 to i32), i32 0 }, %struct.pci_device_id { i32 28, i32 6, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.5 to i32), i32 0 }, %struct.pci_device_id { i32 28, i32 7, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.6 to i32), i32 0 }, %struct.pci_device_id { i32 28, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.7 to i32), i32 0 }, %struct.pci_device_id { i32 28, i32 9, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.8 to i32), i32 0 }, %struct.pci_device_id { i32 28, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.9 to i32), i32 0 }, %struct.pci_device_id { i32 28, i32 10, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.10 to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCAN-PCI\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCAN-PCI Express\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCAN-miniPCI\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCAN-miniPCIe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PCAN-PC/104-Plus Quad\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCAN-PCI/104-Express\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCAN-cPCI\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCAN-Chip PCIe\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCAN-ExpressCard\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCAN-ExpressCard 34\00", [44 x i8] zeroinitializer }, align 32
@peak_pci_probe.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 -113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peak_pci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/can/sja1000/peak_pci.c\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"probing device %04x:%04x:%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@peak_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.12, i32 591, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to map PCI resource #0\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@peak_pci_probe._entry_ptr = internal global ptr @peak_pci_probe._entry, section ".printk_index", align 4
@peak_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.12, i32 598, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to map PCI resource #1\0A\00", [33 x i8] zeroinitializer }, align 32
@peak_pci_probe._entry_ptr.19 = internal global ptr @peak_pci_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" FW v%u.%u.%u\00", [18 x i8] zeroinitializer }, align 32
@peak_pci_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.12, i32 626, ptr @.str.23, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%ux CAN %s%s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@peak_pci_probe._entry_ptr.24 = internal global ptr @peak_pci_probe._entry.21, section ".printk_index", align 4
@peak_pci_icr_masks = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 2, i16 1, i16 64, i16 128], [24 x i8] zeroinitializer }, align 32
@peak_pci_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.11, ptr @.str.12, i32 678, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to probe device (err %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@peak_pci_probe._entry_ptr.27 = internal global ptr @peak_pci_probe._entry.25, section ".printk_index", align 4
@peak_pci_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.11, ptr @.str.12, i32 685, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register device\0A\00", [37 x i8] zeroinitializer }, align 32
@peak_pci_probe._entry_ptr.30 = internal global ptr @peak_pci_probe._entry.28, section ".printk_index", align 4
@peak_pci_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.11, ptr @.str.12, i32 691, ptr @.str.23, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s at reg_base=0x%p cfg_base=0x%p irq=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@peak_pci_probe._entry_ptr.33 = internal global ptr @peak_pci_probe._entry.31, section ".printk_index", align 4
@peak_pciec_i2c_bit_ops = internal constant { %struct.i2c_algo_bit_data, [56 x i8] } { %struct.i2c_algo_bit_data { ptr null, ptr @pita_setsda, ptr @pita_setscl, ptr @pita_getsda, ptr @pita_getscl, ptr null, ptr null, i32 10, i32 100, i8 0 }, [56 x i8] zeroinitializer }, align 32
@peak_pciec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.12, i32 477, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c init failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"peak_pciec_probe\00", [47 x i8] zeroinitializer }, align 32
@peak_pciec_probe._entry_ptr = internal global ptr @peak_pciec_probe._entry, section ".printk_index", align 4
@peak_pciec_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.12, i32 483, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"leds hardware init failed\0A\00", [37 x i8] zeroinitializer }, align 32
@peak_pciec_probe._entry_ptr.39 = internal global ptr @peak_pciec_probe._entry.37, section ".printk_index", align 4
@peak_pciec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&card->led_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@peak_pciec_probe.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&card->led_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@peak_pci_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.12, i32 754, ptr @.str.23, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"removing device %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"peak_pci_remove\00", [16 x i8] zeroinitializer }, align 32
@peak_pci_remove._entry_ptr = internal global ptr @peak_pci_remove._entry, section ".printk_index", align 4
@str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"peak_i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@switch.table.peak_pci_probe = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"peak_pci_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 774, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 781, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"peak_pci_tbl\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 74, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 77, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 80, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 83, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 86, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 89, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 92, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 95, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 98, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 103, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 106, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 573, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 591, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 598, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 618, i32 36 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 625, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"peak_pci_icr_masks\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 70, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 676, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 685, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 689, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"peak_pciec_i2c_bit_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 427, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 477, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 483, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 487, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [38 x i8] c"../drivers/net/can/sja1000/peak_pci.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 754, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [28 x i8] c"switch.table.peak_pci_probe\00", align 1
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author463, ptr @__UNIQUE_ID_description464, ptr @__UNIQUE_ID_file465, ptr @__UNIQUE_ID_license466, ptr @__exitcall_peak_pci_driver_exit, ptr @__initcall__kmod_peak_pci__468_781_peak_pci_driver_init6, ptr @peak_pci_driver_exit, ptr @peak_pci_probe._entry, ptr @peak_pci_probe._entry.17, ptr @peak_pci_probe._entry.21, ptr @peak_pci_probe._entry.25, ptr @peak_pci_probe._entry.28, ptr @peak_pci_probe._entry.31, ptr @peak_pci_probe._entry_ptr, ptr @peak_pci_probe._entry_ptr.19, ptr @peak_pci_probe._entry_ptr.24, ptr @peak_pci_probe._entry_ptr.27, ptr @peak_pci_probe._entry_ptr.30, ptr @peak_pci_probe._entry_ptr.33, ptr @peak_pci_remove._entry, ptr @peak_pci_remove._entry_ptr, ptr @peak_pciec_probe._entry, ptr @peak_pciec_probe._entry.37, ptr @peak_pciec_probe._entry_ptr, ptr @peak_pciec_probe._entry_ptr.39, ptr @peak_pci_driver, ptr @.str, ptr @peak_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @peak_pci_icr_masks, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @peak_pciec_i2c_bit_ops, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @peak_pciec_probe.__key, ptr @.str.40, ptr @peak_pciec_probe.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @str, ptr @switch.table.peak_pci_probe], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pci_tbl to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pci_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pci_icr_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pci_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pci_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pci_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pciec_i2c_bit_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pciec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pciec_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pciec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pciec_probe.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_pci_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.peak_pci_probe to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @peak_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @peak_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @peak_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %sub_sys_id = alloca i16, align 2
  %fw_str = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sub_sys_id) #8
  %0 = ptrtoint ptr %sub_sys_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %sub_sys_id, align 2, !annotation !103
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %fw_str) #8
  %1 = call ptr @memset(ptr %fw_str, i32 0, i32 14)
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.failure_disable_pci_crit_edge

if.end.failure_disable_pci_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %failure_disable_pci

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 46, ptr noundef nonnull %sub_sys_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body, label %if.end4.failure_release_regions_crit_edge

if.end4.failure_release_regions_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %failure_release_regions

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @peak_pci_probe.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@peak_pci_probe, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !104

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  %conv = zext i16 %3 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %conv16 = zext i16 %5 to i32
  %6 = ptrtoint ptr %sub_sys_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sub_sys_id, align 2
  %conv17 = zext i16 %7 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @peak_pci_probe.__UNIQUE_ID_ddebug467, ptr noundef %dev15, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %conv16, i32 noundef %conv17) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %call19 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 68, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.end.failure_release_regions_crit_edge

do.end.failure_release_regions_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %failure_release_regions

if.end22:                                         ; preds = %do.end
  %8 = ptrtoint ptr %sub_sys_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sub_sys_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %9)
  %cmp = icmp ugt i16 %9, 11
  br i1 %cmp, label %if.end22.if.end38_crit_edge, label %if.else

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %9)
  %cmp27 = icmp ugt i16 %9, 9
  br i1 %cmp27, label %if.else.if.end38_crit_edge, label %if.else30

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %9)
  %cmp32 = icmp ugt i16 %9, 3
  %not.cmp32 = xor i1 %cmp32, true
  %.301 = select i1 %cmp32, i32 2, i32 1
  br label %if.end38

if.end38:                                         ; preds = %if.else30, %if.else.if.end38_crit_edge, %if.end22.if.end38_crit_edge
  %cmp115 = phi i1 [ false, %if.end22.if.end38_crit_edge ], [ false, %if.else.if.end38_crit_edge ], [ %not.cmp32, %if.else30 ]
  %channels.0 = phi i32 [ 4, %if.end22.if.end38_crit_edge ], [ 3, %if.else.if.end38_crit_edge ], [ %.301, %if.else30 ]
  %call39 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 4096) #8
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.14) #11
  br label %failure_release_regions

if.end46:                                         ; preds = %if.end38
  %mul = shl nuw nsw i32 %channels.0, 10
  %call47 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef %mul) #8
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %do.end52, label %do.body55

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.18) #11
  br label %failure_unmap_cfg_base

do.body55:                                        ; preds = %if.end46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %call39, i32 24
  %add.ptr58 = getelementptr i8, ptr %call39, i32 26
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58, i16 1280) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #8, !srcloc !108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  call void @arm_heavy_mb() #8
  %add.ptr67 = getelementptr i8, ptr %call39, i32 31
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr67, i8 5) #8, !srcloc !108
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr67, i8 4) #8, !srcloc !108
  %add.ptr73 = getelementptr i8, ptr %call39, i32 64
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #8, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool77.not = icmp eq i32 %10, 0
  br i1 %tobool77.not, label %do.body55.do.end93_crit_edge, label %if.then78

do.body55.do.end93_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

if.then78:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr81 = getelementptr i8, ptr %call39, i32 68
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #8, !srcloc !111
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %shr = lshr i32 %12, 12
  %and = and i32 %shr, 15
  %shr85 = lshr i32 %12, 8
  %and86 = and i32 %shr85, 15
  %shr87 = lshr i32 %12, 4
  %and88 = and i32 %shr87, 15
  %call89 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_str, i32 noundef 14, ptr noundef nonnull @.str.20, i32 noundef %and, i32 noundef %and86, i32 noundef %and88)
  br label %do.end93

do.end93:                                         ; preds = %if.then78, %do.body55.do.end93_crit_edge
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_data, align 4
  %15 = inttoptr i32 %14 to ptr
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev94, ptr noundef nonnull @.str.22, i32 noundef %channels.0, ptr noundef %15, ptr noundef nonnull %fw_str) #11
  %add.ptr99 = getelementptr i8, ptr %call39, i32 2
  %16 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr99) #8, !srcloc !114
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %device135 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %do.end164.for.body_crit_edge, %do.end93
  %icr.0322 = phi i16 [ %17, %do.end93 ], [ %or128300, %do.end164.for.body_crit_edge ]
  %i.0321 = phi i32 [ 0, %do.end93 ], [ %inc, %do.end164.for.body_crit_edge ]
  %call105 = call ptr @alloc_sja1000dev(i32 noundef 16) #8
  %tobool106.not = icmp eq ptr %call105, null
  br i1 %tobool106.not, label %for.body.do.body176_crit_edge, label %if.end108

for.body.do.body176_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body176

if.end108:                                        ; preds = %for.body
  %priv110 = getelementptr i8, ptr %call105, i32 2636
  %18 = ptrtoint ptr %priv110 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv110, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call39, ptr %19, align 4
  %mul112 = shl i32 %i.0321, 10
  %add.ptr113 = getelementptr i8, ptr %call47, i32 %mul112
  %reg_base114 = getelementptr i8, ptr %call105, i32 2644
  %21 = ptrtoint ptr %reg_base114 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr113, ptr %reg_base114, align 4
  %read_reg = getelementptr i8, ptr %call105, i32 2620
  %22 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @peak_pci_read_reg, ptr %read_reg, align 4
  %write_reg = getelementptr i8, ptr %call105, i32 2624
  %23 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @peak_pci_write_reg, ptr %write_reg, align 4
  %post_irq = getelementptr i8, ptr %call105, i32 2632
  %24 = ptrtoint ptr %post_irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @peak_pci_post_irq, ptr %post_irq, align 4
  %clock = getelementptr i8, ptr %call105, i32 2440
  %25 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8000000, ptr %clock, align 4
  %ocr = getelementptr i8, ptr %call105, i32 2698
  %26 = ptrtoint ptr %ocr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 24, ptr %ocr, align 2
  %cdr = getelementptr i8, ptr %call105, i32 2699
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0321)
  %cmp117 = icmp ne i32 %i.0321, 0
  %or.cond = select i1 %cmp115, i1 true, i1 %cmp117
  %spec.store.select = select i1 %or.cond, i8 79, i8 71
  %27 = ptrtoint ptr %cdr to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.store.select, ptr %cdr, align 1
  %irq_flags = getelementptr i8, ptr %call105, i32 2648
  %28 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %irq_flags, align 4
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %irq124 = getelementptr inbounds %struct.net_device, ptr %call105, i32 0, i32 64
  %31 = ptrtoint ptr %irq124 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %irq124, align 4
  %arrayidx = getelementptr [4 x i16], ptr @peak_pci_icr_masks, i32 0, i32 %i.0321
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx, align 2
  %icr_mask = getelementptr inbounds %struct.peak_pci_chan, ptr %19, i32 0, i32 2
  %34 = ptrtoint ptr %icr_mask to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %icr_mask, align 4
  %or128300 = or i16 %33, %icr.0322
  %parent = getelementptr inbounds %struct.net_device, ptr %call105, i32 0, i32 133, i32 1
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev94, ptr %parent, align 8
  %conv132 = trunc i32 %i.0321 to i16
  %dev_id = getelementptr inbounds %struct.net_device, ptr %call105, i32 0, i32 60
  %36 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv132, ptr %dev_id, align 2
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i, align 4
  %prev_dev134 = getelementptr inbounds %struct.peak_pci_chan, ptr %19, i32 0, i32 1
  %39 = ptrtoint ptr %prev_dev134 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %prev_dev134, align 4
  store ptr %call105, ptr %driver_data.i.i, align 4
  %40 = ptrtoint ptr %device135 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %device135, align 2
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i16 %41, label %if.end108.if.end153_crit_edge [
    i16 2, label %if.end108.if.then144_crit_edge
    i16 10, label %if.end108.if.then144_crit_edge380
  ]

if.end108.if.then144_crit_edge380:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.end108.if.then144_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.end108.if.end153_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.then144:                                       ; preds = %if.end108.if.then144_crit_edge, %if.end108.if.then144_crit_edge380
  %call145 = call fastcc i32 @peak_pciec_probe(ptr noundef %pdev, ptr noundef nonnull %call105)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then144.if.end153_crit_edge, label %do.end150

if.then144.if.end153_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

do.end150:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.26, i32 noundef %call145) #11
  br label %failure_free_dev

if.end153:                                        ; preds = %if.then144.if.end153_crit_edge, %if.end108.if.end153_crit_edge
  %call154 = call i32 @register_sja1000dev(ptr noundef nonnull %call105) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %do.end164, label %do.end159

do.end159:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.29) #11
  br label %failure_free_dev

do.end164:                                        ; preds = %if.end153
  %43 = ptrtoint ptr %reg_base114 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_base114, align 4
  %45 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %19, align 4
  %47 = ptrtoint ptr %irq124 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq124, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev94, ptr noundef nonnull @.str.32, ptr noundef nonnull %call105, ptr noundef %44, ptr noundef %46, i32 noundef %48) #11
  %inc = add nuw nsw i32 %i.0321, 1
  %exitcond.not = icmp eq i32 %inc, %channels.0
  br i1 %exitcond.not, label %do.body170, label %do.end164.for.body_crit_edge

do.end164.for.body_crit_edge:                     ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body170:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  call void @arm_heavy_mb() #8
  %49 = call i16 @llvm.bswap.i16(i16 %or128300)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr99, i16 %49) #8, !srcloc !106
  br label %cleanup

failure_free_dev:                                 ; preds = %do.end159, %do.end150
  %err.0 = phi i32 [ %call145, %do.end150 ], [ %call154, %do.end159 ]
  %prev_dev134343 = getelementptr inbounds %struct.peak_pci_chan, ptr %19, i32 0, i32 1
  %50 = ptrtoint ptr %prev_dev134343 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev_dev134343, align 4
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %driver_data.i.i, align 4
  call void @free_sja1000dev(ptr noundef nonnull %call105) #8
  br label %do.body176

do.body176:                                       ; preds = %failure_free_dev, %for.body.do.body176_crit_edge
  %err.1 = phi i32 [ %err.0, %failure_free_dev ], [ -12, %for.body.do.body176_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr99, i16 0) #8, !srcloc !106
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i.i, align 4
  %tobool183.not323 = icmp eq ptr %54, null
  br i1 %tobool183.not323, label %do.body176.if.end194_crit_edge, label %do.body176.for.body184_crit_edge

do.body176.for.body184_crit_edge:                 ; preds = %do.body176
  br label %for.body184

do.body176.if.end194_crit_edge:                   ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

for.body184:                                      ; preds = %for.body184.for.body184_crit_edge, %do.body176.for.body184_crit_edge
  %dev.0324 = phi ptr [ %58, %for.body184.for.body184_crit_edge ], [ %54, %do.body176.for.body184_crit_edge ]
  %priv186 = getelementptr i8, ptr %dev.0324, i32 2636
  %55 = ptrtoint ptr %priv186 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv186, align 4
  %prev_dev187 = getelementptr inbounds %struct.peak_pci_chan, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev_dev187 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev_dev187, align 4
  call void @unregister_sja1000dev(ptr noundef nonnull %dev.0324) #8
  call void @free_sja1000dev(ptr noundef nonnull %dev.0324) #8
  %tobool183.not = icmp eq ptr %58, null
  br i1 %tobool183.not, label %for.end189, label %for.body184.for.body184_crit_edge

for.body184.for.body184_crit_edge:                ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body184

for.end189:                                       ; preds = %for.body184
  %tobool190.not = icmp eq ptr %56, null
  br i1 %tobool190.not, label %for.end189.if.end194_crit_edge, label %land.lhs.true

for.end189.if.end194_crit_edge:                   ; preds = %for.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

land.lhs.true:                                    ; preds = %for.end189
  %pciec_card = getelementptr inbounds %struct.peak_pci_chan, ptr %56, i32 0, i32 3
  %59 = ptrtoint ptr %pciec_card to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pciec_card, align 4
  %tobool191.not = icmp eq ptr %60, null
  br i1 %tobool191.not, label %land.lhs.true.if.end194_crit_edge, label %if.then192

land.lhs.true.if.end194_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.then192:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @peak_pciec_remove(ptr noundef nonnull %60)
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %land.lhs.true.if.end194_crit_edge, %for.end189.if.end194_crit_edge, %do.body176.if.end194_crit_edge
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call47) #8
  br label %failure_unmap_cfg_base

failure_unmap_cfg_base:                           ; preds = %if.end194, %do.end52
  %err.2 = phi i32 [ %err.1, %if.end194 ], [ -12, %do.end52 ]
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call39) #8
  br label %failure_release_regions

failure_release_regions:                          ; preds = %failure_unmap_cfg_base, %do.end44, %do.end.failure_release_regions_crit_edge, %if.end4.failure_release_regions_crit_edge
  %err.3 = phi i32 [ %call5, %if.end4.failure_release_regions_crit_edge ], [ %call19, %do.end.failure_release_regions_crit_edge ], [ %err.2, %failure_unmap_cfg_base ], [ -12, %do.end44 ]
  call void @pci_release_regions(ptr noundef %pdev) #8
  br label %failure_disable_pci

failure_disable_pci:                              ; preds = %failure_release_regions, %if.end.failure_disable_pci_crit_edge
  %err.4 = phi i32 [ %call1, %if.end.failure_disable_pci_crit_edge ], [ %err.3, %failure_release_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err.4)
  %cmp.i = icmp slt i32 %err.4, 1
  br i1 %cmp.i, label %failure_disable_pci.cleanup_crit_edge, label %if.end.i

failure_disable_pci.cleanup_crit_edge:            ; preds = %failure_disable_pci
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %failure_disable_pci
  %switch.tableidx = add i32 %err.4, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %61 = icmp ult i32 %switch.tableidx, 9
  br i1 %61, label %switch.lookup, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.peak_pci_probe, i32 0, i32 %switch.tableidx
  %62 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %62)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.i.cleanup_crit_edge, %failure_disable_pci.cleanup_crit_edge, %do.body170, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body170 ], [ %call, %entry.cleanup_crit_edge ], [ %err.4, %failure_disable_pci.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -34, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %fw_str) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sub_sys_id) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @peak_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv2 = getelementptr i8, ptr %1, i32 2636
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %reg_base4 = getelementptr i8, ptr %1, i32 2644
  %6 = ptrtoint ptr %reg_base4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %add.ptr5 = getelementptr i8, ptr %5, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 0) #8, !srcloc !106
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %prev_dev641 = getelementptr inbounds %struct.peak_pci_chan, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev_dev641 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev_dev641, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.43, ptr noundef %1) #11
  %tobool.not42 = icmp eq ptr %9, null
  br i1 %tobool.not42, label %entry.land.lhs.true_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  br label %cleanup

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %dev.0.lcssa = phi ptr [ %1, %entry.land.lhs.true_crit_edge ], [ %12, %cleanup.land.lhs.true_crit_edge ]
  %chan.0.lcssa = phi ptr [ %3, %entry.land.lhs.true_crit_edge ], [ %14, %cleanup.land.lhs.true_crit_edge ]
  %pciec_card = getelementptr inbounds %struct.peak_pci_chan, ptr %chan.0.lcssa, i32 0, i32 3
  %10 = ptrtoint ptr %pciec_card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pciec_card, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %land.lhs.true.while.end_crit_edge, label %if.then

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @peak_pciec_remove(ptr noundef nonnull %11)
  br label %while.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %12 = phi ptr [ %16, %cleanup.cleanup_crit_edge ], [ %9, %entry.cleanup_crit_edge ]
  %dev.043 = phi ptr [ %12, %cleanup.cleanup_crit_edge ], [ %1, %entry.cleanup_crit_edge ]
  tail call void @unregister_sja1000dev(ptr noundef %dev.043) #8
  tail call void @free_sja1000dev(ptr noundef %dev.043) #8
  %priv17 = getelementptr i8, ptr %12, i32 2636
  %13 = ptrtoint ptr %priv17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv17, align 4
  %prev_dev6 = getelementptr inbounds %struct.peak_pci_chan, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev_dev6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev_dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.43, ptr noundef nonnull %12) #11
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %cleanup.land.lhs.true_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.land.lhs.true_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

while.end:                                        ; preds = %if.then, %land.lhs.true.while.end_crit_edge
  tail call void @unregister_sja1000dev(ptr noundef %dev.0.lcssa) #8
  tail call void @free_sja1000dev(ptr noundef %dev.0.lcssa) #8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %7) #8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %5) #8
  tail call void @pci_release_regions(ptr noundef %pdev) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
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
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_sja1000dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @peak_pci_read_reg(ptr nocapture noundef readonly %priv, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %shl = shl i32 %port, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @peak_pci_write_reg(ptr nocapture noundef readonly %priv, i32 noundef %port, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %shl = shl i32 %port, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #8, !srcloc !108
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @peak_pci_post_irq(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #8, !srcloc !114
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %icr_mask = getelementptr inbounds %struct.peak_pci_chan, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %icr_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %icr_mask, align 4
  %and10 = and i16 %7, %5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and10)
  %tobool.not = icmp eq i16 %and10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %icr_mask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %icr_mask, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %10) #8, !srcloc !106
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @peak_pciec_probe(ptr noundef %pdev, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buffer.i49.i = alloca [2 x i8], align 1
  %msg.i50.i = alloca %struct.i2c_msg, align 4
  %buffer.i41.i = alloca [2 x i8], align 1
  %msg.i42.i = alloca %struct.i2c_msg, align 4
  %buffer.i33.i = alloca [2 x i8], align 1
  %msg.i34.i = alloca %struct.i2c_msg, align 4
  %buffer.i25.i = alloca [2 x i8], align 1
  %msg.i26.i = alloca %struct.i2c_msg, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %dev, i32 2636
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %prev_dev = getelementptr inbounds %struct.peak_pci_chan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %priv4 = getelementptr i8, ptr %3, i32 2636
  %4 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv4, align 4
  %pciec_card = getelementptr inbounds %struct.peak_pci_chan, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pciec_card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pciec_card, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.then.cleanup61_crit_edge, label %if.then.if.end58_crit_edge

if.then.if.end58_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then.cleanup61_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup61

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1568) #12
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.else.cleanup61_crit_edge, label %if.end11

if.else.cleanup61_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup61

if.end11:                                         ; preds = %if.else
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call7.i.i, align 8
  %reg_base = getelementptr i8, ptr %dev, i32 2644
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base, align 4
  %reg_base13 = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %reg_base13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %reg_base13, align 4
  %led_chip = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %led_chip to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %led_chip, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 4, i32 9, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev14, ptr %parent, align 8
  %i2c_bit = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 3
  %algo_data = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %i2c_bit, ptr %algo_data, align 4
  %name = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 4, i32 12
  %18 = call ptr @memcpy(ptr %name, ptr @str, i32 48)
  %19 = call ptr @memcpy(ptr %i2c_bit, ptr @peak_pciec_i2c_bit_ops, i32 40)
  %udelay = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %udelay, align 8
  %timeout = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 100, ptr %timeout, align 4
  %22 = ptrtoint ptr %i2c_bit to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %i2c_bit, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 26
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  %24 = and i8 %23, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %26, i32 26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i, i8 %24) #8, !srcloc !108
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %28, i32 26
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %30 = and i8 %29, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %add.ptr4.i3.i = getelementptr i8, ptr %32, i32 26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i3.i, i8 %30) #8, !srcloc !108
  %call25 = tail call i32 @i2c_bit_add_bus(ptr noundef %led_chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end29, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.35) #11
  br label %pciec_init_err_1

if.end29:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #8
  %33 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %buffer.i.i, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 44, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %36 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196607, ptr %36, align 4
  %38 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 98, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buffer.i.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %led_chip, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  %41 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.peak_pciec_init_leds.exit_crit_edge

if.end29.peak_pciec_init_leds.exit_crit_edge:     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_init_leds.exit

if.end.i:                                         ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i25.i) #8
  %42 = getelementptr inbounds [2 x i8], ptr %buffer.i25.i, i32 0, i32 1
  %43 = ptrtoint ptr %buffer.i25.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %buffer.i25.i, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -128, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i26.i) #8
  %45 = getelementptr inbounds i8, ptr %msg.i26.i, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 196607, ptr %45, align 4
  %47 = ptrtoint ptr %msg.i26.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 98, ptr %msg.i26.i, align 4
  %flags.i27.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26.i, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i27.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i27.i, align 2
  %buf.i29.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26.i, i32 0, i32 3
  %49 = ptrtoint ptr %buf.i29.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buffer.i25.i, ptr %buf.i29.i, align 4
  %call.i31.i = call i32 @i2c_transfer(ptr noundef %led_chip, ptr noundef nonnull %msg.i26.i, i32 noundef 1) #8
  %50 = call i32 @llvm.smin.i32(i32 %call.i31.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i25.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i31.i)
  %tobool2.not.i = icmp sgt i32 %call.i31.i, -1
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.peak_pciec_init_leds.exit_crit_edge

if.end.i.peak_pciec_init_leds.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_init_leds.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i33.i) #8
  %51 = getelementptr inbounds [2 x i8], ptr %buffer.i33.i, i32 0, i32 1
  %52 = ptrtoint ptr %buffer.i33.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %buffer.i33.i, align 1
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 8, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i34.i) #8
  %54 = getelementptr inbounds i8, ptr %msg.i34.i, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 196607, ptr %54, align 4
  %56 = ptrtoint ptr %msg.i34.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 98, ptr %msg.i34.i, align 4
  %flags.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34.i, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i35.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i35.i, align 2
  %buf.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34.i, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i37.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %buffer.i33.i, ptr %buf.i37.i, align 4
  %call.i39.i = call i32 @i2c_transfer(ptr noundef %led_chip, ptr noundef nonnull %msg.i34.i, i32 noundef 1) #8
  %59 = call i32 @llvm.smin.i32(i32 %call.i39.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i34.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i33.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i39.i)
  %tobool6.not.i = icmp sgt i32 %call.i39.i, -1
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.peak_pciec_init_leds.exit_crit_edge

if.end4.i.peak_pciec_init_leds.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_init_leds.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i41.i) #8
  %60 = getelementptr inbounds [2 x i8], ptr %buffer.i41.i, i32 0, i32 1
  %61 = ptrtoint ptr %buffer.i41.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 4, ptr %buffer.i41.i, align 1
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -128, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i42.i) #8
  %63 = getelementptr inbounds i8, ptr %msg.i42.i, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 196607, ptr %63, align 4
  %65 = ptrtoint ptr %msg.i42.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 98, ptr %msg.i42.i, align 4
  %flags.i43.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42.i, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i43.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i43.i, align 2
  %buf.i45.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42.i, i32 0, i32 3
  %67 = ptrtoint ptr %buf.i45.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %buffer.i41.i, ptr %buf.i45.i, align 4
  %call.i47.i = call i32 @i2c_transfer(ptr noundef %led_chip, ptr noundef nonnull %msg.i42.i, i32 noundef 1) #8
  %68 = call i32 @llvm.smin.i32(i32 %call.i47.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i42.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i47.i)
  %tobool10.not.i = icmp sgt i32 %call.i47.i, -1
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.peak_pciec_init_leds.exit_crit_edge

if.end8.i.peak_pciec_init_leds.exit_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_init_leds.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i49.i) #8
  %69 = getelementptr inbounds [2 x i8], ptr %buffer.i49.i, i32 0, i32 1
  %70 = ptrtoint ptr %buffer.i49.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 5, ptr %buffer.i49.i, align 1
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 64, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i50.i) #8
  %72 = getelementptr inbounds i8, ptr %msg.i50.i, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 196607, ptr %72, align 4
  %74 = ptrtoint ptr %msg.i50.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 98, ptr %msg.i50.i, align 4
  %flags.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 1
  %75 = ptrtoint ptr %flags.i51.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags.i51.i, align 2
  %buf.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 3
  %76 = ptrtoint ptr %buf.i53.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %buffer.i49.i, ptr %buf.i53.i, align 4
  %led_cache.i.i = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %led_cache.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %led_cache.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %78)
  %cmp4.i.i = icmp eq i8 %78, 64
  br i1 %cmp4.i.i, label %if.end12.i.peak_pciec_write_pca9553.exit.i_crit_edge, label %if.end.i.i

if.end12.i.peak_pciec_write_pca9553.exit.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_write_pca9553.exit.i

if.end.i.i:                                       ; preds = %if.end12.i
  %call.i55.i = call i32 @i2c_transfer(ptr noundef %led_chip, ptr noundef nonnull %msg.i50.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i55.i)
  %cmp6.i56.i = icmp sgt i32 %call.i55.i, -1
  %79 = call i32 @llvm.smin.i32(i32 %call.i55.i, i32 0) #8
  br i1 %cmp6.i56.i, label %if.then13.i.i, label %if.end.i.i.peak_pciec_write_pca9553.exit.i_crit_edge

if.end.i.i.peak_pciec_write_pca9553.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_write_pca9553.exit.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %led_cache.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 64, ptr %led_cache.i.i, align 8
  br label %peak_pciec_write_pca9553.exit.i

peak_pciec_write_pca9553.exit.i:                  ; preds = %if.then13.i.i, %if.end.i.i.peak_pciec_write_pca9553.exit.i_crit_edge, %if.end12.i.peak_pciec_write_pca9553.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end12.i.peak_pciec_write_pca9553.exit.i_crit_edge ], [ %79, %if.end.i.i.peak_pciec_write_pca9553.exit.i_crit_edge ], [ 0, %if.then13.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i49.i) #8
  br label %peak_pciec_init_leds.exit

peak_pciec_init_leds.exit:                        ; preds = %peak_pciec_write_pca9553.exit.i, %if.end8.i.peak_pciec_init_leds.exit_crit_edge, %if.end4.i.peak_pciec_init_leds.exit_crit_edge, %if.end.i.peak_pciec_init_leds.exit_crit_edge, %if.end29.peak_pciec_init_leds.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.i, %peak_pciec_write_pca9553.exit.i ], [ %41, %if.end29.peak_pciec_init_leds.exit_crit_edge ], [ %50, %if.end.i.peak_pciec_init_leds.exit_crit_edge ], [ %59, %if.end4.i.peak_pciec_init_leds.exit_crit_edge ], [ %68, %if.end8.i.peak_pciec_init_leds.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool31.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool31.not, label %do.body39, label %do.end35

do.end35:                                         ; preds = %peak_pciec_init_leds.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.38) #11
  call void @i2c_del_adapter(ptr noundef %led_chip) #8
  br label %pciec_init_err_1

do.body39:                                        ; preds = %peak_pciec_init_leds.exit
  call void @__sanitizer_cov_trace_pc() #10
  %led_work = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 5
  call void @__init_work(ptr noundef %led_work, i32 noundef 0) #8
  %81 = ptrtoint ptr %led_work to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -64, ptr %led_work, align 8
  %lockdep_map = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.40, ptr noundef nonnull @peak_pciec_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry47 = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %82 = ptrtoint ptr %entry47 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %entry47, ptr %entry47, align 4
  %prev.i = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %entry47, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %84 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @peak_pciec_led_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.peak_pciec_card, ptr %call7.i.i, i32 0, i32 5, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.42, ptr noundef nonnull @peak_pciec_probe.__key.41) #8
  %write_reg = getelementptr i8, ptr %dev, i32 2624
  %85 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @peak_pciec_write_reg, ptr %write_reg, align 4
  br label %if.end58

if.end58:                                         ; preds = %do.body39, %if.then.if.end58_crit_edge
  %card.0 = phi ptr [ %7, %if.then.if.end58_crit_edge ], [ %call7.i.i, %do.body39 ]
  %pciec_card59 = getelementptr inbounds %struct.peak_pci_chan, ptr %1, i32 0, i32 3
  %86 = ptrtoint ptr %pciec_card59 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %card.0, ptr %pciec_card59, align 4
  %chan_count = getelementptr inbounds %struct.peak_pciec_card, ptr %card.0, i32 0, i32 6
  %87 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chan_count, align 4
  %inc = add i32 %88, 1
  store i32 %inc, ptr %chan_count, align 4
  %arrayidx = getelementptr %struct.peak_pciec_card, ptr %card.0, i32 0, i32 7, i32 %88
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %dev, ptr %arrayidx, align 4
  br label %cleanup61

pciec_init_err_1:                                 ; preds = %do.end35, %do.end
  %err.0 = phi i32 [ %call25, %do.end ], [ %retval.0.i, %do.end35 ]
  %90 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i.i104 = getelementptr i8, ptr %91, i32 26
  %92 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i104) #8, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  %93 = and i8 %92, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call7.i.i, align 8
  %add.ptr4.i.i105 = getelementptr i8, ptr %95, i32 26
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i105, i8 %93) #8, !srcloc !108
  %96 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i2.i106 = getelementptr i8, ptr %97, i32 26
  %98 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i106) #8, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %99 = and i8 %98, -5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call7.i.i, align 8
  %add.ptr4.i3.i107 = getelementptr i8, ptr %101, i32 26
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i3.i107, i8 %99) #8, !srcloc !108
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup61

cleanup61:                                        ; preds = %pciec_init_err_1, %if.end58, %if.else.cleanup61_crit_edge, %if.then.cleanup61_crit_edge
  %retval.1 = phi i32 [ 0, %if.end58 ], [ -19, %if.then.cleanup61_crit_edge ], [ %err.0, %pciec_init_err_1 ], [ -12, %if.else.cleanup61_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @peak_pciec_remove(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  %buffer.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %led_work.i = getelementptr inbounds %struct.peak_pciec_card, ptr %card, i32 0, i32 5
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %led_work.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #8
  %0 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 5, ptr %buffer.i.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 5, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196607, ptr %3, align 4
  %5 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 98, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buffer.i.i, ptr %buf.i.i, align 4
  %led_cache.i.i = getelementptr inbounds %struct.peak_pciec_card, ptr %card, i32 0, i32 2
  %8 = ptrtoint ptr %led_cache.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %led_cache.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp4.i.i = icmp eq i8 %9, 5
  br i1 %cmp4.i.i, label %entry.peak_pciec_leds_exit.exit_crit_edge, label %if.end.i.i

entry.peak_pciec_leds_exit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_leds_exit.exit

if.end.i.i:                                       ; preds = %entry
  %led_chip.i.i = getelementptr inbounds %struct.peak_pciec_card, ptr %card, i32 0, i32 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %led_chip.i.i, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp6.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp6.i.i, label %if.then13.i.i, label %if.end.i.i.peak_pciec_leds_exit.exit_crit_edge

if.end.i.i.peak_pciec_leds_exit.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_leds_exit.exit

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %led_cache.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %led_cache.i.i, align 8
  br label %peak_pciec_leds_exit.exit

peak_pciec_leds_exit.exit:                        ; preds = %if.then13.i.i, %if.end.i.i.peak_pciec_leds_exit.exit_crit_edge, %entry.peak_pciec_leds_exit.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #8
  %led_chip = getelementptr inbounds %struct.peak_pciec_card, ptr %card, i32 0, i32 4
  call void @i2c_del_adapter(ptr noundef %led_chip) #8
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 26
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  %14 = and i8 %13, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %16, i32 26
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i, i8 %14) #8, !srcloc !108
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %18, i32 26
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i) #8, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %20 = and i8 %19, -5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 8
  %add.ptr4.i3.i = getelementptr i8, ptr %22, i32 26
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i3.i, i8 %20) #8, !srcloc !108
  call void @kfree(ptr noundef %card) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @peak_pciec_led_work(ptr noundef %work) #2 align 64 {
entry:
  %buffer.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %led_cache = getelementptr i8, ptr %work, i32 -1408
  %0 = ptrtoint ptr %led_cache to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %led_cache, align 8
  %chan_count = getelementptr i8, ptr %work, i32 100
  %2 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp109 = icmp sgt i32 %3, 0
  br i1 %cmp109, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channel = getelementptr i8, ptr %work, i32 104
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %up_count.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %up_count.1, %for.inc.for.body_crit_edge ]
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %for.inc.for.body_crit_edge ]
  %new_led.0110 = phi i8 [ %1, %for.body.lr.ph ], [ %new_led.2, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 %i.0111, 1
  %shl1 = shl i32 3, %shl
  %4 = trunc i32 %shl1 to i8
  %5 = xor i8 %4, -1
  %conv2 = and i8 %new_led.0110, %5
  %arrayidx = getelementptr [4 x %struct.peak_pciec_chan], ptr %channel, i32 0, i32 %i.0111
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and8 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %inc = add i32 %up_count.0112, 1
  %shl17 = shl i32 2, %shl
  %10 = trunc i32 %shl17 to i8
  %conv20 = or i8 %conv2, %10
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 2
  %11 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_bytes, align 8
  %prev_rx_bytes = getelementptr inbounds %struct.peak_pciec_chan, ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %prev_rx_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prev_rx_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp23.not = icmp eq i32 %12, %14
  br i1 %cmp23.not, label %if.end.if.end42_crit_edge, label %if.then25

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev_rx_bytes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %prev_rx_bytes, align 4
  %conv41 = or i8 %conv20, %4
  br label %if.end42

if.end42:                                         ; preds = %if.then25, %if.end.if.end42_crit_edge
  %new_led.1 = phi i8 [ %conv41, %if.then25 ], [ %conv20, %if.end.if.end42_crit_edge ]
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 3
  %16 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_bytes, align 4
  %prev_tx_bytes = getelementptr inbounds %struct.peak_pciec_chan, ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %prev_tx_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prev_tx_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp46.not = icmp eq i32 %17, %19
  br i1 %cmp46.not, label %if.end42.for.inc_crit_edge, label %if.then48

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev_tx_bytes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %prev_tx_bytes, align 4
  %conv64 = or i8 %new_led.1, %4
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %if.end42.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %new_led.2 = phi i8 [ %conv64, %if.then48 ], [ %new_led.1, %if.end42.for.inc_crit_edge ], [ %conv2, %lor.lhs.false.for.inc_crit_edge ], [ %conv2, %for.body.for.inc_crit_edge ]
  %up_count.1 = phi i32 [ %inc, %if.then48 ], [ %inc, %if.end42.for.inc_crit_edge ], [ %up_count.0112, %lor.lhs.false.for.inc_crit_edge ], [ %up_count.0112, %for.body.for.inc_crit_edge ]
  %inc66 = add nuw nsw i32 %i.0111, 1
  %21 = ptrtoint ptr %chan_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan_count, align 4
  %cmp = icmp slt i32 %inc66, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %new_led.0.lcssa = phi i8 [ %1, %entry.for.end_crit_edge ], [ %new_led.2, %for.inc.for.end_crit_edge ]
  %up_count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %up_count.1, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #8
  %23 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %24 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %buffer.i, align 1
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %new_led.0.lcssa, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %26 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %28 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 98, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buffer.i, ptr %buf.i, align 4
  %31 = ptrtoint ptr %led_cache to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %led_cache, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %new_led.0.lcssa)
  %cmp4.i = icmp eq i8 %32, %new_led.0.lcssa
  br i1 %cmp4.i, label %for.end.peak_pciec_write_pca9553.exit_crit_edge, label %if.end.i

for.end.peak_pciec_write_pca9553.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_write_pca9553.exit

if.end.i:                                         ; preds = %for.end
  %led_chip.i = getelementptr i8, ptr %work, i32 -1360
  %call.i = call i32 @i2c_transfer(ptr noundef %led_chip.i, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, -1
  br i1 %cmp6.i, label %if.then13.i, label %if.end.i.peak_pciec_write_pca9553.exit_crit_edge

if.end.i.peak_pciec_write_pca9553.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_write_pca9553.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %led_cache to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %new_led.0.lcssa, ptr %led_cache, align 8
  br label %peak_pciec_write_pca9553.exit

peak_pciec_write_pca9553.exit:                    ; preds = %if.then13.i, %if.end.i.peak_pciec_write_pca9553.exit_crit_edge, %for.end.peak_pciec_write_pca9553.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up_count.0.lcssa)
  %tobool67.not = icmp eq i32 %up_count.0.lcssa, 0
  br i1 %tobool67.not, label %peak_pciec_write_pca9553.exit.if.end70_crit_edge, label %if.then68

peak_pciec_write_pca9553.exit.if.end70_crit_edge: ; preds = %peak_pciec_write_pca9553.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then68:                                        ; preds = %peak_pciec_write_pca9553.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %work, i32 noundef 100) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %peak_pciec_write_pca9553.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @peak_pciec_write_reg(ptr nocapture noundef readonly %priv, i32 noundef %port, i8 noundef zeroext %val) #2 align 64 {
entry:
  %buffer.i.i15 = alloca [2 x i8], align 1
  %msg.i.i16 = alloca %struct.i2c_msg, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pciec_card = getelementptr inbounds %struct.peak_pci_chan, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pciec_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pciec_card, align 4
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %reg_base2 = getelementptr inbounds %struct.peak_pciec_card, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %reg_base2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base2, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = sdiv i32 %sub.ptr.sub, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp = icmp eq i32 %port, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = zext i8 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %val, label %if.then.if.end_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb4
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb:                                            ; preds = %if.then
  %led_cache.i = getelementptr inbounds %struct.peak_pciec_card, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %led_cache.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %led_cache.i, align 8
  %chan_count.i = getelementptr inbounds %struct.peak_pciec_card, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %chan_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19.i = icmp sgt i32 %12, 0
  br i1 %cmp19.i, label %for.body.lr.ph.i, label %sw.bb.for.end.i_crit_edge

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %shl = shl nuw i32 1, %div
  %conv.i = and i32 %shl, 255
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %new_led.020.i = phi i8 [ %10, %for.body.lr.ph.i ], [ %new_led.1.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.021.i
  %and.i = and i32 %conv.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %shl1.i = shl nuw i32 %i.021.i, 1
  %shl2.i = shl i32 3, %shl1.i
  %13 = trunc i32 %shl2.i to i8
  %14 = xor i8 %13, -1
  %conv5.i = select i1 %tobool.not.i, i8 -1, i8 %14
  %new_led.1.i = and i8 %conv5.i, %new_led.020.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %new_led.0.lcssa.i = phi i8 [ %10, %sw.bb.for.end.i_crit_edge ], [ %new_led.1.i, %for.body.i.for.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #8
  %15 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %buffer.i.i, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %new_led.0.lcssa.i, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %18 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 196607, ptr %18, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 98, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buffer.i.i, ptr %buf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %new_led.0.lcssa.i)
  %cmp4.i.i = icmp eq i8 %10, %new_led.0.lcssa.i
  br i1 %cmp4.i.i, label %for.end.i.peak_pciec_set_leds.exit_crit_edge, label %if.end.i.i

for.end.i.peak_pciec_set_leds.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_set_leds.exit

if.end.i.i:                                       ; preds = %for.end.i
  %led_chip.i.i = getelementptr inbounds %struct.peak_pciec_card, ptr %3, i32 0, i32 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %led_chip.i.i, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp6.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp6.i.i, label %if.then13.i.i, label %if.end.i.i.peak_pciec_set_leds.exit_crit_edge

if.end.i.i.peak_pciec_set_leds.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_set_leds.exit

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %led_cache.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %new_led.0.lcssa.i, ptr %led_cache.i, align 8
  br label %peak_pciec_set_leds.exit

peak_pciec_set_leds.exit:                         ; preds = %if.then13.i.i, %if.end.i.i.peak_pciec_set_leds.exit_crit_edge, %for.end.i.peak_pciec_set_leds.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #8
  br label %if.end

sw.bb4:                                           ; preds = %if.then
  %led_cache.i17 = getelementptr inbounds %struct.peak_pciec_card, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %led_cache.i17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %led_cache.i17, align 8
  %chan_count.i18 = getelementptr inbounds %struct.peak_pciec_card, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %chan_count.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chan_count.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp19.i19 = icmp sgt i32 %27, 0
  br i1 %cmp19.i19, label %for.body.lr.ph.i21, label %sw.bb4.for.end.i40_crit_edge

sw.bb4.for.end.i40_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i40

for.body.lr.ph.i21:                               ; preds = %sw.bb4
  %shl5 = shl nuw i32 1, %div
  %conv.i20 = and i32 %shl5, 255
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.inc.i35.for.body.i27_crit_edge, %for.body.lr.ph.i21
  %i.021.i22 = phi i32 [ 0, %for.body.lr.ph.i21 ], [ %inc.i33, %for.inc.i35.for.body.i27_crit_edge ]
  %new_led.020.i23 = phi i8 [ %25, %for.body.lr.ph.i21 ], [ %new_led.1.i32, %for.inc.i35.for.body.i27_crit_edge ]
  %shl.i24 = shl nuw i32 1, %i.021.i22
  %and.i25 = and i32 %conv.i20, %shl.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %for.body.i27.for.inc.i35_crit_edge, label %if.then.i31

for.body.i27.for.inc.i35_crit_edge:               ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i35

if.then.i31:                                      ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  %shl1.i28 = shl nuw i32 %i.021.i22, 1
  %shl2.i29 = shl i32 3, %shl1.i28
  %28 = trunc i32 %shl2.i29 to i8
  %29 = xor i8 %28, -1
  %conv5.i30 = and i8 %new_led.020.i23, %29
  %shl8.i = shl i32 2, %shl1.i28
  %30 = trunc i32 %shl8.i to i8
  %conv10.i = or i8 %conv5.i30, %30
  br label %for.inc.i35

for.inc.i35:                                      ; preds = %if.then.i31, %for.body.i27.for.inc.i35_crit_edge
  %new_led.1.i32 = phi i8 [ %conv10.i, %if.then.i31 ], [ %new_led.020.i23, %for.body.i27.for.inc.i35_crit_edge ]
  %inc.i33 = add nuw nsw i32 %i.021.i22, 1
  %exitcond.not.i34 = icmp eq i32 %inc.i33, %27
  br i1 %exitcond.not.i34, label %for.inc.i35.for.end.i40_crit_edge, label %for.inc.i35.for.body.i27_crit_edge

for.inc.i35.for.body.i27_crit_edge:               ; preds = %for.inc.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i27

for.inc.i35.for.end.i40_crit_edge:                ; preds = %for.inc.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i40

for.end.i40:                                      ; preds = %for.inc.i35.for.end.i40_crit_edge, %sw.bb4.for.end.i40_crit_edge
  %new_led.0.lcssa.i36 = phi i8 [ %25, %sw.bb4.for.end.i40_crit_edge ], [ %new_led.1.i32, %for.inc.i35.for.end.i40_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i15) #8
  %31 = getelementptr inbounds [2 x i8], ptr %buffer.i.i15, i32 0, i32 1
  %32 = ptrtoint ptr %buffer.i.i15 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %buffer.i.i15, align 1
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %new_led.0.lcssa.i36, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i16) #8
  %34 = getelementptr inbounds i8, ptr %msg.i.i16, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 196607, ptr %34, align 4
  %36 = ptrtoint ptr %msg.i.i16 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 98, ptr %msg.i.i16, align 4
  %flags.i.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i16, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i.i37 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i.i37, align 2
  %buf.i.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i16, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i.i38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buffer.i.i15, ptr %buf.i.i38, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %new_led.0.lcssa.i36)
  %cmp4.i.i39 = icmp eq i8 %25, %new_led.0.lcssa.i36
  br i1 %cmp4.i.i39, label %for.end.i40.peak_pciec_set_leds.exit46_crit_edge, label %if.end.i.i44

for.end.i40.peak_pciec_set_leds.exit46_crit_edge: ; preds = %for.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_set_leds.exit46

if.end.i.i44:                                     ; preds = %for.end.i40
  %led_chip.i.i41 = getelementptr inbounds %struct.peak_pciec_card, ptr %3, i32 0, i32 4
  %call.i.i42 = call i32 @i2c_transfer(ptr noundef %led_chip.i.i41, ptr noundef nonnull %msg.i.i16, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i42)
  %cmp6.i.i43 = icmp sgt i32 %call.i.i42, -1
  br i1 %cmp6.i.i43, label %if.then13.i.i45, label %if.end.i.i44.peak_pciec_set_leds.exit46_crit_edge

if.end.i.i44.peak_pciec_set_leds.exit46_crit_edge: ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %peak_pciec_set_leds.exit46

if.then13.i.i45:                                  ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %led_cache.i17 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %new_led.0.lcssa.i36, ptr %led_cache.i17, align 8
  br label %peak_pciec_set_leds.exit46

peak_pciec_set_leds.exit46:                       ; preds = %if.then13.i.i45, %if.end.i.i44.peak_pciec_set_leds.exit46_crit_edge, %for.end.i40.peak_pciec_set_leds.exit46_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i16) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i15) #8
  %led_work.i = getelementptr inbounds %struct.peak_pciec_card, ptr %3, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %led_work.i, i32 noundef 100) #8
  br label %if.end

if.end:                                           ; preds = %peak_pciec_set_leds.exit46, %peak_pciec_set_leds.exit, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base, align 4
  %shl.i47 = shl i32 %port, 2
  %add.ptr.i = getelementptr i8, ptr %42, i32 %shl.i47
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %val) #8, !srcloc !108
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pita_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %3 = and i8 %2, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %3) #8, !srcloc !108
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 26
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %9 = and i8 %8, -5
  %masksel = select i1 %tobool.not, i8 4, i8 0
  %gp_outen.0 = or i8 %9, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %add.ptr21 = getelementptr i8, ptr %11, i32 26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 %gp_outen.0) #8, !srcloc !108
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pita_setscl(ptr nocapture noundef readonly %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  %3 = and i8 %2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %3) #8, !srcloc !108
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 26
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %9 = and i8 %8, -2
  %masksel = zext i1 %tobool.not to i8
  %gp_outen.0 = or i8 %9, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %add.ptr21 = getelementptr i8, ptr %11, i32 26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 %gp_outen.0) #8, !srcloc !108
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pita_getsda(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 26
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %3 = and i8 %2, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %add.ptr4.i = getelementptr i8, ptr %5, i32 26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %3) #8, !srcloc !108
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 25
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %9 = lshr i8 %8, 2
  %.lobit = and i8 %9, 1
  %10 = zext i8 %.lobit to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pita_getscl(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 26
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  %3 = and i8 %2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %add.ptr4.i = getelementptr i8, ptr %5, i32 26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %3) #8, !srcloc !108
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 25
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !91, !92, !93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__UNIQUE_ID_author463, !1, !"__UNIQUE_ID_author463", i1 false, i1 false}
!1 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description464, !3, !"__UNIQUE_ID_description464", i1 false, i1 false}
!3 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file465, !5, !"__UNIQUE_ID_file465", i1 false, i1 false}
!5 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license466, !5, !"__UNIQUE_ID_license466", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_peak_pci__468_781_peak_pci_driver_init6, !8, !"__initcall__kmod_peak_pci__468_781_peak_pci_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 781, i32 1}
!9 = !{ptr @__exitcall_peak_pci_driver_exit, !8, !"__exitcall_peak_pci_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @peak_pci_driver, !12, !"peak_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 774, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 77, i32 34}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 80, i32 34}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 83, i32 34}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 86, i32 34}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 89, i32 34}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 92, i32 34}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 95, i32 34}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 98, i32 34}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 103, i32 34}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 106, i32 34}
!33 = !{ptr @peak_pci_tbl, !34, !"peak_pci_tbl", i1 false, i1 false}
!34 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 74, i32 35}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 573, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @peak_pci_probe.__UNIQUE_ID_ddebug467, !36, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 591, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @peak_pci_probe._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @peak_pci_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 598, i32 3}
!48 = !{ptr @peak_pci_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @peak_pci_probe._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 618, i32 36}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 625, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @peak_pci_probe._entry.21, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @peak_pci_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 676, i32 5}
!59 = !{ptr @peak_pci_probe._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @peak_pci_probe._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 685, i32 4}
!63 = !{ptr @peak_pci_probe._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @peak_pci_probe._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 689, i32 3}
!67 = !{ptr @peak_pci_probe._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @peak_pci_probe._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @peak_pci_icr_masks, !70, !"peak_pci_icr_masks", i1 false, i1 false}
!70 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 70, i32 18}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 465, i32 32}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 477, i32 4}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @peak_pciec_probe._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @peak_pciec_probe._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 483, i32 4}
!80 = !{ptr @peak_pciec_probe._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @peak_pciec_probe._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @peak_pciec_probe.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 487, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @peak_pciec_probe.__key.41, !83, !"__key", i1 false, i1 false}
!86 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @peak_pciec_i2c_bit_ops, !88, !"peak_pciec_i2c_bit_ops", i1 false, i1 false}
!88 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 427, i32 39}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/can/sja1000/peak_pci.c", i32 754, i32 3}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @peak_pci_remove._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @peak_pci_remove._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
!104 = !{i64 2148710642, i64 2148710647, i64 2148710660, i64 2148710704, i64 2148710738, i64 2148710759}
!105 = !{i64 2158072924}
!106 = !{i64 4634399}
!107 = !{i64 2158073328}
!108 = !{i64 4634822}
!109 = !{i64 2158073602}
!110 = !{i64 2158073880}
!111 = !{i64 4635437}
!112 = !{i64 2158074419}
!113 = !{i64 2158074902}
!114 = !{i64 4634599}
!115 = !{i64 2158077014}
!116 = !{i64 2158082585}
!117 = !{i64 2158082983}
!118 = !{i64 2158083417}
!119 = !{i64 4635217}
!120 = !{i64 2158065599}
!121 = !{i64 2158065824}
!122 = !{i64 2158066395}
!123 = !{i64 2158066629}
!124 = !{i64 2158054696}
!125 = !{i64 2158054929}
!126 = !{i64 2158055405}
!127 = !{i64 2158055638}
!128 = !{i64 2158055945}
!129 = !{i64 2158056176}
!130 = !{i64 2158056481}
!131 = !{i64 2158056719}
!132 = !{i64 2158057026}
!133 = !{i64 2158057257}
!134 = !{i64 2158057562}
!135 = !{i64 2158057800}
!136 = !{i64 2158058107}
!137 = !{i64 2158058357}
