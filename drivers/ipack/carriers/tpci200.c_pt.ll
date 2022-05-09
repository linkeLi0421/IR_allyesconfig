; ModuleID = '/llk/IR_all_yes/drivers/ipack/carriers/tpci200.c_pt.bc'
source_filename = "../drivers/ipack/carriers/tpci200.c"
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
%struct.ipack_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tpci200_board = type { i32, %struct.mutex, %struct.spinlock, ptr, ptr, [5 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%union.anon.67 = type { ptr }
%struct.tpci200_infos = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.tpci200_regs = type { i16, [4 x i16], i16, i16, [242 x i8] }
%struct.ipack_bus_device = type { ptr, ptr, i32, i32, ptr }
%struct.ipack_device = type { i32, ptr, %struct.device, ptr, [5 x %struct.ipack_region], ptr, i32, i32, i32, i8, i8 }
%struct.ipack_region = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tpci200_slot = type { ptr }
%struct.slot_irq = type { ptr, i32, ptr, ptr }

@__initcall__kmod_tpci200__242_647_tpci200_pci_drv_init6 = internal global ptr @tpci200_pci_drv_init, section ".initcall6.init", align 4
@tpci200_pci_drv = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @tpci200_idtable, ptr @tpci200_pci_probe, ptr @tpci200_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tpci200_pci_drv_exit = internal global ptr @tpci200_pci_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description243 = internal constant [48 x i8] c"tpci200.description=TEWS TPCI-200 device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [44 x i8] c"tpci200.file=drivers/ipack/carriers/tpci200\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [20 x i8] c"tpci200.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tpci200\00", [24 x i8] zeroinitializer }, align 32
@tpci200_idtable = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5272, i32 12488, i32 5272, i32 12298, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tpci200 Configuration Memory\00", [35 x i8] zeroinitializer }, align 32
@tpci200_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 540, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to allocate PCI Configuration Memory\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpci200_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/ipack/carriers/tpci200.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tpci200_pci_probe._entry_ptr = internal global ptr @tpci200_pci_probe._entry, section ".printk_index", align 4
@tpci200_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 548, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to map PCI Configuration Memory\00", [57 x i8] zeroinitializer }, align 32
@tpci200_pci_probe._entry_ptr.9 = internal global ptr @tpci200_pci_probe._entry.7, section ".printk_index", align 4
@tpci200_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 571, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error during tpci200 install\0A\00", [34 x i8] zeroinitializer }, align 32
@tpci200_pci_probe._entry_ptr.12 = internal global ptr @tpci200_pci_probe._entry.10, section ".printk_index", align 4
@tpci200_bus_ops = internal constant { %struct.ipack_bus_ops, [36 x i8] } { %struct.ipack_bus_ops { ptr @tpci200_request_irq, ptr @tpci200_free_irq, ptr @tpci200_get_clockrate, ptr @tpci200_set_clockrate, ptr @tpci200_get_error, ptr @tpci200_get_timeout, ptr @tpci200_reset_timeout }, [36 x i8] zeroinitializer }, align 32
@tpci200_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 583, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error registering the carrier on ipack driver\0A\00", [49 x i8] zeroinitializer }, align 32
@tpci200_pci_probe._entry_ptr.15 = internal global ptr @tpci200_pci_probe._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tpci200_install.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&tpci200->mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Carrier IP interface registers\00", [33 x i8] zeroinitializer }, align 32
@tpci200_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"(bn 0x%X, sn 0x%X) failed to allocate PCI resource for BAR 2 !\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tpci200_register\00", [47 x i8] zeroinitializer }, align 32
@tpci200_register._entry_ptr = internal global ptr @tpci200_register._entry, section ".printk_index", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Carrier IO ID INT space\00", [40 x i8] zeroinitializer }, align 32
@tpci200_register._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.4, i32 268, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"(bn 0x%X, sn 0x%X) failed to allocate PCI resource for BAR 3 !\00", [33 x i8] zeroinitializer }, align 32
@tpci200_register._entry_ptr.23 = internal global ptr @tpci200_register._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Carrier MEM8 space\00", [45 x i8] zeroinitializer }, align 32
@tpci200_register._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"(bn 0x%X, sn 0x%X) failed to allocate PCI resource for BAR 5!\00", [34 x i8] zeroinitializer }, align 32
@tpci200_register._entry_ptr.27 = internal global ptr @tpci200_register._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Carrier MEM16 space\00", [44 x i8] zeroinitializer }, align 32
@tpci200_register._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.4, i32 290, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"(bn 0x%X, sn 0x%X) failed to allocate PCI resource for BAR 4!\00", [34 x i8] zeroinitializer }, align 32
@tpci200_register._entry_ptr.31 = internal global ptr @tpci200_register._entry.29, section ".printk_index", align 4
@tpci200_register._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.4, i32 303, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(bn 0x%X, sn 0x%X) failed to map driver user space!\00", [44 x i8] zeroinitializer }, align 32
@tpci200_register._entry_ptr.34 = internal global ptr @tpci200_register._entry.32, section ".printk_index", align 4
@tpci200_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&tpci200->regs_lock\00", [44 x i8] zeroinitializer }, align 32
@tpci200_register._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.19, ptr @.str.4, i32 343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(bn 0x%X, sn 0x%X) unable to register IRQ !\00", [52 x i8] zeroinitializer }, align 32
@tpci200_register._entry_ptr.38 = internal global ptr @tpci200_register._entry.36, section ".printk_index", align 4
@tpci200_interrupt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@tpci200_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 153, ptr @.str.42, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"No registered ISR for slot [%d:%d]!. IRQ will be disabled.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpci200_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tpci200_interrupt._entry_ptr = internal global ptr @tpci200_interrupt._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tpci200_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Slot [%d:%d] IRQ already registered !\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tpci200_request_irq\00", [44 x i8] zeroinitializer }, align 32
@tpci200_request_irq._entry_ptr = internal global ptr @tpci200_request_irq._entry, section ".printk_index", align 4
@tpci200_request_irq._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Slot [%d:%d] unable to allocate memory for IRQ !\0A\00", [46 x i8] zeroinitializer }, align 32
@tpci200_request_irq._entry_ptr.50 = internal global ptr @tpci200_request_irq._entry.48, section ".printk_index", align 4
@check_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 55, ptr @.str.42, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"carrier board not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check_slot\00", [21 x i8] zeroinitializer }, align 32
@check_slot._entry_ptr = internal global ptr @check_slot._entry, section ".printk_index", align 4
@check_slot._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.4, i32 62, ptr @.str.42, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Slot [%d:%d] doesn't exist! Last tpci200 slot is %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@check_slot._entry_ptr.55 = internal global ptr @check_slot._entry.53, section ".printk_index", align 4
@tpci200_status_error = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 256, i16 512, i16 1024, i16 2048], [24 x i8] zeroinitializer }, align 32
@tpci200_status_timeout = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 4096, i16 8192, i16 16384, i16 -32768], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"tpci200_pci_drv\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 640, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 647, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"tpci200_idtable\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 632, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 538, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 540, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 548, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 571, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"tpci200_bus_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 450, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 582, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 476, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 251, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 253, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 263, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 265, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 274, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 276, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 285, i32 6 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 287, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 300, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 309, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 340, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 148, i32 14 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 151, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 695, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 723, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 204, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 214, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 55, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 60, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [21 x i8] c"tpci200_status_error\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 21, i32 18 }
@___asan_gen_.227 = private unnamed_addr constant [23 x i8] c"tpci200_status_timeout\00", align 1
@___asan_gen_.228 = private constant [36 x i8] c"../drivers/ipack/carriers/tpci200.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 14, i32 18 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_tpci200_pci_drv_exit, ptr @__initcall__kmod_tpci200__242_647_tpci200_pci_drv_init6, ptr @check_slot._entry, ptr @check_slot._entry.53, ptr @check_slot._entry_ptr, ptr @check_slot._entry_ptr.55, ptr @tpci200_interrupt._entry, ptr @tpci200_interrupt._entry_ptr, ptr @tpci200_pci_drv_exit, ptr @tpci200_pci_probe._entry, ptr @tpci200_pci_probe._entry.10, ptr @tpci200_pci_probe._entry.13, ptr @tpci200_pci_probe._entry.7, ptr @tpci200_pci_probe._entry_ptr, ptr @tpci200_pci_probe._entry_ptr.12, ptr @tpci200_pci_probe._entry_ptr.15, ptr @tpci200_pci_probe._entry_ptr.9, ptr @tpci200_register._entry, ptr @tpci200_register._entry.21, ptr @tpci200_register._entry.25, ptr @tpci200_register._entry.29, ptr @tpci200_register._entry.32, ptr @tpci200_register._entry.36, ptr @tpci200_register._entry_ptr, ptr @tpci200_register._entry_ptr.23, ptr @tpci200_register._entry_ptr.27, ptr @tpci200_register._entry_ptr.31, ptr @tpci200_register._entry_ptr.34, ptr @tpci200_register._entry_ptr.38, ptr @tpci200_request_irq._entry, ptr @tpci200_request_irq._entry.48, ptr @tpci200_request_irq._entry_ptr, ptr @tpci200_request_irq._entry_ptr.50, ptr @tpci200_pci_drv, ptr @.str, ptr @tpci200_idtable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @tpci200_bus_ops, ptr @.str.14, ptr @tpci200_install.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @tpci200_register.__key, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @tpci200_status_error, ptr @tpci200_status_timeout], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_pci_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_idtable to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_bus_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_install.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_register._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_register._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_register._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_register._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_register._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_request_irq._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_slot._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_status_error to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpci200_status_timeout to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tpci200_pci_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @tpci200_pci_drv, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tpci200_pci_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @tpci200_pci_drv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpci200_pci_probe(ptr noundef %pdev, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i125 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #11
  %info = getelementptr inbounds %struct.tpci200_board, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i125, ptr %info, align 8
  %tobool3.not = icmp eq ptr %call7.i.i125, null
  br i1 %tobool3.not, label %if.end.err_tpci200_crit_edge, label %if.end5

