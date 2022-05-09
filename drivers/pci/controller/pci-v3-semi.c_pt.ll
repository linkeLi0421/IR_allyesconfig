; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-v3-semi.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-v3-semi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.v3_pci = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pci_v3_semi__241_910_v3_pci_driver_init6 = internal global ptr @v3_pci_driver_init, section ".initcall6.init", align 4
@v3_pci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @v3_pci_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @v3_pci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-v3-semi\00", [20 x i8] zeroinitializer }, align 32
@v3_pci_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"v3,v360epc-pci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@v3_pci_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @v3_map_bus, ptr @v3_pci_read_config, ptr @v3_pci_write_config }, [44 x i8] zeroinitializer }, align 32
@v3_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 731, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clock not found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"v3_pci_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/pci/controller/pci-v3-semi.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@v3_pci_probe._entry_ptr = internal global ptr @v3_pci_probe._entry, section ".printk_index", align 4
@v3_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 736, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@v3_pci_probe._entry_ptr.8 = internal global ptr @v3_pci_probe._entry.6, section ".printk_index", align 4
@v3_pci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 751, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"V3_LB_IO_BASE = %08x but device is @%pR\0A\00", [55 x i8] zeroinitializer }, align 32
@v3_pci_probe._entry_ptr.11 = internal global ptr @v3_pci_probe._entry.9, section ".printk_index", align 4
@v3_pci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 756, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"config mem is not 16MB!\0A\00", [39 x i8] zeroinitializer }, align 32
@v3_pci_probe._entry_ptr.14 = internal global ptr @v3_pci_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PCIv3 error\00", [20 x i8] zeroinitializer }, align 32
@v3_pci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 774, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to request PCIv3 error IRQ %d (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@v3_pci_probe._entry_ptr.18 = internal global ptr @v3_pci_probe._entry.16, section ".printk_index", align 4
@v3_pci_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 816, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error setting up resources\0A\00", [36 x i8] zeroinitializer }, align 32
@v3_pci_probe._entry_ptr.21 = internal global ptr @v3_pci_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arm,integrator-ap-pci\00", [42 x i8] zeroinitializer }, align 32
@v3_pci_read_config.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci_v3_semi\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"v3_pci_read_config\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[read]  slt: %.2d, fnc: %d, cnf: 0x%.2X, val (%d bytes): 0x%.8X\0A\00", [63 x i8] zeroinitializer }, align 32
@v3_pci_write_config.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"v3_pci_write_config\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[write] slt: %.2d, fnc: %d, cnf: 0x%.2X, val (%d bytes): 0x%.8X\0A\00", [63 x i8] zeroinitializer }, align 32
@v3_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"parity error interrupt\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"v3_irq\00", [25 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr = internal global ptr @v3_irq._entry, section ".printk_index", align 4
@v3_irq._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system error interrupt\0A\00", [40 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr.32 = internal global ptr @v3_irq._entry.30, section ".printk_index", align 4
@v3_irq._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 450, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"master abort error interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr.35 = internal global ptr @v3_irq._entry.33, section ".printk_index", align 4
@v3_irq._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"target abort error interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr.38 = internal global ptr @v3_irq._entry.36, section ".printk_index", align 4
@v3_irq._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.3, i32 457, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCI mailbox interrupt\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr.42 = internal global ptr @v3_irq._entry.39, section ".printk_index", align 4
@v3_irq._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.29, ptr @.str.3, i32 459, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCI target LB->PCI READ abort interrupt\0A\00", [55 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr.45 = internal global ptr @v3_irq._entry.43, section ".printk_index", align 4
@v3_irq._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.29, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PCI target LB->PCI WRITE abort interrupt\0A\00", [54 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr.48 = internal global ptr @v3_irq._entry.46, section ".printk_index", align 4
@v3_irq._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.29, ptr @.str.3, i32 463, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCI pin interrupt\0A\00", [45 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr.51 = internal global ptr @v3_irq._entry.49, section ".printk_index", align 4
@v3_irq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.29, ptr @.str.3, i32 465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCI parity error interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr.54 = internal global ptr @v3_irq._entry.52, section ".printk_index", align 4
@v3_irq._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.29, ptr @.str.3, i32 467, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"I2O inbound post queue interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr.57 = internal global ptr @v3_irq._entry.55, section ".printk_index", align 4
@v3_irq._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.29, ptr @.str.3, i32 469, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DMA channel 1 interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr.60 = internal global ptr @v3_irq._entry.58, section ".printk_index", align 4
@v3_irq._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.29, ptr @.str.3, i32 471, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DMA channel 0 interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@v3_irq._entry_ptr.63 = internal global ptr @v3_irq._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"V3 PCI PRE-MEM\00", [17 x i8] zeroinitializer }, align 32
@v3_pci_setup_resource.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 -120, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"v3_pci_setup_resource\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PREFETCHABLE MEM window %pR, bus addr %pap\0A\00", [52 x i8] zeroinitializer }, align 32
@v3_pci_setup_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 547, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"prefetchable memory range is not 256MB\0A\00", [56 x i8] zeroinitializer }, align 32
@v3_pci_setup_resource._entry_ptr = internal global ptr @v3_pci_setup_resource._entry, section ".printk_index", align 4
@v3_pci_setup_resource._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.65, ptr @.str.3, i32 553, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"prefetchable memory is not adjacent to non-prefetchable memory\0A\00", [32 x i8] zeroinitializer }, align 32
@v3_pci_setup_resource._entry_ptr.70 = internal global ptr @v3_pci_setup_resource._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"V3 PCI NON-PRE-MEM\00", [45 x i8] zeroinitializer }, align 32
@v3_pci_setup_resource.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.65, ptr @.str.3, ptr @.str.72, i8 0, i8 -114, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NON-PREFETCHABLE MEM window %pR, bus addr %pap\0A\00", [48 x i8] zeroinitializer }, align 32
@v3_pci_setup_resource._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.65, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"non-prefetchable memory range is not 256MB\0A\00", [52 x i8] zeroinitializer }, align 32
@v3_pci_setup_resource._entry_ptr.75 = internal global ptr @v3_pci_setup_resource._entry.73, section ".printk_index", align 4
@v3_pci_setup_resource._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.65, ptr @.str.3, i32 590, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown resource type %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@v3_pci_setup_resource._entry_ptr.78 = internal global ptr @v3_pci_setup_resource._entry.76, section ".printk_index", align 4
@v3_pci_parse_map_dma_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"too many ranges, only two supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"v3_pci_parse_map_dma_ranges\00", [36 x i8] zeroinitializer }, align 32
@v3_pci_parse_map_dma_ranges._entry_ptr = internal global ptr @v3_pci_parse_map_dma_ranges._entry, section ".printk_index", align 4
@v3_pci_parse_map_dma_ranges._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 699, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"range %d ignored\0A\00", [46 x i8] zeroinitializer }, align 32
@v3_pci_parse_map_dma_ranges._entry_ptr.83 = internal global ptr @v3_pci_parse_map_dma_ranges._entry.81, section ".printk_index", align 4
@v3_get_dma_range_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"illegal range, only PCI bits 31..20 allowed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"v3_get_dma_range_config\00", [40 x i8] zeroinitializer }, align 32
@v3_get_dma_range_config._entry_ptr = internal global ptr @v3_get_dma_range_config._entry, section ".printk_index", align 4
@v3_get_dma_range_config._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.3, i32 616, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"illegal range, only CPU bits 31..20 allowed\0A\00", [51 x i8] zeroinitializer }, align 32
@v3_get_dma_range_config._entry_ptr.88 = internal global ptr @v3_get_dma_range_config._entry.86, section ".printk_index", align 4
@v3_get_dma_range_config._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.3, i32 659, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"illegal dma memory chunk size\0A\00", [33 x i8] zeroinitializer }, align 32
@v3_get_dma_range_config._entry_ptr.91 = internal global ptr @v3_get_dma_range_config._entry.89, section ".printk_index", align 4
@v3_get_dma_range_config.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.85, ptr @.str.3, ptr @.str.92, i8 0, i8 -89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"DMA MEM CPU: 0x%016llx -> 0x%016llx => PCI: 0x%016llx -> 0x%016llx base %08x map %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arm,integrator-ap-syscon\00", [39 x i8] zeroinitializer }, align 32
@v3_integrator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no syscon\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"v3_integrator_init\00", [45 x i8] zeroinitializer }, align 32
@v3_integrator_init._entry_ptr = internal global ptr @v3_integrator_init._entry, section ".printk_index", align 4
@v3_integrator_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 514, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"initialized PCI V3 Integrator/AP integration\0A\00", [50 x i8] zeroinitializer }, align 32
@v3_integrator_init._entry_ptr.98 = internal global ptr @v3_integrator_init._entry.96, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 4096]
@__sancov_gen_cov_switch_values.100 = internal global [14 x i64] [i64 12, i64 32, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648]
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"v3_pci_driver\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 902, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 904, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"v3_pci_of_match\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 895, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant [11 x i8] c"v3_pci_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 432, i32 23 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 731, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 736, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 750, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 756, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 770, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 772, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 816, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 863, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 410, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 424, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 446, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 448, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 450, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 452, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 457, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 459, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 461, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 463, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 465, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 467, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 469, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 471, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 541, i32 16 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 544, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 547, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 552, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 566, i32 16 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 569, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 572, i32 5 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 589, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 698, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 699, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 609, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 616, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 659, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 665, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 487, i32 38 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 489, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.354 = private constant [40 x i8] c"../drivers/pci/controller/pci-v3-semi.c\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 514, i32 2 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__initcall__kmod_pci_v3_semi__241_910_v3_pci_driver_init6, ptr @v3_get_dma_range_config._entry, ptr @v3_get_dma_range_config._entry.86, ptr @v3_get_dma_range_config._entry.89, ptr @v3_get_dma_range_config._entry_ptr, ptr @v3_get_dma_range_config._entry_ptr.88, ptr @v3_get_dma_range_config._entry_ptr.91, ptr @v3_integrator_init._entry, ptr @v3_integrator_init._entry.96, ptr @v3_integrator_init._entry_ptr, ptr @v3_integrator_init._entry_ptr.98, ptr @v3_irq._entry, ptr @v3_irq._entry.30, ptr @v3_irq._entry.33, ptr @v3_irq._entry.36, ptr @v3_irq._entry.39, ptr @v3_irq._entry.43, ptr @v3_irq._entry.46, ptr @v3_irq._entry.49, ptr @v3_irq._entry.52, ptr @v3_irq._entry.55, ptr @v3_irq._entry.58, ptr @v3_irq._entry.61, ptr @v3_irq._entry_ptr, ptr @v3_irq._entry_ptr.32, ptr @v3_irq._entry_ptr.35, ptr @v3_irq._entry_ptr.38, ptr @v3_irq._entry_ptr.42, ptr @v3_irq._entry_ptr.45, ptr @v3_irq._entry_ptr.48, ptr @v3_irq._entry_ptr.51, ptr @v3_irq._entry_ptr.54, ptr @v3_irq._entry_ptr.57, ptr @v3_irq._entry_ptr.60, ptr @v3_irq._entry_ptr.63, ptr @v3_pci_parse_map_dma_ranges._entry, ptr @v3_pci_parse_map_dma_ranges._entry.81, ptr @v3_pci_parse_map_dma_ranges._entry_ptr, ptr @v3_pci_parse_map_dma_ranges._entry_ptr.83, ptr @v3_pci_probe._entry, ptr @v3_pci_probe._entry.12, ptr @v3_pci_probe._entry.16, ptr @v3_pci_probe._entry.19, ptr @v3_pci_probe._entry.6, ptr @v3_pci_probe._entry.9, ptr @v3_pci_probe._entry_ptr, ptr @v3_pci_probe._entry_ptr.11, ptr @v3_pci_probe._entry_ptr.14, ptr @v3_pci_probe._entry_ptr.18, ptr @v3_pci_probe._entry_ptr.21, ptr @v3_pci_probe._entry_ptr.8, ptr @v3_pci_setup_resource._entry, ptr @v3_pci_setup_resource._entry.68, ptr @v3_pci_setup_resource._entry.73, ptr @v3_pci_setup_resource._entry.76, ptr @v3_pci_setup_resource._entry_ptr, ptr @v3_pci_setup_resource._entry_ptr.70, ptr @v3_pci_setup_resource._entry_ptr.75, ptr @v3_pci_setup_resource._entry_ptr.78, ptr @v3_pci_driver, ptr @.str, ptr @v3_pci_of_match, ptr @v3_pci_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_irq._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_setup_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_setup_resource._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_setup_resource._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_setup_resource._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_parse_map_dma_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_pci_parse_map_dma_ranges._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_get_dma_range_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_get_dma_range_config._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_get_dma_range_config._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_integrator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_integrator_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @v3_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @v3_pci_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3_pci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pci_base.i = alloca i32, align 4
  %pci_map.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 36) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @v3_pci_ops, ptr %ops, align 4
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %private.i, ptr %sysdata, align 4
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %private.i, align 4
  %call4 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.do.end14_crit_edge

