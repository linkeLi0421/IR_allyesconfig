; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-ftpci100.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-ftpci100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.faraday_pci_variant = type { i8 }
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
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.faraday_pci = type { ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pci_ftpci100__239_574_faraday_pci_driver_init6 = internal global ptr @faraday_pci_driver_init, section ".initcall6.init", align 4
@faraday_pci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @faraday_pci_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @faraday_pci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ftpci100\00", [23 x i8] zeroinitializer }, align 32
@faraday_pci_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"faraday,ftpci100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @faraday_regular }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"faraday,ftpci100-dual\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @faraday_dual }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@faraday_pci_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr null, ptr @faraday_pci_read_config, ptr @faraday_pci_write_config }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCLK\00", [27 x i8] zeroinitializer }, align 32
@faraday_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 450, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not prepare PCLK\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"faraday_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pci/controller/pci-ftpci100.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@faraday_pci_probe._entry_ptr = internal global ptr @faraday_pci_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCICLK\00", [25 x i8] zeroinitializer }, align 32
@faraday_pci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 458, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not prepare PCICLK\0A\00", [38 x i8] zeroinitializer }, align 32
@faraday_pci_probe._entry_ptr.10 = internal global ptr @faraday_pci_probe._entry.8, section ".printk_index", align 4
@faraday_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"illegal IO mem size\0A\00", [43 x i8] zeroinitializer }, align 32
@faraday_pci_probe._entry_ptr.13 = internal global ptr @faraday_pci_probe._entry.11, section ".printk_index", align 4
@faraday_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 490, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to setup cascaded IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@faraday_pci_probe._entry_ptr.16 = internal global ptr @faraday_pci_probe._entry.14, section ".printk_index", align 4
@faraday_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 505, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"33MHz bus is 66MHz capable\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@faraday_pci_probe._entry_ptr.20 = internal global ptr @faraday_pci_probe._entry.17, section ".printk_index", align 4
@faraday_pci_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 509, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set bus clock\0A\00", [39 x i8] zeroinitializer }, align 32
@faraday_pci_probe._entry_ptr.23 = internal global ptr @faraday_pci_probe._entry.21, section ".printk_index", align 4
@faraday_pci_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 511, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"33MHz only bus\0A\00", [16 x i8] zeroinitializer }, align 32
@faraday_pci_probe._entry_ptr.26 = internal global ptr @faraday_pci_probe._entry.24, section ".printk_index", align 4
@faraday_pci_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 529, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to scan host: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@faraday_pci_probe._entry_ptr.29 = internal global ptr @faraday_pci_probe._entry.27, section ".printk_index", align 4
@faraday_pci_read_config.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 54, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_ftpci100\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"faraday_pci_read_config\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[read]  slt: %.2d, fnc: %d, cnf: 0x%.2X, val (%d bytes): 0x%.8X\0A\00", [63 x i8] zeroinitializer }, align 32
@faraday_pci_write_config.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"faraday_pci_write_config\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[write] slt: %.2d, fnc: %d, cnf: 0x%.2X, val (%d bytes): 0x%.8X\0A\00", [63 x i8] zeroinitializer }, align 32
@faraday_res_to_memcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014truncated PCI memory base\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"faraday_res_to_memcfg\00", [42 x i8] zeroinitializer }, align 32
@faraday_res_to_memcfg._entry_ptr = internal global ptr @faraday_res_to_memcfg._entry, section ".printk_index", align 4
@faraday_res_to_memcfg.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 0, i8 45, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Translated pci base @%pap, size %pap to config %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@faraday_pci_setup_cascaded_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"missing child interrupt-controller node\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"faraday_pci_setup_cascaded_irq\00", [33 x i8] zeroinitializer }, align 32
@faraday_pci_setup_cascaded_irq._entry_ptr = internal global ptr @faraday_pci_setup_cascaded_irq._entry, section ".printk_index", align 4
@faraday_pci_setup_cascaded_irq._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get parent IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@faraday_pci_setup_cascaded_irq._entry_ptr.42 = internal global ptr @faraday_pci_setup_cascaded_irq._entry.40, section ".printk_index", align 4
@faraday_pci_irqdomain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @faraday_pci_irq_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@faraday_pci_setup_cascaded_irq._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.4, i32 366, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create Gemini PCI IRQ domain\0A\00", [56 x i8] zeroinitializer }, align 32
@faraday_pci_setup_cascaded_irq._entry_ptr.45 = internal global ptr @faraday_pci_setup_cascaded_irq._entry.43, section ".printk_index", align 4
@faraday_pci_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.46, ptr null, ptr null, ptr null, ptr null, ptr @faraday_pci_ack_irq, ptr @faraday_pci_mask_irq, ptr null, ptr @faraday_pci_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@__const.faraday_pci_parse_map_dma_ranges.confreg = private unnamed_addr constant [3 x i32] [i32 80, i32 84, i32 88], align 4
@faraday_pci_parse_map_dma_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DMA range %d: illegal MEM resource size\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"faraday_pci_parse_map_dma_ranges\00", [63 x i8] zeroinitializer }, align 32
@faraday_pci_parse_map_dma_ranges._entry_ptr = internal global ptr @faraday_pci_parse_map_dma_ranges._entry, section ".printk_index", align 4
@faraday_pci_parse_map_dma_ranges._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.4, i32 405, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DMA MEM%d BASE: 0x%016llx -> 0x%016llx config %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@faraday_pci_parse_map_dma_ranges._entry_ptr.51 = internal global ptr @faraday_pci_parse_map_dma_ranges._entry.49, section ".printk_index", align 4
@faraday_pci_parse_map_dma_ranges._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.4, i32 410, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ignore extraneous dma-range %d\0A\00", [32 x i8] zeroinitializer }, align 32
@faraday_pci_parse_map_dma_ranges._entry_ptr.54 = internal global ptr @faraday_pci_parse_map_dma_ranges._entry.52, section ".printk_index", align 4
@faraday_regular = internal constant { %struct.faraday_pci_variant, [31 x i8] } { %struct.faraday_pci_variant { i8 1 }, [31 x i8] zeroinitializer }, align 32
@faraday_dual = internal constant { %struct.faraday_pci_variant, [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"faraday_pci_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 566, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 568, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"faraday_pci_of_match\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 554, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"faraday_pci_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 265, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 445, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 450, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 453, i32 33 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 458, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 474, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 490, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 505, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 509, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 511, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 529, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 215, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 257, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 179, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 182, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 350, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 357, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [26 x i8] c"faraday_pci_irqdomain_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 339, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 366, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [21 x i8] c"faraday_pci_irq_chip\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 323, i32 24 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 324, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 399, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 404, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 410, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"faraday_regular\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 546, i32 41 }
@___asan_gen_.219 = private unnamed_addr constant [13 x i8] c"faraday_dual\00", align 1
@___asan_gen_.220 = private constant [41 x i8] c"../drivers/pci/controller/pci-ftpci100.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 550, i32 41 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__initcall__kmod_pci_ftpci100__239_574_faraday_pci_driver_init6, ptr @faraday_pci_parse_map_dma_ranges._entry, ptr @faraday_pci_parse_map_dma_ranges._entry.49, ptr @faraday_pci_parse_map_dma_ranges._entry.52, ptr @faraday_pci_parse_map_dma_ranges._entry_ptr, ptr @faraday_pci_parse_map_dma_ranges._entry_ptr.51, ptr @faraday_pci_parse_map_dma_ranges._entry_ptr.54, ptr @faraday_pci_probe._entry, ptr @faraday_pci_probe._entry.11, ptr @faraday_pci_probe._entry.14, ptr @faraday_pci_probe._entry.17, ptr @faraday_pci_probe._entry.21, ptr @faraday_pci_probe._entry.24, ptr @faraday_pci_probe._entry.27, ptr @faraday_pci_probe._entry.8, ptr @faraday_pci_probe._entry_ptr, ptr @faraday_pci_probe._entry_ptr.10, ptr @faraday_pci_probe._entry_ptr.13, ptr @faraday_pci_probe._entry_ptr.16, ptr @faraday_pci_probe._entry_ptr.20, ptr @faraday_pci_probe._entry_ptr.23, ptr @faraday_pci_probe._entry_ptr.26, ptr @faraday_pci_probe._entry_ptr.29, ptr @faraday_pci_setup_cascaded_irq._entry, ptr @faraday_pci_setup_cascaded_irq._entry.40, ptr @faraday_pci_setup_cascaded_irq._entry.43, ptr @faraday_pci_setup_cascaded_irq._entry_ptr, ptr @faraday_pci_setup_cascaded_irq._entry_ptr.42, ptr @faraday_pci_setup_cascaded_irq._entry_ptr.45, ptr @faraday_res_to_memcfg._entry, ptr @faraday_res_to_memcfg._entry_ptr, ptr @faraday_pci_driver, ptr @.str, ptr @faraday_pci_of_match, ptr @faraday_pci_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @faraday_pci_irqdomain_ops, ptr @.str.44, ptr @faraday_pci_irq_chip, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @faraday_regular, ptr @faraday_dual], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_res_to_memcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_setup_cascaded_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_setup_cascaded_irq._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_irqdomain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_setup_cascaded_irq._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_parse_map_dma_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_parse_map_dma_ranges._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_pci_parse_map_dma_ranges._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_regular to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faraday_dual to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @faraday_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @faraday_pci_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @faraday_pci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !113
  %call2 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 20) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @faraday_pci_ops, ptr %ops, align 4
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 0, i32 16
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 0, i32 4
  %2 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %private.i, ptr %sysdata, align 4
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %private.i, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.do.end_crit_edge

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end13, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end9.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end9.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end.i
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %bus_clk = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 0, i32 3
  %5 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %bus_clk, align 4
  %cmp.i197 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %call.i198 = tail call i32 @clk_prepare(ptr noundef %call14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool.not.i199 = icmp eq i32 %call.i198, 0
  br i1 %tobool.not.i199, label %if.end.i202, label %if.end20.do.end27_crit_edge

if.end20.do.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

if.end.i202:                                      ; preds = %if.end20
  %call1.i200 = tail call i32 @clk_enable(ptr noundef %call14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i200)
  %tobool2.not.i201 = icmp eq i32 %call1.i200, 0
  br i1 %tobool2.not.i201, label %if.end28, label %if.then3.i203

if.then3.i203:                                    ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call14) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then3.i203, %if.end20.do.end27_crit_edge
  %retval.0.i204.ph = phi i32 [ %call1.i200, %if.then3.i203 ], [ %call.i198, %if.end20.do.end27_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end.i202
  %call29 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call29, ptr %base, align 4
  %cmp.i206 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end35
  %entry1.0.in.i = phi ptr [ %windows, %if.end35 ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %windows
  br i1 %cmp.not.i, label %for.cond.i.if.end51_crit_edge, label %for.body.i

for.cond.i.if.end51_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

for.body.i:                                       ; preds = %for.cond.i
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 7936
  %cmp2.i = icmp eq i32 %and.i.i, 256
  br i1 %cmp2.i, label %resource_list_first_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

resource_list_first_type.exit:                    ; preds = %for.body.i
  %tobool37.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool37.not, label %resource_list_first_type.exit.if.end51_crit_edge, label %if.then38

resource_list_first_type.exit.if.end51_crit_edge: ; preds = %resource_list_first_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then38:                                        ; preds = %resource_list_first_type.exit
  %res.i.le = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %res.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res.i.le, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %offset = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %sub = sub i32 %17, %19
  %end.i = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %17
  %add.i = add i32 %sub.i, %21
  %call40 = call fastcc i32 @faraday_res_to_memcfg(i32 noundef %sub, i32 noundef %add.i, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.body43, label %do.end49

do.body43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #6, !srcloc !115
  br label %if.end51

do.end49:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end51:                                         ; preds = %do.body43, %resource_list_first_type.exit.if.end51_crit_edge, %for.cond.i.if.end51_crit_edge
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %28, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %30 = or i32 %29, 117440512
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %val, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr62 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %30) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1275068544) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr23.i = getelementptr i8, ptr %38, i32 46
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.i, i16 240) #6, !srcloc !121
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %call, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool64.not = icmp eq i8 %40, 0
  br i1 %tobool64.not, label %if.end51.if.end73_crit_edge, label %if.then65