if.end.err_tpci200_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_tpci200

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @pci_dev_get(ptr noundef %pdev) #8
  %call7 = tail call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %err_tpci200_info

if.end10:                                         ; preds = %if.end5
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %sub = sub i32 1, %4
  %add = add i32 %sub, %6
  %cond = select i1 %cmp, i32 0, i32 %add
  %call19 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %cond) #8
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 8
  %cfg_regs = getelementptr inbounds %struct.tpci200_infos, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cfg_regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call19, ptr %cfg_regs, align 4
  %10 = load ptr, ptr %info, align 8
  %cfg_regs22 = getelementptr inbounds %struct.tpci200_infos, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cfg_regs22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg_regs22, align 4
  %tobool23.not = icmp eq ptr %12, null
  br i1 %tobool23.not, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.8) #12
  br label %err_request_region

if.end29:                                         ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %12, i32 44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %14 = or i32 %13, 1
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 8
  %cfg_regs34 = getelementptr inbounds %struct.tpci200_infos, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cfg_regs34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg_regs34, align 4
  %add.ptr35 = getelementptr i8, ptr %18, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %14) #8, !srcloc !131
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 8
  %cfg_regs37 = getelementptr inbounds %struct.tpci200_infos, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cfg_regs37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg_regs37, align 4
  %add.ptr38 = getelementptr i8, ptr %22, i32 48
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #8, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %24 = or i32 %23, 1
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 8
  %cfg_regs42 = getelementptr inbounds %struct.tpci200_infos, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cfg_regs42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg_regs42, align 4
  %add.ptr43 = getelementptr i8, ptr %28, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %24) #8, !srcloc !131
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pdev, ptr %30, align 4
  %32 = load ptr, ptr %info, align 8
  %id_table = getelementptr inbounds %struct.tpci200_infos, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %id_table to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %id, ptr %id_table, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 16) #11
  %slots.i = getelementptr inbounds %struct.tpci200_board, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %slots.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i.i, ptr %slots.i, align 4
  %cmp.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i, label %if.end29.do.end52_crit_edge, label %if.end.i

if.end29.do.end52_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