if.end8.do.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call i32 @clk_enable(ptr noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end15, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call4) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then3.i, %if.end8.do.end14_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end8.do.end14_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end.i
  %call16 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call17 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call16) #6
  %base = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %base, align 4
  %cmp.i413 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i413, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %add.ptr = getelementptr i8, ptr %call17, i32 110
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !173
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %10 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call16, align 4
  %shr = lshr i32 %11, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr)
  %cmp.not = icmp eq i32 %9, %shr
  br i1 %cmp.not, label %if.end23.if.end38_crit_edge, label %do.end30

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr34 = getelementptr i8, ptr %13, i32 110
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #6, !srcloc !173
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %15, ptr noundef %call16) #9
  br label %if.end38

if.end38:                                         ; preds = %do.end30, %if.end23.if.end38_crit_edge
  %call39 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %end.i = getelementptr inbounds %struct.resource, ptr %call39, i32 0, i32 1
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  %18 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call39, align 4
  %sub.i = add i32 %17, 1
  %add.i = sub i32 %sub.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %add.i)
  %cmp41.not = icmp eq i32 %add.i, 16777216
  br i1 %cmp41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  %config_mem = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %config_mem to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %config_mem, align 4
  %call48 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call39) #6
  %config_base = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %config_base to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call48, ptr %config_base, align 4
  %cmp.i414 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i414, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call48 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end46
  %call55 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end54.cleanup_crit_edge, label %if.end58

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %call.i415 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call55, ptr noundef nonnull @v3_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %private.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i415)
  %cmp60 = icmp slt i32 %call.i415, 0
  br i1 %cmp60, label %do.end64, label %if.end65

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call55, i32 noundef %call.i415) #9
  br label %cleanup

