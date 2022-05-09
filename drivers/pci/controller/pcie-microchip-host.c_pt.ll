; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-microchip-host.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-microchip-host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_ecam_ops = type { i32, %struct.pci_ops, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cause = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.79 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.event_map = type { i32, i32 }
%struct.pci_config_window = type { %struct.resource, %struct.resource, i32, ptr, ptr, %union.anon.78, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.78 = type { ptr }
%struct.mc_pcie = type { ptr, ptr, ptr, ptr, %struct.raw_spinlock, %struct.mc_msi }
%struct.mc_msi = type { %struct.mutex, ptr, ptr, i32, i64, [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }

@__initcall__kmod_pcie_microchip_host__237_1129_mc_pcie_driver_init6 = internal global ptr @mc_pcie_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file238 = internal constant [68 x i8] c"pcie_microchip_host.file=drivers/pci/controller/pcie-microchip-host\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [32 x i8] c"pcie_microchip_host.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [70 x i8] c"pcie_microchip_host.description=Microchip PCIe host controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [73 x i8] c"pcie_microchip_host.author=Daire McNamara <daire.mcnamara@microchip.com>\00", section ".modinfo", align 1
@mc_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pci_host_common_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @mc_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"microchip-pcie\00", [17 x i8] zeroinitializer }, align 32
@mc_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,pcie-host-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mc_ecam_ops }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mc_ecam_ops = internal constant { %struct.pci_ecam_ops, [36 x i8] } { %struct.pci_ecam_ops { i32 0, %struct.pci_ops { ptr null, ptr null, ptr @pci_ecam_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, ptr @mc_platform_init }, [36 x i8] zeroinitializer }, align 32
@mc_platform_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1002, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get clock resources, error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mc_platform_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/pci/controller/pcie-microchip-host.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mc_platform_init._entry_ptr = internal global ptr @mc_platform_init._entry, section ".printk_index", align 4
@mc_platform_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1017, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed creating IRQ domains\0A\00", [35 x i8] zeroinitializer }, align 32
@mc_platform_init._entry_ptr.8 = internal global ptr @mc_platform_init._entry.6, section ".printk_index", align 4
@mc_platform_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1028, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to map hwirq %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mc_platform_init._entry_ptr.11 = internal global ptr @mc_platform_init._entry.9, section ".printk_index", align 4
@event_cause = internal constant { [28 x %struct.cause], [32 x i8] } { [28 x %struct.cause] [%struct.cause { ptr @.str.48, ptr @.str.49 }, %struct.cause { ptr @.str.50, ptr @.str.51 }, %struct.cause { ptr @.str.52, ptr @.str.53 }, %struct.cause { ptr @.str.54, ptr @.str.55 }, %struct.cause { ptr @.str.56, ptr @.str.57 }, %struct.cause { ptr @.str.58, ptr @.str.59 }, %struct.cause { ptr @.str.60, ptr @.str.61 }, %struct.cause { ptr @.str.62, ptr @.str.63 }, %struct.cause { ptr @.str.64, ptr @.str.65 }, %struct.cause { ptr @.str.66, ptr @.str.67 }, %struct.cause { ptr @.str.68, ptr @.str.69 }, %struct.cause zeroinitializer, %struct.cause zeroinitializer, %struct.cause { ptr @.str.70, ptr @.str.71 }, %struct.cause { ptr @.str.72, ptr @.str.73 }, %struct.cause { ptr @.str.74, ptr @.str.75 }, %struct.cause { ptr @.str.76, ptr @.str.77 }, %struct.cause { ptr @.str.78, ptr @.str.79 }, %struct.cause zeroinitializer, %struct.cause { ptr @.str.80, ptr @.str.81 }, %struct.cause { ptr @.str.82, ptr @.str.83 }, %struct.cause { ptr @.str.84, ptr @.str.85 }, %struct.cause zeroinitializer, %struct.cause zeroinitializer, %struct.cause zeroinitializer, %struct.cause { ptr @.str.86, ptr @.str.87 }, %struct.cause { ptr @.str.88, ptr @.str.89 }, %struct.cause { ptr @.str.90, ptr @.str.91 }], [32 x i8] zeroinitializer }, align 32
@mc_platform_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1035, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mc_platform_init._entry_ptr.14 = internal global ptr @mc_platform_init._entry.12, section ".printk_index", align 4
@mc_platform_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1043, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to map INTx interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@mc_platform_init._entry_ptr.17 = internal global ptr @mc_platform_init._entry.15, section ".printk_index", align 4
@poss_clks = internal global { [4 x [5 x i8]], [44 x i8] } { [4 x [5 x i8]] [[5 x i8] c"fic0\00", [5 x i8] c"fic1\00", [5 x i8] c"fic2\00", [5 x i8] c"fic3\00"], [44 x i8] zeroinitializer }, align 32
@mc_pcie_init_irq_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 893, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to find PCIe Intc node\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mc_pcie_init_irq_domains\00", [39 x i8] zeroinitializer }, align 32
@mc_pcie_init_irq_domains._entry_ptr = internal global ptr @mc_pcie_init_irq_domains._entry, section ".printk_index", align 4
@event_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @mc_pcie_event_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mc_pcie_init_irq_domains._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 900, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get event domain\0A\00", [36 x i8] zeroinitializer }, align 32
@mc_pcie_init_irq_domains._entry_ptr.22 = internal global ptr @mc_pcie_init_irq_domains._entry.20, section ".printk_index", align 4
@intx_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @mc_pcie_intx_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mc_pcie_init_irq_domains._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 909, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get an INTx IRQ domain\0A\00", [62 x i8] zeroinitializer }, align 32
@mc_pcie_init_irq_domains._entry_ptr.25 = internal global ptr @mc_pcie_init_irq_domains._entry.23, section ".printk_index", align 4
@mc_pcie_init_irq_domains.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@mc_event_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.27, ptr null, ptr null, ptr null, ptr null, ptr @mc_ack_event_irq, ptr @mc_mask_event_irq, ptr null, ptr @mc_unmask_event_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Microchip PCIe EVENT\00", [43 x i8] zeroinitializer }, align 32
@event_descs = internal constant { [28 x %struct.anon.79], [208 x i8] } { [28 x %struct.anon.79] [%struct.anon.79 { i32 40960, i32 332, i32 1, i32 0, i32 458752, i32 1, i32 332 }, %struct.anon.79 { i32 40960, i32 332, i32 2, i32 0, i32 458752, i32 1, i32 332 }, %struct.anon.79 { i32 40960, i32 332, i32 4, i32 0, i32 458752, i32 1, i32 332 }, %struct.anon.79 { i32 40960, i32 40, i32 15, i32 0, i32 0, i32 1, i32 44 }, %struct.anon.79 { i32 40960, i32 40, i32 240, i32 0, i32 0, i32 1, i32 44 }, %struct.anon.79 { i32 40960, i32 40, i32 3840, i32 0, i32 0, i32 1, i32 44 }, %struct.anon.79 { i32 40960, i32 40, i32 61440, i32 0, i32 0, i32 1, i32 44 }, %struct.anon.79 { i32 40960, i32 48, i32 15, i32 0, i32 0, i32 1, i32 52 }, %struct.anon.79 { i32 40960, i32 48, i32 240, i32 0, i32 0, i32 1, i32 52 }, %struct.anon.79 { i32 40960, i32 48, i32 3840, i32 0, i32 0, i32 1, i32 52 }, %struct.anon.79 { i32 40960, i32 48, i32 61440, i32 0, i32 0, i32 1, i32 52 }, %struct.anon.79 { i32 32768, i32 388, i32 0, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 0, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 256, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 512, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 65536, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 131072, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 262144, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 0, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 1048576, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 2097152, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 4194304, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 0, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 251658240, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 268435456, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 536870912, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 1073741824, i32 0, i32 0, i32 0, i32 384 }, %struct.anon.79 { i32 32768, i32 388, i32 -2147483648, i32 0, i32 0, i32 0, i32 384 }], [208 x i8] zeroinitializer }, align 32
@mc_intx_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.28, ptr null, ptr null, ptr null, ptr null, ptr @mc_ack_intx_irq, ptr @mc_mask_intx_irq, ptr null, ptr @mc_unmask_intx_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Microchip PCIe INTx\00", [44 x i8] zeroinitializer }, align 32
@mc_allocate_msi_domains.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&port->msi.lock\00", [16 x i8] zeroinitializer }, align 32
@msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mc_irq_msi_domain_alloc, ptr @mc_irq_msi_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mc_allocate_msi_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 548, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mc_allocate_msi_domains\00", [40 x i8] zeroinitializer }, align 32
@mc_allocate_msi_domains._entry_ptr = internal global ptr @mc_allocate_msi_domains._entry, section ".printk_index", align 4
@mc_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 11, ptr null, ptr @mc_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mc_allocate_msi_domains._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 555, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create MSI domain\0A\00", [35 x i8] zeroinitializer }, align 32
@mc_allocate_msi_domains._entry_ptr.34 = internal global ptr @mc_allocate_msi_domains._entry.32, section ".printk_index", align 4
@mc_msi_bottom_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.35, ptr null, ptr null, ptr null, ptr null, ptr @mc_msi_bottom_irq_ack, ptr null, ptr null, ptr null, ptr null, ptr @mc_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mc_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Microchip MSI\00", [18 x i8] zeroinitializer }, align 32
@mc_compose_msi_msg.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcie_microchip_host\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mc_compose_msi_msg\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"msi#%x address_hi %#x address_lo %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@mc_irq_msi_domain_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"trying to free unused MSI%lu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mc_irq_msi_domain_free\00", [41 x i8] zeroinitializer }, align 32
@mc_irq_msi_domain_free._entry_ptr = internal global ptr @mc_irq_msi_domain_free._entry, section ".printk_index", align 4
@mc_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.41, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_ack_parent, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Microchip PCIe MSI\00", [45 x i8] zeroinitializer }, align 32
@mc_event_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mc_event_handler = private unnamed_addr constant [17 x i8] c"mc_event_handler\00", align 1
@mc_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.mc_event_handler, ptr @.str.3, i32 725, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mc_event_handler._entry_ptr = internal global ptr @mc_event_handler._entry, section ".printk_index", align 4
@mc_event_handler._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mc_event_handler._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @__func__.mc_event_handler, ptr @.str.3, i32 727, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad event IRQ %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@mc_event_handler._entry_ptr.47 = internal global ptr @mc_event_handler._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L2_EXIT\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"L2 exit event\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HOTRST_EXIT\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Hot reset exit event\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DLUP_EXIT\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DLUP exit event\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX_RAM_SEC_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sec error in tx buffer\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX_RAM_SEC_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sec error in rx buffer\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AXI2PCIE_RAM_SEC_ERR\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sec error in axi2pcie buffer\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCIE2AXI_RAM_SEC_ERR\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sec error in pcie2axi buffer\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX_RAM_DED_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ded error in tx buffer\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX_RAM_DED_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ded error in rx buffer\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AXI2PCIE_RAM_DED_ERR\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ded error in axi2pcie buffer\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCIE2AXI_RAM_DED_ERR\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ded error in pcie2axi buffer\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA_ERROR_ENGINE_0\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma engine 0 error\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA_ERROR_ENGINE_1\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma engine 1 error\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"A_ATR_EVT_POST_ERR\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"axi write request error\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"A_ATR_EVT_FETCH_ERR\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"axi read request error\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"A_ATR_EVT_DISCARD_ERR\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axi read timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"P_ATR_EVT_POST_ERR\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcie write request error\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"P_ATR_EVT_FETCH_ERR\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcie read request error\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"P_ATR_EVT_DISCARD_ERR\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcie read timeout\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PM_MSI_INT_AER_EVT\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aer event\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PM_MSI_INT_EVENTS\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm/ltr/hotplug event\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PM_MSI_INT_SYS_ERR\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"system error\00", [19 x i8] zeroinitializer }, align 32
@mc_handle_intx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mc_handle_intx = private unnamed_addr constant [15 x i8] c"mc_handle_intx\00", align 1
@mc_handle_intx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @__func__.mc_handle_intx, ptr @.str.3, i32 581, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad INTx IRQ %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mc_handle_intx._entry_ptr = internal global ptr @mc_handle_intx._entry, section ".printk_index", align 4
@mc_handle_msi._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mc_handle_msi = private unnamed_addr constant [14 x i8] c"mc_handle_msi\00", align 1
@mc_handle_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @__func__.mc_handle_msi, ptr @.str.3, i32 424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad MSI IRQ %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mc_handle_msi._entry_ptr = internal global ptr @mc_handle_msi._entry, section ".printk_index", align 4
@local_status_to_event = internal constant { [17 x %struct.event_map], [56 x i8] } { [17 x %struct.event_map] [%struct.event_map { i32 0, i32 11 }, %struct.event_map { i32 0, i32 12 }, %struct.event_map { i32 256, i32 13 }, %struct.event_map { i32 512, i32 14 }, %struct.event_map { i32 65536, i32 15 }, %struct.event_map { i32 131072, i32 16 }, %struct.event_map { i32 262144, i32 17 }, %struct.event_map { i32 0, i32 18 }, %struct.event_map { i32 1048576, i32 19 }, %struct.event_map { i32 2097152, i32 20 }, %struct.event_map { i32 4194304, i32 21 }, %struct.event_map { i32 0, i32 22 }, %struct.event_map { i32 251658240, i32 23 }, %struct.event_map { i32 268435456, i32 24 }, %struct.event_map { i32 536870912, i32 25 }, %struct.event_map { i32 1073741824, i32 26 }, %struct.event_map { i32 -2147483648, i32 27 }], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"mc_pcie_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1120, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1123, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"mc_pcie_of_match\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1110, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"mc_ecam_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1101, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1002, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1017, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1028, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"event_cause\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 279, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1035, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1043, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [10 x i8] c"poss_clks\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 383, i32 13 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 893, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"event_domain_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 841, i32 36 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 900, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [16 x i8] c"intx_domain_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 644, i32 36 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 909, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 916, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [18 x i8] c"mc_event_irq_chip\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 825, i32 24 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 826, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant [12 x i8] c"event_descs\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 352, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"mc_intx_irq_chip\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 628, i32 24 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 629, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 543, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"msi_domain_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 519, i32 36 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 548, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [19 x i8] c"mc_msi_domain_info\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 531, i32 31 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 555, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [23 x i8] c"mc_msi_bottom_irq_chip\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 463, i32 24 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 464, i32 10 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 453, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 514, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [16 x i8] c"mc_msi_irq_chip\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 524, i32 24 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 525, i32 10 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 725, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 727, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 280, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 281, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 282, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 283, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 284, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 286, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 285, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 287, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 288, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 290, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 289, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 291, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 292, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 293, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 294, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 295, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 296, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 297, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 298, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 299, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 300, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 301, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 580, i32 5 }
@___asan_gen_.421 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 423, i32 5 }
@___asan_gen_.430 = private unnamed_addr constant [22 x i8] c"local_status_to_event\00", align 1
@___asan_gen_.431 = private constant [48 x i8] c"../drivers/pci/controller/pcie-microchip-host.c\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 324, i32 25 }
@llvm.compiler.used = appending global [133 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__initcall__kmod_pcie_microchip_host__237_1129_mc_pcie_driver_init6, ptr @mc_allocate_msi_domains._entry, ptr @mc_allocate_msi_domains._entry.32, ptr @mc_allocate_msi_domains._entry_ptr, ptr @mc_allocate_msi_domains._entry_ptr.34, ptr @mc_event_handler._entry, ptr @mc_event_handler._entry.45, ptr @mc_event_handler._entry_ptr, ptr @mc_event_handler._entry_ptr.47, ptr @mc_handle_intx._entry, ptr @mc_handle_intx._entry_ptr, ptr @mc_handle_msi._entry, ptr @mc_handle_msi._entry_ptr, ptr @mc_irq_msi_domain_free._entry, ptr @mc_irq_msi_domain_free._entry_ptr, ptr @mc_pcie_init_irq_domains._entry, ptr @mc_pcie_init_irq_domains._entry.20, ptr @mc_pcie_init_irq_domains._entry.23, ptr @mc_pcie_init_irq_domains._entry_ptr, ptr @mc_pcie_init_irq_domains._entry_ptr.22, ptr @mc_pcie_init_irq_domains._entry_ptr.25, ptr @mc_platform_init._entry, ptr @mc_platform_init._entry.12, ptr @mc_platform_init._entry.15, ptr @mc_platform_init._entry.6, ptr @mc_platform_init._entry.9, ptr @mc_platform_init._entry_ptr, ptr @mc_platform_init._entry_ptr.11, ptr @mc_platform_init._entry_ptr.14, ptr @mc_platform_init._entry_ptr.17, ptr @mc_platform_init._entry_ptr.8, ptr @mc_pcie_driver, ptr @.str, ptr @mc_pcie_of_match, ptr @mc_ecam_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @event_cause, ptr @.str.13, ptr @.str.16, ptr @poss_clks, ptr @.str.18, ptr @.str.19, ptr @event_domain_ops, ptr @.str.21, ptr @intx_domain_ops, ptr @.str.24, ptr @mc_pcie_init_irq_domains.__key, ptr @.str.26, ptr @mc_event_irq_chip, ptr @.str.27, ptr @event_descs, ptr @mc_intx_irq_chip, ptr @.str.28, ptr @mc_allocate_msi_domains.__key, ptr @.str.29, ptr @msi_domain_ops, ptr @.str.30, ptr @.str.31, ptr @mc_msi_domain_info, ptr @.str.33, ptr @mc_msi_bottom_irq_chip, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @mc_msi_irq_chip, ptr @.str.41, ptr @mc_event_handler._rs, ptr @.str.42, ptr @.str.43, ptr @mc_event_handler._rs.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @mc_handle_intx._rs, ptr @.str.92, ptr @mc_handle_msi._rs, ptr @.str.93, ptr @local_status_to_event], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_ecam_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_platform_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_platform_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_platform_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cause to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_platform_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_platform_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poss_clks to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_pcie_init_irq_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_pcie_init_irq_domains._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intx_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_pcie_init_irq_domains._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_pcie_init_irq_domains.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_event_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_descs to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_intx_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_allocate_msi_domains.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_allocate_msi_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_allocate_msi_domains._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_msi_bottom_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_irq_msi_domain_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_event_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_event_handler._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_event_handler._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_handle_intx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_handle_intx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_handle_msi._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_handle_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_status_to_event to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mc_pcie_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_common_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ecam_map_bus(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc_platform_init(ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.pci_config_window, ptr %cfg, i32 0, i32 6
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 184, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.mc_pcie, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %dev1, align 4
  %call.i.i = tail call ptr @devm_clk_get_optional(ptr noundef %1, ptr noundef nonnull @poss_clks) #8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.mc_pcie_init_clk.exit.i_crit_edge, label %if.end.i.i

if.end.mc_pcie_init_clk.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clk.exit.i

if.end.i.i:                                       ; preds = %if.end
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %if.end3.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end3.i.i.if.then6.i.i_crit_edge

if.end3.i.i.if.then6.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i.i

if.end.i.i.i:                                     ; preds = %if.end3.i.i
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end8.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %call.i.i) #8
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.then3.i.i.i, %if.end3.i.i.if.then6.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call1.i.i.i, %if.then3.i.i.i ], [ %call.i.i.i, %if.end3.i.i.if.then6.i.i_crit_edge ]
  %3 = inttoptr i32 %retval.0.i.ph.i.i to ptr
  br label %mc_pcie_init_clk.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i.i
  %call.i19.i.i = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @clk_disable_unprepare, ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i.i)
  %tobool.not.i20.i.i = icmp eq i32 %call.i19.i.i, 0
  br i1 %tobool.not.i20.i.i, label %if.end8.i.i.mc_pcie_init_clk.exit.i_crit_edge, label %if.then.i.i.i