if.end.i:                                         ; preds = %if.end29
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call.i.i = tail call i32 @pci_enable_device(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.if.then3.i_crit_edge, label %if.end.i.i

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.end.i.i:                                       ; preds = %if.end.i
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call3.i.i = tail call i32 @pci_request_region(ptr noundef %43, i32 noundef 2, ptr noundef nonnull @.str.17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  %44 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  br i1 %tobool.not.i.i, label %if.end11.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i, align 8
  %number.i.i = getelementptr inbounds %struct.pci_bus, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %number.i.i, align 4
  %conv.i.i = zext i8 %51 to i32
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 6
  %52 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %devfn.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18, i32 noundef %conv.i.i, i32 noundef %53) #12
  br label %err_disable_device.i.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %call14.i.i = tail call i32 @pci_request_region(ptr noundef %47, i32 noundef 3, ptr noundef nonnull @.str.20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  br i1 %tobool15.not.i.i, label %if.end31.i.i, label %do.end19.i.i

do.end19.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev22.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %bus25.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %bus25.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus25.i.i, align 8
  %number26.i.i = getelementptr inbounds %struct.pci_bus, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %number26.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %number26.i.i, align 4
  %conv27.i.i = zext i8 %61 to i32
  %devfn30.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 6
  %62 = ptrtoint ptr %devfn30.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %devfn30.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i.i, ptr noundef nonnull @.str.22, i32 noundef %conv27.i.i, i32 noundef %63) #12
  br label %err_ip_interface_bar.i.i

if.end31.i.i:                                     ; preds = %if.end11.i.i
  %call34.i.i = tail call i32 @pci_request_region(ptr noundef %57, i32 noundef 5, ptr noundef nonnull @.str.24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  %64 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %info, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  br i1 %tobool35.not.i.i, label %if.end51.i.i, label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev42.i.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %bus45.i.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %bus45.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus45.i.i, align 8
  %number46.i.i = getelementptr inbounds %struct.pci_bus, ptr %69, i32 0, i32 12
  %70 = ptrtoint ptr %number46.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %number46.i.i, align 4
  %conv47.i.i = zext i8 %71 to i32
  %devfn50.i.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 6
  %72 = ptrtoint ptr %devfn50.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %devfn50.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42.i.i, ptr noundef nonnull @.str.26, i32 noundef %conv47.i.i, i32 noundef %73) #12
  br label %err_io_id_int_spaces_bar.i.i

if.end51.i.i:                                     ; preds = %if.end31.i.i
  %call54.i.i = tail call i32 @pci_request_region(ptr noundef %67, i32 noundef 4, ptr noundef nonnull @.str.28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %tobool55.not.i.i = icmp eq i32 %call54.i.i, 0
  %74 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %info, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  br i1 %tobool55.not.i.i, label %if.end71.i.i, label %do.end59.i.i

do.end59.i.i:                                     ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev62.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %bus65.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %bus65.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus65.i.i, align 8
  %number66.i.i = getelementptr inbounds %struct.pci_bus, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %number66.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %number66.i.i, align 4
  %conv67.i.i = zext i8 %81 to i32
  %devfn70.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 6
  %82 = ptrtoint ptr %devfn70.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %devfn70.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62.i.i, ptr noundef nonnull @.str.30, i32 noundef %conv67.i.i, i32 noundef %83) #12
  br label %err_mem8_space_bar.i.i

if.end71.i.i:                                     ; preds = %if.end51.i.i
  %arrayidx.i.i = getelementptr %struct.pci_dev, ptr %77, i32 0, i32 47, i32 2
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i.i, align 8
  %call74.i.i = tail call ptr @ioremap(i32 noundef %85, i32 noundef 256) #8
  %86 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %info, align 8
  %interface_regs.i.i = getelementptr inbounds %struct.tpci200_infos, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %interface_regs.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call74.i.i, ptr %interface_regs.i.i, align 4
  %89 = load ptr, ptr %info, align 8
  %interface_regs77.i.i = getelementptr inbounds %struct.tpci200_infos, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %interface_regs77.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %interface_regs77.i.i, align 4
  %tobool78.not.i.i = icmp eq ptr %91, null
  br i1 %tobool78.not.i.i, label %do.end82.i.i, label %do.body95.i.i

do.end82.i.i:                                     ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %89, align 4
  %dev85.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %bus88.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %bus88.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus88.i.i, align 8
  %number89.i.i = getelementptr inbounds %struct.pci_bus, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %number89.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %number89.i.i, align 4
  %conv90.i.i = zext i8 %97 to i32
  %devfn93.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 6
  %98 = ptrtoint ptr %devfn93.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %devfn93.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85.i.i, ptr noundef nonnull @.str.33, i32 noundef %conv90.i.i, i32 noundef %99) #12
  br label %err_mem16_space_bar.i.i

