; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-apple.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-apple.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_ecam_ops = type { i32, %struct.pci_ops, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_config_window = type { %struct.resource, %struct.resource, i32, ptr, ptr, %union.anon.78, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.78 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.77, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.77 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.apple_pcie = type { %struct.mutex, ptr, ptr, ptr, ptr, %struct.list_head, %struct.completion, %struct.irq_fwspec, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.apple_pcie_port = type { ptr, ptr, ptr, ptr, %struct.list_head, [2 x i32], i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }

@__initcall__kmod_pcie_apple__241_836_apple_pcie_driver_init6 = internal global ptr @apple_pcie_driver_init, section ".initcall6.init", align 4
@apple_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @apple_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @apple_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_apple_pcie_driver_exit = internal global ptr @apple_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file242 = internal constant [50 x i8] c"pcie_apple.file=drivers/pci/controller/pcie-apple\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [26 x i8] c"pcie_apple.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcie-apple\00", [21 x i8] zeroinitializer }, align 32
@apple_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apple,pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @apple_pcie_cfg_ecam_ops }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@apple_pcie_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @apple_pcie_bus_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/pci/controller/pcie-apple.c\00", [60 x i8] zeroinitializer }, align 32
@apple_pcie_add_device.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 0, i8 -87, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcie_apple\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"apple_pcie_add_device\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"added to bus %s, index %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iommu-map\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iommu-map-mask\00", [17 x i8] zeroinitializer }, align 32
@apple_pcie_add_device.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.7, i8 0, i8 -83, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mapping RID%x to SID%x (index %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@apple_pcie_release_device.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str.1, ptr @.str.9, i8 0, i8 -77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"apple_pcie_release_device\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Released %x (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@apple_pcie_cfg_ecam_ops = internal constant { %struct.pci_ecam_ops, [36 x i8] } { %struct.pci_ecam_ops { i32 0, %struct.pci_ops { ptr null, ptr null, ptr @pci_ecam_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, ptr @apple_pcie_init }, [36 x i8] zeroinitializer }, align 32
@apple_pcie_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pcie->lock\00", [20 x i8] zeroinitializer }, align 32
@apple_pcie_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.1, i32 789, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Port %pOF setup fail: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apple_pcie_init\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@apple_pcie_init._entry_ptr = internal global ptr @apple_pcie_init._entry, section ".printk_index", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PERST#\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@apple_pcie_setup_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.1, i32 563, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"port %pOF ready wait timeout\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"apple_pcie_setup_port\00", [42 x i8] zeroinitializer }, align 32
@apple_pcie_setup_port._entry_ptr = internal global ptr @apple_pcie_setup_port._entry, section ".printk_index", align 4
@apple_pcie_setup_port.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.19, ptr @.str.1, ptr @.str.20, i8 0, i8 -111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%pOF: %d RID/SID mapping entries\0A\00", [62 x i8] zeroinitializer }, align 32
@apple_pcie_setup_port._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.1, i32 594, ptr @.str.23, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%pOF link didn't come up\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@apple_pcie_setup_port._entry_ptr.24 = internal global ptr @apple_pcie_setup_port._entry.21, section ".printk_index", align 4
@apple_port_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apple_port_irq_domain_alloc, ptr @apple_port_irq_domain_free, ptr null, ptr null, ptr @irq_domain_translate_onecell, ptr null }, [52 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@apple_port_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.25, ptr null, ptr null, ptr null, ptr null, ptr @apple_port_irq_ack, ptr @apple_port_irq_mask, ptr null, ptr @apple_port_irq_unmask, ptr null, ptr null, ptr null, ptr @apple_port_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCIe\00", [27 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Link up\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Link down\00", [22 x i8] zeroinitializer }, align 32
@apple_pcie_port_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.apple_pcie_port_irq = private unnamed_addr constant [20 x i8] c"apple_pcie_port_irq\00", align 1
@apple_pcie_port_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.apple_pcie_port_irq, ptr @.str.1, i32 416, ptr @.str.31, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Link up on %pOF\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@apple_pcie_port_irq._entry_ptr = internal global ptr @apple_pcie_port_irq._entry, section ".printk_index", align 4
@apple_pcie_port_irq._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apple_pcie_port_irq._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.apple_pcie_port_irq, ptr @.str.1, i32 421, ptr @.str.31, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Link down on %pOF\0A\00", [45 x i8] zeroinitializer }, align 32
@apple_pcie_port_irq._entry_ptr.35 = internal global ptr @apple_pcie_port_irq._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msi-ranges\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"#interrupt-cells\00", [47 x i8] zeroinitializer }, align 32
@apple_msi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.1, i32 625, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to find parent domain\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apple_msi_init\00", [17 x i8] zeroinitializer }, align 32
@apple_msi_init._entry_ptr = internal global ptr @apple_msi_init._entry, section ".printk_index", align 4
@apple_msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apple_msi_domain_alloc, ptr @apple_msi_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apple_msi_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.1, i32 632, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@apple_msi_init._entry_ptr.42 = internal global ptr @apple_msi_init._entry.40, section ".printk_index", align 4
@apple_msi_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 15, ptr null, ptr @apple_msi_top_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@apple_msi_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.1, i32 640, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create MSI domain\0A\00", [35 x i8] zeroinitializer }, align 32
@apple_msi_init._entry_ptr.45 = internal global ptr @apple_msi_init._entry.43, section ".printk_index", align 4
@apple_msi_bottom_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.46, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr @irq_chip_set_type_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apple_msi_compose_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@apple_msi_top_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.47, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apple_msi_top_irq_mask, ptr null, ptr @apple_msi_top_irq_unmask, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr @irq_chip_set_type_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCIe MSI\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 14]
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"apple_pcie_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 828, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 831, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"apple_pcie_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 822, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"apple_pcie_nb\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 759, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 659, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 676, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 679, i32 49 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 680, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 692, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 716, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [24 x i8] c"apple_pcie_cfg_ecam_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 813, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 777, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 789, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 519, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 520, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 528, i32 39 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 563, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 581, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 594, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [26 x i8] c"apple_port_irq_domain_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 350, i32 36 }
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"apple_port_irqchip\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 302, i32 24 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 303, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 87, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 436, i32 23 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 437, i32 25 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 415, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 420, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 606, i32 55 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 607, i32 7 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 625, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [21 x i8] c"apple_msi_domain_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 250, i32 36 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 632, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"apple_msi_info\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 255, i32 31 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 640, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [22 x i8] c"apple_msi_bottom_chip\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 194, i32 24 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 195, i32 12 }
@___asan_gen_.226 = private unnamed_addr constant [19 x i8] c"apple_msi_top_chip\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 178, i32 24 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.230 = private constant [39 x i8] c"../drivers/pci/controller/pcie-apple.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 179, i32 12 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_apple_pcie_driver_exit, ptr @__initcall__kmod_pcie_apple__241_836_apple_pcie_driver_init6, ptr @apple_msi_init._entry, ptr @apple_msi_init._entry.40, ptr @apple_msi_init._entry.43, ptr @apple_msi_init._entry_ptr, ptr @apple_msi_init._entry_ptr.42, ptr @apple_msi_init._entry_ptr.45, ptr @apple_pcie_driver_exit, ptr @apple_pcie_init._entry, ptr @apple_pcie_init._entry_ptr, ptr @apple_pcie_port_irq._entry, ptr @apple_pcie_port_irq._entry.33, ptr @apple_pcie_port_irq._entry_ptr, ptr @apple_pcie_port_irq._entry_ptr.35, ptr @apple_pcie_setup_port._entry, ptr @apple_pcie_setup_port._entry.21, ptr @apple_pcie_setup_port._entry_ptr, ptr @apple_pcie_setup_port._entry_ptr.24, ptr @apple_pcie_driver, ptr @.str, ptr @apple_pcie_of_match, ptr @apple_pcie_nb, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @apple_pcie_cfg_ecam_ops, ptr @apple_pcie_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @apple_port_irq_domain_ops, ptr @apple_port_irqchip, ptr @.str.25, ptr @init_completion.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @apple_pcie_port_irq._rs, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @apple_pcie_port_irq._rs.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @apple_msi_domain_ops, ptr @.str.41, ptr @apple_msi_info, ptr @.str.44, ptr @apple_msi_bottom_chip, ptr @.str.46, ptr @apple_msi_top_chip, ptr @.str.47], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_cfg_ecam_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_setup_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_setup_port._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_port_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_port_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_port_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_port_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_port_irq._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_pcie_port_irq._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_msi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_msi_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_msi_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_msi_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_msi_bottom_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_msi_top_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @apple_pcie_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apple_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @apple_pcie_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register_notifier(ptr noundef nonnull @pci_bus_type, ptr noundef nonnull @apple_pcie_nb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_host_common_probe(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @pci_bus_type, ptr noundef nonnull @apple_pcie_nb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_common_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_pcie_bus_notifier(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -136
  %sysdata.i = getelementptr i8, ptr %data, i32 -120
  %0 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata.i, align 8
  %priv.i = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %tobool.not7.i.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not7.i.i, label %entry.do.end.i_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

while.body.i.i:                                   ; preds = %pci_upstream_bridge.exit.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %dev.addr.08.i.i = phi ptr [ %19, %pci_upstream_bridge.exit.i.i.while.body.i.i_crit_edge ], [ %add.ptr, %entry.while.body.i.i_crit_edge ]
  %pcie_cap.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %pcie_flags_reg.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i, i32 0, i32 25
  %6 = ptrtoint ptr %pcie_flags_reg.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pcie_flags_reg.i.i.i.i, align 2
  %8 = and i16 %7, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %8)
  %cmp.i.i = icmp eq i16 %8, 64
  br i1 %cmp.i.i, label %lor.lhs.false.critedge.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %is_virtfn.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i, i32 0, i32 49
  %9 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 5)
  %bf.load.i.i.i.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %10 = and i40 %bf.load.i.i.i.i, 65536
  %tobool.not.i.i.i.i = icmp eq i40 %10, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.pci_physfn.exit.i.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_physfn.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i, i32 0, i32 66
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  br label %pci_physfn.exit.i.i.i

pci_physfn.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge
  %dev.addr.0.i.i.i.i = phi ptr [ %13, %if.then.i.i.i.i ], [ %dev.addr.08.i.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge ]
  %bus.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i.i, align 8
  %parent.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i.i.i, align 8
  %tobool.not.i5.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i5.i.i.i, label %pci_physfn.exit.i.i.i.do.end.i_crit_edge, label %pci_upstream_bridge.exit.i.i

pci_physfn.exit.i.i.i.do.end.i_crit_edge:         ; preds = %pci_physfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

pci_upstream_bridge.exit.i.i:                     ; preds = %pci_physfn.exit.i.i.i
  %self.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %self.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %self.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %pci_upstream_bridge.exit.i.i.do.end.i_crit_edge, label %pci_upstream_bridge.exit.i.i.while.body.i.i_crit_edge

pci_upstream_bridge.exit.i.i.while.body.i.i_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

pci_upstream_bridge.exit.i.i.do.end.i_crit_edge:  ; preds = %pci_upstream_bridge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %pci_upstream_bridge.exit.i.i.do.end.i_crit_edge, %pci_physfn.exit.i.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 659, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

lor.lhs.false.critedge.i:                         ; preds = %land.lhs.true.i.i
  %cmp.i = icmp eq ptr %dev.addr.08.i.i, %add.ptr
  br i1 %cmp.i, label %lor.lhs.false.critedge.i.cleanup_crit_edge, label %if.end23.i

lor.lhs.false.critedge.i.cleanup_crit_edge:       ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23.i:                                       ; preds = %lor.lhs.false.critedge.i
  %ports.i = getelementptr inbounds %struct.apple_pcie, ptr %3, i32 0, i32 5
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end23.i
  %.pn.in.i = phi ptr [ %ports.i, %if.end23.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp27.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp27.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %idx.i = getelementptr i8, ptr %.pn.i, i32 20
  %21 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx.i, align 4
  %23 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %24, 3
  %and.i = and i32 %shr.i, 31
  %cmp30.i = icmp eq i32 %22, %and.i
  br i1 %cmp30.i, label %apple_pcie_get_port.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

apple_pcie_get_port.exit:                         ; preds = %for.body.i
  %port.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  %tobool.not = icmp eq ptr %port.0.le.i, null
  br i1 %tobool.not, label %apple_pcie_get_port.exit.cleanup_crit_edge, label %if.end

apple_pcie_get_port.exit.cleanup_crit_edge:       ; preds = %apple_pcie_get_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %apple_pcie_get_port.exit
  %25 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call1 = tail call fastcc i32 @apple_pcie_add_device(ptr noundef nonnull %port.0.le.i, ptr noundef nonnull %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %sw.bb.cleanup_crit_edge, label %if.then3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 1, %call1
  %or.i = or i32 %sub.i, 32768
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @apple_pcie_release_device(ptr noundef nonnull %port.0.le.i, ptr noundef nonnull %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %if.then3, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %apple_pcie_get_port.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %lor.lhs.false.critedge.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ %or.i, %if.then3 ], [ 0, %apple_pcie_get_port.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %sw.bb6 ], [ 0, %do.end.i ], [ 0, %lor.lhs.false.critedge.i.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @apple_pcie_add_device(ptr noundef %port, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %sid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sid) #8
  %0 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sid, align 4, !annotation !129
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %number, align 4
  %conv1 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv1, 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %5 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devfn, align 4
  %or = or i32 %shl, %6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apple_pcie_add_device.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@apple_pcie_add_device, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !130

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %self, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.pci_name.exit_crit_edge

if.then.pci_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.pci_name.exit_crit_edge ]
  %idx7 = getelementptr inbounds %struct.apple_pcie_port, ptr %port, i32 0, i32 7
  %15 = ptrtoint ptr %idx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apple_pcie_add_device.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i, i32 noundef %16) #8
  br label %do.end

do.end:                                           ; preds = %pci_name.exit, %entry
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 4
  %dev8 = getelementptr inbounds %struct.apple_pcie, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev8, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call9 = call i32 @of_map_id(ptr noundef %22, i32 noundef %or, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef nonnull %sid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 4
  call void @mutex_lock_nested(ptr noundef %24, i32 noundef 0) #8
  %sid_map = getelementptr inbounds %struct.apple_pcie_port, ptr %port, i32 0, i32 5
  %sid_map_sz = getelementptr inbounds %struct.apple_pcie_port, ptr %port, i32 0, i32 6
  %25 = ptrtoint ptr %sid_map_sz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sid_map_sz, align 4
  %call14 = call i32 @bitmap_find_free_region(ptr noundef %sid_map, i32 noundef %26, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp = icmp sgt i32 %call14, -1
  br i1 %cmp, label %if.then16, label %if.end12.if.end40_crit_edge

if.end12.if.end40_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sid, align 4
  %shl17 = shl i32 %28, 16
  %or18 = or i32 %or, %shl17
  %or19 = or i32 %or18, -2147483648
  %29 = call i32 @llvm.bswap.i32(i32 %or19) #8
  %base.i = getelementptr inbounds %struct.apple_pcie_port, ptr %port, i32 0, i32 2
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %mul.i = shl i32 %call14, 2
  %add.i = add i32 %mul.i, 2088
  %add.ptr.i = getelementptr i8, ptr %31, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %29) #8, !srcloc !131
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %33, i32 %add.i
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apple_pcie_add_device.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@apple_pcie_add_device, %if.end40)) #8
          to label %if.then35 [label %if.end40], !srcloc !130

if.then35:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %35 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sid, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apple_pcie_add_device.__UNIQUE_ID_ddebug239, ptr noundef %dev36, ptr noundef nonnull @.str.7, i32 noundef %or, i32 noundef %36, i32 noundef %call14) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.then16, %if.end12.if.end40_crit_edge
  %cond = phi i32 [ 0, %if.then35 ], [ -28, %if.end12.if.end40_crit_edge ], [ 0, %if.then16 ]
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port, align 4
  call void @mutex_unlock(ptr noundef %38) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end40 ], [ %call9, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apple_pcie_release_device(ptr noundef %port, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv1, 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %4 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn, align 4
  %or = or i32 %shl, %5
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  tail call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #8
  %sid_map = getelementptr inbounds %struct.apple_pcie_port, ptr %port, i32 0, i32 5
  %sid_map_sz = getelementptr inbounds %struct.apple_pcie_port, ptr %port, i32 0, i32 6
  %8 = ptrtoint ptr %sid_map_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sid_map_sz, align 4
  %call = tail call i32 @_find_next_bit_be(ptr noundef %sid_map, i32 noundef %9, i32 noundef 0) #8
  %10 = ptrtoint ptr %sid_map_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sid_map_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %11)
  %cmp45 = icmp slt i32 %call, %11
  br i1 %cmp45, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %base = getelementptr inbounds %struct.apple_pcie_port, ptr %port, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.046 = phi i32 [ %call, %for.body.lr.ph ], [ %call21, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %mul = shl i32 %idx.046, 2
  %add = add i32 %mul, 2088
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !132
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and = and i32 %15, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %or)
  %cmp5 = icmp eq i32 %and, %or
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !131
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %19, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !132
  tail call void @bitmap_release_region(ptr noundef %sid_map, i32 noundef %idx.046, i32 noundef 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apple_pcie_release_device.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@apple_pcie_release_device, %for.end)) #8
          to label %if.then15 [label %for.end], !srcloc !130

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apple_pcie_release_device.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %15, i32 noundef %idx.046) #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %21 = ptrtoint ptr %sid_map_sz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sid_map_sz, align 4
  %add20 = add nsw i32 %idx.046, 1
  %call21 = tail call i32 @_find_next_bit_be(ptr noundef %sid_map, i32 noundef %22, i32 noundef %add20) #8
  %23 = ptrtoint ptr %sid_map_sz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sid_map_sz, align 4
  %cmp = icmp slt i32 %call21, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then15, %if.then, %entry.for.end_crit_edge
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port, align 4
  tail call void @mutex_unlock(ptr noundef %26) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_map_id(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ecam_map_bus(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_pcie_init(ptr nocapture noundef %cfg) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.pci_config_window, ptr %cfg, i32 0, i32 6
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 248, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %dev1 = getelementptr inbounds %struct.apple_pcie, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %dev1, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @apple_pcie_init.__key) #8
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 1) #8
  %base = getelementptr inbounds %struct.apple_pcie, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.pci_config_window, ptr %cfg, i32 0, i32 3
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %priv, align 4
  %ports = getelementptr inbounds %struct.apple_pcie, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ports, ptr %ports, align 4
  %prev.i = getelementptr inbounds %struct.apple_pcie, ptr %call.i, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ports, ptr %prev.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @of_get_next_child(ptr noundef %9, ptr noundef null) #8
  %cmp.not48 = icmp eq ptr %call9, null
  br i1 %cmp.not48, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %of_port.049 = phi ptr [ %call19, %for.inc.for.body_crit_edge ], [ %call9, %if.end8.for.body_crit_edge ]
  %call10 = tail call fastcc i32 @apple_pcie_setup_port(ptr noundef nonnull %call.i, ptr noundef nonnull %of_port.049)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.inc, label %do.end15