if.end65:                                         ; preds = %if.end58
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr69 = getelementptr i8, ptr %24, i32 120
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr69) #6, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  %26 = and i16 %25, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool73.not = icmp eq i16 %26, 0
  br i1 %tobool73.not, label %if.end65.if.end80_crit_edge, label %do.body75

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.body75:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr79 = getelementptr i8, ptr %28, i32 120
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr79, i16 24480) #6, !srcloc !179
  br label %if.end80

if.end80:                                         ; preds = %do.body75, %if.end65.if.end80_crit_edge
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr84 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr84) #6, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  %32 = and i16 %31, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr95 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr95, i16 %32) #6, !srcloc !179
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr99 = getelementptr i8, ptr %36, i32 120
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr99) #6, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  %38 = and i16 %37, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr110 = getelementptr i8, ptr %40, i32 120
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr110, i16 %38) #6, !srcloc !179
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr114 = getelementptr i8, ptr %42, i32 124
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr114) #6, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  %44 = or i16 %43, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr124 = getelementptr i8, ptr %46, i32 124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr124, i16 %44) #6, !srcloc !179
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr128 = getelementptr i8, ptr %48, i32 122
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr128) #6, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  %50 = and i16 %49, 8183
  %51 = or i16 %50, -16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr148 = getelementptr i8, ptr %53, i32 122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr148, i16 %51) #6, !srcloc !179
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr152 = getelementptr i8, ptr %55, i32 4
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr152) #6, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  %57 = or i16 %56, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr163 = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr163, i16 %57) #6, !srcloc !179
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end80
  %win.0.in = phi ptr [ %windows, %if.end80 ], [ %win.0, %for.body.for.cond_crit_edge ]
  %60 = ptrtoint ptr %win.0.in to i32
  call void @__asan_load4_noabort(i32 %60)
  %win.0 = load ptr, ptr %win.0.in, align 4
  %cmp167.not = icmp eq ptr %win.0, %windows
  br i1 %cmp167.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call169 = tail call fastcc i32 @v3_pci_setup_resource(ptr noundef %private.i, ptr noundef %win.0)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %for.body.for.cond_crit_edge, label %do.end174

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

do.end174:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %61 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %private.i, align 4
  %dma_ranges.i = getelementptr %struct.pci_host_bridge, ptr %call, i32 0, i32 8
  %63 = ptrtoint ptr %dma_ranges.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %entry2.03.i = load ptr, ptr %dma_ranges.i, align 4
  %cmp.not4.i = icmp eq ptr %entry2.03.i, %dma_ranges.i
  br i1 %cmp.not4.i, label %for.end.do.body185_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.do.body185_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body185

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %entry2.07.i = phi ptr [ %entry2.0.i, %cleanup.i.for.body.i_crit_edge ], [ %entry2.03.i, %for.end.for.body.i_crit_edge ]
  %i.05.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pci_base.i) #6
  %64 = ptrtoint ptr %pci_base.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %pci_base.i, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pci_map.i) #6
  %65 = ptrtoint ptr %pci_map.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %pci_map.i, align 4, !annotation !190
  %call4.i = call fastcc i32 @v3_get_dma_range_config(ptr noundef %private.i, ptr noundef %entry2.07.i, ptr noundef nonnull %pci_base.i, ptr noundef nonnull %pci_map.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i416 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i416, label %if.end.i417, label %v3_pci_parse_map_dma_ranges.exit

if.end.i417:                                      ; preds = %for.body.i
  %66 = zext i32 %i.05.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.05.i, label %do.end28.i [
    i32 0, label %do.body.i
    i32 1, label %do.body15.i
  ]

do.body.i:                                        ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %pci_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pci_base.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #6
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr7.i = getelementptr i8, ptr %71, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %69) #6, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  tail call void @arm_heavy_mb() #6
  %72 = ptrtoint ptr %pci_map.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pci_map.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  %add.ptr12.i = getelementptr i8, ptr %76, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %74) #6, !srcloc !192
  br label %cleanup.i