if.end51.if.end73_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then65:                                        ; preds = %if.end51
  %41 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %private.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node.i, align 8
  %call.i208 = tail call ptr @of_get_next_child(ptr noundef %44, ptr noundef null) #6
  %tobool.not.i209 = icmp eq ptr %call.i208, null
  br i1 %tobool.not.i209, label %do.end.i, label %if.end.i211

do.end.i:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.38) #9
  br label %do.end71

if.end.i211:                                      ; preds = %if.then65
  %call2.i = tail call i32 @of_irq_get(ptr noundef nonnull %call.i208, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp.i210 = icmp slt i32 %call2.i, 1
  br i1 %cmp.i210, label %do.end6.i, label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.41) #9
  tail call void @of_node_put(ptr noundef nonnull %call.i208) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool8.not.i = icmp eq i32 %call2.i, 0
  %spec.select = select i1 %tobool8.not.i, i32 -22, i32 %call2.i
  br label %do.end71

if.end9.i:                                        ; preds = %if.end.i211
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i208, i32 0, i32 3
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @faraday_pci_irqdomain_ops, ptr noundef %private.i) #6
  %irqdomain.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call1.i.i, ptr %irqdomain.i, align 4
  tail call void @of_node_put(ptr noundef nonnull %call.i208) #6
  %50 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %irqdomain.i, align 4
  %tobool12.not.i = icmp eq ptr %51, null
  br i1 %tobool12.not.i, label %do.end16.i, label %faraday_pci_setup_cascaded_irq.exit