do.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.11, ptr noundef nonnull %of_port.049, i32 noundef %call10) #11
  tail call void @of_node_put(ptr noundef nonnull %of_port.049) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call19 = tail call ptr @of_get_next_child(ptr noundef %13, ptr noundef nonnull %of_port.049) #8
  %cmp.not = icmp eq ptr %call19, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  %call.i46 = tail call ptr @dev_fwnode(ptr noundef %15) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %16 = call ptr @memset(ptr %args.i, i32 0, i32 72)
  %tobool.not.i.i.i = icmp eq ptr %call.i46, null
  %cmp.i.i.i = icmp ugt ptr %call.i46, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %.thread.i, label %is_of_node.exit.i

is_of_node.exit.i:                                ; preds = %for.end
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %call.i46, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %18, @of_fwnode_ops
  %add.ptr.i = getelementptr i8, ptr %call.i46, i32 -12
  %spec.select.i = select i1 %cmp.i.i, ptr %add.ptr.i, ptr null
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %spec.select.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %is_of_node.exit88.critedge.i, label %is_of_node.exit.i.apple_msi_init.exit_crit_edge

is_of_node.exit.i.apple_msi_init.exit_crit_edge:  ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apple_msi_init.exit

.thread.i:                                        ; preds = %for.end
  %call.i92.i = call i32 @__of_parse_phandle_with_args(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool.not93.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool.not93.i, label %.thread.i.is_of_node.exit88.thread.i_crit_edge, label %.thread.i.apple_msi_init.exit_crit_edge

.thread.i.apple_msi_init.exit_crit_edge:          ; preds = %.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apple_msi_init.exit

.thread.i.is_of_node.exit88.thread.i_crit_edge:   ; preds = %.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_of_node.exit88.thread.i

is_of_node.exit88.critedge.i:                     ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %cmp.i86.i = icmp eq ptr %20, @of_fwnode_ops
  %spec.select98.i = select i1 %cmp.i86.i, ptr %add.ptr.i, ptr null
  br label %is_of_node.exit88.thread.i

is_of_node.exit88.thread.i:                       ; preds = %is_of_node.exit88.critedge.i, %.thread.i.is_of_node.exit88.thread.i_crit_edge
  %21 = phi ptr [ null, %.thread.i.is_of_node.exit88.thread.i_crit_edge ], [ %spec.select98.i, %is_of_node.exit88.critedge.i ]
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 1
  %22 = ptrtoint ptr %args_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %args_count.i, align 4
  %add.i = add i32 %23, 1
  %nvecs.i = getelementptr inbounds %struct.apple_pcie, ptr %call.i, i32 0, i32 8
  %call14.i = call i32 @of_property_read_u32_index(ptr noundef %21, ptr noundef nonnull @.str.36, i32 noundef %add.i, ptr noundef %nvecs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %is_of_node.exit88.thread.i.apple_msi_init.exit_crit_edge

is_of_node.exit88.thread.i.apple_msi_init.exit_crit_edge: ; preds = %is_of_node.exit88.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apple_msi_init.exit

if.end17.i:                                       ; preds = %is_of_node.exit88.thread.i
  %24 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args.i, align 4
  %args18.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %26 = ptrtoint ptr %args_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %args_count.i, align 4
  %fwspec.i = getelementptr inbounds %struct.apple_pcie, ptr %call.i, i32 0, i32 7
  call void @of_phandle_args_to_fwspec(ptr noundef %25, ptr noundef %args18.i, i32 noundef %27, ptr noundef %fwspec.i) #8
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  %30 = ptrtoint ptr %nvecs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nvecs.i, align 4
  %call22.i = call ptr @devm_bitmap_zalloc(ptr noundef %29, i32 noundef %31, i32 noundef 3264) #8
  %bitmap.i = getelementptr inbounds %struct.apple_pcie, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call22.i, ptr %bitmap.i, align 4
  %tobool24.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool24.not.i, label %if.end17.i.apple_msi_init.exit_crit_edge, label %if.end26.i

if.end17.i.apple_msi_init.exit_crit_edge:         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apple_msi_init.exit

if.end26.i:                                       ; preds = %if.end17.i
  %call28.i = call ptr @irq_find_matching_fwspec(ptr noundef %fwspec.i, i32 noundef 1) #8
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %do.end.i, label %if.end32.i

do.end.i:                                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.38) #11
  br label %apple_msi_init.exit

if.end32.i:                                       ; preds = %if.end26.i
  %35 = ptrtoint ptr %nvecs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nvecs.i, align 4
  %call34.i = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %call28.i, i32 noundef 0, i32 noundef %36, ptr noundef %call.i46, ptr noundef nonnull @apple_msi_domain_ops, ptr noundef nonnull %call.i) #8
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %do.end39.i, label %if.end41.i