if.end8.i.i.mc_pcie_init_clk.exit.i_crit_edge:    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clk.exit.i

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %call.i.i) #8
  tail call void @clk_unprepare(ptr noundef nonnull %call.i.i) #8
  br label %mc_pcie_init_clk.exit.i

mc_pcie_init_clk.exit.i:                          ; preds = %if.then.i.i.i, %if.end8.i.i.mc_pcie_init_clk.exit.i_crit_edge, %if.then6.i.i, %if.end.mc_pcie_init_clk.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.then6.i.i ], [ %call.i.i, %if.end.mc_pcie_init_clk.exit.i_crit_edge ], [ %call.i.i, %if.end8.i.i.mc_pcie_init_clk.exit.i_crit_edge ], [ %call.i.i, %if.then.i.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mc_pcie_init_clk.exit.i.mc_pcie_init_clks.exit_crit_edge, label %mc_pcie_init_clk.exit.i.for.inc.i_crit_edge

mc_pcie_init_clk.exit.i.for.inc.i_crit_edge:      ; preds = %mc_pcie_init_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

mc_pcie_init_clk.exit.i.mc_pcie_init_clks.exit_crit_edge: ; preds = %mc_pcie_init_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clks.exit

for.inc.i:                                        ; preds = %mc_pcie_init_clk.exit.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge
  %call.i.1.i = tail call ptr @devm_clk_get_optional(ptr noundef %1, ptr noundef getelementptr inbounds ([4 x [5 x i8]], ptr @poss_clks, i32 0, i32 1)) #8
  %cmp.i.i.1.i = icmp ugt ptr %call.i.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.1.i, label %for.inc.i.mc_pcie_init_clk.exit.1.i_crit_edge, label %if.end.i.1.i

for.inc.i.mc_pcie_init_clk.exit.1.i_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clk.exit.1.i

if.end.i.1.i:                                     ; preds = %for.inc.i
  %tobool.not.i.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i.for.inc.1.i_crit_edge, label %if.end3.i.1.i

if.end.i.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.end3.i.1.i:                                    ; preds = %if.end.i.1.i
  %call.i.i.1.i = tail call i32 @clk_prepare(ptr noundef nonnull %call.i.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %tobool.not.i.i.1.i = icmp eq i32 %call.i.i.1.i, 0
  br i1 %tobool.not.i.i.1.i, label %if.end.i.i.1.i, label %if.end3.i.1.i.if.then6.i.1.i_crit_edge

if.end3.i.1.i.if.then6.i.1.i_crit_edge:           ; preds = %if.end3.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i.1.i

if.end.i.i.1.i:                                   ; preds = %if.end3.i.1.i
  %call1.i.i.1.i = tail call i32 @clk_enable(ptr noundef nonnull %call.i.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.1.i)
  %tobool2.not.i.i.1.i = icmp eq i32 %call1.i.i.1.i, 0
  br i1 %tobool2.not.i.i.1.i, label %if.end8.i.1.i, label %if.then3.i.i.1.i

if.then3.i.i.1.i:                                 ; preds = %if.end.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %call.i.1.i) #8
  br label %if.then6.i.1.i

if.then6.i.1.i:                                   ; preds = %if.then3.i.i.1.i, %if.end3.i.1.i.if.then6.i.1.i_crit_edge
  %retval.0.i.ph.i.1.i = phi i32 [ %call1.i.i.1.i, %if.then3.i.i.1.i ], [ %call.i.i.1.i, %if.end3.i.1.i.if.then6.i.1.i_crit_edge ]
  %4 = inttoptr i32 %retval.0.i.ph.i.1.i to ptr
  br label %mc_pcie_init_clk.exit.1.i

if.end8.i.1.i:                                    ; preds = %if.end.i.i.1.i
  %call.i19.i.1.i = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @clk_disable_unprepare, ptr noundef nonnull %call.i.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i.1.i)
  %tobool.not.i20.i.1.i = icmp eq i32 %call.i19.i.1.i, 0
  br i1 %tobool.not.i20.i.1.i, label %if.end8.i.1.i.mc_pcie_init_clk.exit.1.i_crit_edge, label %if.then.i.i.1.i