do.body95.i.i:                                    ; preds = %if.end71.i.i
  %regs_lock.i.i = getelementptr inbounds %struct.tpci200_board, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %regs_lock.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @tpci200_register.__key, i16 noundef signext 3) #8
  %100 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %info, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %arrayidx102.i.i = getelementptr %struct.pci_dev, ptr %103, i32 0, i32 47, i32 3
  %104 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx102.i.i, align 8
  %mod_mem.i.i = getelementptr %struct.tpci200_board, ptr %call7.i.i, i32 0, i32 5
  %106 = ptrtoint ptr %mod_mem.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %mod_mem.i.i, align 4
  %add105.i.i = add i32 %105, 128
  %arrayidx107.i.i = getelementptr %struct.tpci200_board, ptr %call7.i.i, i32 0, i32 5, i32 1
  %107 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add105.i.i, ptr %arrayidx107.i.i, align 8
  %add108.i.i = add i32 %105, 192
  %arrayidx110.i.i = getelementptr %struct.tpci200_board, ptr %call7.i.i, i32 0, i32 5, i32 2
  %108 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %add108.i.i, ptr %arrayidx110.i.i, align 4
  %109 = load ptr, ptr %101, align 4
  %arrayidx114.i.i = getelementptr %struct.pci_dev, ptr %109, i32 0, i32 47, i32 5
  %110 = ptrtoint ptr %arrayidx114.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx114.i.i, align 8
  %arrayidx117.i.i = getelementptr %struct.tpci200_board, ptr %call7.i.i, i32 0, i32 5, i32 3
  %112 = ptrtoint ptr %arrayidx117.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx117.i.i, align 8
  %113 = load ptr, ptr %101, align 4
  %arrayidx121.i.i = getelementptr %struct.pci_dev, ptr %113, i32 0, i32 47, i32 4
  %114 = ptrtoint ptr %arrayidx121.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx121.i.i, align 8
  %arrayidx124.i.i = getelementptr %struct.tpci200_board, ptr %call7.i.i, i32 0, i32 5, i32 4
  %116 = ptrtoint ptr %arrayidx124.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx124.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %117 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %info, align 8
  %interface_regs131.i.i = getelementptr inbounds %struct.tpci200_infos, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %interface_regs131.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %interface_regs131.i.i, align 4
  %arrayidx132.i.i = getelementptr %struct.tpci200_regs, ptr %120, i32 0, i32 1, i32 0
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx132.i.i, i16 0) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %121 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %info, align 8
  %interface_regs131.1.i.i = getelementptr inbounds %struct.tpci200_infos, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %interface_regs131.1.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %interface_regs131.1.i.i, align 4
  %arrayidx132.1.i.i = getelementptr %struct.tpci200_regs, ptr %124, i32 0, i32 1, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx132.1.i.i, i16 0) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %125 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %info, align 8
  %interface_regs131.2.i.i = getelementptr inbounds %struct.tpci200_infos, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %interface_regs131.2.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %interface_regs131.2.i.i, align 4
  %arrayidx132.2.i.i = getelementptr %struct.tpci200_regs, ptr %128, i32 0, i32 1, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx132.2.i.i, i16 0) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %129 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %info, align 8
  %interface_regs131.3.i.i = getelementptr inbounds %struct.tpci200_infos, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %interface_regs131.3.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %interface_regs131.3.i.i, align 4
  %arrayidx132.3.i.i = getelementptr %struct.tpci200_regs, ptr %132, i32 0, i32 1, i32 3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx132.3.i.i, i16 0) #8, !srcloc !133
  %133 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %info, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %irq.i.i = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 46
  %137 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %irq.i.i, align 4
  %call.i.i.i = tail call i32 @request_threaded_irq(i32 noundef %138, ptr noundef nonnull @tpci200_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool136.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool136.not.i.i, label %if.end54, label %do.end140.i.i

do.end140.i.i:                                    ; preds = %do.body95.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %info, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %dev143.i.i = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 44
  %bus146.i.i = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %bus146.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bus146.i.i, align 8
  %number147.i.i = getelementptr inbounds %struct.pci_bus, ptr %144, i32 0, i32 12
  %145 = ptrtoint ptr %number147.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %number147.i.i, align 4
  %conv148.i.i = zext i8 %146 to i32
  %devfn151.i.i = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 6
  %147 = ptrtoint ptr %devfn151.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %devfn151.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev143.i.i, ptr noundef nonnull @.str.37, i32 noundef %conv148.i.i, i32 noundef %148) #12
  %149 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %info, align 8
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %interface_regs156.i.i = getelementptr inbounds %struct.tpci200_infos, ptr %150, i32 0, i32 2
  %153 = ptrtoint ptr %interface_regs156.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %interface_regs156.i.i, align 4
  tail call void @pci_iounmap(ptr noundef %152, ptr noundef %154) #8
  br label %err_mem16_space_bar.i.i

err_mem16_space_bar.i.i:                          ; preds = %do.end140.i.i, %do.end82.i.i
  %155 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %info, align 8
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  tail call void @pci_release_region(ptr noundef %158, i32 noundef 4) #8
  br label %err_mem8_space_bar.i.i

err_mem8_space_bar.i.i:                           ; preds = %err_mem16_space_bar.i.i, %do.end59.i.i
  %159 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %info, align 8
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  tail call void @pci_release_region(ptr noundef %162, i32 noundef 5) #8
  br label %err_io_id_int_spaces_bar.i.i

err_io_id_int_spaces_bar.i.i:                     ; preds = %err_mem8_space_bar.i.i, %do.end39.i.i
  %163 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %info, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  tail call void @pci_release_region(ptr noundef %166, i32 noundef 3) #8
  br label %err_ip_interface_bar.i.i

err_ip_interface_bar.i.i:                         ; preds = %err_io_id_int_spaces_bar.i.i, %do.end19.i.i
  %167 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %info, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  tail call void @pci_release_region(ptr noundef %170, i32 noundef 2) #8
  br label %err_disable_device.i.i

err_disable_device.i.i:                           ; preds = %err_ip_interface_bar.i.i, %do.end.i.i
  %171 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %info, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  tail call void @pci_disable_device(ptr noundef %174) #8
  br label %if.then3.i

if.then3.i:                                       ; preds = %err_disable_device.i.i, %if.end.i.if.then3.i_crit_edge
  %175 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %slots.i, align 4
  tail call void @kfree(ptr noundef %176) #8
  %177 = ptrtoint ptr %slots.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr null, ptr %slots.i, align 4
  br label %do.end52

do.end52:                                         ; preds = %if.then3.i, %if.end29.do.end52_crit_edge
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.11) #12
  br label %err_cfg_regs

if.end54:                                         ; preds = %do.body95.i.i
  %mutex.i = getelementptr inbounds %struct.tpci200_board, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @tpci200_install.__key) #8
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call56 = tail call ptr @ipack_bus_register(ptr noundef %dev55, i32 noundef 4, ptr noundef nonnull @tpci200_bus_ops, ptr noundef null) #8
  %178 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %info, align 8
  %ipack_bus = getelementptr inbounds %struct.tpci200_infos, ptr %179, i32 0, i32 4
  %180 = ptrtoint ptr %ipack_bus to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call56, ptr %ipack_bus, align 4
  %181 = load ptr, ptr %info, align 8
  %ipack_bus59 = getelementptr inbounds %struct.tpci200_infos, ptr %181, i32 0, i32 4
  %182 = ptrtoint ptr %ipack_bus59 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ipack_bus59, align 4
  %tobool60.not = icmp eq ptr %183, null
  br i1 %tobool60.not, label %do.end64, label %if.end66

do.end64:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.14) #12
  tail call fastcc void @tpci200_uninstall(ptr noundef nonnull %call7.i.i)
  br label %err_cfg_regs

if.end66:                                         ; preds = %if.end54
  %bus_nr = getelementptr inbounds %struct.ipack_bus_device, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %bus_nr to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %bus_nr, align 4
  %186 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %call7.i.i, align 8
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %187 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %for.body

for.body:                                         ; preds = %tpci200_create_device.exit.for.body_crit_edge, %if.end66
  %i.0129 = phi i32 [ 0, %if.end66 ], [ %inc, %tpci200_create_device.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %188 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %188, i32 noundef 3520, i32 noundef 1000) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.tpci200_create_device.exit_crit_edge, label %if.end.i126