do.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.44) #9
  br label %do.end71

faraday_pci_setup_cascaded_irq.exit:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call2.i, ptr noundef nonnull @faraday_pci_irq_handler, ptr noundef %private.i) #6
  %54 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %irqdomain.i, align 4
  %call.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %55, i32 noundef 0, ptr noundef null) #6
  %56 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %irqdomain.i, align 4
  %call.i.1.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %57, i32 noundef 1, ptr noundef null) #6
  %58 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %irqdomain.i, align 4
  %call.i.2.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %59, i32 noundef 2, ptr noundef null) #6
  %60 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %irqdomain.i, align 4
  %call.i.3.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %61, i32 noundef 3, ptr noundef null) #6
  br label %if.end73

do.end71:                                         ; preds = %do.end16.i, %do.end6.i, %do.end.i
  %retval.0.i212.ph = phi i32 [ -22, %do.end.i ], [ -22, %do.end16.i ], [ %spec.select, %do.end6.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end73:                                         ; preds = %faraday_pci_setup_cascaded_irq.exit, %if.end51.if.end73_crit_edge
  %62 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus_clk, align 4
  %cmp.i213 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.end73.if.end107_crit_edge, label %if.then76

if.end73.if.end107_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then76:                                        ; preds = %if.end73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr.i215 = getelementptr i8, ptr %65, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 67108992) #6, !srcloc !115
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base, align 4
  %add.ptr12.i = getelementptr i8, ptr %67, i32 44
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %69 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus_clk, align 4
  %call80 = tail call i32 @clk_get_rate(ptr noundef %70) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 33000000, i32 %call80)
  %cmp = icmp ne i32 %call80, 33000000
  %71 = and i32 %68, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool81.not = icmp eq i32 %71, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool81.not
  br i1 %or.cond, label %do.end97, label %do.end85