do.body15.i:                                      ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  tail call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %pci_base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pci_base.i, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #6
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base, align 4
  %add.ptr19.i = getelementptr i8, ptr %81, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %79) #6, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %pci_map.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pci_map.i, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #6
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %add.ptr24.i = getelementptr i8, ptr %86, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %84) #6, !srcloc !192
  br label %cleanup.i

do.end28.i:                                       ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.79) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.82, i32 noundef %i.05.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end28.i, %do.body15.i, %do.body.i
  %inc.i = add i32 %i.05.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_map.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_base.i) #6
  %87 = ptrtoint ptr %entry2.07.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %entry2.0.i = load ptr, ptr %entry2.07.i, align 4
  %cmp.not.i = icmp eq ptr %entry2.0.i, %dma_ranges.i
  br i1 %cmp.not.i, label %cleanup.i.do.body185_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.do.body185_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body185

v3_pci_parse_map_dma_ranges.exit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_map.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_base.i) #6
  br label %cleanup

do.body185:                                       ; preds = %cleanup.i.do.body185_crit_edge, %for.end.do.body185_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %add.ptr189 = getelementptr i8, ptr %89, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189, i32 0) #6, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %add.ptr200 = getelementptr i8, ptr %91, i32 124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr200, i16 26225) #6, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  tail call void @arm_heavy_mb() #6
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  %add.ptr205 = getelementptr i8, ptr %93, i32 114
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr205, i16 2570) #6, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  tail call void @arm_heavy_mb() #6
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base, align 4
  %add.ptr210 = getelementptr i8, ptr %95, i32 118
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr210, i8 0) #6, !srcloc !200
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 4
  %add.ptr214 = getelementptr i8, ptr %97, i32 122
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr214) #6, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  %99 = or i16 %98, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  tail call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %add.ptr225 = getelementptr i8, ptr %101, i32 122
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr225, i16 %99) #6, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  tail call void @arm_heavy_mb() #6
  %102 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base, align 4
  %add.ptr230 = getelementptr i8, ptr %103, i32 119
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr230, i8 40) #6, !srcloc !200
  %call231 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %do.body185.if.end238_crit_edge, label %if.then233

do.body185.if.end238_crit_edge:                   ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end238

if.then233:                                       ; preds = %do.body185
  %call234 = tail call fastcc i32 @v3_integrator_init(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.then233.if.end238_crit_edge, label %if.then233.cleanup_crit_edge

if.then233.cleanup_crit_edge:                     ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then233.if.end238_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end238

if.end238:                                        ; preds = %if.then233.if.end238_crit_edge, %do.body185.if.end238_crit_edge
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base, align 4
  %add.ptr242 = getelementptr i8, ptr %105, i32 4
  %106 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr242) #6, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  %107 = or i16 %106, 4608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @arm_heavy_mb() #6
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 4
  %add.ptr253 = getelementptr i8, ptr %109, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr253, i16 %107) #6, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base, align 4
  %add.ptr258 = getelementptr i8, ptr %111, i32 118
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr258, i8 0) #6, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %112 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base, align 4
  %add.ptr263 = getelementptr i8, ptr %113, i32 119
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr263, i8 104) #6, !srcloc !200
  %114 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base, align 4
  %add.ptr267 = getelementptr i8, ptr %115, i32 120
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr267) #6, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %117 = or i16 %116, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %118 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base, align 4
  %add.ptr278 = getelementptr i8, ptr %119, i32 120
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr278, i16 %117) #6, !srcloc !179
  %120 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base, align 4
  %add.ptr282 = getelementptr i8, ptr %121, i32 120
  %122 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr282) #6, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  %123 = or i16 %122, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  tail call void @arm_heavy_mb() #6
  %124 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base, align 4
  %add.ptr293 = getelementptr i8, ptr %125, i32 120
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr293, i16 %123) #6, !srcloc !179
  %call294 = tail call i32 @pci_host_probe(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end238, %if.then233.cleanup_crit_edge, %v3_pci_parse_map_dma_ranges.exit, %do.end174, %do.end64, %if.end54.cleanup_crit_edge, %if.then51, %do.end45, %if.then20, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %retval.0.i.ph, %do.end14 ], [ %7, %if.then20 ], [ -22, %do.end45 ], [ %22, %if.then51 ], [ %call.i415, %do.end64 ], [ %call169, %do.end174 ], [ %call294, %if.end238 ], [ -12, %entry.cleanup_crit_edge ], [ %call55, %if.end54.cleanup_crit_edge ], [ %call4.i, %v3_pci_parse_map_dma_ranges.exit ], [ %call234, %if.then233.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.v3_pci, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !176
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and3 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %do.end8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %if.end.if.end9_crit_edge
  %and10 = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end16_crit_edge, label %do.end15

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %if.end9.if.end16_crit_edge
  %and17 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.do.body24_crit_edge, label %do.end22

if.end16.do.body24_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37) #9
  br label %do.body24

do.body24:                                        ; preds = %do.end22, %if.end16.do.body24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %7, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr29, i16 %4) #6, !srcloc !179
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr33 = getelementptr i8, ptr %9, i32 118
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33) #6, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  %conv37 = zext i8 %10 to i32
  %and38 = and i32 %conv37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body24.if.end44_crit_edge, label %do.end43

do.body24.if.end44_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.end43:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.40) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %do.body24.if.end44_crit_edge
  %and45 = and i32 %conv37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end51_crit_edge, label %do.end50

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44) #9
  br label %if.end51

if.end51:                                         ; preds = %do.end50, %if.end44.if.end51_crit_edge
  %and52 = and i32 %conv37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end58_crit_edge, label %do.end57

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.47) #9
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %if.end51.if.end58_crit_edge
  %and59 = and i32 %conv37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end65_crit_edge, label %do.end64

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.50) #9
  br label %if.end65

if.end65:                                         ; preds = %do.end64, %if.end58.if.end65_crit_edge
  %and66 = and i32 %conv37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end72_crit_edge, label %do.end71

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.53) #9
  br label %if.end72

if.end72:                                         ; preds = %do.end71, %if.end65.if.end72_crit_edge
  %and73 = and i32 %conv37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end79_crit_edge, label %do.end78