for.body.tpci200_create_device.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpci200_create_device.exit

if.end.i126:                                      ; preds = %for.body
  %189 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %i.0129, ptr %call7.i.i.i, align 8
  %190 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %info, align 8
  %ipack_bus.i = getelementptr inbounds %struct.tpci200_infos, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %ipack_bus.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ipack_bus.i, align 4
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 1
  %194 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %193, ptr %bus.i, align 4
  %release.i = getelementptr inbounds %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 3
  %195 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @tpci200_release_device, ptr %release.i, align 8
  %196 = ptrtoint ptr %mod_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %mod_mem.i.i, align 4
  %mul.i = shl i32 %i.0129, 8
  %add.i = add i32 %197, %mul.i
  %arrayidx2.i = getelementptr %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 4, i32 0
  %198 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %add.i, ptr %arrayidx2.i, align 4
  %size.i = getelementptr %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 1
  %199 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 128, ptr %size.i, align 8
  %200 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx107.i.i, align 8
  %add.1.i = add i32 %201, %mul.i
  %arrayidx2.1.i = getelementptr %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %202 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %add.1.i, ptr %arrayidx2.1.i, align 4
  %size.1.i = getelementptr %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 1
  %203 = ptrtoint ptr %size.1.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 64, ptr %size.1.i, align 8
  %204 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx110.i.i, align 4
  %add.2.i = add i32 %205, %mul.i
  %arrayidx2.2.i = getelementptr %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %206 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %add.2.i, ptr %arrayidx2.2.i, align 4
  %size.2.i = getelementptr %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 4, i32 2, i32 1
  %207 = ptrtoint ptr %size.2.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 64, ptr %size.2.i, align 8
  %208 = ptrtoint ptr %arrayidx117.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx117.i.i, align 8
  %mul.3.i = shl i32 %i.0129, 22
  %add.3.i = add i32 %209, %mul.3.i
  %arrayidx2.3.i = getelementptr %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  %210 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %add.3.i, ptr %arrayidx2.3.i, align 4
  %size.3.i = getelementptr %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 4, i32 3, i32 1
  %211 = ptrtoint ptr %size.3.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 4194304, ptr %size.3.i, align 8
  %212 = ptrtoint ptr %arrayidx124.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx124.i.i, align 4
  %mul.4.i = shl i32 %i.0129, 23
  %add.4.i = add i32 %213, %mul.4.i
  %arrayidx2.4.i = getelementptr %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 4, i32 4
  %214 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %add.4.i, ptr %arrayidx2.4.i, align 4
  %size.4.i = getelementptr %struct.ipack_device, ptr %call7.i.i.i, i32 0, i32 4, i32 4, i32 1
  %215 = ptrtoint ptr %size.4.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 8388608, ptr %size.4.i, align 8
  %call6.i = tail call i32 @ipack_device_init(ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i126.cleanup.sink.split.i_crit_edge, label %if.end9.i

if.end.i126.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.end.i126
  %call10.i = tail call i32 @ipack_device_add(ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end9.i.cleanup.sink.split.i_crit_edge, label %if.end9.i.tpci200_create_device.exit_crit_edge

if.end9.i.tpci200_create_device.exit_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpci200_create_device.exit

if.end9.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end9.i.cleanup.sink.split.i_crit_edge, %if.end.i126.cleanup.sink.split.i_crit_edge
  tail call void @ipack_put_device(ptr noundef nonnull %call7.i.i.i) #8
  br label %tpci200_create_device.exit

tpci200_create_device.exit:                       ; preds = %cleanup.sink.split.i, %if.end9.i.tpci200_create_device.exit_crit_edge, %for.body.tpci200_create_device.exit_crit_edge
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %tpci200_create_device.exit.cleanup_crit_edge, label %tpci200_create_device.exit.for.body_crit_edge

tpci200_create_device.exit.for.body_crit_edge:    ; preds = %tpci200_create_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

tpci200_create_device.exit.cleanup_crit_edge:     ; preds = %tpci200_create_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_cfg_regs:                                     ; preds = %do.end64, %do.end52
  %ret.0 = phi i32 [ -19, %do.end52 ], [ -14, %do.end64 ]
  %216 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %info, align 8
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 4
  %cfg_regs75 = getelementptr inbounds %struct.tpci200_infos, ptr %217, i32 0, i32 3
  %220 = ptrtoint ptr %cfg_regs75 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %cfg_regs75, align 4
  tail call void @pci_iounmap(ptr noundef %219, ptr noundef %221) #8
  br label %err_request_region

err_request_region:                               ; preds = %err_cfg_regs, %do.end27
  %ret.1 = phi i32 [ %ret.0, %err_cfg_regs ], [ -14, %do.end27 ]
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #8
  br label %err_tpci200_info

err_tpci200_info:                                 ; preds = %err_request_region, %do.end
  %ret.2 = phi i32 [ -16, %do.end ], [ %ret.1, %err_request_region ]
  %222 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %info, align 8
  tail call void @kfree(ptr noundef %223) #8
  tail call void @pci_dev_put(ptr noundef %pdev) #8
  br label %err_tpci200

err_tpci200:                                      ; preds = %err_tpci200_info, %if.end.err_tpci200_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_tpci200_info ], [ -12, %if.end.err_tpci200_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_tpci200, %tpci200_create_device.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_tpci200 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %tpci200_create_device.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpci200_pci_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %info.i = getelementptr inbounds %struct.tpci200_board, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %ipack_bus.i = getelementptr inbounds %struct.tpci200_infos, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ipack_bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipack_bus.i, align 4
  %call.i = tail call i32 @ipack_bus_unregister(ptr noundef %5) #8
  tail call fastcc void @tpci200_uninstall(ptr noundef %1) #8
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cfg_regs.i = getelementptr inbounds %struct.tpci200_infos, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg_regs.i, align 4
  tail call void @pci_iounmap(ptr noundef %9, ptr noundef %11) #8
  %12 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void @pci_release_region(ptr noundef %15, i32 noundef 0) #8
  %16 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void @pci_dev_put(ptr noundef %19) #8
  %20 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i, align 4
  tail call void @kfree(ptr noundef %21) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipack_bus_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tpci200_uninstall(ptr noundef %tpci200) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.tpci200_board, ptr %tpci200, i32 0, i32 4
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %5, ptr noundef %tpci200) #8
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %interface_regs.i = getelementptr inbounds %struct.tpci200_infos, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %interface_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interface_regs.i, align 4
  tail call void @pci_iounmap(ptr noundef %9, ptr noundef %11) #8
  %12 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void @pci_release_region(ptr noundef %15, i32 noundef 2) #8
  %16 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void @pci_release_region(ptr noundef %19, i32 noundef 3) #8
  %20 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void @pci_release_region(ptr noundef %23, i32 noundef 4) #8
  %24 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void @pci_release_region(ptr noundef %27, i32 noundef 5) #8
  %28 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  tail call void @pci_disable_device(ptr noundef %31) #8
  %slots = getelementptr inbounds %struct.tpci200_board, ptr %tpci200, i32 0, i32 3
  %32 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %slots, align 4
  tail call void @kfree(ptr noundef %33) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpci200_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.tpci200_board, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %interface_regs = getelementptr inbounds %struct.tpci200_infos, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %interface_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface_regs, align 4
  %status = getelementptr inbounds %struct.tpci200_regs, ptr %3, i32 0, i32 3
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %status) #8, !srcloc !134
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !118) #8
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !136
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %slots = getelementptr inbounds %struct.tpci200_board, ptr %dev_id, i32 0, i32 3
  %regs_lock.i.i = getelementptr inbounds %struct.tpci200_board, ptr %dev_id, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit
  %i.057 = phi i32 [ 0, %rcu_read_lock.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl nuw i32 %i.057, 1
  %shl = shl i32 3, %mul
  %and3 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %10 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slots, align 4
  %arrayidx = getelementptr %struct.tpci200_slot, ptr %11, i32 %i.057
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx, align 4
  %call9 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end6.do.end18_crit_edge

if.end6.do.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

land.lhs.true:                                    ; preds = %if.end6
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b43 = load i1, ptr @tpci200_interrupt.__warned, align 1
  br i1 %.b43, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tpci200_interrupt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 148, ptr noundef nonnull @.str.39) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %if.end6.do.end18_crit_edge
  %tobool.not.i44 = icmp eq ptr %13, null
  br i1 %tobool.not.i44, label %do.end18.do.end26_crit_edge, label %tpci200_slot_irq.exit