do.end85:                                         ; preds = %if.then76
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  %72 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus_clk, align 4
  %call87 = tail call i32 @clk_set_rate(ptr noundef %73, i32 noundef 66000000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.end85.if.end98_crit_edge, label %do.end92

do.end85.if.end98_crit_edge:                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

do.end92:                                         ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  br label %if.end98

do.end97:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.25) #9
  br label %if.end98

if.end98:                                         ; preds = %do.end97, %do.end92, %do.end85.if.end98_crit_edge
  %max_bus_speed.0 = phi i8 [ 1, %do.end92 ], [ 1, %do.end85.if.end98_crit_edge ], [ 0, %do.end97 ]
  %74 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus_clk, align 4
  %call100 = tail call i32 @clk_get_rate(ptr noundef %75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 66000000, i32 %call100)
  %cmp104 = icmp eq i32 %call100, 66000000
  %cur_bus_speed.1 = zext i1 %cmp104 to i8
  br label %if.end107

if.end107:                                        ; preds = %if.end98, %if.end73.if.end107_crit_edge
  %max_bus_speed.1 = phi i8 [ 0, %if.end73.if.end107_crit_edge ], [ %max_bus_speed.0, %if.end98 ]
  %cur_bus_speed.2 = phi i8 [ 0, %if.end73.if.end107_crit_edge ], [ %cur_bus_speed.1, %if.end98 ]
  %76 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %78 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %val.i, align 4, !annotation !113
  %dma_ranges.i = getelementptr %struct.pci_host_bridge, ptr %call2, i32 0, i32 8
  %79 = ptrtoint ptr %dma_ranges.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %entry2.062.i = load ptr, ptr %dma_ranges.i, align 4
  %cmp.not63.i = icmp eq ptr %entry2.062.i, %dma_ranges.i
  br i1 %cmp.not63.i, label %if.end107.if.end111_crit_edge, label %if.end107.for.body.i219_crit_edge

if.end107.for.body.i219_crit_edge:                ; preds = %if.end107
  br label %for.body.i219

if.end107.if.end111_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