do.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.41) #11
  br label %apple_msi_init.exit

if.end41.i:                                       ; preds = %if.end32.i
  call void @irq_domain_update_bus_token(ptr noundef nonnull %call34.i, i32 noundef 5) #8
  %call42.i = call ptr @pci_msi_create_irq_domain(ptr noundef %call.i46, ptr noundef nonnull @apple_msi_info, ptr noundef nonnull %call34.i) #8
  %domain.i = getelementptr inbounds %struct.apple_pcie, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call42.i, ptr %domain.i, align 4
  %tobool44.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool44.not.i, label %do.end48.i, label %if.end41.i.apple_msi_init.exit_crit_edge

if.end41.i.apple_msi_init.exit_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apple_msi_init.exit

do.end48.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.44) #11
  call void @irq_domain_remove(ptr noundef nonnull %call34.i) #8
  br label %apple_msi_init.exit

apple_msi_init.exit:                              ; preds = %do.end48.i, %if.end41.i.apple_msi_init.exit_crit_edge, %do.end39.i, %do.end.i, %if.end17.i.apple_msi_init.exit_crit_edge, %is_of_node.exit88.thread.i.apple_msi_init.exit_crit_edge, %.thread.i.apple_msi_init.exit_crit_edge, %is_of_node.exit.i.apple_msi_init.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %do.end48.i ], [ -12, %do.end39.i ], [ -6, %do.end.i ], [ %call.i.i, %is_of_node.exit.i.apple_msi_init.exit_crit_edge ], [ %call14.i, %is_of_node.exit88.thread.i.apple_msi_init.exit_crit_edge ], [ -12, %if.end17.i.apple_msi_init.exit_crit_edge ], [ 0, %if.end41.i.apple_msi_init.exit_crit_edge ], [ %call.i92.i, %.thread.i.apple_msi_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %cleanup

cleanup:                                          ; preds = %apple_msi_init.exit, %do.end15, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %call10, %do.end15 ], [ %retval.0.i, %apple_msi_init.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @apple_pcie_setup_port(ptr noundef %pcie, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.apple_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !129
  %call = tail call ptr @gpiod_get_from_of_node(ptr noundef %np, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 3, ptr noundef nonnull @.str.16) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 40, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef nonnull %idx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %shr = lshr i32 %7, 11
  %idx11 = getelementptr inbounds %struct.apple_pcie_port, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %idx11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %idx11, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pcie, ptr %call.i, align 4
  %np13 = getelementptr inbounds %struct.apple_pcie_port, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %np13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %np, ptr %np13, align 4
  %add = add nuw nsw i32 %shr, 2
  %call15 = call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef %add) #8
  %base = getelementptr inbounds %struct.apple_pcie_port, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %base, align 4
  %cmp.i207 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %add.ptr23 = getelementptr i8, ptr %call15, i32 2048
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !132
  %14 = or i32 %13, 16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %14) #8, !srcloc !131
  call void @gpiod_set_value(ptr noundef %call, i32 noundef 1) #8
  %call.i208 = call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i208, 50000000
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 473) #8
  %base.i = getelementptr inbounds %struct.apple_pcie, ptr %pcie, i32 0, i32 2
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr238.i = getelementptr i8, ptr %16, i32 40
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr238.i) #8, !srcloc !132
  %18 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not240.i = icmp eq i32 %18, 0
  br i1 %tobool.not240.i, label %if.end21.land.lhs.true.i_crit_edge, label %if.end21.if.end30.i_crit_edge