if.end8.i.1.i.mc_pcie_init_clk.exit.1.i_crit_edge: ; preds = %if.end8.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clk.exit.1.i

if.then.i.i.1.i:                                  ; preds = %if.end8.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %call.i.1.i) #8
  tail call void @clk_unprepare(ptr noundef nonnull %call.i.1.i) #8
  br label %mc_pcie_init_clk.exit.1.i

mc_pcie_init_clk.exit.1.i:                        ; preds = %if.then.i.i.1.i, %if.end8.i.1.i.mc_pcie_init_clk.exit.1.i_crit_edge, %if.then6.i.1.i, %for.inc.i.mc_pcie_init_clk.exit.1.i_crit_edge
  %retval.0.i.1.i = phi ptr [ %4, %if.then6.i.1.i ], [ %call.i.1.i, %for.inc.i.mc_pcie_init_clk.exit.1.i_crit_edge ], [ %call.i.1.i, %if.end8.i.1.i.mc_pcie_init_clk.exit.1.i_crit_edge ], [ %call.i.1.i, %if.then.i.i.1.i ]
  %cmp.i.1.i = icmp ugt ptr %retval.0.i.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %mc_pcie_init_clk.exit.1.i.mc_pcie_init_clks.exit_crit_edge, label %mc_pcie_init_clk.exit.1.i.for.inc.1.i_crit_edge

mc_pcie_init_clk.exit.1.i.for.inc.1.i_crit_edge:  ; preds = %mc_pcie_init_clk.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

mc_pcie_init_clk.exit.1.i.mc_pcie_init_clks.exit_crit_edge: ; preds = %mc_pcie_init_clk.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clks.exit

for.inc.1.i:                                      ; preds = %mc_pcie_init_clk.exit.1.i.for.inc.1.i_crit_edge, %if.end.i.1.i.for.inc.1.i_crit_edge
  %call.i.2.i = tail call ptr @devm_clk_get_optional(ptr noundef %1, ptr noundef getelementptr inbounds ([4 x [5 x i8]], ptr @poss_clks, i32 0, i32 2)) #8
  %cmp.i.i.2.i = icmp ugt ptr %call.i.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.2.i, label %for.inc.1.i.mc_pcie_init_clk.exit.2.i_crit_edge, label %if.end.i.2.i

for.inc.1.i.mc_pcie_init_clk.exit.2.i_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clk.exit.2.i

if.end.i.2.i:                                     ; preds = %for.inc.1.i
  %tobool.not.i.2.i = icmp eq ptr %call.i.2.i, null
  br i1 %tobool.not.i.2.i, label %if.end.i.2.i.for.inc.2.i_crit_edge, label %if.end3.i.2.i

if.end.i.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

if.end3.i.2.i:                                    ; preds = %if.end.i.2.i
  %call.i.i.2.i = tail call i32 @clk_prepare(ptr noundef nonnull %call.i.2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2.i)
  %tobool.not.i.i.2.i = icmp eq i32 %call.i.i.2.i, 0
  br i1 %tobool.not.i.i.2.i, label %if.end.i.i.2.i, label %if.end3.i.2.i.if.then6.i.2.i_crit_edge

if.end3.i.2.i.if.then6.i.2.i_crit_edge:           ; preds = %if.end3.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i.2.i