for.body.i219:                                    ; preds = %cleanup.i.for.body.i219_crit_edge, %if.end107.for.body.i219_crit_edge
  %entry2.065.i = phi ptr [ %entry2.0.i, %cleanup.i.for.body.i219_crit_edge ], [ %entry2.062.i, %if.end107.for.body.i219_crit_edge ]
  %i.064.i = phi i32 [ %add.i220, %cleanup.i.for.body.i219_crit_edge ], [ 0, %if.end107.for.body.i219_crit_edge ]
  %res.i216 = getelementptr inbounds %struct.resource_entry, ptr %entry2.065.i, i32 0, i32 1
  %80 = ptrtoint ptr %res.i216 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %res.i216, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %offset.i = getelementptr inbounds %struct.resource_entry, ptr %entry2.065.i, i32 0, i32 2
  %84 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset.i, align 4
  %sub.i217 = sub i32 %83, %85
  %end5.i = getelementptr inbounds %struct.resource, ptr %81, i32 0, i32 1
  %86 = ptrtoint ptr %end5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %end5.i, align 4
  %sub.i.i = sub i32 1, %83
  %add.i.i = add i32 %sub.i.i, %87
  %call12.i = call fastcc i32 @faraday_res_to_memcfg(i32 noundef %sub.i217, i32 noundef %add.i.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i218 = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i218, label %do.end15.i, label %faraday_pci_parse_map_dma_ranges.exit

do.end15.i:                                       ; preds = %for.body.i219
  %sub7.i = sub i32 %87, %85
  %conv8.i = zext i32 %sub7.i to i64
  %conv.i = zext i32 %sub.i217 to i64
  %add.i220 = add nuw nsw i32 %i.064.i, 1
  %88 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %val.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.50, i32 noundef %add.i220, i64 noundef %conv.i, i64 noundef %conv8.i, i32 noundef %89) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.064.i)
  %exitcond.not.i = icmp eq i32 %i.064.i, 3
  br i1 %exitcond.not.i, label %cleanup.thread57.i, label %cleanup.i

cleanup.thread57.i:                               ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.53, i32 noundef 3) #9
  br label %if.end111

cleanup.i:                                        ; preds = %do.end15.i
  %arrayidx.i = getelementptr [3 x i32], ptr @__const.faraday_pci_parse_map_dma_ranges.confreg, i32 0, i32 %i.064.i
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %and8.i.i = and i32 %91, 252
  %or10.i.i = or i32 %and8.i.i, -2147483648
  %92 = tail call i32 @llvm.bswap.i32(i32 %or10.i.i) #6
  %93 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %94, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 %92) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %95 = tail call i32 @llvm.bswap.i32(i32 %89) #6
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %97, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %95) #6, !srcloc !115
  %98 = ptrtoint ptr %entry2.065.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %entry2.0.i = load ptr, ptr %entry2.065.i, align 4
  %cmp.not.i221 = icmp eq ptr %entry2.0.i, %dma_ranges.i
  br i1 %cmp.not.i221, label %cleanup.i.if.end111_crit_edge, label %cleanup.i.for.body.i219_crit_edge

cleanup.i.for.body.i219_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i219

cleanup.i.if.end111_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

faraday_pci_parse_map_dma_ranges.exit:            ; preds = %for.body.i219
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.47, i32 noundef %i.064.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end111:                                        ; preds = %cleanup.i.if.end111_crit_edge, %cleanup.thread57.i, %if.end107.if.end111_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call112 = tail call i32 @pci_scan_root_bus_bridge(ptr noundef nonnull %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end118, label %do.end117

do.end117:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call112) #9
  br label %cleanup