if.end72.if.end79_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

do.end78:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.56) #9
  br label %if.end79

if.end79:                                         ; preds = %do.end78, %if.end72.if.end79_crit_edge
  %and80 = and i32 %conv37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end86_crit_edge, label %do.end85

if.end79.if.end86_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.59) #9
  br label %if.end86

if.end86:                                         ; preds = %do.end85, %if.end79.if.end86_crit_edge
  %and87 = and i32 %conv37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end86.do.body94_crit_edge, label %do.end92

if.end86.do.body94_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body94

do.end92:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.62) #9
  br label %do.body94

do.body94:                                        ; preds = %do.end92, %if.end86.do.body94_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr98 = getelementptr i8, ptr %12, i32 118
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr98, i8 0) #6, !srcloc !200
  %map = getelementptr inbounds %struct.v3_pci, ptr %data, i32 0, i32 8
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %tobool99.not = icmp eq ptr %14, null
  br i1 %tobool99.not, label %do.body94.if.end103_crit_edge, label %if.then100

do.body94.if.end103_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then100:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  %call102 = tail call i32 @regmap_write(ptr noundef nonnull %14, i32 noundef 24, i32 noundef 3) #6
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %do.body94.if.end103_crit_edge
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v3_pci_setup_resource(ptr noundef %v3, ptr nocapture noundef readonly %win) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3, align 4
  %res = getelementptr inbounds %struct.resource_entry, ptr %win, i32 0, i32 1
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 7936
  %6 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %and.i, label %do.end121 [
    i32 256, label %sw.bb
    i32 512, label %sw.bb12
    i32 4096, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %call3 = tail call i32 @pci_pio_to_address(i32 noundef %8) #6
  %shr = lshr i32 %call3, 16
  %and = and i32 %shr, 65280
  %or = or i32 %and, 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.v3_pci, ptr %v3, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %offset = getelementptr inbounds %struct.resource_entry, ptr %win, i32 0, i32 2
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %sub = sub i32 %13, %15
  %sum.shift = lshr i32 %sub, 24
  %conv1 = trunc i32 %sum.shift to i16
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 102
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 %conv1) #6, !srcloc !179
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %and14 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  %name66 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb12
  %18 = ptrtoint ptr %name66 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.64, ptr %name66, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  %pre_mem = getelementptr inbounds %struct.v3_pci, ptr %v3, i32 0, i32 5
  %21 = ptrtoint ptr %pre_mem to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pre_mem, align 4
  %22 = load i32, ptr %3, align 4
  %offset17 = getelementptr inbounds %struct.resource_entry, ptr %win, i32 0, i32 2
  %23 = ptrtoint ptr %offset17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset17, align 4
  %sub18 = sub i32 %22, %24
  %pre_bus_addr = getelementptr inbounds %struct.v3_pci, ptr %v3, i32 0, i32 7
  %25 = ptrtoint ptr %pre_bus_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub18, ptr %pre_bus_addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3_pci_setup_resource.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3_pci_setup_resource, %do.end28)) #6
          to label %if.then25 [label %do.end28], !srcloc !219

if.then25:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3_pci_setup_resource.__UNIQUE_ID_ddebug238, ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef %3, ptr noundef %pre_bus_addr) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %if.then
  %end.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  %sub.i = add i32 %27, 1
  %add.i = sub i32 %sub.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %add.i)
  %cmp.not = icmp eq i32 %add.i, 268435456
  br i1 %cmp.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.67) #9
  br label %cleanup

if.end35:                                         ; preds = %do.end28
  %non_pre_mem = getelementptr inbounds %struct.v3_pci, ptr %v3, i32 0, i32 4
  %30 = ptrtoint ptr %non_pre_mem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %non_pre_mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool36.not = icmp eq i32 %31, 0
  %add = add i32 %31, 268435456
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add)
  %cmp39.not = icmp eq i32 %29, %add
  %or.cond = select i1 %tobool36.not, i1 true, i1 %cmp39.not
  br i1 %or.cond, label %do.body46, label %do.end44

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.69) #9
  br label %cleanup

do.body46:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %pre_mem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pre_mem, align 4
  %and50 = and i32 %33, -1048576
  %or53 = or i32 %and50, 137
  %34 = tail call i32 @llvm.bswap.i32(i32 %or53)
  %base54 = getelementptr inbounds %struct.v3_pci, ptr %v3, i32 0, i32 1
  %35 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base54, align 4
  %add.ptr55 = getelementptr i8, ptr %36, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %34) #6, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %pre_bus_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pre_bus_addr, align 4
  %shr60 = lshr i32 %38, 16
  %39 = trunc i32 %shr60 to i16
  %40 = and i16 %39, -16
  %conv63 = or i16 %40, 6
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv63)
  %42 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base54, align 4
  %add.ptr65 = getelementptr i8, ptr %43, i32 98
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr65, i16 %41) #6, !srcloc !179
  br label %cleanup

if.else:                                          ; preds = %sw.bb12
  %44 = ptrtoint ptr %name66 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.71, ptr %name66, align 4
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %3, align 4
  %non_pre_mem68 = getelementptr inbounds %struct.v3_pci, ptr %v3, i32 0, i32 4
  %47 = ptrtoint ptr %non_pre_mem68 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %non_pre_mem68, align 4
  %48 = load i32, ptr %3, align 4
  %offset70 = getelementptr inbounds %struct.resource_entry, ptr %win, i32 0, i32 2
  %49 = ptrtoint ptr %offset70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset70, align 4
  %sub71 = sub i32 %48, %50
  %non_pre_bus_addr = getelementptr inbounds %struct.v3_pci, ptr %v3, i32 0, i32 6
  %51 = ptrtoint ptr %non_pre_bus_addr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub71, ptr %non_pre_bus_addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3_pci_setup_resource.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3_pci_setup_resource, %do.end90)) #6
          to label %if.then86 [label %do.end90], !srcloc !219

if.then86:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3_pci_setup_resource.__UNIQUE_ID_ddebug239, ptr noundef %1, ptr noundef nonnull @.str.72, ptr noundef %3, ptr noundef %non_pre_bus_addr) #6
  br label %do.end90