if.end21.if.end30.i_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.end21.land.lhs.true.i_crit_edge:               ; preds = %if.end21
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then23.i.land.lhs.true.i_crit_edge, %if.end21.land.lhs.true.i_crit_edge
  %call12.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 40
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !132
  %22 = and i32 %21, 268435456
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.then23.i.land.lhs.true.i_crit_edge, label %if.then23.i.if.end30.i_crit_edge

if.then23.i.if.end30.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then23.i.land.lhs.true.i_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %24, i32 40
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #8, !srcloc !132
  %26 = and i32 %25, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool27.not.i = icmp eq i32 %26, 0
  br i1 %tobool27.not.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.if.end30.i_crit_edge

for.end.i.if.end30.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.i:                                       ; preds = %for.end.i.if.end30.i_crit_edge, %if.then23.i.if.end30.i_crit_edge, %if.end21.if.end30.i_crit_edge
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %29 = ptrtoint ptr %idx11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx11, align 4
  %mul.i = shl i32 %30, 14
  %add32.i = add i32 %mul.i, 540676
  %add.ptr33.i = getelementptr i8, ptr %28, i32 %add32.i
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #8, !srcloc !132
  %32 = or i32 %31, 8388608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %32) #8, !srcloc !131
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add37.i = add i32 %mul.i, 540672
  %add.ptr38.i = getelementptr i8, ptr %34, i32 %add37.i
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #8, !srcloc !132
  %36 = or i32 %35, 16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %36) #8, !srcloc !131
  %call42.i = call i64 @ktime_get() #8
  %add.i215.i = add i64 %call42.i, 50000000
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 482) #8
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr62243.i = getelementptr i8, ptr %38, i32 %add37.i
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62243.i) #8, !srcloc !132
  %40 = and i32 %39, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool66.not245.i = icmp eq i32 %40, 0
  br i1 %tobool66.not245.i, label %if.end30.i.land.lhs.true70.i_crit_edge, label %if.end30.i.if.end96.i_crit_edge

if.end30.i.if.end96.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96.i

if.end30.i.land.lhs.true70.i_crit_edge:           ; preds = %if.end30.i
  br label %land.lhs.true70.i

land.lhs.true70.i:                                ; preds = %if.then85.i.land.lhs.true70.i_crit_edge, %if.end30.i.land.lhs.true70.i_crit_edge
  %call71.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call71.i, i64 %add.i215.i)
  %cmp3.i217.i = icmp sgt i64 %call71.i, %add.i215.i
  br i1 %cmp3.i217.i, label %for.end89.i, label %if.then85.i

if.then85.i:                                      ; preds = %land.lhs.true70.i
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %43 = ptrtoint ptr %idx11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idx11, align 4
  %mul60.i = shl i32 %44, 14
  %add61.i = add i32 %mul60.i, 540672
  %add.ptr62.i = getelementptr i8, ptr %42, i32 %add61.i
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.i) #8, !srcloc !132
  %46 = and i32 %45, 67108864
  %tobool66.not.i = icmp eq i32 %46, 0
  br i1 %tobool66.not.i, label %if.then85.i.land.lhs.true70.i_crit_edge, label %if.then85.i.if.end96.i_crit_edge