if.end.i.i.2.i:                                   ; preds = %if.end3.i.2.i
  %call1.i.i.2.i = tail call i32 @clk_enable(ptr noundef nonnull %call.i.2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.2.i)
  %tobool2.not.i.i.2.i = icmp eq i32 %call1.i.i.2.i, 0
  br i1 %tobool2.not.i.i.2.i, label %if.end8.i.2.i, label %if.then3.i.i.2.i

if.then3.i.i.2.i:                                 ; preds = %if.end.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %call.i.2.i) #8
  br label %if.then6.i.2.i

if.then6.i.2.i:                                   ; preds = %if.then3.i.i.2.i, %if.end3.i.2.i.if.then6.i.2.i_crit_edge
  %retval.0.i.ph.i.2.i = phi i32 [ %call1.i.i.2.i, %if.then3.i.i.2.i ], [ %call.i.i.2.i, %if.end3.i.2.i.if.then6.i.2.i_crit_edge ]
  %5 = inttoptr i32 %retval.0.i.ph.i.2.i to ptr
  br label %mc_pcie_init_clk.exit.2.i

if.end8.i.2.i:                                    ; preds = %if.end.i.i.2.i
  %call.i19.i.2.i = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @clk_disable_unprepare, ptr noundef nonnull %call.i.2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i.2.i)
  %tobool.not.i20.i.2.i = icmp eq i32 %call.i19.i.2.i, 0
  br i1 %tobool.not.i20.i.2.i, label %if.end8.i.2.i.mc_pcie_init_clk.exit.2.i_crit_edge, label %if.then.i.i.2.i

if.end8.i.2.i.mc_pcie_init_clk.exit.2.i_crit_edge: ; preds = %if.end8.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clk.exit.2.i

if.then.i.i.2.i:                                  ; preds = %if.end8.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %call.i.2.i) #8
  tail call void @clk_unprepare(ptr noundef nonnull %call.i.2.i) #8
  br label %mc_pcie_init_clk.exit.2.i

mc_pcie_init_clk.exit.2.i:                        ; preds = %if.then.i.i.2.i, %if.end8.i.2.i.mc_pcie_init_clk.exit.2.i_crit_edge, %if.then6.i.2.i, %for.inc.1.i.mc_pcie_init_clk.exit.2.i_crit_edge
  %retval.0.i.2.i = phi ptr [ %5, %if.then6.i.2.i ], [ %call.i.2.i, %for.inc.1.i.mc_pcie_init_clk.exit.2.i_crit_edge ], [ %call.i.2.i, %if.end8.i.2.i.mc_pcie_init_clk.exit.2.i_crit_edge ], [ %call.i.2.i, %if.then.i.i.2.i ]
  %cmp.i.2.i = icmp ugt ptr %retval.0.i.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %mc_pcie_init_clk.exit.2.i.mc_pcie_init_clks.exit_crit_edge, label %mc_pcie_init_clk.exit.2.i.for.inc.2.i_crit_edge

mc_pcie_init_clk.exit.2.i.for.inc.2.i_crit_edge:  ; preds = %mc_pcie_init_clk.exit.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

mc_pcie_init_clk.exit.2.i.mc_pcie_init_clks.exit_crit_edge: ; preds = %mc_pcie_init_clk.exit.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clks.exit

for.inc.2.i:                                      ; preds = %mc_pcie_init_clk.exit.2.i.for.inc.2.i_crit_edge, %if.end.i.2.i.for.inc.2.i_crit_edge
  %call.i.3.i = tail call ptr @devm_clk_get_optional(ptr noundef %1, ptr noundef getelementptr inbounds ([4 x [5 x i8]], ptr @poss_clks, i32 0, i32 3)) #8
  %cmp.i.i.3.i = icmp ugt ptr %call.i.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.3.i, label %for.inc.2.i.mc_pcie_init_clk.exit.3.i_crit_edge, label %if.end.i.3.i

for.inc.2.i.mc_pcie_init_clk.exit.3.i_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clk.exit.3.i

if.end.i.3.i:                                     ; preds = %for.inc.2.i
  %tobool.not.i.3.i = icmp eq ptr %call.i.3.i, null
  br i1 %tobool.not.i.3.i, label %if.end.i.3.i.if.end5_crit_edge, label %if.end3.i.3.i

if.end.i.3.i.if.end5_crit_edge:                   ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end3.i.3.i:                                    ; preds = %if.end.i.3.i
  %call.i.i.3.i = tail call i32 @clk_prepare(ptr noundef nonnull %call.i.3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3.i)
  %tobool.not.i.i.3.i = icmp eq i32 %call.i.i.3.i, 0
  br i1 %tobool.not.i.i.3.i, label %if.end.i.i.3.i, label %if.end3.i.3.i.if.then6.i.3.i_crit_edge

if.end3.i.3.i.if.then6.i.3.i_crit_edge:           ; preds = %if.end3.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i.3.i

if.end.i.i.3.i:                                   ; preds = %if.end3.i.3.i
  %call1.i.i.3.i = tail call i32 @clk_enable(ptr noundef nonnull %call.i.3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.3.i)
  %tobool2.not.i.i.3.i = icmp eq i32 %call1.i.i.3.i, 0
  br i1 %tobool2.not.i.i.3.i, label %if.end8.i.3.i, label %if.then3.i.i.3.i

if.then3.i.i.3.i:                                 ; preds = %if.end.i.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %call.i.3.i) #8
  br label %if.then6.i.3.i

if.then6.i.3.i:                                   ; preds = %if.then3.i.i.3.i, %if.end3.i.3.i.if.then6.i.3.i_crit_edge
  %retval.0.i.ph.i.3.i = phi i32 [ %call1.i.i.3.i, %if.then3.i.i.3.i ], [ %call.i.i.3.i, %if.end3.i.3.i.if.then6.i.3.i_crit_edge ]
  %6 = inttoptr i32 %retval.0.i.ph.i.3.i to ptr
  br label %mc_pcie_init_clk.exit.3.i

if.end8.i.3.i:                                    ; preds = %if.end.i.i.3.i
  %call.i19.i.3.i = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @clk_disable_unprepare, ptr noundef nonnull %call.i.3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i.3.i)
  %tobool.not.i20.i.3.i = icmp eq i32 %call.i19.i.3.i, 0
  br i1 %tobool.not.i20.i.3.i, label %if.end8.i.3.i.mc_pcie_init_clk.exit.3.i_crit_edge, label %if.then.i.i.3.i

if.end8.i.3.i.mc_pcie_init_clk.exit.3.i_crit_edge: ; preds = %if.end8.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clk.exit.3.i

if.then.i.i.3.i:                                  ; preds = %if.end8.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %call.i.3.i) #8
  tail call void @clk_unprepare(ptr noundef nonnull %call.i.3.i) #8
  br label %mc_pcie_init_clk.exit.3.i

mc_pcie_init_clk.exit.3.i:                        ; preds = %if.then.i.i.3.i, %if.end8.i.3.i.mc_pcie_init_clk.exit.3.i_crit_edge, %if.then6.i.3.i, %for.inc.2.i.mc_pcie_init_clk.exit.3.i_crit_edge
  %retval.0.i.3.i = phi ptr [ %6, %if.then6.i.3.i ], [ %call.i.3.i, %for.inc.2.i.mc_pcie_init_clk.exit.3.i_crit_edge ], [ %call.i.3.i, %if.end8.i.3.i.mc_pcie_init_clk.exit.3.i_crit_edge ], [ %call.i.3.i, %if.then.i.i.3.i ]
  %cmp.i.3.i = icmp ugt ptr %retval.0.i.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %mc_pcie_init_clk.exit.3.i.mc_pcie_init_clks.exit_crit_edge, label %mc_pcie_init_clk.exit.3.i.if.end5_crit_edge

mc_pcie_init_clk.exit.3.i.if.end5_crit_edge:      ; preds = %mc_pcie_init_clk.exit.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

mc_pcie_init_clk.exit.3.i.mc_pcie_init_clks.exit_crit_edge: ; preds = %mc_pcie_init_clk.exit.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_pcie_init_clks.exit

mc_pcie_init_clks.exit:                           ; preds = %mc_pcie_init_clk.exit.3.i.mc_pcie_init_clks.exit_crit_edge, %mc_pcie_init_clk.exit.2.i.mc_pcie_init_clks.exit_crit_edge, %mc_pcie_init_clk.exit.1.i.mc_pcie_init_clks.exit_crit_edge, %mc_pcie_init_clk.exit.i.mc_pcie_init_clks.exit_crit_edge
  %retval.0.i.lcssa.i = phi ptr [ %retval.0.i.i, %mc_pcie_init_clk.exit.i.mc_pcie_init_clks.exit_crit_edge ], [ %retval.0.i.1.i, %mc_pcie_init_clk.exit.1.i.mc_pcie_init_clks.exit_crit_edge ], [ %retval.0.i.2.i, %mc_pcie_init_clk.exit.2.i.mc_pcie_init_clks.exit_crit_edge ], [ %retval.0.i.3.i, %mc_pcie_init_clk.exit.3.i.mc_pcie_init_clks.exit_crit_edge ]
  %tobool3.not = icmp eq ptr %retval.0.i.lcssa.i, null
  br i1 %tobool3.not, label %mc_pcie_init_clks.exit.if.end5_crit_edge, label %do.end