if.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %bus = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 0, i32 1
  %99 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus, align 32
  %bus119 = getelementptr inbounds %struct.pci_host_bridge, ptr %call2, i32 1, i32 0, i32 0, i32 2
  %101 = ptrtoint ptr %bus119 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %bus119, align 4
  %max_bus_speed121 = getelementptr inbounds %struct.pci_bus, ptr %100, i32 0, i32 14
  %102 = ptrtoint ptr %max_bus_speed121 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %max_bus_speed.1, ptr %max_bus_speed121, align 2
  %103 = load ptr, ptr %bus119, align 4
  %cur_bus_speed123 = getelementptr inbounds %struct.pci_bus, ptr %103, i32 0, i32 15
  %104 = ptrtoint ptr %cur_bus_speed123 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %cur_bus_speed.2, ptr %cur_bus_speed123, align 1
  %105 = load ptr, ptr %bus119, align 4
  tail call void @pci_bus_assign_resources(ptr noundef %105) #6
  %106 = ptrtoint ptr %bus119 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bus119, align 4
  tail call void @pci_bus_add_devices(ptr noundef %107) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %do.end117, %faraday_pci_parse_map_dma_ranges.exit, %do.end71, %do.end49, %if.then32, %do.end27, %if.then17, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %retval.0.i.ph, %do.end ], [ %6, %if.then17 ], [ %retval.0.i204.ph, %do.end27 ], [ %8, %if.then32 ], [ -22, %do.end49 ], [ %retval.0.i212.ph, %do.end71 ], [ %call112, %do.end117 ], [ 0, %if.end118 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %faraday_pci_parse_map_dma_ranges.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @faraday_res_to_memcfg(i32 noundef %mem_base, i32 noundef %mem_size, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %mem_base.addr = alloca i32, align 4
  %mem_size.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem_base.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mem_base, ptr %mem_base.addr, align 4
  %1 = ptrtoint ptr %mem_size.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mem_size, ptr %mem_size.addr, align 4
  %2 = zext i32 %mem_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mem_size, label %entry.cleanup_crit_edge [
    i32 1048576, label %entry.sw.epilog_crit_edge
    i32 2097152, label %sw.bb1
    i32 4194304, label %sw.bb2
    i32 8388608, label %sw.bb3
    i32 16777216, label %sw.bb4
    i32 33554432, label %sw.bb5
    i32 67108864, label %sw.bb6
    i32 134217728, label %sw.bb7
    i32 268435456, label %sw.bb8
    i32 536870912, label %sw.bb9
    i32 1073741824, label %sw.bb10
    i32 -2147483648, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %outval.0 = phi i32 [ 720896, %sw.bb11 ], [ 655360, %sw.bb10 ], [ 589824, %sw.bb9 ], [ 524288, %sw.bb8 ], [ 458752, %sw.bb7 ], [ 393216, %sw.bb6 ], [ 327680, %sw.bb5 ], [ 262144, %sw.bb4 ], [ 196608, %sw.bb3 ], [ 131072, %sw.bb2 ], [ 65536, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %and = and i32 %mem_base, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %do.end

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.epilog.if.end_crit_edge
  %3 = ptrtoint ptr %mem_base.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mem_base.addr, align 4
  %and12 = and i32 %4, -1048576
  %or = or i32 %and12, %outval.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @faraday_res_to_memcfg.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@faraday_res_to_memcfg, %do.end23)) #6
          to label %if.then20 [label %do.end23], !srcloc !126

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @faraday_res_to_memcfg.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.37, ptr noundef nonnull %mem_base.addr, ptr noundef nonnull %mem_size.addr, i32 noundef %or) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end23 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @faraday_raw_pci_write_config(ptr nocapture noundef readonly %p, i32 noundef %bus_number, i32 noundef %fn, i32 noundef %config, i32 noundef %size, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %and = shl i32 %bus_number, 16
  %shl = and i32 %and, 16711680
  %0 = shl i32 %fn, 8
  %shl3 = and i32 %0, 63488
  %shl6 = and i32 %0, 1792
  %and8 = and i32 %config, 252
  %or = or i32 %shl, %shl3
  %or7 = or i32 %or, %shl6
  %or9 = or i32 %or7, %and8
  %or10 = or i32 %or9, -2147483648
  %1 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %base = getelementptr inbounds %struct.faraday_pci, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #6, !srcloc !115
  %4 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %size, label %entry.sw.epilog_crit_edge [
    i32 4, label %do.body11
    i32 2, label %do.body17
    i32 1, label %do.body25
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %value)
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %5) #6, !srcloc !115
  br label %sw.epilog

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %value to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %10, i32 44
  %and22 = and i32 %config, 3
  %add.ptr23 = getelementptr i8, ptr %add.ptr21, i32 %and22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23, i16 %8) #6, !srcloc !121
  br label %sw.epilog