if.then85.i.if.end96.i_crit_edge:                 ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96.i

if.then85.i.land.lhs.true70.i_crit_edge:          ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true70.i

for.end89.i:                                      ; preds = %land.lhs.true70.i
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %49 = ptrtoint ptr %idx11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %idx11, align 4
  %mul78.i = shl i32 %50, 14
  %add79.i = add i32 %mul78.i, 540672
  %add.ptr80.i = getelementptr i8, ptr %48, i32 %add79.i
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80.i) #8, !srcloc !132
  %52 = and i32 %51, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool92.not.i = icmp eq i32 %52, 0
  br i1 %tobool92.not.i, label %for.end89.i.cleanup_crit_edge, label %for.end89.i.if.end96.i_crit_edge

for.end89.i.if.end96.i_crit_edge:                 ; preds = %for.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96.i

for.end89.i.cleanup_crit_edge:                    ; preds = %for.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end96.i:                                       ; preds = %for.end89.i.if.end96.i_crit_edge, %if.then85.i.if.end96.i_crit_edge, %if.end30.i.if.end96.i_crit_edge
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %55 = ptrtoint ptr %idx11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %idx11, align 4
  %mul99.i = shl i32 %56, 14
  %add100.i = add i32 %mul99.i, 540672
  %add.ptr101.i = getelementptr i8, ptr %54, i32 %add100.i
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.i) #8, !srcloc !132
  %58 = or i32 %57, 33554432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i, i32 %58) #8, !srcloc !131
  %call105.i = call i64 @ktime_get() #8
  %add.i221.i = add i64 %call105.i, 50000000
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 489) #8
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %add.ptr125249.i = getelementptr i8, ptr %60, i32 %add100.i
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125249.i) #8, !srcloc !132
  %62 = and i32 %61, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool129.not251.i = icmp eq i32 %62, 0
  br i1 %tobool129.not251.i, label %if.end96.i.land.lhs.true133.i_crit_edge, label %if.end96.i.if.end26_crit_edge

if.end96.i.if.end26_crit_edge:                    ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end96.i.land.lhs.true133.i_crit_edge:          ; preds = %if.end96.i
  br label %land.lhs.true133.i

land.lhs.true133.i:                               ; preds = %if.then148.i.land.lhs.true133.i_crit_edge, %if.end96.i.land.lhs.true133.i_crit_edge
  %call134.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call134.i, i64 %add.i221.i)
  %cmp3.i223.i = icmp sgt i64 %call134.i, %add.i221.i
  br i1 %cmp3.i223.i, label %for.end152.i, label %if.then148.i

if.then148.i:                                     ; preds = %land.lhs.true133.i
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %65 = ptrtoint ptr %idx11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %idx11, align 4
  %mul123.i = shl i32 %66, 14
  %add124.i = add i32 %mul123.i, 540672
  %add.ptr125.i = getelementptr i8, ptr %64, i32 %add124.i
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125.i) #8, !srcloc !132
  %68 = and i32 %67, 134217728
  %tobool129.not.i = icmp eq i32 %68, 0
  br i1 %tobool129.not.i, label %if.then148.i.land.lhs.true133.i_crit_edge, label %if.then148.i.if.end26_crit_edge

if.then148.i.if.end26_crit_edge:                  ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then148.i.land.lhs.true133.i_crit_edge:        ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true133.i

for.end152.i:                                     ; preds = %land.lhs.true133.i
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 4
  %71 = ptrtoint ptr %idx11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %idx11, align 4
  %mul141.i = shl i32 %72, 14
  %add142.i = add i32 %mul141.i, 540672
  %add.ptr143.i = getelementptr i8, ptr %70, i32 %add142.i
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143.i) #8, !srcloc !132
  %74 = and i32 %73, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool155.not.i = icmp eq i32 %74, 0
  br i1 %tobool155.not.i, label %for.end152.i.cleanup_crit_edge, label %for.end152.i.if.end26_crit_edge

for.end152.i.if.end26_crit_edge:                  ; preds = %for.end152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.end152.i.cleanup_crit_edge:                   ; preds = %for.end152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %for.end152.i.if.end26_crit_edge, %if.then148.i.if.end26_crit_edge, %if.end96.i.if.end26_crit_edge
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 4
  %77 = ptrtoint ptr %idx11 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %idx11, align 4
  %mul162.i = shl i32 %78, 14
  %add163.i = add i32 %mul162.i, 540676
  %add.ptr164.i = getelementptr i8, ptr %76, i32 %add163.i
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164.i) #8, !srcloc !132
  %80 = and i32 %79, -8388609
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164.i, i32 %80) #8, !srcloc !131
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i, align 4
  %add168.i = add i32 %mul162.i, 540672
  %add.ptr169.i = getelementptr i8, ptr %82, i32 %add168.i
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169.i) #8, !srcloc !132
  %84 = or i32 %83, 393216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.i, i32 %84) #8, !srcloc !131
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %add.ptr171.i = getelementptr i8, ptr %86, i32 2064
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171.i) #8, !srcloc !132
  %88 = or i32 %87, 16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171.i, i32 %88) #8, !srcloc !131
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %add.ptr28 = getelementptr i8, ptr %86, i32 2068
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #8, !srcloc !132
  %90 = or i32 %89, 16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %90) #8, !srcloc !131
  call void @gpiod_set_value(ptr noundef %call, i32 noundef 0) #8
  call void @msleep(i32 noundef 100) #8
  %call29 = call i64 @ktime_get() #8
  %add.i = add i64 %call29, 250000000
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 561) #8
  %add.ptr41240 = getelementptr i8, ptr %86, i32 2052
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41240) #8, !srcloc !132
  %92 = call i32 @llvm.bswap.i32(i32 %91)
  %and241 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool44.not242 = icmp eq i32 %and241, 0
  br i1 %tobool44.not242, label %if.end26.land.lhs.true_crit_edge, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end26.land.lhs.true_crit_edge:                 ; preds = %if.end26
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then59.land.lhs.true_crit_edge, %if.end26.land.lhs.true_crit_edge
  %call48 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call48, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call48, %add.i
  br i1 %cmp3.i, label %if.then51, label %if.then59

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base, align 4
  %add.ptr54 = getelementptr i8, ptr %94, i32 2052
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #8, !srcloc !132
  %96 = call i32 @llvm.bswap.i32(i32 %95)
  br label %for.end

if.then59:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr41 = getelementptr i8, ptr %98, i32 2052
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #8, !srcloc !132
  %100 = call i32 @llvm.bswap.i32(i32 %99)
  %and = and i32 %100, 1
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.then59.land.lhs.true_crit_edge, label %if.then59.for.end_crit_edge

if.then59.for.end_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then59.land.lhs.true_crit_edge:                ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %if.then59.for.end_crit_edge, %if.then51, %if.end26.for.end_crit_edge
  %stat.0 = phi i32 [ %96, %if.then51 ], [ %92, %if.end26.for.end_crit_edge ], [ %100, %if.then59.for.end_crit_edge ]
  %and64 = and i32 %stat.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.end70, label %if.end72

do.end70:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.18, ptr noundef %np) #11
  br label %cleanup