mc_pcie_init_clks.exit.if.end5_crit_edge:         ; preds = %mc_pcie_init_clks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %mc_pcie_init_clks.exit
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %retval.0.i.lcssa.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %7) #11
  br label %cleanup

if.end5:                                          ; preds = %mc_pcie_init_clks.exit.if.end5_crit_edge, %mc_pcie_init_clk.exit.3.i.if.end5_crit_edge, %if.end.i.3.i.if.end5_crit_edge
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 1) #8
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %add.ptr14 = getelementptr i8, ptr %call6, i32 32768
  %vector_phy = getelementptr inbounds %struct.mc_pcie, ptr %call.i, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %vector_phy to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 400, ptr %vector_phy, align 8
  %num_vectors = getelementptr inbounds %struct.mc_pcie, ptr %call.i, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %num_vectors to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %num_vectors, align 4
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  %call.i149 = tail call ptr @of_get_next_child(ptr noundef %15, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i149, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18) #11
  br label %do.end23

if.end.i:                                         ; preds = %if.end12
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i149, i32 0, i32 3
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 28, i32 noundef 28, i32 noundef 0, ptr noundef nonnull @event_domain_ops, ptr noundef nonnull %call.i) #8
  %event_domain.i = getelementptr inbounds %struct.mc_pcie, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %event_domain.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i.i, ptr %event_domain.i, align 4
  %tobool4.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool4.not.i, label %do.end8.i, label %if.end9.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.21) #11
  br label %do.end23

if.end9.i:                                        ; preds = %if.end.i
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %call1.i.i, i32 noundef 5) #8
  %call1.i45.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @intx_domain_ops, ptr noundef nonnull %call.i) #8
  %intx_domain.i = getelementptr inbounds %struct.mc_pcie, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %intx_domain.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1.i45.i, ptr %intx_domain.i, align 8
  %tobool13.not.i = icmp eq ptr %call1.i45.i, null
  br i1 %tobool13.not.i, label %do.end17.i, label %if.end18.i

do.end17.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.24) #11
  br label %do.end23

if.end18.i:                                       ; preds = %if.end9.i
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %call1.i45.i, i32 noundef 1) #8
  tail call void @of_node_put(ptr noundef nonnull %call.i149) #8
  %lock.i = getelementptr inbounds %struct.mc_pcie, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @mc_pcie_init_irq_domains.__key, i16 noundef signext 2) #8
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i.i, align 8
  %msi2.i.i = getelementptr inbounds %struct.mc_pcie, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %msi2.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @mc_allocate_msi_domains.__key) #8
  %22 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_vectors, align 4
  %call1.i.i.i150 = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef %23, i32 noundef %23, i32 noundef 0, ptr noundef nonnull @msi_domain_ops, ptr noundef nonnull %call.i) #8
  %dev_domain.i.i = getelementptr inbounds %struct.mc_pcie, ptr %call.i, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %dev_domain.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1.i.i.i150, ptr %dev_domain.i.i, align 8
  %tobool.not.i.i151 = icmp eq ptr %call1.i.i.i150, null
  br i1 %tobool.not.i.i151, label %do.end8.i.i, label %if.end.i.i152

do.end8.i.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.30) #11
  br label %do.end23

if.end.i.i152:                                    ; preds = %if.end18.i
  %tobool.not.i.i46.i = icmp eq ptr %21, null
  %fwnode.i.i47.i = getelementptr inbounds %struct.device_node, ptr %21, i32 0, i32 3
  %spec.select.i.i48.i = select i1 %tobool.not.i.i46.i, ptr null, ptr %fwnode.i.i47.i
  %call10.i.i = tail call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i.i48.i, ptr noundef nonnull @mc_msi_domain_info, ptr noundef nonnull %call1.i.i.i150) #8
  %msi_domain.i.i = getelementptr inbounds %struct.mc_pcie, ptr %call.i, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %msi_domain.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call10.i.i, ptr %msi_domain.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool12.not.i.i, label %do.end16.i.i, label %if.end24

do.end16.i.i:                                     ; preds = %if.end.i.i152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.33) #11
  %26 = ptrtoint ptr %dev_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_domain.i.i, align 8
  tail call void @irq_domain_remove(ptr noundef %27) #8
  br label %do.end23

do.end23:                                         ; preds = %do.end16.i.i, %do.end8.i.i, %do.end17.i, %do.end8.i, %do.end.i
  %retval.0.i153.ph = phi i32 [ -12, %do.end8.i.i ], [ -12, %do.end16.i.i ], [ -22, %do.end.i ], [ -12, %do.end8.i ], [ -12, %do.end17.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end.i.i152
  %call25 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end24.for.body_crit_edge
  %i.0170 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end24.for.body_crit_edge ]
  %28 = ptrtoint ptr %event_domain.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %event_domain.i, align 4
  %call.i154 = tail call i32 @irq_create_mapping_affinity(ptr noundef %29, i32 noundef %i.0170, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool30.not = icmp eq i32 %call.i154, 0
  br i1 %tobool30.not, label %do.end34, label %if.end35

do.end34:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %i.0170) #11
  br label %cleanup

if.end35:                                         ; preds = %for.body
  %arrayidx = getelementptr [28 x %struct.cause], ptr @event_cause, i32 0, i32 %i.0170
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %call.i155 = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %call.i154, ptr noundef nonnull @mc_event_handler, ptr noundef null, i32 noundef 0, ptr noundef %31, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool37.not = icmp eq i32 %call.i155, 0
  br i1 %tobool37.not, label %for.inc, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %call.i154) #11
  br label %cleanup

for.inc:                                          ; preds = %if.end35
  %inc = add nuw nsw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %32 = ptrtoint ptr %event_domain.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %event_domain.i, align 4
  %call.i156 = tail call i32 @irq_create_mapping_affinity(ptr noundef %33, i32 noundef 23, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool45.not = icmp eq i32 %call.i156, 0
  br i1 %tobool45.not, label %do.end49, label %if.end50

do.end49:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end50:                                         ; preds = %for.end
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call.i156, ptr noundef nonnull @mc_handle_intx, ptr noundef nonnull %call.i) #8
  %34 = ptrtoint ptr %event_domain.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %event_domain.i, align 4
  %call.i157 = tail call i32 @irq_create_mapping_affinity(ptr noundef %35, i32 noundef 24, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool53.not = icmp eq i32 %call.i157, 0
  br i1 %tobool53.not, label %if.end50.cleanup_crit_edge, label %if.end55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call.i157, ptr noundef nonnull @mc_handle_msi, ptr noundef nonnull %call.i) #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call25, ptr noundef nonnull @mc_handle_event, ptr noundef nonnull %call.i) #8
  %36 = getelementptr inbounds %struct.pci_config_window, ptr %cfg, i32 0, i32 5
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %add.ptr2.i = getelementptr i8, ptr %38, i32 226
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #8, !srcloc !216
  %40 = and i16 %39, 255
  %41 = or i16 %40, -9472
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %41) #8, !srcloc !217
  %42 = ptrtoint ptr %vector_phy to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %vector_phy, align 8
  %conv21.i = trunc i64 %43 to i32
  %44 = tail call i32 @llvm.bswap.i32(i32 %conv21.i) #8
  %add.ptr23.i = getelementptr i8, ptr %38, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %44) #8, !srcloc !218
  %45 = ptrtoint ptr %vector_phy to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %vector_phy, align 8
  %shr.i = lshr i64 %46, 32
  %conv26.i = trunc i64 %shr.i to i32
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv26.i) #8
  %add.ptr28.i = getelementptr i8, ptr %38, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %47) #8, !srcloc !218
  %add.ptr56 = getelementptr i8, ptr %call6, i32 33152
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #8, !srcloc !219
  %49 = or i32 %48, 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %49) #8, !srcloc !218
  %add.ptr60 = getelementptr i8, ptr %call6, i32 41016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %49) #8, !srcloc !218
  %add.ptr61 = getelementptr i8, ptr %call6, i32 41292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 117440512) #8, !srcloc !218
  %add.ptr62 = getelementptr i8, ptr %call6, i32 41000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 -65536) #8, !srcloc !218
  %add.ptr63 = getelementptr i8, ptr %call6, i32 41004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 0) #8, !srcloc !218
  %add.ptr64 = getelementptr i8, ptr %call6, i32 40992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 0) #8, !srcloc !218
  %add.ptr65 = getelementptr i8, ptr %call6, i32 41008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 -65536) #8, !srcloc !218
  %add.ptr66 = getelementptr i8, ptr %call6, i32 41012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 0) #8, !srcloc !218
  %add.ptr67 = getelementptr i8, ptr %call6, i32 40996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 0) #8, !srcloc !218
  %add.ptr68 = getelementptr i8, ptr %call6, i32 33160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #8, !srcloc !218
  %add.ptr69 = getelementptr i8, ptr %call6, i32 33164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 -1) #8, !srcloc !218
  %50 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cfg, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %cfg, i32 0, i32 1
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %51
  %add.i = add i32 %sub.i, %53
  tail call fastcc void @mc_pcie_setup_window(ptr noundef %add.ptr14, i32 noundef 0, i32 noundef %51, i32 noundef %51, i32 noundef %add.i)
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 8
  %add.ptr.i = getelementptr i8, ptr %55, i32 32768
  %driver_data.i.i.i = getelementptr i8, ptr %1, i32 164
  %56 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i.i.i, align 4
  %windows.i = getelementptr inbounds %struct.pci_host_bridge, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %windows.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %entry1.01.i = load ptr, ptr %windows.i, align 4
  %cmp.not2.i = icmp eq ptr %entry1.01.i, %windows.i
  br i1 %cmp.not2.i, label %if.end55.cleanup_crit_edge, label %if.end55.for.body.i_crit_edge