do.end90:                                         ; preds = %if.then86, %if.else
  %end.i5 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %52 = ptrtoint ptr %end.i5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end.i5, align 4
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %3, align 4
  %sub.i6 = add i32 %53, 1
  %add.i7 = sub i32 %sub.i6, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %add.i7)
  %cmp92.not = icmp eq i32 %add.i7, 268435456
  br i1 %cmp92.not, label %do.body99, label %do.end97

do.end97:                                         ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.74) #9
  br label %cleanup

do.body99:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %non_pre_mem68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %non_pre_mem68, align 4
  %and103 = and i32 %57, -1048576
  %or105 = or i32 %and103, 129
  %58 = tail call i32 @llvm.bswap.i32(i32 %or105)
  %base106 = getelementptr inbounds %struct.v3_pci, ptr %v3, i32 0, i32 1
  %59 = ptrtoint ptr %base106 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base106, align 4
  %add.ptr107 = getelementptr i8, ptr %60, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %58) #6, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %non_pre_bus_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %non_pre_bus_addr, align 4
  %shr112 = lshr i32 %62, 16
  %63 = trunc i32 %shr112 to i16
  %64 = and i16 %63, -16
  %conv115 = or i16 %64, 6
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv115)
  %66 = ptrtoint ptr %base106 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base106, align 4
  %add.ptr117 = getelementptr i8, ptr %67, i32 94
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr117, i16 %65) #6, !srcloc !179
  br label %cleanup

do.end121:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.77, i32 noundef %and.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end121, %do.body99, %do.end97, %do.body46, %do.end44, %do.end34, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end34 ], [ -22, %do.end44 ], [ -22, %do.end97 ], [ 0, %do.body46 ], [ 0, %do.body99 ], [ 0, %do.end121 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v3_integrator_init(ptr nocapture noundef %v3) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !190
  %call = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.93) #6
  %map = getelementptr inbounds %struct.v3_pci, ptr %v3, i32 0, i32 8
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %map, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.94) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @regmap_read(ptr noundef %call, i32 noundef 24, ptr noundef nonnull %val) #6
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call6 = call i32 @regmap_write(ptr noundef %5, i32 noundef 24, i32 noundef 3) #6
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then7, label %if.end.do.end43_crit_edge

if.end.do.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

if.then7:                                         ; preds = %if.end
  call void @msleep(i32 noundef 230) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.v3_pci, ptr %v3, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 110
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 6422528) #6, !srcloc !192
  br label %do.body11

do.body11:                                        ; preds = %land.rhs.do.body11_crit_edge, %if.then7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %11, i32 192
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 -86) #6, !srcloc !200
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %13, i32 196
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 85) #6, !srcloc !200
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 192
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25) #6, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %16)
  %cmp.not = icmp eq i8 %16, -86
  br i1 %cmp.not, label %do.body11.do.end43_crit_edge, label %land.rhs

do.body11.do.end43_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

land.rhs:                                         ; preds = %do.body11
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %18, i32 192
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr32) #6, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  %cmp37.not = icmp eq i8 %19, 85
  br i1 %cmp37.not, label %land.rhs.do.end43_crit_edge, label %land.rhs.do.body11_crit_edge

land.rhs.do.body11_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

land.rhs.do.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

do.end43:                                         ; preds = %land.rhs.do.end43_crit_edge, %do.body11.do.end43_crit_edge, %if.end.do.end43_crit_edge
  %20 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.97) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %do.end43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @v3_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %shr = lshr i32 %devfn, 3
  %and = and i32 %shr, 31
  %and2 = shl i32 %devfn, 8
  %shl = and i32 %and2, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and)
  %cmp3 = icmp ugt i32 %and, 12
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %and, -5
  %shl6 = shl nuw nsw i32 1, %sub
  %4 = trunc i32 %shl6 to i16
  %phi.cast = or i16 %4, 10
  br label %do.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %shl7 = shl nuw nsw i32 2048, %and
  %or8 = or i32 %shl7, %shl
  br label %do.body

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %3 to i32
  %shl10 = shl nuw nsw i32 %conv, 16
  %shl11 = shl i32 %devfn, 8
  %or12 = or i32 %shl10, %shl11
  br label %do.body