if.end72:                                         ; preds = %for.end
  %103 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base, align 4
  %add.ptr74 = getelementptr i8, ptr %104, i32 2064
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #8, !srcloc !132
  %106 = and i32 %105, -65537
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %106) #8, !srcloc !131
  %add.ptr76 = getelementptr i8, ptr %104, i32 2048
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #8, !srcloc !132
  %108 = and i32 %107, -65537
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %108) #8, !srcloc !131
  %109 = ptrtoint ptr %np13 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %np13, align 4
  %fwnode1.i = getelementptr inbounds %struct.device_node, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.apple_pcie, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i, align 4
  %call.i215 = call ptr @dev_fwnode(ptr noundef %114) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i215, null
  %cmp.i.i.i = icmp ugt ptr %call.i215, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end72.is_of_node.exit.thread.i_crit_edge, label %is_of_node.exit.i

if.end72.is_of_node.exit.thread.i_crit_edge:      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_of_node.exit.thread.i

is_of_node.exit.i:                                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %call.i215, i32 0, i32 1
  %115 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %116, @of_fwnode_ops
  %add.ptr.i216 = getelementptr i8, ptr %call.i215, i32 -12
  %spec.select.i = select i1 %cmp.i.i, ptr %add.ptr.i216, ptr null
  br label %is_of_node.exit.thread.i

is_of_node.exit.thread.i:                         ; preds = %is_of_node.exit.i, %if.end72.is_of_node.exit.thread.i_crit_edge
  %117 = phi ptr [ null, %if.end72.is_of_node.exit.thread.i_crit_edge ], [ %spec.select.i, %is_of_node.exit.i ]
  %118 = ptrtoint ptr %idx11 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %idx11, align 4
  %call4.i = call i32 @irq_of_parse_and_map(ptr noundef %117, i32 noundef %119) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i218 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i218, label %is_of_node.exit.thread.i.cleanup_crit_edge, label %if.end.i

is_of_node.exit.thread.i.cleanup_crit_edge:       ; preds = %is_of_node.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %is_of_node.exit.thread.i
  %call.i.i = call ptr @__irq_domain_add(ptr noundef %fwnode1.i, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @apple_port_irq_domain_ops, ptr noundef nonnull %call.i) #8
  %domain.i = getelementptr inbounds %struct.apple_pcie_port, ptr %call.i, i32 0, i32 3
  %120 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call.i.i, ptr %domain.i, align 4
  %tobool7.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i, label %if.end.i.cleanup_crit_edge, label %if.end9.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %121 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base, align 4
  %add.ptr10.i = getelementptr i8, ptr %122, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 -1) #8, !srcloc !131
  %123 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base, align 4
  %add.ptr12.i = getelementptr i8, ptr %124, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 -1) #8, !srcloc !131
  call void @irq_set_chained_handler_and_data(i32 noundef %call4.i, ptr noundef nonnull @apple_port_irq_handler, ptr noundef nonnull %call.i) #8
  %125 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base, align 4
  %add.ptr14.i = getelementptr i8, ptr %126, i32 360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 15794175) #8, !srcloc !131
  %127 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base, align 4
  %add.ptr16.i = getelementptr i8, ptr %128, i32 296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #8, !srcloc !131
  %129 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call.i, align 4
  %nvecs.i = getelementptr inbounds %struct.apple_pcie, ptr %130, i32 0, i32 8
  %131 = ptrtoint ptr %nvecs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %nvecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i.i53.i = icmp eq i32 %132, 0
  %133 = call i32 @llvm.ctlz.i32(i32 %132, i1 true) #8, !range !133
  %sub.i.op.i.i = shl nuw nsw i32 %133, 4
  %sub.i.op.i.i.op.op = xor i32 %sub.i.op.i.i, 497
  %or.i221 = select i1 %tobool.not.i.i53.i, i32 -15, i32 %sub.i.op.i.i.op.op
  %134 = call i32 @llvm.bswap.i32(i32 %or.i221) #8
  %135 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base, align 4
  %add.ptr34.i = getelementptr i8, ptr %136, i32 292
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %134) #8, !srcloc !131
  br label %for.body

for.body:                                         ; preds = %if.end86.for.body_crit_edge, %if.end9.i
  %i.0243 = phi i32 [ 0, %if.end9.i ], [ %inc, %if.end86.for.body_crit_edge ]
  %137 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base, align 4
  %mul.i224 = shl i32 %i.0243, 2
  %add.i225 = add nuw nsw i32 %mul.i224, 2088
  %add.ptr.i226 = getelementptr i8, ptr %138, i32 %add.i225
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 497879808) #8, !srcloc !131
  %139 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %140, i32 %add.i225
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 497879808, i32 %141)
  %cmp84.not = icmp eq i32 %141, 497879808
  br i1 %cmp84.not, label %if.end86, label %for.body.do.body89_crit_edge

for.body.do.body89_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

if.end86:                                         ; preds = %for.body
  %142 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base, align 4
  %add.ptr.i230 = getelementptr i8, ptr %143, i32 %add.i225
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230, i32 0) #8, !srcloc !131
  %144 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base, align 4
  %add.ptr4.i231 = getelementptr i8, ptr %145, i32 %add.i225
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i231) #8, !srcloc !132
  %inc = add nuw nsw i32 %i.0243, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %if.end86.do.body89_crit_edge, label %if.end86.for.body_crit_edge

if.end86.for.body_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end86.do.body89_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

do.body89:                                        ; preds = %if.end86.do.body89_crit_edge, %for.body.do.body89_crit_edge
  %i.0.lcssa = phi i32 [ 64, %if.end86.do.body89_crit_edge ], [ %i.0243, %for.body.do.body89_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apple_pcie_setup_port.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@apple_pcie_setup_port, %do.end100)) #8
          to label %if.then96 [label %do.end100], !srcloc !130

if.then96:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apple_pcie_setup_port.__UNIQUE_ID_ddebug237, ptr noundef %148, ptr noundef nonnull @.str.20, ptr noundef %np, i32 noundef %i.0.lcssa) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %do.body89
  %sid_map_sz = getelementptr inbounds %struct.apple_pcie_port, ptr %call.i, i32 0, i32 6
  %149 = ptrtoint ptr %sid_map_sz to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %i.0.lcssa, ptr %sid_map_sz, align 4
  %entry101 = getelementptr inbounds %struct.apple_pcie_port, ptr %call.i, i32 0, i32 4
  %ports = getelementptr inbounds %struct.apple_pcie, ptr %pcie, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.apple_pcie, ptr %pcie, i32 0, i32 5, i32 1
  %150 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %prev.i, align 4
  %call.i.i232 = call zeroext i1 @__list_add_valid(ptr noundef %entry101, ptr noundef %151, ptr noundef %ports) #8
  br i1 %call.i.i232, label %if.end.i.i, label %do.end100.list_add_tail.exit_crit_edge