if.end55.for.body.i_crit_edge:                    ; preds = %if.end55
  br label %for.body.i

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i160.for.body.i_crit_edge, %if.end55.for.body.i_crit_edge
  %entry1.04.i = phi ptr [ %entry1.0.i, %for.inc.i160.for.body.i_crit_edge ], [ %entry1.01.i, %if.end55.for.body.i_crit_edge ]
  %index.03.i = phi i32 [ %index.1.i, %for.inc.i160.for.body.i_crit_edge ], [ 1, %if.end55.for.body.i_crit_edge ]
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.04.i, i32 0, i32 1
  %59 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %res.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %62, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i.i)
  %cmp5.i = icmp eq i32 %and.i.i, 512
  br i1 %cmp5.i, label %if.then.i159, label %for.body.i.for.inc.i160_crit_edge

for.body.i.for.inc.i160_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i160

if.then.i159:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %60, align 4
  %offset.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.04.i, i32 0, i32 2
  %65 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset.i, align 4
  %sub.i158 = sub i32 %64, %66
  %end.i.i = getelementptr inbounds %struct.resource, ptr %60, i32 0, i32 1
  %67 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %64
  %add.i.i = add i32 %sub.i.i, %68
  tail call fastcc void @mc_pcie_setup_window(ptr noundef %add.ptr.i, i32 noundef %index.03.i, i32 noundef %64, i32 noundef %sub.i158, i32 noundef %add.i.i) #8
  %inc.i = add i32 %index.03.i, 1
  br label %for.inc.i160

for.inc.i160:                                     ; preds = %if.then.i159, %for.body.i.for.inc.i160_crit_edge
  %index.1.i = phi i32 [ %inc.i, %if.then.i159 ], [ %index.03.i, %for.body.i.for.inc.i160_crit_edge ]
  %69 = ptrtoint ptr %entry1.04.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %entry1.0.i = load ptr, ptr %entry1.04.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %windows.i
  br i1 %cmp.not.i, label %for.inc.i160.cleanup_crit_edge, label %for.inc.i160.for.body.i_crit_edge

for.inc.i160.for.body.i_crit_edge:                ; preds = %for.inc.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i160.cleanup_crit_edge:                   ; preds = %for.inc.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i160.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.end49, %do.end41, %do.end34, %if.end24.cleanup_crit_edge, %do.end23, %if.then9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %9, %if.then9 ], [ %retval.0.i153.ph, %do.end23 ], [ %call.i155, %do.end41 ], [ -6, %do.end34 ], [ -6, %do.end49 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end24.cleanup_crit_edge ], [ -6, %if.end50.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ 0, %for.inc.i160.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc_event_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mc_pcie, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %event_domain = getelementptr inbounds %struct.mc_pcie, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %event_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event_domain, align 4
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %3, i32 noundef %irq) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %6 = and i32 %5, 536870911
  %7 = lshr i32 29628416, %6
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.not = icmp eq i32 %8, 0
  br i1 %tobool.not.not, label %do.body, label %do.body11

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @mc_event_handler._rs, ptr noundef nonnull @__func__.mc_event_handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.if.end22_crit_edge, label %do.end

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwirq, align 4
  %str8 = getelementptr [28 x %struct.cause], ptr @event_cause, i32 0, i32 %10, i32 1
  %11 = ptrtoint ptr %str8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %str8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef %12) #11
  br label %if.end22

do.body11:                                        ; preds = %entry
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @mc_event_handler._rs.44, ptr noundef nonnull @__func__.mc_event_handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body11.if.end22_crit_edge, label %do.end17

do.body11.if.end22_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %14) #11
  br label %if.end22

if.end22:                                         ; preds = %do.end17, %do.body11.if.end22_crit_edge, %do.end, %do.body.if.end22_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_handle_intx(ptr nocapture noundef readonly %desc) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %dev1 = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %add.ptr2 = getelementptr i8, ptr %5, i32 33156
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !219
  %7 = shl i32 %6, 24
  %and = and i32 %7, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  %shr = lshr exact i32 %and, 24
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %status, align 4
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call5)
  %cmp23 = icmp ult i32 %call5, 4
  br i1 %cmp23, label %for.body.lr.ph, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.body.lr.ph:                                   ; preds = %if.then
  %intx_domain = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bit.024 = phi i32 [ %call5, %for.body.lr.ph ], [ %call16, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %intx_domain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intx_domain, align 8
  %call6 = call i32 @generic_handle_domain_irq(ptr noundef %10, i32 noundef %bit.024) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body:                                          ; preds = %for.body
  %call9 = call i32 @___ratelimit(ptr noundef nonnull @mc_handle_intx._rs, ptr noundef nonnull @__func__.mc_handle_intx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body.for.inc_crit_edge, label %do.end

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.92, i32 noundef %bit.024) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.body.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add = add nuw nsw i32 %bit.024, 1
  %call16 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 4, i32 noundef %add) #8
  %cmp = icmp ult i32 %call16, 4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end17_crit_edge

for.inc.if.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end17:                                         ; preds = %for.inc.if.end17_crit_edge, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_handle_msi(ptr nocapture noundef readonly %desc) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %dev1 = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %add.ptr3 = getelementptr i8, ptr %5, i32 33156
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !219
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then:                                          ; preds = %entry
  %add.ptr6 = getelementptr i8, ptr %5, i32 33172
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !219
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %status, align 4
  %num_vectors = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_vectors, align 4
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %12, i32 noundef 0) #8
  %13 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_vectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %14)
  %cmp33 = icmp ult i32 %call9, %14
  br i1 %cmp33, label %for.body.lr.ph, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.body.lr.ph:                                   ; preds = %if.then
  %dev_domain = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 5, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bit.034 = phi i32 [ %call9, %for.body.lr.ph ], [ %call22, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %dev_domain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_domain, align 8
  %call11 = call i32 @generic_handle_domain_irq(ptr noundef %16, i32 noundef %bit.034) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body:                                          ; preds = %for.body
  %call14 = call i32 @___ratelimit(ptr noundef nonnull @mc_handle_msi._rs, ptr noundef nonnull @__func__.mc_handle_msi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body.for.inc_crit_edge, label %do.end

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.93, i32 noundef %bit.034) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.body.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_vectors, align 4
  %add = add nuw i32 %bit.034, 1
  %call22 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %18, i32 noundef %add) #8
  %19 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_vectors, align 4
  %cmp = icmp ult i32 %call22, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end23_crit_edge