do.end18.do.end26_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

tpci200_slot_irq.exit:                            ; preds = %do.end18
  %handler.i = getelementptr inbounds %struct.slot_irq, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handler.i, align 4
  %arg.i = getelementptr inbounds %struct.slot_irq, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arg.i, align 4
  %call.i45 = tail call i32 %15(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i45)
  %cmp21 = icmp eq i32 %call.i45, -19
  br i1 %cmp21, label %tpci200_slot_irq.exit.do.end26_crit_edge, label %tpci200_slot_irq.exit.for.inc_crit_edge

tpci200_slot_irq.exit.for.inc_crit_edge:          ; preds = %tpci200_slot_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

tpci200_slot_irq.exit.do.end26_crit_edge:         ; preds = %tpci200_slot_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

do.end26:                                         ; preds = %tpci200_slot_irq.exit.do.end26_crit_edge, %do.end18.do.end26_crit_edge
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %23, i32 noundef %i.057) #12
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  %interface_regs.i = getelementptr inbounds %struct.tpci200_infos, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %interface_regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interface_regs.i, align 4
  %arrayidx.i = getelementptr %struct.tpci200_regs, ptr %27, i32 0, i32 1, i32 %i.057
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %regs_lock.i.i) #8
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx.i) #8, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %29 = and i16 %28, 16383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx.i, i16 %29) #8, !srcloc !133
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %regs_lock.i.i, i32 noundef %call2.i.i) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end26, %tpci200_slot_irq.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call.i46 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i46, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i49

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i49:                                ; preds = %for.end
  %call1.i47 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i51

land.lhs.true.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i51:                               ; preds = %land.lhs.true.i49
  %.b4.i50 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50, label %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, label %if.then.i52

land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i52:                                      ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i52, %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %30 = tail call i32 @llvm.read_register.i32(metadata !118) #8
  %and.i.i.i.i.i53 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i53 to ptr
  %preempt_count.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i54, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i54, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpci200_request_irq(ptr noundef %dev, ptr noundef %handler, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %dev, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %parent.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cmp1.i = icmp eq ptr %5, null
  br i1 %cmp1.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp5.i = icmp ugt i32 %7, 3
  br i1 %cmp5.i, label %do.end9.i, label %if.end

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %bus_nr.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bus_nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_nr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10.i, ptr noundef nonnull @.str.54, i32 noundef %9, i32 noundef %7, i32 noundef 3) #12
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %mutex = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 1
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %slots = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slots, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev, align 8
  %arrayidx = getelementptr %struct.tpci200_slot, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %cmp4.not = icmp eq ptr %15, null
  br i1 %cmp4.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 4
  %bus_nr = getelementptr inbounds %struct.ipack_bus_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %bus_nr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bus_nr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.46, i32 noundef %19, i32 noundef %13) #12
  br label %out_unlock

if.end8:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 16) #11
  %cmp10 = icmp eq ptr %call7.i.i, null
  br i1 %cmp10, label %do.end14, label %if.end19

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 4
  %bus_nr17 = getelementptr inbounds %struct.ipack_bus_device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bus_nr17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bus_nr17, align 4
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.49, i32 noundef %24, i32 noundef %26) #12
  br label %out_unlock