do.body25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %conv28 = trunc i32 %value to i8
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %12, i32 44
  %and31 = and i32 %config, 3
  %add.ptr32 = getelementptr i8, ptr %add.ptr30, i32 %and31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 %conv28) #6, !srcloc !128
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body25, %do.body17, %do.body11, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %do.body25 ], [ 0, %do.body17 ], [ 0, %do.body11 ], [ 135, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_scan_root_bus_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_assign_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_add_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @faraday_pci_read_config(ptr noundef %bus, i32 noundef %fn, i32 noundef %config, i32 noundef %size, ptr nocapture noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @faraday_pci_read_config.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@faraday_pci_read_config, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  %shr = lshr i32 %fn, 3
  %and = and i32 %shr, 31
  %and4 = and i32 %fn, 7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @faraday_pci_read_config.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %and, i32 noundef %and4, i32 noundef %config, i32 noundef %size, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 4
  %conv = zext i8 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %and.i = shl nuw nsw i32 %conv, 16
  %6 = shl i32 %fn, 8
  %shl3.i = and i32 %6, 63488
  %shl6.i = and i32 %6, 1792
  %and8.i = and i32 %config, 252
  %or.i = or i32 %and.i, %shl3.i
  %or7.i = or i32 %or.i, %shl6.i
  %or9.i = or i32 %or7.i, %and8.i
  %or10.i = or i32 %or9.i, -2147483648
  %7 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #6
  %base.i = getelementptr inbounds %struct.faraday_pci, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !115
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %11, i32 44
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !116
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %value, align 4
  %15 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %size, label %do.end.faraday_raw_pci_read_config.exit_crit_edge [
    i32 1, label %do.end.if.end23.sink.split.i_crit_edge
    i32 2, label %if.then18.i
  ]

do.end.if.end23.sink.split.i_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.sink.split.i

do.end.faraday_raw_pci_read_config.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %faraday_raw_pci_read_config.exit

if.then18.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then18.i, %do.end.if.end23.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 65535, %if.then18.i ], [ 255, %do.end.if.end23.sink.split.i_crit_edge ]
  %and19.i = shl i32 %config, 3
  %mul20.i = and i32 %and19.i, 24
  %shr21.i = lshr i32 %13, %mul20.i
  %and22.i = and i32 %.sink.i, %shr21.i
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and22.i, ptr %value, align 4
  br label %faraday_raw_pci_read_config.exit

faraday_raw_pci_read_config.exit:                 ; preds = %if.end23.sink.split.i, %do.end.faraday_raw_pci_read_config.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @faraday_pci_write_config(ptr noundef %bus, i32 noundef %fn, i32 noundef %config, i32 noundef %size, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @faraday_pci_write_config.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@faraday_pci_write_config, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 21
  %shr = lshr i32 %fn, 3
  %and = and i32 %shr, 31
  %and4 = and i32 %fn, 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @faraday_pci_write_config.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %and, i32 noundef %and4, i32 noundef %config, i32 noundef %size, i32 noundef %value) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv = zext i8 %3 to i32
  %call5 = tail call fastcc i32 @faraday_raw_pci_write_config(ptr noundef %1, i32 noundef %conv, i32 noundef %fn, i32 noundef %config, i32 noundef %size, i32 noundef %value)
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @faraday_pci_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.faraday_pci, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1275068544) #6, !srcloc !115
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %7, i32 44
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %12(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %14(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %16, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %16(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %irqdomain = getelementptr inbounds %struct.faraday_pci, ptr %1, i32 0, i32 2
  %17 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3 = icmp eq i32 %17, 0
  br i1 %cmp3, label %chained_irq_enter.exit.for.inc_crit_edge, label %if.end

chained_irq_enter.exit.for.inc_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irqdomain, align 4
  %call4 = tail call i32 @generic_handle_domain_irq(ptr noundef %19, i32 noundef 0) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %chained_irq_enter.exit.for.inc_crit_edge
  %20 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3.1 = icmp eq i32 %20, 0
  br i1 %cmp3.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irqdomain, align 4
  %call4.1 = tail call i32 @generic_handle_domain_irq(ptr noundef %22, i32 noundef 1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %23 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp3.2 = icmp eq i32 %23, 0
  br i1 %cmp3.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irqdomain, align 4
  %call4.2 = tail call i32 @generic_handle_domain_irq(ptr noundef %25, i32 noundef 2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %26 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp3.3 = icmp eq i32 %26, 0
  br i1 %cmp3.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irqdomain, align 4
  %call4.3 = tail call i32 @generic_handle_domain_irq(ptr noundef %28, i32 noundef 3) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %29 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i14 = icmp eq ptr %30, null
  br i1 %tobool.not.i14, label %if.else.i15, label %for.inc.3.chained_irq_exit.exit_crit_edge

for.inc.3.chained_irq_exit.exit_crit_edge:        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i15:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %31 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i15, %for.inc.3.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %32, %if.else.i15 ], [ %30, %for.inc.3.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @faraday_pci_irq_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @faraday_pci_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @faraday_pci_ack_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.faraday_pci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1275068544) #6, !srcloc !115
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %7 = and i32 %6, -241
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %9 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwirq.i, align 4
  %add = add i32 %10, 28
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 1275068544) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %13) #6, !srcloc !115
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @faraday_pci_mask_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.faraday_pci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1275068544) #6, !srcloc !115
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !116
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq.i, align 4
  %add = add i32 %9, 22
  %shl = shl nuw i32 1, %add
  %10 = and i32 %shl, 268435455
  %neg = xor i32 %10, 268435455
  %and = and i32 %neg, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 1275068544) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %13) #6, !srcloc !115
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @faraday_pci_unmask_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.faraday_pci, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1275068544) #6, !srcloc !115
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %7 = and i32 %6, -241
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %9 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwirq.i, align 4
  %add = add i32 %10, 22
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 1275068544) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %13) #6, !srcloc !115
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_pci_ftpci100__239_574_faraday_pci_driver_init6, !1, !"__initcall__kmod_pci_ftpci100__239_574_faraday_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 574, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 568, i32 11}
!4 = !{ptr @faraday_pci_driver, !5, !"faraday_pci_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 566, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 445, i32 26}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 450, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @faraday_pci_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @faraday_pci_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 453, i32 33}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 458, i32 3}
!20 = !{ptr @faraday_pci_probe._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @faraday_pci_probe._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 474, i32 4}
!24 = !{ptr @faraday_pci_probe._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @faraday_pci_probe._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 490, i32 4}
!28 = !{ptr @faraday_pci_probe._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @faraday_pci_probe._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 505, i32 4}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @faraday_pci_probe._entry.17, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @faraday_pci_probe._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 509, i32 5}
!37 = !{ptr @faraday_pci_probe._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @faraday_pci_probe._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 511, i32 4}
!41 = !{ptr @faraday_pci_probe._entry.24, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @faraday_pci_probe._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 529, i32 3}
!45 = !{ptr @faraday_pci_probe._entry.27, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @faraday_pci_probe._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @faraday_pci_ops, !48, !"faraday_pci_ops", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 265, i32 23}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 215, i32 2}
!51 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @faraday_pci_read_config.__UNIQUE_ID_ddebug237, !50, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 257, i32 2}
!56 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @faraday_pci_write_config.__UNIQUE_ID_ddebug238, !55, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 179, i32 3}
!60 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @faraday_res_to_memcfg._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @faraday_res_to_memcfg._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 182, i32 2}
!65 = !{ptr @faraday_res_to_memcfg.__UNIQUE_ID_ddebug236, !64, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 350, i32 3}
!68 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @faraday_pci_setup_cascaded_irq._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @faraday_pci_setup_cascaded_irq._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 357, i32 3}
!73 = !{ptr @faraday_pci_setup_cascaded_irq._entry.40, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @faraday_pci_setup_cascaded_irq._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 366, i32 3}
!77 = !{ptr @faraday_pci_setup_cascaded_irq._entry.43, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @faraday_pci_setup_cascaded_irq._entry_ptr.45, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @faraday_pci_irqdomain_ops, !80, !"faraday_pci_irqdomain_ops", i1 false, i1 false}
!80 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 339, i32 36}
!81 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 324, i32 10}
!83 = !{ptr @faraday_pci_irq_chip, !84, !"faraday_pci_irq_chip", i1 false, i1 false}
!84 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 323, i32 24}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 399, i32 4}
!87 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @faraday_pci_parse_map_dma_ranges._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @faraday_pci_parse_map_dma_ranges._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 404, i32 3}
!92 = !{ptr @faraday_pci_parse_map_dma_ranges._entry.49, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @faraday_pci_parse_map_dma_ranges._entry_ptr.51, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 410, i32 4}
!96 = !{ptr @faraday_pci_parse_map_dma_ranges._entry.52, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @faraday_pci_parse_map_dma_ranges._entry_ptr.54, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @faraday_pci_of_match, !99, !"faraday_pci_of_match", i1 false, i1 false}
!99 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 554, i32 34}
!100 = !{ptr @faraday_regular, !101, !"faraday_regular", i1 false, i1 false}
!101 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 546, i32 41}
!102 = !{ptr @faraday_dual, !103, !"faraday_dual", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/pci-ftpci100.c", i32 550, i32 41}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{i64 2154699256}
!115 = !{i64 4211470}
!116 = !{i64 4211888}
!117 = !{i64 2154701474}
!118 = !{i64 2154701702}
!119 = !{i64 2154676598}
!120 = !{i64 2154677894}
!121 = !{i64 4210850}
!122 = !{i8 0, i8 2}
!123 = !{i64 2154671904}
!124 = !{i64 2154673050}
!125 = !{i64 2154677483}
!126 = !{i64 2148730662, i64 2148730667, i64 2148730680, i64 2148730724, i64 2148730758, i64 2148730779}
!127 = !{i64 2154678320}
!128 = !{i64 4211273}