for.inc.if.end23_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end23:                                         ; preds = %for.inc.if.end23_crit_edge, %if.then.if.end23_crit_edge, %entry.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_handle_event(ptr noundef %desc) #2 align 64 {
entry:
  %events = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %events) #8
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr3.i = getelementptr i8, ptr %13, i32 41292
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !219
  %add.ptr4.i = getelementptr i8, ptr %13, i32 41000
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !219
  %add.ptr7.i = getelementptr i8, ptr %13, i32 41008
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #8, !srcloc !219
  %add.ptr10.i = getelementptr i8, ptr %13, i32 33156
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !219
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %chained_irq_enter.exit
  %i.08.i.i = phi i32 [ 0, %chained_irq_enter.exit ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %val.07.i.i = phi i32 [ 0, %chained_irq_enter.exit ], [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [17 x %struct.event_map], ptr @local_status_to_event, i32 0, i32 %i.08.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack.i.i = load i32, ptr %arrayidx.i.i, align 4
  %.elt5.i.i = getelementptr inbounds [2 x i32], ptr %arrayidx.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %.elt5.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack6.i.i = load i32, ptr %.elt5.i.i, align 4
  %and.i.i36.i = and i32 %.unpack.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36.i)
  %tobool.not.i.i37.i = icmp eq i32 %and.i.i36.i, 0
  %shl.i.i.i = shl nuw i32 1, %.unpack6.i.i
  %cond.i.i38.i = select i1 %tobool.not.i.i37.i, i32 0, i32 %shl.i.i.i
  %or.i.i = or i32 %cond.i.i38.i, %val.07.i.i
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 17
  br i1 %exitcond.not.i.i, label %get_events.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

get_events.exit:                                  ; preds = %for.body.i.i
  %21 = lshr i32 %14, 24
  %or.2.i.i = and i32 %21, 7
  %22 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %and.i.3.i.i = and i32 %22, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3.i.i)
  %tobool.not.i.3.i.i = icmp eq i32 %and.i.3.i.i, 0
  %cond.i.3.i.i = select i1 %tobool.not.i.3.i.i, i32 0, i32 32
  %and.i.2.i.i = and i32 %22, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2.i.i)
  %tobool.not.i.2.i.i = icmp eq i32 %and.i.2.i.i, 0
  %cond.i.2.i.i = select i1 %tobool.not.i.2.i.i, i32 0, i32 64
  %and.i.1.i.i = and i32 %22, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i.i)
  %tobool.not.i.1.i.i = icmp eq i32 %and.i.1.i.i, 0
  %cond.i.1.i.i = select i1 %tobool.not.i.1.i.i, i32 0, i32 16
  %and.i.i.i = and i32 %22, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 8
  %23 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %and.i.3.i32.i = and i32 %23, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3.i32.i)
  %tobool.not.i.3.i33.i = icmp eq i32 %and.i.3.i32.i, 0
  %cond.i.3.i34.i = select i1 %tobool.not.i.3.i33.i, i32 0, i32 512
  %and.i.2.i28.i = and i32 %23, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2.i28.i)
  %tobool.not.i.2.i29.i = icmp eq i32 %and.i.2.i28.i, 0
  %cond.i.2.i30.i = select i1 %tobool.not.i.2.i29.i, i32 0, i32 1024
  %and.i.1.i24.i = and i32 %23, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i24.i)
  %tobool.not.i.1.i25.i = icmp eq i32 %and.i.1.i24.i, 0
  %cond.i.1.i26.i = select i1 %tobool.not.i.1.i25.i, i32 0, i32 256
  %and.i.i21.i = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21.i)
  %tobool.not.i.i22.i = icmp eq i32 %and.i.i21.i, 0
  %cond.i.i23.i = select i1 %tobool.not.i.i22.i, i32 0, i32 128
  %or.1.i27.i = or i32 %cond.i.i.i, %or.2.i.i
  %or.2.i31.i = or i32 %or.1.i27.i, %cond.i.1.i.i
  %or.3.i35.i = or i32 %or.2.i31.i, %cond.i.2.i.i
  %or.1.i.i = or i32 %or.3.i35.i, %cond.i.3.i.i
  %or.2.i20.i = or i32 %or.1.i.i, %cond.i.i23.i
  %or.3.i.i = or i32 %or.2.i20.i, %cond.i.1.i26.i
  %or6.i = or i32 %or.3.i.i, %cond.i.2.i30.i
  %or9.i = or i32 %or6.i, %cond.i.3.i34.i
  %or12.i = or i32 %or9.i, %or.i.i
  %24 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or12.i, ptr %events, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %events, i32 noundef 28, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %call3)
  %cmp17 = icmp ult i32 %call3, 28
  br i1 %cmp17, label %for.body.lr.ph, label %get_events.exit.for.end_crit_edge