do.end100.list_add_tail.exit_crit_edge:           ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %entry101, ptr %prev.i, align 4
  %153 = ptrtoint ptr %entry101 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %ports, ptr %entry101, align 4
  %prev3.i.i = getelementptr inbounds %struct.apple_pcie_port, ptr %call.i, i32 0, i32 4, i32 1
  %154 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %151, ptr %prev3.i.i, align 4
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %entry101, ptr %151, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end100.list_add_tail.exit_crit_edge
  %event = getelementptr inbounds %struct.apple_pcie, ptr %pcie, i32 0, i32 6
  %156 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %event, align 4
  %wait.i = getelementptr inbounds %struct.apple_pcie, ptr %pcie, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #8
  call fastcc void @apple_pcie_port_register_irqs(ptr noundef nonnull %call.i)
  %157 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base, align 4
  %add.ptr134 = getelementptr i8, ptr %158, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 16777216) #8, !srcloc !131
  %call136 = call i32 @wait_for_completion_timeout(ptr noundef %event, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %do.end141, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end141:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %160, ptr noundef nonnull @.str.22, ptr noundef %np) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end141, %list_add_tail.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %is_of_node.exit.thread.i.cleanup_crit_edge, %do.end70, %for.end152.i.cleanup_crit_edge, %for.end89.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.then18, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %12, %if.then18 ], [ -110, %do.end70 ], [ -12, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ 0, %do.end141 ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ -110, %for.end.i.cleanup_crit_edge ], [ -110, %for.end89.i.cleanup_crit_edge ], [ -110, %for.end152.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -6, %is_of_node.exit.thread.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_from_of_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apple_pcie_port_register_irqs(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %np = getelementptr inbounds %struct.apple_pcie_port, ptr %port, i32 0, i32 1
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %domain = getelementptr inbounds %struct.apple_pcie_port, ptr %port, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec) #8
  %0 = getelementptr inbounds i8, ptr %fwspec, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %2 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np, align 4
  %fwnode1 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %fwspec to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fwnode1, ptr %fwspec, align 4
  %5 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %param_count, align 4
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %param, align 4
  %7 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain, align 4
  %call.i = call i32 @__irq_domain_alloc_irqs(ptr noundef %8, i32 noundef -1, i32 noundef 1, i32 noundef -1, ptr noundef nonnull %fwspec, i1 noundef zeroext false, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end24, !prof !134

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end24:                                         ; preds = %entry
  %call.i1 = call i32 @request_threaded_irq(i32 noundef %call.i, ptr noundef nonnull @apple_pcie_port_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool28.not = icmp eq i32 %call.i1, 0
  br i1 %tobool28.not, label %if.end24.cleanup_crit_edge, label %if.end24.cleanup.sink.split_crit_edge, !prof !135

if.end24.cleanup.sink.split_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end24.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 454, %entry.cleanup.sink.split_crit_edge ], [ 459, %if.end24.cleanup.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end24.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec) #8
  %9 = getelementptr inbounds i8, ptr %fwspec, i32 12
  %10 = call ptr @memset(ptr %9, i32 0, i32 60)
  %11 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %np, align 4
  %fwnode1.1 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %fwspec to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fwnode1.1, ptr %fwspec, align 4
  %14 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %param_count, align 4
  %15 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 14, ptr %param, align 4
  %16 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain, align 4
  %call.i.1 = call i32 @__irq_domain_alloc_irqs(ptr noundef %17, i32 noundef -1, i32 noundef 1, i32 noundef -1, ptr noundef nonnull %fwspec, i1 noundef zeroext false, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1, label %cleanup.cleanup.1.sink.split_crit_edge, label %if.end24.1, !prof !134

cleanup.cleanup.1.sink.split_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1.sink.split

if.end24.1:                                       ; preds = %cleanup
  %call.i1.1 = call i32 @request_threaded_irq(i32 noundef %call.i.1, ptr noundef nonnull @apple_pcie_port_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.1)
  %tobool28.not.1 = icmp eq i32 %call.i1.1, 0
  br i1 %tobool28.not.1, label %if.end24.1.cleanup.1_crit_edge, label %if.end24.1.cleanup.1.sink.split_crit_edge, !prof !135

if.end24.1.cleanup.1.sink.split_crit_edge:        ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1.sink.split

if.end24.1.cleanup.1_crit_edge:                   ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

cleanup.1.sink.split:                             ; preds = %if.end24.1.cleanup.1.sink.split_crit_edge, %cleanup.cleanup.1.sink.split_crit_edge
  %.sink4 = phi i32 [ 459, %if.end24.1.cleanup.1.sink.split_crit_edge ], [ 454, %cleanup.cleanup.1.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef %.sink4, i32 noundef 9, ptr noundef null) #8
  br label %cleanup.1

cleanup.1:                                        ; preds = %cleanup.1.sink.split, %if.end24.1.cleanup.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apple_port_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #8
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
  %base = getelementptr inbounds %struct.apple_pcie_port, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 256
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !132
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %stat, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %stat, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call3)
  %cmp17 = icmp slt i32 %call3, 32
  br i1 %cmp17, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.apple_pcie_port, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ %call3, %for.body.lr.ph ], [ %call5, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %call4 = call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %i.018) #8
  %add = add nsw i32 %i.018, 1
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %stat, i32 noundef 32, i32 noundef %add) #8
  %cmp = icmp slt i32 %call5, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %19 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i14 = icmp eq ptr %20, null
  br i1 %tobool.not.i14, label %if.else.i15, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i15:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i15, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %22, %if.else.i15 ], [ %20, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_port_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp16.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %args, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  %add = add i32 %3, %i.017
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %tobool.i = icmp ult i32 %add, 4
  %spec.select = select i1 %tobool.i, ptr @handle_level_irq, ptr @handle_edge_irq
  %spec.select15 = select i1 %tobool.i, i32 4, i32 1
  %add1 = add i32 %i.017, %virq
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add1, i32 noundef %add, ptr noundef nonnull @apple_port_irqchip, ptr noundef %1, ptr noundef nonnull %spec.select, ptr noundef null, ptr noundef null) #8
  %call6 = tail call i32 @irq_set_irq_type(i32 noundef %add1, i32 noundef %spec.select15) #8
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apple_port_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp6.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add i32 %i.07, %virq
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %add) #8
  tail call void @__irq_set_handler(i32 noundef %add, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  tail call void @irq_domain_reset_irq_data(ptr noundef %call) #8
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_translate_onecell(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apple_port_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %tobool.i = icmp ult i32 %1, 4
  br i1 %tobool.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %shl = shl nuw i32 1, %1
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.apple_pcie_port, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !131
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apple_port_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
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
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.apple_pcie_port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !131
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apple_port_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
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
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.apple_pcie_port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !131
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apple_port_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %tobool.i = icmp ult i32 %1, 4
  %and = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %xor5 = xor i1 %tobool, %tobool.i
  br i1 %xor5, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i = and i32 %5, -16
  store i32 %and.i, ptr %3, align 4
  %and1.i = and i32 %type, 15
  %6 = load ptr, ptr %common.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %or.i = or i32 %8, %and1.i
  store i32 %or.i, ptr %6, align 4
  %9 = load ptr, ptr %common.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %or6.i = or i32 %11, 33554432
  store i32 %or6.i, ptr %9, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_pcie_port_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.apple_pcie_port, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %1, i32 noundef %irq) #8
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 12, label %do.body
    i32 14, label %do.body8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @apple_pcie_port_irq._rs, ptr noundef nonnull @__func__.apple_pcie_port_irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.apple_pcie, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %np = getelementptr inbounds %struct.apple_pcie_port, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %np, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.30, ptr noundef %10) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %event = getelementptr inbounds %struct.apple_pcie, ptr %12, i32 0, i32 6
  tail call void @complete_all(ptr noundef %event) #8
  br label %cleanup