if.end19:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %handler20 = getelementptr inbounds %struct.slot_irq, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %handler20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %handler, ptr %handler20, align 8
  %arg21 = getelementptr inbounds %struct.slot_irq, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %arg21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arg, ptr %arg21, align 4
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %call7.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !139
  %30 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slots, align 4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev, align 8
  %arrayidx53 = getelementptr %struct.tpci200_slot, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %arrayidx53, align 4
  %35 = load i32, ptr %dev, align 8
  %info.i = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 4
  %36 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info.i, align 4
  %interface_regs.i = getelementptr inbounds %struct.tpci200_infos, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %interface_regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %interface_regs.i, align 4
  %arrayidx.i = getelementptr %struct.tpci200_regs, ptr %39, i32 0, i32 1, i32 %35
  %regs_lock.i.i = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 2
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %regs_lock.i.i) #8
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx.i) #8, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %41 = or i16 %40, -16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx.i, i16 %41) #8, !srcloc !133
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %regs_lock.i.i, i32 noundef %call2.i.i) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.end19, %do.end14, %do.end
  %res.0 = phi i32 [ -22, %do.end ], [ -12, %do.end14 ], [ 0, %if.end19 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %do.end9.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out_unlock ], [ -512, %if.end.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end9.i ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpci200_free_irq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %dev, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %parent.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cmp1.i = icmp eq ptr %5, null
  br i1 %cmp1.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp5.i = icmp ugt i32 %7, 3
  br i1 %cmp5.i, label %do.end9.i, label %if.end

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %bus_nr.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bus_nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_nr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10.i, ptr noundef nonnull @.str.54, i32 noundef %9, i32 noundef %7, i32 noundef 3) #12
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %mutex = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 1
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %slots = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slots, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev, align 8
  %arrayidx = getelementptr %struct.tpci200_slot, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %cmp4 = icmp eq ptr %15, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %info.i = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info.i, align 4
  %interface_regs.i = getelementptr inbounds %struct.tpci200_infos, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %interface_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interface_regs.i, align 4
  %arrayidx.i = getelementptr %struct.tpci200_regs, ptr %19, i32 0, i32 1, i32 %13
  %regs_lock.i.i = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 2
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %regs_lock.i.i) #8
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx.i) #8, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %21 = and i16 %20, 16383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx.i, i16 %21) #8, !srcloc !133
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %regs_lock.i.i, i32 noundef %call2.i.i) #8
  %22 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slots, align 4
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev, align 8
  %arrayidx11 = getelementptr %struct.tpci200_slot, ptr %23, i32 %25
  %26 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx11, align 4
  store volatile ptr null, ptr %arrayidx11, align 4
  tail call void @synchronize_rcu() #8
  tail call void @kfree(ptr noundef %27) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.end.cleanup_crit_edge, %do.end9.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then5 ], [ 0, %if.end7 ], [ -512, %if.end.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end9.i ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpci200_get_clockrate(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %dev, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %parent.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cmp1.i = icmp eq ptr %5, null
  br i1 %cmp1.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp5.i = icmp ugt i32 %7, 3
  br i1 %cmp5.i, label %do.end9.i, label %if.end

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %bus_nr.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bus_nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_nr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10.i, ptr noundef nonnull @.str.54, i32 noundef %9, i32 noundef %7, i32 noundef 3) #12
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %info = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %interface_regs = getelementptr inbounds %struct.tpci200_infos, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %interface_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface_regs, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev, align 8
  %arrayidx = getelementptr %struct.tpci200_regs, ptr %13, i32 0, i32 1, i32 %15
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx) #8, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %17 = and i16 %16, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool2.not = icmp eq i16 %17, 0
  %cond = select i1 %tobool2.not, i32 8, i32 32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end9.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ -19, %do.end.i ], [ -19, %do.end9.i ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpci200_set_clockrate(ptr noundef %dev, i32 noundef %mherz) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %dev, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %parent.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cmp1.i = icmp eq ptr %5, null
  br i1 %cmp1.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp5.i = icmp ugt i32 %7, 3
  br i1 %cmp5.i, label %do.end9.i, label %if.end

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %bus_nr.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bus_nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_nr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10.i, ptr noundef nonnull @.str.54, i32 noundef %9, i32 noundef %7, i32 noundef 3) #12
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %info = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %interface_regs = getelementptr inbounds %struct.tpci200_infos, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %interface_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface_regs, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev, align 8
  %arrayidx = getelementptr %struct.tpci200_regs, ptr %13, i32 0, i32 1, i32 %15
  %16 = zext i32 %mherz to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mherz, label %if.end.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 32, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regs_lock.i = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %regs_lock.i) #8
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx) #8, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %18 = and i16 %17, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx, i16 %18) #8, !srcloc !133
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %regs_lock.i, i32 noundef %call2.i) #8
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regs_lock.i8 = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 2
  %call2.i9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %regs_lock.i8) #8
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx) #8, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %20 = or i16 %19, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx, i16 %20) #8, !srcloc !133
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %regs_lock.i8, i32 noundef %call2.i9) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %do.end9.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -19, %do.end.i ], [ -19, %do.end9.i ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpci200_get_error(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %dev, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %parent.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cmp1.i = icmp eq ptr %5, null
  br i1 %cmp1.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp5.i = icmp ugt i32 %7, 3
  br i1 %cmp5.i, label %do.end9.i, label %if.end

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %bus_nr.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bus_nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_nr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10.i, ptr noundef nonnull @.str.54, i32 noundef %9, i32 noundef %7, i32 noundef 3) #12
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %info = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %interface_regs = getelementptr inbounds %struct.tpci200_infos, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %interface_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface_regs, align 4
  %status = getelementptr inbounds %struct.tpci200_regs, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev, align 8
  %arrayidx = getelementptr [4 x i16], ptr @tpci200_status_error, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %status) #8, !srcloc !134
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %and8 = and i16 %19, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and8)
  %tobool3.not = icmp ne i16 %and8, 0
  %cond = zext i1 %tobool3.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end9.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ -19, %do.end.i ], [ -19, %do.end9.i ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpci200_get_timeout(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %dev, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %parent.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cmp1.i = icmp eq ptr %5, null
  br i1 %cmp1.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp5.i = icmp ugt i32 %7, 3
  br i1 %cmp5.i, label %do.end9.i, label %if.end

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %bus_nr.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bus_nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_nr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10.i, ptr noundef nonnull @.str.54, i32 noundef %9, i32 noundef %7, i32 noundef 3) #12
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %info = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %interface_regs = getelementptr inbounds %struct.tpci200_infos, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %interface_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface_regs, align 4
  %status = getelementptr inbounds %struct.tpci200_regs, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev, align 8
  %arrayidx = getelementptr [4 x i16], ptr @tpci200_status_timeout, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %status) #8, !srcloc !134
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %and8 = and i16 %19, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and8)
  %tobool3.not = icmp ne i16 %and8, 0
  %cond = zext i1 %tobool3.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end9.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ -19, %do.end.i ], [ -19, %do.end9.i ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpci200_reset_timeout(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %dev, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %parent.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cmp1.i = icmp eq ptr %5, null
  br i1 %cmp1.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp5.i = icmp ugt i32 %7, 3
  br i1 %cmp5.i, label %do.end9.i, label %if.end

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %bus_nr.i = getelementptr inbounds %struct.ipack_bus_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bus_nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_nr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10.i, ptr noundef nonnull @.str.54, i32 noundef %9, i32 noundef %7, i32 noundef 3) #12
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %info = getelementptr inbounds %struct.tpci200_board, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %interface_regs = getelementptr inbounds %struct.tpci200_infos, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %interface_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface_regs, align 4
  %status = getelementptr inbounds %struct.tpci200_regs, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev, align 8
  %arrayidx = getelementptr [4 x i16], ptr @tpci200_status_timeout, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %status, i16 %18) #8, !srcloc !133
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end9.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %do.end.i ], [ -19, %do.end9.i ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpci200_release_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipack_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipack_put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipack_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipack_bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !43, !44, !45, !47, !49, !50, !51, !53, !55, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114, !116}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__initcall__kmod_tpci200__242_647_tpci200_pci_drv_init6, !1, !"__initcall__kmod_tpci200__242_647_tpci200_pci_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/ipack/carriers/tpci200.c", i32 647, i32 1}
!2 = !{ptr @__exitcall_tpci200_pci_drv_exit, !1, !"__exitcall_tpci200_pci_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description243, !4, !"__UNIQUE_ID_description243", i1 false, i1 false}
!4 = !{!"../drivers/ipack/carriers/tpci200.c", i32 649, i32 1}
!5 = !{ptr @__UNIQUE_ID_file244, !6, !"__UNIQUE_ID_file244", i1 false, i1 false}
!6 = !{!"../drivers/ipack/carriers/tpci200.c", i32 650, i32 1}
!7 = !{ptr @__UNIQUE_ID_license245, !6, !"__UNIQUE_ID_license245", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tpci200_pci_drv, !10, !"tpci200_pci_drv", i1 false, i1 false}
!10 = !{!"../drivers/ipack/carriers/tpci200.c", i32 640, i32 26}
!11 = !{ptr @tpci200_idtable, !12, !"tpci200_idtable", i1 false, i1 false}
!12 = !{!"../drivers/ipack/carriers/tpci200.c", i32 632, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/ipack/carriers/tpci200.c", i32 538, i32 6}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/ipack/carriers/tpci200.c", i32 540, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tpci200_pci_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @tpci200_pci_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/ipack/carriers/tpci200.c", i32 548, i32 3}
!25 = !{ptr @tpci200_pci_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @tpci200_pci_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/ipack/carriers/tpci200.c", i32 571, i32 3}
!29 = !{ptr @tpci200_pci_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tpci200_pci_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/ipack/carriers/tpci200.c", i32 582, i32 3}
!33 = !{ptr @tpci200_pci_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tpci200_pci_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @tpci200_install.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/ipack/carriers/tpci200.c", i32 476, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ipack/carriers/tpci200.c", i32 251, i32 6}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ipack/carriers/tpci200.c", i32 253, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tpci200_register._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @tpci200_register._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ipack/carriers/tpci200.c", i32 263, i32 6}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ipack/carriers/tpci200.c", i32 265, i32 3}
!49 = !{ptr @tpci200_register._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tpci200_register._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ipack/carriers/tpci200.c", i32 274, i32 6}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ipack/carriers/tpci200.c", i32 276, i32 3}
!55 = !{ptr @tpci200_register._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @tpci200_register._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ipack/carriers/tpci200.c", i32 285, i32 6}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ipack/carriers/tpci200.c", i32 287, i32 3}
!61 = !{ptr @tpci200_register._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @tpci200_register._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/ipack/carriers/tpci200.c", i32 300, i32 3}
!65 = !{ptr @tpci200_register._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @tpci200_register._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @tpci200_register.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/ipack/carriers/tpci200.c", i32 309, i32 2}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ipack/carriers/tpci200.c", i32 340, i32 3}
!72 = !{ptr @tpci200_register._entry.36, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tpci200_register._entry_ptr.38, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../drivers/ipack/carriers/tpci200.c", i32 148, i32 14}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ipack/carriers/tpci200.c", i32 151, i32 4}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tpci200_interrupt._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @tpci200_interrupt._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!89 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tpci200_bus_ops, !91, !"tpci200_bus_ops", i1 false, i1 false}
!91 = !{!"../drivers/ipack/carriers/tpci200.c", i32 450, i32 35}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ipack/carriers/tpci200.c", i32 204, i32 3}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @tpci200_request_irq._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @tpci200_request_irq._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/ipack/carriers/tpci200.c", i32 214, i32 3}
!99 = !{ptr @tpci200_request_irq._entry.48, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @tpci200_request_irq._entry_ptr.50, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/ipack/carriers/tpci200.c", i32 55, i32 3}
!103 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @check_slot._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @check_slot._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/ipack/carriers/tpci200.c", i32 60, i32 3}
!108 = !{ptr @check_slot._entry.53, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @check_slot._entry_ptr.55, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @tpci200_status_error, !111, !"tpci200_status_error", i1 false, i1 false}
!111 = !{!"../drivers/ipack/carriers/tpci200.c", i32 21, i32 18}
!112 = !{ptr @tpci200_status_timeout, !113, !"tpci200_status_timeout", i1 false, i1 false}
!113 = !{!"../drivers/ipack/carriers/tpci200.c", i32 14, i32 18}
!114 = distinct !{null, !115, !"tpci200_space_interval", i1 false, i1 false}
!115 = !{!"../drivers/ipack/carriers/tpci200.c", i32 36, i32 21}
!116 = distinct !{null, !117, !"tpci200_space_size", i1 false, i1 false}
!117 = !{!"../drivers/ipack/carriers/tpci200.c", i32 28, i32 21}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 5392267}
!129 = !{i64 2152932616}
!130 = !{i64 2152933971}
!131 = !{i64 5391849}
!132 = !{i64 2154481889}
!133 = !{i64 5391229}
!134 = !{i64 5391429}
!135 = !{i64 2152932004}
!136 = !{i64 2149371087}
!137 = !{i64 2152933421}
!138 = !{i64 2149371353}
!139 = !{i64 2154467897}