get_events.exit.for.end_crit_edge:                ; preds = %get_events.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %get_events.exit
  %event_domain = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.018 = phi i32 [ %call3, %for.body.lr.ph ], [ %call5, %for.body.for.body_crit_edge ]
  %25 = ptrtoint ptr %event_domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %event_domain, align 4
  %call4 = call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %bit.018) #8
  %add = add nuw nsw i32 %bit.018, 1
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %events, i32 noundef 28, i32 noundef %add) #8
  %cmp = icmp ult i32 %call5, 28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %get_events.exit.for.end_crit_edge
  %27 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i14 = icmp eq ptr %28, null
  br i1 %tobool.not.i14, label %if.else.i15, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i15:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i15, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %30, %if.else.i15 ], [ %28, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %events) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mc_pcie_setup_window(ptr noundef %bridge_base_addr, i32 noundef %index, i32 noundef %axi_addr, i32 noundef %pci_addr, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i.i = icmp eq i32 %size, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %size, i1 true) #8, !range !220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp6 = icmp eq i32 %index, 0
  %. = select i1 %cmp6, i32 16777216, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  %mul = shl i32 %index, 5
  %add.ptr = getelementptr i8, ptr %bridge_base_addr, i32 %mul
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %.) #8, !srcloc !218
  %sub.i.op.i = shl nuw nsw i32 %0, 1
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 62
  %sub.i.op.i.op.op = add nsw i32 %sub.i.op.i.op, -2
  %shl = select i1 %tobool.not.i.i, i32 -4, i32 %sub.i.op.i.op.op
  %or = or i32 %shl, %axi_addr
  %or9 = or i32 %or, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %1 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %1) #8, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #8, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %pci_addr)
  %add.ptr29 = getelementptr i8, ptr %add.ptr, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %2) #8, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  tail call void @arm_heavy_mb() #8
  %add.ptr37 = getelementptr i8, ptr %add.ptr, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 0) #8, !srcloc !218
  %add.ptr38 = getelementptr i8, ptr %bridge_base_addr, i32 1536
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #8, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  %4 = or i32 %3, 1241513984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %4) #8, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %add.ptr49 = getelementptr i8, ptr %bridge_base_addr, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #8, !srcloc !218
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_disable_unprepare(ptr noundef %clk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %clk) #8
  tail call void @clk_unprepare(ptr noundef %clk) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc_pcie_event_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @mc_event_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #8
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_ack_event_irq(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr [28 x %struct.anon.79], ptr @event_descs, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %offset = getelementptr [28 x %struct.anon.79], ptr @event_descs, i32 0, i32 %3, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %9
  %mask4 = getelementptr [28 x %struct.anon.79], ptr @event_descs, i32 0, i32 %3, i32 2
  %10 = ptrtoint ptr %mask4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask4, align 4
  %enb_mask = getelementptr [28 x %struct.anon.79], ptr @event_descs, i32 0, i32 %3, i32 4
  %12 = ptrtoint ptr %enb_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enb_mask, align 4
  %or = or i32 %13, %11
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %14) #8, !srcloc !218
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_mask_event_irq(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr [28 x %struct.anon.79], ptr @event_descs, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %mask_offset = getelementptr [28 x %struct.anon.79], ptr @event_descs, i32 0, i32 %3, i32 6
  %8 = ptrtoint ptr %mask_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask_offset, align 4
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %9
  %mask4 = getelementptr [28 x %struct.anon.79], ptr @event_descs, i32 0, i32 %3, i32 2
  %10 = ptrtoint ptr %mask4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask4, align 4
  %12 = and i32 %3, 1073741823
  %13 = add nsw i32 %12, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %13)
  %tobool.not = icmp ult i32 %13, 25
  %shl = shl i32 %11, 16
  %and = and i32 %shl, 458752
  %mask.0 = select i1 %tobool.not, i32 %11, i32 %and
  %14 = add nsw i32 %12, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %14)
  %tobool7.not = icmp ult i32 %14, 17
  %neg = sext i1 %tobool7.not to i32
  %mask.1 = xor i32 %mask.0, %neg
  %lock = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !219
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %or = or i32 %mask.1, %16
  %and15 = and i32 %mask.1, %16
  %val.0 = select i1 %tobool7.not, i32 %and15, i32 %or
  %17 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %17) #8, !srcloc !218
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_unmask_event_irq(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr [28 x %struct.anon.79], ptr @event_descs, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %mask_offset = getelementptr [28 x %struct.anon.79], ptr @event_descs, i32 0, i32 %3, i32 6
  %8 = ptrtoint ptr %mask_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask_offset, align 4
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %9
  %mask4 = getelementptr [28 x %struct.anon.79], ptr @event_descs, i32 0, i32 %3, i32 2
  %10 = ptrtoint ptr %mask4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask4, align 4
  %12 = and i32 %3, 1073741823
  %13 = add nsw i32 %12, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %13)
  %tobool.not = icmp ult i32 %13, 25
  %shl = shl i32 %11, 16
  %spec.select = select i1 %tobool.not, i32 %11, i32 %shl
  %14 = add nsw i32 %12, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %14)
  %tobool7.not = icmp ult i32 %14, 17
  %not.tobool7.not = xor i1 %tobool7.not, true
  %neg = sext i1 %not.tobool7.not to i32
  %mask.1 = xor i32 %spec.select, %neg
  %and = and i32 %mask.1, 458752
  %mask.2 = select i1 %tobool.not, i32 %mask.1, i32 %and
  %lock = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !219
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %and20 = and i32 %mask.2, %16
  %or = or i32 %mask.2, %16
  %val.0 = select i1 %tobool7.not, i32 %or, i32 %and20
  %17 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %17) #8, !srcloc !218
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc_pcie_intx_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @mc_intx_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #8
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_ack_intx_irq(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %add = add i32 %5, 24
  %shl = shl nuw i32 1, %add
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr1 = getelementptr i8, ptr %3, i32 33156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %6) #8, !srcloc !218
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_mask_intx_irq(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %add = add i32 %5, 24
  %shl = shl nuw i32 1, %add
  %lock = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %add.ptr2 = getelementptr i8, ptr %3, i32 33152
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !219
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %8) #8, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_unmask_intx_irq(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %add = add i32 %5, 24
  %shl = shl nuw i32 1, %add
  %lock = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %add.ptr2 = getelementptr i8, ptr %3, i32 33152
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !219
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %or = or i32 %7, %shl
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %8) #8, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc_irq_msi_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %msi1 = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @mutex_lock_nested(ptr noundef %msi1, i32 noundef 0) #8
  %used = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 5, i32 5
  %num_vectors = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vectors, align 4
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %used, i32 noundef %5) #8
  %6 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_vectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp.not = icmp ult i32 %call, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef %call, ptr noundef %used) #8
  %8 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %virq, i32 noundef %call, ptr noundef nonnull @mc_msi_bottom_irq_chip, ptr noundef %9, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #8
  %add.ptr7 = getelementptr i8, ptr %3, i32 33152
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !219
  %11 = or i32 %10, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %11) #8, !srcloc !218
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -28, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %msi1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_irq_msi_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #8
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %msi2 = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %msi2, i32 noundef 0) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %used = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 5, i32 5
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %6, -1
  %and.i16 = and i32 %5, %neg.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i16, ptr %arrayidx.i, align 4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.39, i32 noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  tail call void @mutex_unlock(ptr noundef %msi2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_msi_bottom_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr1 = getelementptr i8, ptr %3, i32 33172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %6) #8, !srcloc !218
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr4 = getelementptr i8, ptr %3, i32 33156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16) #8, !srcloc !218
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mc_msi_set_affinity(ptr nocapture noundef readnone %irq_data, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %vector_phy = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %vector_phy to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vector_phy, align 8
  %conv = trunc i64 %3 to i32
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %msg, align 4
  %5 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq, align 4
  %9 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc_compose_msi_msg.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc_compose_msi_msg, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mc_pcie, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc_compose_msi_msg.__UNIQUE_ID_ddebug236, ptr noundef %12, ptr noundef nonnull @.str.38, i32 noundef %14, i32 noundef %16, i32 noundef %18) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !105, !107, !109, !110, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !189, !190, !191, !192, !193, !195, !196, !197, !198, !199, !201, !203, !205}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = !{ptr @__initcall__kmod_pcie_microchip_host__237_1129_mc_pcie_driver_init6, !1, !"__initcall__kmod_pcie_microchip_host__237_1129_mc_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1129, i32 1}
!2 = !{ptr @__UNIQUE_ID_file238, !3, !"__UNIQUE_ID_file238", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1130, i32 1}
!4 = !{ptr @__UNIQUE_ID_license239, !3, !"__UNIQUE_ID_license239", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1131, i32 1}
!7 = !{ptr @__UNIQUE_ID_author241, !8, !"__UNIQUE_ID_author241", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1132, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1123, i32 11}
!11 = !{ptr @mc_pcie_driver, !12, !"mc_pcie_driver", i1 false, i1 false}
!12 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1120, i32 31}
!13 = !{ptr @mc_pcie_of_match, !14, !"mc_pcie_of_match", i1 false, i1 false}
!14 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1110, i32 34}
!15 = !{ptr @mc_ecam_ops, !16, !"mc_ecam_ops", i1 false, i1 false}
!16 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1101, i32 34}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1002, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mc_platform_init._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mc_platform_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1017, i32 3}
!27 = !{ptr @mc_platform_init._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mc_platform_init._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1028, i32 4}
!31 = !{ptr @mc_platform_init._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mc_platform_init._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1035, i32 4}
!35 = !{ptr @mc_platform_init._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mc_platform_init._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 1043, i32 3}
!39 = !{ptr @mc_platform_init._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mc_platform_init._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @poss_clks, !42, !"poss_clks", i1 false, i1 false}
!42 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 383, i32 13}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 893, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mc_pcie_init_irq_domains._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @mc_pcie_init_irq_domains._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 900, i32 3}
!50 = !{ptr @mc_pcie_init_irq_domains._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mc_pcie_init_irq_domains._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 909, i32 3}
!54 = !{ptr @mc_pcie_init_irq_domains._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mc_pcie_init_irq_domains._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @mc_pcie_init_irq_domains.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 916, i32 2}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @event_domain_ops, !60, !"event_domain_ops", i1 false, i1 false}
!60 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 841, i32 36}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 826, i32 10}
!63 = !{ptr @mc_event_irq_chip, !64, !"mc_event_irq_chip", i1 false, i1 false}
!64 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 825, i32 24}
!65 = !{ptr @event_descs, !66, !"event_descs", i1 false, i1 false}
!66 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 352, i32 3}
!67 = !{ptr @intx_domain_ops, !68, !"intx_domain_ops", i1 false, i1 false}
!68 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 644, i32 36}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 629, i32 10}
!71 = !{ptr @mc_intx_irq_chip, !72, !"mc_intx_irq_chip", i1 false, i1 false}
!72 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 628, i32 24}
!73 = !{ptr @mc_allocate_msi_domains.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 543, i32 2}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 548, i32 3}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mc_allocate_msi_domains._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @mc_allocate_msi_domains._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 555, i32 3}
!83 = !{ptr @mc_allocate_msi_domains._entry.32, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @mc_allocate_msi_domains._entry_ptr.34, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @msi_domain_ops, !86, !"msi_domain_ops", i1 false, i1 false}
!86 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 519, i32 36}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 464, i32 10}
!89 = !{ptr @mc_msi_bottom_irq_chip, !90, !"mc_msi_bottom_irq_chip", i1 false, i1 false}
!90 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 463, i32 24}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 453, i32 2}
!93 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @mc_compose_msi_msg.__UNIQUE_ID_ddebug236, !92, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 514, i32 3}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mc_irq_msi_domain_free._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @mc_irq_msi_domain_free._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @mc_msi_domain_info, !102, !"mc_msi_domain_info", i1 false, i1 false}
!102 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 531, i32 31}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 525, i32 10}
!105 = !{ptr @mc_msi_irq_chip, !106, !"mc_msi_irq_chip", i1 false, i1 false}
!106 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 524, i32 24}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 725, i32 3}
!109 = !{ptr @mc_event_handler._rs, !108, !"_rs", i1 false, i1 false}
!110 = !{ptr @__func__.mc_event_handler, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mc_event_handler._entry, !108, !"_entry", i1 false, i1 false}
!113 = !{ptr @mc_event_handler._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @mc_event_handler._rs.44, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 727, i32 3}
!116 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mc_event_handler._entry.45, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @mc_event_handler._entry_ptr.47, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 280, i32 2}
!121 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 281, i32 2}
!124 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 282, i32 2}
!127 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 283, i32 2}
!130 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 284, i32 2}
!133 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 286, i32 2}
!136 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 285, i32 2}
!139 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 287, i32 2}
!142 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 288, i32 2}
!145 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 290, i32 2}
!148 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 289, i32 2}
!151 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 291, i32 2}
!154 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 292, i32 2}
!157 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 293, i32 2}
!160 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 294, i32 2}
!163 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 295, i32 2}
!166 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 296, i32 2}
!169 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 297, i32 2}
!172 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 298, i32 2}
!175 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 299, i32 2}
!178 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 300, i32 2}
!181 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 301, i32 2}
!184 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @event_cause, !186, !"event_cause", i1 false, i1 false}
!186 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 279, i32 27}
!187 = !{ptr @mc_handle_intx._rs, !188, !"_rs", i1 false, i1 false}
!188 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 580, i32 5}
!189 = !{ptr @__func__.mc_handle_intx, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.92, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @mc_handle_intx._entry, !188, !"_entry", i1 false, i1 false}
!192 = !{ptr @mc_handle_intx._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @mc_handle_msi._rs, !194, !"_rs", i1 false, i1 false}
!194 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 423, i32 5}
!195 = !{ptr @__func__.mc_handle_msi, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @mc_handle_msi._entry, !194, !"_entry", i1 false, i1 false}
!198 = !{ptr @mc_handle_msi._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!199 = distinct !{null, !200, !"pcie_event_to_event", i1 false, i1 false}
!200 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 304, i32 25}
!201 = distinct !{null, !202, !"sec_error_to_event", i1 false, i1 false}
!202 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 310, i32 25}
!203 = distinct !{null, !204, !"ded_error_to_event", i1 false, i1 false}
!204 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 317, i32 25}
!205 = !{ptr @local_status_to_event, !206, !"local_status_to_event", i1 false, i1 false}
!206 = !{!"../drivers/pci/controller/pcie-microchip-host.c", i32 324, i32 25}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"min_enum_size", i32 4}
!209 = !{i32 8, !"branch-target-enforcement", i32 0}
!210 = !{i32 8, !"sign-return-address", i32 0}
!211 = !{i32 8, !"sign-return-address-all", i32 0}
!212 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!213 = !{i32 7, !"uwtable", i32 1}
!214 = !{i32 7, !"frame-pointer", i32 2}
!215 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!216 = !{i64 3692469}
!217 = !{i64 3692269}
!218 = !{i64 3692889}
!219 = !{i64 3693307}
!220 = !{i32 0, i32 33}
!221 = !{i64 2154735600}
!222 = !{i64 2154736086}
!223 = !{i64 2154736569}
!224 = !{i64 2154737051}
!225 = !{i64 2154737534}
!226 = !{i64 2154738258}
!227 = !{i64 2154738494}
!228 = !{i64 2154738904}
!229 = !{i64 2148753101, i64 2148753106, i64 2148753119, i64 2148753163, i64 2148753197, i64 2148753218}