do.body8:                                         ; preds = %entry
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @apple_pcie_port_irq._rs.32, ptr noundef nonnull @__func__.apple_pcie_port_irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body8.cleanup_crit_edge, label %do.end14

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %dev16 = getelementptr inbounds %struct.apple_pcie, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev16, align 4
  %np17 = getelementptr inbounds %struct.apple_pcie_port, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %np17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %np17, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.34, ptr noundef %18) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.body8.cleanup_crit_edge, %do.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.body8.cleanup_crit_edge ], [ 1, %do.end14 ], [ 1, %do.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phandle_args_to_fwspec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_bitmap_zalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_msi_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec) #8
  %fwspec1 = getelementptr inbounds %struct.apple_pcie, ptr %1, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %fwspec, ptr %fwspec1, i32 72)
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %bitmap = getelementptr inbounds %struct.apple_pcie, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bitmap, align 4
  %nvecs = getelementptr inbounds %struct.apple_pcie, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nvecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i62 = add i32 %nr_irqs, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %sub.i62, i1 true) #8, !range !133
  %add.i = sub nuw nsw i32 32, %7
  %cond20 = select i1 %cmp.i, i32 %add.i, i32 0
  %call21 = tail call i32 @bitmap_find_free_region(ptr noundef %4, i32 noundef %6, i32 noundef %cond20) #8
  tail call void @mutex_unlock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp23 = icmp slt i32 %call21, 0
  br i1 %cmp23, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add25 = add i32 %9, %call21
  store i32 %add25, ptr %arrayidx, align 4
  %call26 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef nonnull %fwspec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp2963.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp2963.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add31 = add i32 %i.064, %virq
  %add32 = add i32 %i.064, %call21
  %10 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_data, align 4
  %call34 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %add31, i32 noundef %add32, ptr noundef nonnull @apple_msi_bottom_chip, ptr noundef %11) #8
  %inc = add nuw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ %call26, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apple_msi_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #8
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %bitmap = getelementptr inbounds %struct.apple_pcie, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bitmap, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i32 = add i32 %nr_irqs, -1
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i32, i1 true) #8, !range !133
  %add.i = sub nuw nsw i32 32, %6
  %cond20 = select i1 %cmp.i, i32 %add.i, i32 0
  tail call void @bitmap_release_region(ptr noundef %3, i32 noundef %5, i32 noundef %cond20) #8
  tail call void @mutex_unlock(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @apple_msi_compose_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -4096, ptr %msg, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %5 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apple_msi_top_irq_mask(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_mask_irq(ptr noundef %d) #8
  tail call void @irq_chip_mask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apple_msi_top_irq_unmask(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_unmask_irq(ptr noundef %d) #8
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !26, !28, !29, !30, !32, !34, !36, !37, !39, !40, !41, !42, !43, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !67, !69, !71, !72, !74, !76, !78, !80, !81, !82, !83, !84, !85, !86, !88, !89, !90, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !114, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_pcie_apple__241_836_apple_pcie_driver_init6, !1, !"__initcall__kmod_pcie_apple__241_836_apple_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-apple.c", i32 836, i32 1}
!2 = !{ptr @__exitcall_apple_pcie_driver_exit, !1, !"__exitcall_apple_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file242, !4, !"__UNIQUE_ID_file242", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/pcie-apple.c", i32 838, i32 1}
!5 = !{ptr @__UNIQUE_ID_license243, !4, !"__UNIQUE_ID_license243", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pcie-apple.c", i32 831, i32 13}
!8 = !{ptr @apple_pcie_driver, !9, !"apple_pcie_driver", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/pcie-apple.c", i32 828, i32 31}
!10 = !{ptr @apple_pcie_nb, !11, !"apple_pcie_nb", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pcie-apple.c", i32 759, i32 30}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/pcie-apple.c", i32 659, i32 6}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pcie-apple.c", i32 676, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @apple_pcie_add_device.__UNIQUE_ID_ddebug238, !15, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pci/controller/pcie-apple.c", i32 679, i32 49}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/controller/pcie-apple.c", i32 680, i32 4}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/controller/pcie-apple.c", i32 692, i32 3}
!25 = !{ptr @apple_pcie_add_device.__UNIQUE_ID_ddebug239, !24, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pcie-apple.c", i32 716, i32 4}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @apple_pcie_release_device.__UNIQUE_ID_ddebug240, !27, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!30 = !{ptr @apple_pcie_of_match, !31, !"apple_pcie_of_match", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/pcie-apple.c", i32 822, i32 34}
!32 = !{ptr @apple_pcie_cfg_ecam_ops, !33, !"apple_pcie_cfg_ecam_ops", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/pcie-apple.c", i32 813, i32 34}
!34 = !{ptr @apple_pcie_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/pcie-apple.c", i32 777, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pci/controller/pcie-apple.c", i32 789, i32 4}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @apple_pcie_init._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @apple_pcie_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/pcie-apple.c", i32 519, i32 37}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/pcie-apple.c", i32 520, i32 27}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/controller/pcie-apple.c", i32 528, i32 39}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/pcie-apple.c", i32 563, i32 3}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @apple_pcie_setup_port._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @apple_pcie_setup_port._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pci/controller/pcie-apple.c", i32 581, i32 2}
!57 = !{ptr @apple_pcie_setup_port.__UNIQUE_ID_ddebug237, !56, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/pcie-apple.c", i32 594, i32 3}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @apple_pcie_setup_port._entry.21, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @apple_pcie_setup_port._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @apple_port_irq_domain_ops, !64, !"apple_port_irq_domain_ops", i1 false, i1 false}
!64 = !{!"../drivers/pci/controller/pcie-apple.c", i32 350, i32 36}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pci/controller/pcie-apple.c", i32 303, i32 11}
!67 = !{ptr @apple_port_irqchip, !68, !"apple_port_irqchip", i1 false, i1 false}
!68 = !{!"../drivers/pci/controller/pcie-apple.c", i32 302, i32 24}
!69 = !{ptr @init_completion.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../include/linux/completion.h", i32 87, i32 2}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/pcie-apple.c", i32 436, i32 23}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/controller/pcie-apple.c", i32 437, i32 25}
!76 = distinct !{null, !77, !"port_irqs", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/pcie-apple.c", i32 435, i32 4}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/pcie-apple.c", i32 415, i32 3}
!80 = !{ptr @apple_pcie_port_irq._rs, !79, !"_rs", i1 false, i1 false}
!81 = !{ptr @__func__.apple_pcie_port_irq, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @apple_pcie_port_irq._entry, !79, !"_entry", i1 false, i1 false}
!85 = !{ptr @apple_pcie_port_irq._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @apple_pcie_port_irq._rs.32, !87, !"_rs", i1 false, i1 false}
!87 = !{!"../drivers/pci/controller/pcie-apple.c", i32 420, i32 3}
!88 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @apple_pcie_port_irq._entry.33, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @apple_pcie_port_irq._entry_ptr.35, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/pcie-apple.c", i32 606, i32 55}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pci/controller/pcie-apple.c", i32 607, i32 7}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pci/controller/pcie-apple.c", i32 625, i32 3}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @apple_msi_init._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @apple_msi_init._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/controller/pcie-apple.c", i32 632, i32 3}
!102 = !{ptr @apple_msi_init._entry.40, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @apple_msi_init._entry_ptr.42, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pci/controller/pcie-apple.c", i32 640, i32 3}
!106 = !{ptr @apple_msi_init._entry.43, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @apple_msi_init._entry_ptr.45, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @apple_msi_domain_ops, !109, !"apple_msi_domain_ops", i1 false, i1 false}
!109 = !{!"../drivers/pci/controller/pcie-apple.c", i32 250, i32 36}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/pcie-apple.c", i32 195, i32 12}
!112 = !{ptr @apple_msi_bottom_chip, !113, !"apple_msi_bottom_chip", i1 false, i1 false}
!113 = !{!"../drivers/pci/controller/pcie-apple.c", i32 194, i32 24}
!114 = !{ptr @apple_msi_info, !115, !"apple_msi_info", i1 false, i1 false}
!115 = !{!"../drivers/pci/controller/pcie-apple.c", i32 255, i32 31}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pci/controller/pcie-apple.c", i32 179, i32 12}
!118 = !{ptr @apple_msi_top_chip, !119, !"apple_msi_top_chip", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/pcie-apple.c", i32 178, i32 24}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{i64 2148187951, i64 2148187956, i64 2148187969, i64 2148188013, i64 2148188047, i64 2148188068}
!131 = !{i64 3034336}
!132 = !{i64 3034754}
!133 = !{i32 0, i32 33}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{!"branch_weights", i32 2000, i32 1}