do.body:                                          ; preds = %if.else9, %if.else, %if.then5
  %address.1 = phi i32 [ %or12, %if.else9 ], [ %shl, %if.then5 ], [ %or8, %if.else ]
  %mapaddress.1 = phi i16 [ 11, %if.else9 ], [ %phi.cast, %if.then5 ], [ 10, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %non_pre_mem = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %non_pre_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %non_pre_mem, align 4
  %and14 = and i32 %6, -1048576
  %or16 = or i32 %and14, 145
  %7 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %base = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !230
  tail call void @arm_heavy_mb() #6
  %config_mem = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %config_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config_mem, align 4
  %and20 = and i32 %11, -1048576
  %or22 = or i32 %and20, 65
  %12 = tail call i32 @llvm.bswap.i32(i32 %or22)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %14, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %12) #6, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  tail call void @arm_heavy_mb() #6
  %15 = tail call i16 @llvm.bswap.i16(i16 %mapaddress.1)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %17, i32 98
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30, i16 %15) #6, !srcloc !179
  %config_base = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config_base, align 4
  %add.ptr31 = getelementptr i8, ptr %19, i32 %address.1
  %add.ptr32 = getelementptr i8, ptr %add.ptr31, i32 %offset
  ret ptr %add.ptr32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3_pci_read_config(ptr noundef %bus, i32 noundef %fn, i32 noundef %config, i32 noundef %size, ptr noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3_pci_read_config.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3_pci_read_config, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  %shr = lshr i32 %fn, 3
  %and = and i32 %shr, 31
  %and4 = and i32 %fn, 7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3_pci_read_config.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %and, i32 noundef %and4, i32 noundef %config, i32 noundef %size, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @pci_generic_config_read(ptr noundef %bus, i32 noundef %fn, i32 noundef %config, i32 noundef %size, ptr noundef %value) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %pre_mem.i = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pre_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pre_mem.i, align 4
  %and.i = and i32 %5, -1048576
  %or2.i = or i32 %and.i, 137
  %6 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #6
  %base.i = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %pre_bus_addr.i = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %pre_bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pre_bus_addr.i, align 4
  %shr.i = lshr i32 %10, 16
  %11 = trunc i32 %shr.i to i16
  %12 = and i16 %11, -16
  %conv.i = or i16 %12, 6
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %15, i32 98
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %13) #6, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  %non_pre_mem.i = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %non_pre_mem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %non_pre_mem.i, align 4
  %and11.i = and i32 %17, -1048576
  %or13.i = or i32 %and11.i, 129
  %18 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #6
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %20, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %18) #6, !srcloc !192
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3_pci_write_config(ptr noundef %bus, i32 noundef %fn, i32 noundef %config, i32 noundef %size, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3_pci_write_config.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3_pci_write_config, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  %shr = lshr i32 %fn, 3
  %and = and i32 %shr, 31
  %and4 = and i32 %fn, 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3_pci_write_config.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %and, i32 noundef %and4, i32 noundef %config, i32 noundef %size, i32 noundef %value) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @pci_generic_config_write(ptr noundef %bus, i32 noundef %fn, i32 noundef %config, i32 noundef %size, i32 noundef %value) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %pre_mem.i = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pre_mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pre_mem.i, align 4
  %and.i = and i32 %3, -1048576
  %or2.i = or i32 %and.i, 137
  %4 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #6
  %base.i = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %pre_bus_addr.i = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %pre_bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pre_bus_addr.i, align 4
  %shr.i = lshr i32 %8, 16
  %9 = trunc i32 %shr.i to i16
  %10 = and i16 %9, -16
  %conv.i = or i16 %10, 6
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %13, i32 98
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %11) #6, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  %non_pre_mem.i = getelementptr inbounds %struct.v3_pci, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %non_pre_mem.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %non_pre_mem.i, align 4
  %and11.i = and i32 %15, -1048576
  %or13.i = or i32 %and11.i, 129
  %16 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #6
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %18, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %16) #6, !srcloc !192
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v3_get_dma_range_config(ptr nocapture noundef readonly %v3, ptr nocapture noundef readonly %entry1, ptr nocapture noundef %pci_base, ptr nocapture noundef %pci_map) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3, align 4
  %res = getelementptr inbounds %struct.resource_entry, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %conv = zext i32 %5 to i64
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  %conv4 = zext i32 %7 to i64
  %offset = getelementptr inbounds %struct.resource_entry, ptr %entry1, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %conv5 = zext i32 %9 to i64
  %sub = sub nsw i64 %conv4, %conv5
  %sub9 = sub i32 %5, %9
  %conv10 = zext i32 %sub9 to i64
  %and = and i64 %conv10, 1048575
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.84) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and12 = and i32 %sub9, -1048576
  %10 = ptrtoint ptr %pci_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and12, ptr %pci_base, align 4
  %and13 = and i64 %conv, 1048575
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.end19, label %do.end18

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.87) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %and21 = and i32 %5, -1048576
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %res, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %sub.i = add i32 %14, 1
  %add.i = sub i32 %sub.i, %16
  %17 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %add.i, label %do.end47 [
    i32 1048576, label %if.end19.sw.epilog_crit_edge
    i32 2097152, label %sw.bb23
    i32 4194304, label %sw.bb25
    i32 8388608, label %sw.bb27
    i32 16777216, label %sw.bb29
    i32 33554432, label %sw.bb31
    i32 67108864, label %sw.bb33
    i32 134217728, label %sw.bb35
    i32 268435456, label %sw.bb37
    i32 536870912, label %sw.bb39
    i32 1073741824, label %sw.bb41
    i32 -2147483648, label %sw.bb43
  ]

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or24 = or i32 %and21, 16
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or26 = or i32 %and21, 32
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or28 = or i32 %and21, 48
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or30 = or i32 %and21, 64
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or32 = or i32 %and21, 80
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or34 = or i32 %and21, 96
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or36 = or i32 %and21, 112
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or38 = or i32 %and21, 128
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or40 = or i32 %and21, 144
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or42 = or i32 %and21, 160
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %or44 = or i32 %and21, 176
  br label %sw.epilog

do.end47:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %v3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.90) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %if.end19.sw.epilog_crit_edge
  %val.0 = phi i32 [ %or44, %sw.bb43 ], [ %or42, %sw.bb41 ], [ %or40, %sw.bb39 ], [ %or38, %sw.bb37 ], [ %or36, %sw.bb35 ], [ %or34, %sw.bb33 ], [ %or32, %sw.bb31 ], [ %or30, %sw.bb29 ], [ %or28, %sw.bb27 ], [ %or26, %sw.bb25 ], [ %or24, %sw.bb23 ], [ %and21, %if.end19.sw.epilog_crit_edge ]
  %or49 = or i32 %val.0, 3
  %20 = ptrtoint ptr %pci_map to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or49, ptr %pci_map, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3_get_dma_range_config.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3_get_dma_range_config, %cleanup)) #6
          to label %if.then56 [label %cleanup], !srcloc !219

if.then56:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %pci_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pci_base, align 4
  %23 = ptrtoint ptr %pci_map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pci_map, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3_get_dma_range_config.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.92, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv10, i64 noundef %sub, i32 noundef %22, i32 noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %sw.epilog, %do.end47, %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ -22, %do.end47 ], [ 0, %if.then56 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !155, !156, !157, !158, !160, !161, !162}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__initcall__kmod_pci_v3_semi__241_910_v3_pci_driver_init6, !1, !"__initcall__kmod_pci_v3_semi__241_910_v3_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 910, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 904, i32 11}
!4 = !{ptr @v3_pci_driver, !5, !"v3_pci_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 902, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 731, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @v3_pci_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @v3_pci_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 736, i32 3}
!16 = !{ptr @v3_pci_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @v3_pci_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 750, i32 3}
!20 = !{ptr @v3_pci_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @v3_pci_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 756, i32 3}
!24 = !{ptr @v3_pci_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @v3_pci_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 770, i32 4}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 772, i32 3}
!30 = !{ptr @v3_pci_probe._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @v3_pci_probe._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 816, i32 4}
!34 = !{ptr @v3_pci_probe._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @v3_pci_probe._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 863, i32 34}
!38 = !{ptr @v3_pci_ops, !39, !"v3_pci_ops", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 432, i32 23}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 410, i32 2}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @v3_pci_read_config.__UNIQUE_ID_ddebug236, !41, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 424, i32 2}
!47 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @v3_pci_write_config.__UNIQUE_ID_ddebug237, !46, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 446, i32 3}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @v3_irq._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @v3_irq._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 448, i32 3}
!56 = !{ptr @v3_irq._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @v3_irq._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 450, i32 3}
!60 = !{ptr @v3_irq._entry.33, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @v3_irq._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 452, i32 3}
!64 = !{ptr @v3_irq._entry.36, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @v3_irq._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 457, i32 3}
!68 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @v3_irq._entry.39, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @v3_irq._entry_ptr.42, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 459, i32 3}
!73 = !{ptr @v3_irq._entry.43, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @v3_irq._entry_ptr.45, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.47, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 461, i32 3}
!77 = !{ptr @v3_irq._entry.46, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @v3_irq._entry_ptr.48, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 463, i32 3}
!81 = !{ptr @v3_irq._entry.49, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @v3_irq._entry_ptr.51, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.53, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 465, i32 3}
!85 = !{ptr @v3_irq._entry.52, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @v3_irq._entry_ptr.54, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.56, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 467, i32 3}
!89 = !{ptr @v3_irq._entry.55, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @v3_irq._entry_ptr.57, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.59, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 469, i32 3}
!93 = !{ptr @v3_irq._entry.58, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @v3_irq._entry_ptr.60, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.62, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 471, i32 3}
!97 = !{ptr @v3_irq._entry.61, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @v3_irq._entry_ptr.63, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.64, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 541, i32 16}
!101 = !{ptr @.str.65, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 544, i32 4}
!103 = !{ptr @.str.66, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @v3_pci_setup_resource.__UNIQUE_ID_ddebug238, !102, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!105 = !{ptr @.str.67, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 547, i32 5}
!107 = !{ptr @v3_pci_setup_resource._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @v3_pci_setup_resource._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.69, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 552, i32 5}
!111 = !{ptr @v3_pci_setup_resource._entry.68, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @v3_pci_setup_resource._entry_ptr.70, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.71, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 566, i32 16}
!115 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 569, i32 4}
!117 = !{ptr @v3_pci_setup_resource.__UNIQUE_ID_ddebug239, !116, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!118 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 572, i32 5}
!120 = !{ptr @v3_pci_setup_resource._entry.73, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @v3_pci_setup_resource._entry_ptr.75, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.77, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 589, i32 3}
!124 = !{ptr @v3_pci_setup_resource._entry.76, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @v3_pci_setup_resource._entry_ptr.78, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.79, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 698, i32 4}
!128 = !{ptr @.str.80, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @v3_pci_parse_map_dma_ranges._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @v3_pci_parse_map_dma_ranges._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.82, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 699, i32 4}
!133 = !{ptr @v3_pci_parse_map_dma_ranges._entry.81, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @v3_pci_parse_map_dma_ranges._entry_ptr.83, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.84, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 609, i32 3}
!137 = !{ptr @.str.85, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @v3_get_dma_range_config._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @v3_get_dma_range_config._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.87, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 616, i32 3}
!142 = !{ptr @v3_get_dma_range_config._entry.86, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @v3_get_dma_range_config._entry_ptr.88, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.90, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 659, i32 3}
!146 = !{ptr @v3_get_dma_range_config._entry.89, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @v3_get_dma_range_config._entry_ptr.91, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.92, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 665, i32 2}
!150 = !{ptr @v3_get_dma_range_config.__UNIQUE_ID_ddebug240, !149, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!151 = !{ptr @.str.93, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 487, i32 38}
!153 = !{ptr @.str.94, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 489, i32 3}
!155 = !{ptr @.str.95, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @v3_integrator_init._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @v3_integrator_init._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.97, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 514, i32 2}
!160 = !{ptr @v3_integrator_init._entry.96, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @v3_integrator_init._entry_ptr.98, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @v3_pci_of_match, !163, !"v3_pci_of_match", i1 false, i1 false}
!163 = !{!"../drivers/pci/controller/pci-v3-semi.c", i32 895, i32 34}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{i64 4224009}
!174 = !{i64 2154843189}
!175 = !{i64 2154845521}
!176 = !{i64 4223171}
!177 = !{i64 2154849437}
!178 = !{i64 2154849760}
!179 = !{i64 4222971}
!180 = !{i64 2154850461}
!181 = !{i64 2154850702}
!182 = !{i64 2154851394}
!183 = !{i64 2154851707}
!184 = !{i64 2154852399}
!185 = !{i64 2154852712}
!186 = !{i64 2154853404}
!187 = !{i64 2154853963}
!188 = !{i64 2154854655}
!189 = !{i64 2154854888}
!190 = !{!"auto-init"}
!191 = !{i64 2154834816}
!192 = !{i64 4223591}
!193 = !{i64 2154835243}
!194 = !{i64 2154835668}
!195 = !{i64 2154836095}
!196 = !{i64 2154860428}
!197 = !{i64 2154861203}
!198 = !{i64 2154862056}
!199 = !{i64 2154862807}
!200 = !{i64 4223394}
!201 = !{i64 2154863375}
!202 = !{i64 2154863688}
!203 = !{i64 2154864314}
!204 = !{i64 2154864938}
!205 = !{i64 2154865176}
!206 = !{i64 2154865582}
!207 = !{i64 2154866196}
!208 = !{i64 2154866850}
!209 = !{i64 2154867163}
!210 = !{i64 2154867855}
!211 = !{i64 2154868168}
!212 = !{i64 2154774180}
!213 = !{i64 2154781216}
!214 = !{i64 4223789}
!215 = !{i64 2154781655}
!216 = !{i64 2154795678}
!217 = !{i64 2154801425}
!218 = !{i64 2154802188}
!219 = !{i64 2148742783, i64 2148742788, i64 2148742801, i64 2148742845, i64 2148742879, i64 2148742900}
!220 = !{i64 2154809318}
!221 = !{i64 2154810143}
!222 = !{i64 2154819344}
!223 = !{i64 2154820099}
!224 = !{i64 2154797874}
!225 = !{i64 2154798292}
!226 = !{i64 2154798584}
!227 = !{i64 2154798897}
!228 = !{i64 2154799148}
!229 = !{i64 2154763648}
!230 = !{i64 2154764497}
!231 = !{i64 2154765131}
!232 = !{i64 2154765885}
!233 = !{i64 2154766710}
!234 = !{i64 2154767486}
