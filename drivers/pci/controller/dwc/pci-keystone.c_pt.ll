; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pci-keystone.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pci-keystone.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ks_pcie_of_data = type { i32, ptr, ptr, i32 }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dw_pcie_ep_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.keystone_pcie = type { ptr, i32, [4 x i32], ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.resource, i8 }
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.78, %union.anon.79, %union.anon.80 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i32 }

@__pci_fixup_ks_pcie_quirk569 = internal constant %struct.pci_fixup { i16 -1, i16 -1, i32 -1, i32 0, ptr @ks_pcie_quirk }, section ".pci_fixup_enable", align 4
@__initcall__kmod_pci_keystone__300_1330_ks_pcie_driver_init6 = internal global ptr @ks_pcie_driver_init, section ".initcall6.init", align 4
@ks_pcie_quirk.rc_pci_devids = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4172, i32 45064, i32 -1, i32 -1, i32 394240, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4172, i32 45065, i32 -1, i32 -1, i32 394240, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4172, i32 45066, i32 -1, i32 -1, i32 394240, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4172, i32 45067, i32 -1, i32 -1, i32 394240, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ks_pcie_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 564, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"limiting MRRS to 256\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ks_pcie_quirk\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pci/controller/dwc/pci-keystone.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ks_pcie_quirk._entry_ptr = internal global ptr @ks_pcie_quirk._entry, section ".printk_index", align 4
@ks_pcie_driver = internal global %struct.platform_driver { ptr @ks_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ks_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, section ".ref.data", align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"keystone-pcie\00", [18 x i8] zeroinitializer }, align 32
@ks_pcie_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"pci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ti,keystone-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ks_pcie_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-pcie-rc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ks_pcie_am654_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ks_pcie_am654_ep_of_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"app\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dbics\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,am654-pcie-rc\00", [47 x i8] zeroinitializer }, align 32
@ks_pcie_dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr @ks_pcie_am654_write_dbi2, ptr @ks_pcie_link_up, ptr @ks_pcie_start_link, ptr @ks_pcie_stop_link }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ks-pcie-error-irq\00", [46 x i8] zeroinitializer }, align 32
@ks_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1173, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request error IRQ %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ks_pcie_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ks_pcie_probe._entry_ptr = internal global ptr @ks_pcie_probe._entry, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num-lanes\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcie-phy%d\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ks_pcie_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 1218, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get reset GPIO\0A\00", [38 x i8] zeroinitializer }, align 32
@ks_pcie_probe._entry_ptr.18 = internal global ptr @ks_pcie_probe._entry.16, section ".printk_index", align 4
@ks_pcie_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.2, i32 1224, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to enable phy\0A\00", [42 x i8] zeroinitializer }, align 32
@ks_pcie_probe._entry_ptr.21 = internal global ptr @ks_pcie_probe._entry.19, section ".printk_index", align 4
@ks_pcie_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.11, ptr @.str.2, i32 1232, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm_runtime_get_sync failed\0A\00", [36 x i8] zeroinitializer }, align 32
@ks_pcie_probe._entry_ptr.24 = internal global ptr @ks_pcie_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"num-viewport\00", [19 x i8] zeroinitializer }, align 32
@ks_pcie_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.11, ptr @.str.2, i32 1252, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to read *num-viewport* property\0A\00", [56 x i8] zeroinitializer }, align 32
@ks_pcie_probe._entry_ptr.28 = internal global ptr @ks_pcie_probe._entry.26, section ".printk_index", align 4
@ks_pcie_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.11, ptr @.str.2, i32 1287, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"INVALID device type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ks_pcie_probe._entry_ptr.31 = internal global ptr @ks_pcie_probe._entry.29, section ".printk_index", align 4
@ks_pcie_handle_error_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 289, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"System Error\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ks_pcie_handle_error_irq\00", [39 x i8] zeroinitializer }, align 32
@ks_pcie_handle_error_irq._entry_ptr = internal global ptr @ks_pcie_handle_error_irq._entry, section ".printk_index", align 4
@ks_pcie_handle_error_irq._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 292, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Fatal Error\0A\00", [19 x i8] zeroinitializer }, align 32
@ks_pcie_handle_error_irq._entry_ptr.36 = internal global ptr @ks_pcie_handle_error_irq._entry.34, section ".printk_index", align 4
@ks_pcie_handle_error_irq.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.33, ptr @.str.2, ptr @.str.38, i8 0, i8 73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_keystone\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Non Fatal Error\0A\00", [47 x i8] zeroinitializer }, align 32
@ks_pcie_handle_error_irq.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.33, ptr @.str.2, ptr @.str.39, i8 0, i8 74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Correctable Error\0A\00", [45 x i8] zeroinitializer }, align 32
@ks_pcie_handle_error_irq._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.2, i32 301, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AXI tag lookup fatal Error\0A\00", [36 x i8] zeroinitializer }, align 32
@ks_pcie_handle_error_irq._entry_ptr.42 = internal global ptr @ks_pcie_handle_error_irq._entry.40, section ".printk_index", align 4
@ks_pcie_handle_error_irq._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.2, i32 304, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ECRC Error\0A\00", [20 x i8] zeroinitializer }, align 32
@ks_pcie_handle_error_irq._entry_ptr.45 = internal global ptr @ks_pcie_handle_error_irq._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,syscon-pcie-mode\00", [44 x i8] zeroinitializer }, align 32
@ks_pcie_am654_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.47, ptr @.str.2, i32 1057, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ks_pcie_am654_set_mode\00", [41 x i8] zeroinitializer }, align 32
@ks_pcie_am654_set_mode._entry_ptr = internal global ptr @ks_pcie_am654_set_mode._entry, section ".printk_index", align 4
@ks_pcie_am654_set_mode._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 1063, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set pcie mode\0A\00", [39 x i8] zeroinitializer }, align 32
@ks_pcie_am654_set_mode._entry_ptr.50 = internal global ptr @ks_pcie_am654_set_mode._entry.48, section ".printk_index", align 4
@ks_pcie_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.51, ptr @.str.2, i32 1020, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ks_pcie_set_mode\00", [47 x i8] zeroinitializer }, align 32
@ks_pcie_set_mode._entry_ptr = internal global ptr @ks_pcie_set_mode._entry, section ".printk_index", align 4
@ks_pcie_rc_of_data = internal constant { %struct.ks_pcie_of_data, [16 x i8] } { %struct.ks_pcie_of_data { i32 0, ptr @ks_pcie_host_ops, ptr null, i32 13914 }, [16 x i8] zeroinitializer }, align 32
@ks_pcie_am654_rc_of_data = internal constant { %struct.ks_pcie_of_data, [16 x i8] } { %struct.ks_pcie_of_data { i32 3, ptr @ks_pcie_am654_host_ops, ptr null, i32 18698 }, [16 x i8] zeroinitializer }, align 32
@ks_pcie_am654_ep_of_data = internal constant { %struct.ks_pcie_of_data, [16 x i8] } { %struct.ks_pcie_of_data { i32 1, ptr null, ptr @ks_pcie_am654_ep_ops, i32 18698 }, [16 x i8] zeroinitializer }, align 32
@ks_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @ks_pcie_host_init, ptr @ks_pcie_msi_host_init }, [24 x i8] zeroinitializer }, align 32
@ks_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr @ks_pcie_v3_65_add_bus, ptr null, ptr @dw_pcie_own_conf_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@ks_child_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @ks_pcie_other_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Asynchronous external abort\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"legacy-interrupt-controller\00", [36 x i8] zeroinitializer }, align 32
@ks_pcie_config_legacy_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 706, ptr @.str.56, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"legacy-interrupt-controller node is absent\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ks_pcie_config_legacy_irq\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ks_pcie_config_legacy_irq._entry_ptr = internal global ptr @ks_pcie_config_legacy_irq._entry, section ".printk_index", align 4
@ks_pcie_config_legacy_irq._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.2, i32 712, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"No IRQ entries in legacy-interrupt-controller\0A\00", [49 x i8] zeroinitializer }, align 32
@ks_pcie_config_legacy_irq._entry_ptr.59 = internal global ptr @ks_pcie_config_legacy_irq._entry.57, section ".printk_index", align 4
@ks_pcie_legacy_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @ks_pcie_init_legacy_irq_map, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ks_pcie_config_legacy_irq._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.55, ptr @.str.2, i32 734, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to add irq domain for legacy irqs\0A\00", [54 x i8] zeroinitializer }, align 32
@ks_pcie_config_legacy_irq._entry_ptr.62 = internal global ptr @ks_pcie_config_legacy_irq._entry.60, section ".printk_index", align 4
@ks_pcie_legacy_irq_handler.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 -100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ks_pcie_legacy_irq_handler\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c": Handling legacy irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ks_pcie_handle_legacy_irq.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ks_pcie_handle_legacy_irq\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c": irq: irq_offset %d\00", [43 x i8] zeroinitializer }, align 32
@ks_pcie_legacy_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.67, ptr null, ptr null, ptr null, ptr null, ptr @ks_pcie_ack_legacy_irq, ptr @ks_pcie_mask_legacy_irq, ptr null, ptr @ks_pcie_unmask_legacy_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Keystone-PCI-Legacy-IRQ\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msi-interrupt-controller\00", [39 x i8] zeroinitializer }, align 32
@ks_pcie_config_msi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 651, ptr @.str.56, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"msi-interrupt-controller node is absent\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ks_pcie_config_msi_irq\00", [41 x i8] zeroinitializer }, align 32
@ks_pcie_config_msi_irq._entry_ptr = internal global ptr @ks_pcie_config_msi_irq._entry, section ".printk_index", align 4
@ks_pcie_config_msi_irq._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 657, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"No IRQ entries in msi-interrupt-controller\0A\00", [52 x i8] zeroinitializer }, align 32
@ks_pcie_config_msi_irq._entry_ptr.73 = internal global ptr @ks_pcie_config_msi_irq._entry.71, section ".printk_index", align 4
@ks_pcie_msi_irq_handler.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 -111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ks_pcie_msi_irq_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s, irq %d\0A\00", [20 x i8] zeroinitializer }, align 32
@ks_pcie_msi_irq_handler.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.74, ptr @.str.2, ptr @.str.76, i8 0, i8 -106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irq: bit %d, vector %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,syscon-pcie-id\00", [46 x i8] zeroinitializer }, align 32
@ks_pcie_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.78, ptr null, ptr null, ptr null, ptr null, ptr @ks_pcie_msi_irq_ack, ptr @ks_pcie_msi_mask, ptr null, ptr @ks_pcie_msi_unmask, ptr null, ptr @ks_pcie_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ks_pcie_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"KEYSTONE-PCI-MSI\00", [47 x i8] zeroinitializer }, align 32
@ks_pcie_compose_msi_msg.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 0, i8 46, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ks_pcie_compose_msi_msg\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"msi#%d address_hi %#x address_lo %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@ks_pcie_am654_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @ks_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@ks_pcie_am654_ep_ops = internal constant { %struct.dw_pcie_ep_ops, [16 x i8] } { %struct.dw_pcie_ep_ops { ptr @ks_pcie_am654_ep_init, ptr @ks_pcie_am654_raise_irq, ptr @ks_pcie_am654_get_features, ptr null }, [16 x i8] zeroinitializer }, align 32
@ks_pcie_am654_raise_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 921, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UNKNOWN IRQ type\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ks_pcie_am654_raise_irq\00", [40 x i8] zeroinitializer }, align 32
@ks_pcie_am654_raise_irq._entry_ptr = internal global ptr @ks_pcie_am654_raise_irq._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ks_pcie_am654_epc_features = internal constant { %struct.pci_epc_features, [32 x i8] } { %struct.pci_epc_features { i8 48, i8 3, i8 1, [6 x i64] [i64 0, i64 0, i64 1048576, i64 65536, i64 256, i64 1048576], i32 1048576 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"rc_pci_devids\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 532, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 564, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1326, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"ks_pcie_of_match\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1087, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1144, i32 59 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1151, i32 59 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1156, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"ks_pcie_dw_pcie_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 867, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1170, i32 6 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1172, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1177, i32 33 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1190, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1213, i32 39 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1218, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1224, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1232, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1250, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1252, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1287, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 289, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 292, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 295, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 298, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 301, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 304, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1038, i32 47 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1057, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1063, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1020, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [19 x i8] c"ks_pcie_rc_of_data\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1070, i32 37 }
@___asan_gen_.241 = private unnamed_addr constant [25 x i8] c"ks_pcie_am654_rc_of_data\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1075, i32 37 }
@___asan_gen_.244 = private unnamed_addr constant [25 x i8] c"ks_pcie_am654_ep_of_data\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1081, i32 37 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"ks_pcie_host_ops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 841, i32 38 }
@___asan_gen_.250 = private unnamed_addr constant [12 x i8] c"ks_pcie_ops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 484, i32 23 }
@___asan_gen_.253 = private unnamed_addr constant [18 x i8] c"ks_child_pcie_ops\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 445, i32 23 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 835, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 698, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 706, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 712, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [30 x i8] c"ks_pcie_legacy_irq_domain_ops\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 341, i32 36 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 734, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 624, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 266, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [24 x i8] c"ks_pcie_legacy_irq_chip\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 323, i32 24 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 324, i32 10 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 647, i32 37 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 651, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 657, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 582, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 601, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 781, i32 53 }
@___asan_gen_.337 = private unnamed_addr constant [21 x i8] c"ks_pcie_msi_irq_chip\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 241, i32 24 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 242, i32 10 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 183, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [23 x i8] c"ks_pcie_am654_host_ops\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 846, i32 38 }
@___asan_gen_.352 = private unnamed_addr constant [21 x i8] c"ks_pcie_am654_ep_ops\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 947, i32 36 }
@___asan_gen_.355 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 921, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant [27 x i8] c"ks_pcie_am654_epc_features\00", align 1
@___asan_gen_.365 = private constant [45 x i8] c"../drivers/pci/controller/dwc/pci-keystone.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 928, i32 38 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__initcall__kmod_pci_keystone__300_1330_ks_pcie_driver_init6, ptr @__pci_fixup_ks_pcie_quirk569, ptr @ks_pcie_am654_raise_irq._entry, ptr @ks_pcie_am654_raise_irq._entry_ptr, ptr @ks_pcie_am654_set_mode._entry, ptr @ks_pcie_am654_set_mode._entry.48, ptr @ks_pcie_am654_set_mode._entry_ptr, ptr @ks_pcie_am654_set_mode._entry_ptr.50, ptr @ks_pcie_config_legacy_irq._entry, ptr @ks_pcie_config_legacy_irq._entry.57, ptr @ks_pcie_config_legacy_irq._entry.60, ptr @ks_pcie_config_legacy_irq._entry_ptr, ptr @ks_pcie_config_legacy_irq._entry_ptr.59, ptr @ks_pcie_config_legacy_irq._entry_ptr.62, ptr @ks_pcie_config_msi_irq._entry, ptr @ks_pcie_config_msi_irq._entry.71, ptr @ks_pcie_config_msi_irq._entry_ptr, ptr @ks_pcie_config_msi_irq._entry_ptr.73, ptr @ks_pcie_handle_error_irq._entry, ptr @ks_pcie_handle_error_irq._entry.34, ptr @ks_pcie_handle_error_irq._entry.40, ptr @ks_pcie_handle_error_irq._entry.43, ptr @ks_pcie_handle_error_irq._entry_ptr, ptr @ks_pcie_handle_error_irq._entry_ptr.36, ptr @ks_pcie_handle_error_irq._entry_ptr.42, ptr @ks_pcie_handle_error_irq._entry_ptr.45, ptr @ks_pcie_probe._entry, ptr @ks_pcie_probe._entry.16, ptr @ks_pcie_probe._entry.19, ptr @ks_pcie_probe._entry.22, ptr @ks_pcie_probe._entry.26, ptr @ks_pcie_probe._entry.29, ptr @ks_pcie_probe._entry_ptr, ptr @ks_pcie_probe._entry_ptr.18, ptr @ks_pcie_probe._entry_ptr.21, ptr @ks_pcie_probe._entry_ptr.24, ptr @ks_pcie_probe._entry_ptr.28, ptr @ks_pcie_probe._entry_ptr.31, ptr @ks_pcie_quirk._entry, ptr @ks_pcie_quirk._entry_ptr, ptr @ks_pcie_remove, ptr @ks_pcie_set_mode._entry, ptr @ks_pcie_set_mode._entry_ptr, ptr @ks_pcie_quirk.rc_pci_devids, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ks_pcie_of_match, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ks_pcie_dw_pcie_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @ks_pcie_rc_of_data, ptr @ks_pcie_am654_rc_of_data, ptr @ks_pcie_am654_ep_of_data, ptr @ks_pcie_host_ops, ptr @ks_pcie_ops, ptr @ks_child_pcie_ops, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @ks_pcie_legacy_irq_domain_ops, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @ks_pcie_legacy_irq_chip, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @ks_pcie_msi_irq_chip, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @ks_pcie_am654_host_ops, ptr @ks_pcie_am654_ep_ops, ptr @.str.81, ptr @.str.82, ptr @ks_pcie_am654_epc_features], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_quirk.rc_pci_devids to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_handle_error_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_handle_error_irq._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_handle_error_irq._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_handle_error_irq._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_am654_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_am654_set_mode._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_rc_of_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_am654_rc_of_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_am654_ep_of_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_child_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_config_legacy_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_config_legacy_irq._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_legacy_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_config_legacy_irq._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_legacy_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_config_msi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_config_msi_irq._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_am654_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_am654_ep_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_am654_raise_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_pcie_am654_epc_features to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_pcie_quirk(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 8
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %6, %while.body.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %bus.027 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %parent.i23 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i23, align 8
  %tobool.not.i24 = icmp eq ptr %6, null
  br i1 %tobool.not.i24, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %self.le = getelementptr inbounds %struct.pci_bus, ptr %bus.027, i32 0, i32 4
  %7 = ptrtoint ptr %self.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %self.le, align 4
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %bridge.1.lcssa = phi ptr [ %8, %while.cond.while.end_crit_edge ], [ %dev, %entry.while.end_crit_edge ]
  %tobool.not = icmp eq ptr %bridge.1.lcssa, null
  br i1 %tobool.not, label %while.end.cleanup_crit_edge, label %if.end4

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %while.end
  %call5 = tail call ptr @pci_match_id(ptr noundef nonnull @ks_pcie_quirk.rc_pci_devids, ptr noundef nonnull %bridge.1.lcssa) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %call8 = tail call i32 @pcie_get_readrq(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call8)
  %cmp = icmp sgt i32 %call8, 256
  br i1 %cmp, label %do.end, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str) #12
  %call11 = tail call i32 @pcie_set_readrq(ptr noundef %dev, i32 noundef 256) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %while.end.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_pcie_remove(ptr noundef %pdev) #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %link1 = getelementptr inbounds %struct.keystone_pcie, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link1, align 4
  %num_lanes2 = getelementptr inbounds %struct.keystone_pcie, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_lanes2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_lanes2, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev3, i32 noundef 5) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev3, i1 noundef zeroext true) #9
  tail call fastcc void @ks_pcie_disable_phy(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not10 = icmp eq i32 %5, 0
  br i1 %tobool.not10, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %num_lanes.011 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %5, %entry.while.body_crit_edge ]
  %dec = add i32 %num_lanes.011, -1
  %arrayidx = getelementptr ptr, ptr %3, i32 %dec
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @device_link_del(ptr noundef %7) #9
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks_pcie_disable_phy(ptr nocapture noundef readonly %ks_pcie) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_lanes1 = getelementptr inbounds %struct.keystone_pcie, ptr %ks_pcie, i32 0, i32 5
  %0 = ptrtoint ptr %num_lanes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lanes1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not9 = icmp eq i32 %1, 0
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %phy = getelementptr inbounds %struct.keystone_pcie, ptr %ks_pcie, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %num_lanes.010 = phi i32 [ %1, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %num_lanes.010, -1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %dec
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %5) #9
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %arrayidx3 = getelementptr ptr, ptr %7, i32 %dec
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %call4 = tail call i32 @phy_exit(ptr noundef %9) #9
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_pcie_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ks_pcie_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_readrq(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_pcie_probe(ptr noundef %pdev) #1 section ".init.text" align 64 {
entry:
  %num_viewport = alloca i32, align 4
  %num_lanes = alloca i32, align 4
  %name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_viewport) #9
  %2 = ptrtoint ptr %num_viewport to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num_viewport, align 4, !annotation !194
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_lanes) #9
  %3 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %num_lanes, align 4, !annotation !194
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name) #9
  %4 = call ptr @memset(ptr %name, i32 255, i32 10)
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %version2 = getelementptr inbounds %struct.ks_pcie_of_data, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %version2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version2, align 4
  %host_ops3 = getelementptr inbounds %struct.ks_pcie_of_data, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %host_ops3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_ops3, align 4
  %ep_ops4 = getelementptr inbounds %struct.ks_pcie_of_data, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %ep_ops4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep_ops4, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i274 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #9
  %tobool11.not = icmp eq ptr %call.i274, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.6) #9
  %call15 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call14) #9
  %va_app_base = getelementptr inbounds %struct.keystone_pcie, ptr %call.i, i32 0, i32 12
  %13 = ptrtoint ptr %va_app_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %va_app_base, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %app = getelementptr inbounds %struct.keystone_pcie, ptr %call.i, i32 0, i32 13
  %15 = call ptr @memcpy(ptr %app, ptr %call14, i32 32)
  %call22 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.7) #9
  %call23 = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev1, ptr noundef %call22) #9
  %cmp.i275 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i275, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %call28 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.if.end31_crit_edge, label %if.then30

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %is_am6 = getelementptr inbounds %struct.keystone_pcie, ptr %call.i, i32 0, i32 14
  %17 = ptrtoint ptr %is_am6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %is_am6, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  %dbi_base = getelementptr inbounds %struct.dw_pcie, ptr %call.i274, i32 0, i32 1
  %18 = ptrtoint ptr %dbi_base to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call23, ptr %dbi_base, align 4
  %dbi_base2 = getelementptr inbounds %struct.dw_pcie, ptr %call.i274, i32 0, i32 2
  %19 = ptrtoint ptr %dbi_base2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call23, ptr %dbi_base2, align 8
  %20 = ptrtoint ptr %call.i274 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev1, ptr %call.i274, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i274, i32 0, i32 9
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ks_pcie_dw_pcie_ops, ptr %ops, align 8
  %version33 = getelementptr inbounds %struct.dw_pcie, ptr %call.i274, i32 0, i32 10
  %22 = ptrtoint ptr %version33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %6, ptr %version33, align 4
  %call34 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %call.i276 = tail call i32 @request_threaded_irq(i32 noundef %call34, ptr noundef nonnull @ks_pcie_err_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %cmp38 = icmp slt i32 %call.i276, 0
  br i1 %cmp38, label %do.end, label %if.end40

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call34) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %num_lanes, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool42.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool42.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %num_lanes, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40.if.end44_crit_edge
  %24 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_lanes, align 4
  %mul = shl i32 %25, 2
  %call.i277 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %mul, i32 noundef 3520) #9
  %tobool46.not = icmp eq ptr %call.i277, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %26 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_lanes, align 4
  %mul49 = shl i32 %27, 2
  %call.i278 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %mul49, i32 noundef 3520) #9
  %tobool51.not = icmp eq ptr %call.i278, null
  br i1 %tobool51.not, label %if.end48.cleanup_crit_edge, label %for.cond.preheader

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end48
  %28 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp54290.not = icmp eq i32 %29, 0
  br i1 %cmp54290.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0291 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call55 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.14, i32 noundef %i.0291)
  %call57 = call ptr @devm_phy_optional_get(ptr noundef %dev1, ptr noundef nonnull %name) #9
  %arrayidx = getelementptr ptr, ptr %call.i277, i32 %i.0291
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call57, ptr %arrayidx, align 4
  %cmp.i279 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i279, label %if.then60, label %if.end63

if.then60:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %call57 to i32
  br label %err_link

if.end63:                                         ; preds = %for.body
  %tobool65.not = icmp eq ptr %call57, null
  br i1 %tobool65.not, label %if.end63.for.inc_crit_edge, label %if.end67

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end67:                                         ; preds = %if.end63
  %call70 = call ptr @device_link_add(ptr noundef %dev1, ptr noundef nonnull %call57, i32 noundef 1) #9
  %arrayidx71 = getelementptr ptr, ptr %call.i278, i32 %i.0291
  %32 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call70, ptr %arrayidx71, align 4
  %tobool73.not = icmp eq ptr %call70, null
  br i1 %tobool73.not, label %if.end67.err_link_crit_edge, label %if.end67.for.inc_crit_edge

if.end67.for.inc_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end67.err_link_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_link

for.inc:                                          ; preds = %if.end67.for.inc_crit_edge, %if.end63.for.inc_crit_edge
  %inc = add nuw i32 %i.0291, 1
  %33 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_lanes, align 4
  %cmp54 = icmp ult i32 %inc, %34
  br i1 %cmp54, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %34, %for.inc.for.end_crit_edge ]
  %np76 = getelementptr inbounds %struct.keystone_pcie, ptr %call.i, i32 0, i32 11
  %35 = ptrtoint ptr %np76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %1, ptr %np76, align 4
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i274, ptr %call.i, align 4
  %link78 = getelementptr inbounds %struct.keystone_pcie, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %link78 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i278, ptr %link78, align 4
  %num_lanes79 = getelementptr inbounds %struct.keystone_pcie, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %num_lanes79 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.lcssa, ptr %num_lanes79, align 4
  %phy80 = getelementptr inbounds %struct.keystone_pcie, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %phy80 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i277, ptr %phy80, align 4
  %call81 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 3) #9
  %cmp.i280 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i280, label %if.then83, label %if.end91

if.then83:                                        ; preds = %for.end
  %cmp85.not = icmp eq ptr %call81, inttoptr (i32 -517 to ptr)
  br i1 %cmp85.not, label %if.then83.err_link_crit_edge, label %do.end89

if.then83.err_link_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_link

do.end89:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %call81 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #12
  br label %err_link

if.end91:                                         ; preds = %for.end
  %call92 = call fastcc i32 @ks_pcie_enable_phy(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end98, label %do.end97

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #12
  br label %err_link

if.end98:                                         ; preds = %if.end91
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %call.i281 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %cmp100 = icmp slt i32 %call.i281, 0
  br i1 %cmp100, label %if.end98.err_get_sync.sink.split_crit_edge, label %if.end105

if.end98.err_get_sync.sink.split_crit_edge:       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_get_sync.sink.split

if.end105:                                        ; preds = %if.end98
  %42 = ptrtoint ptr %version33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %version33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18441, i32 %43)
  %cmp107 = icmp ugt i32 %43, 18441
  br i1 %cmp107, label %if.then108, label %if.else

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %call109 = call fastcc i32 @ks_pcie_am654_set_mode(ptr noundef %dev1, i32 noundef %12)
  br label %if.end111

if.else:                                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %call110 = call fastcc i32 @ks_pcie_set_mode(ptr noundef %dev1)
  br label %if.end111

if.end111:                                        ; preds = %if.else, %if.then108
  %ret.0 = phi i32 [ %call109, %if.then108 ], [ %call110, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp112 = icmp slt i32 %ret.0, 0
  br i1 %cmp112, label %if.end111.err_get_sync_crit_edge, label %if.end114

if.end111.err_get_sync_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_get_sync

if.end114:                                        ; preds = %if.end111
  %44 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.end141 [
    i32 3, label %sw.bb
    i32 1, label %sw.bb132
  ]

sw.bb:                                            ; preds = %if.end114
  %call.i.i282 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull %num_viewport, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i282)
  %cmp116 = icmp slt i32 %call.i.i282, 0
  br i1 %cmp116, label %sw.bb.err_get_sync.sink.split_crit_edge, label %if.end121

sw.bb.err_get_sync.sink.split_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_get_sync.sink.split

if.end121:                                        ; preds = %sw.bb
  %tobool122.not = icmp eq ptr %call81, null
  br i1 %tobool122.not, label %if.end121.if.end124_crit_edge, label %if.then123

if.end121.if.end124_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %call81, i32 noundef 1) #9
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end121.if.end124_crit_edge
  %45 = ptrtoint ptr %num_viewport to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_viewport, align 4
  %num_viewport125 = getelementptr inbounds %struct.keystone_pcie, ptr %call.i, i32 0, i32 6
  %47 = ptrtoint ptr %num_viewport125 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %num_viewport125, align 4
  %pp = getelementptr inbounds %struct.dw_pcie, ptr %call.i274, i32 0, i32 7
  %ops126 = getelementptr inbounds %struct.dw_pcie, ptr %call.i274, i32 0, i32 7, i32 8
  %48 = ptrtoint ptr %ops126 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %8, ptr %ops126, align 8
  %call128 = call i32 @dw_pcie_host_init(ptr noundef %pp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.end124.err_get_sync_crit_edge, label %if.end124.sw.epilog_crit_edge

if.end124.sw.epilog_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end124.err_get_sync_crit_edge:                 ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_get_sync

sw.bb132:                                         ; preds = %if.end114
  %ep = getelementptr inbounds %struct.dw_pcie, ptr %call.i274, i32 0, i32 8
  %ops133 = getelementptr inbounds %struct.dw_pcie, ptr %call.i274, i32 0, i32 8, i32 2
  %49 = ptrtoint ptr %ops133 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %10, ptr %ops133, align 4
  %call135 = call i32 @dw_pcie_ep_init(ptr noundef %ep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %sw.bb132.err_get_sync_crit_edge, label %sw.bb132.sw.epilog_crit_edge

sw.bb132.sw.epilog_crit_edge:                     ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb132.err_get_sync_crit_edge:                  ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_get_sync

do.end141:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %12) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end141, %sw.bb132.sw.epilog_crit_edge, %if.end124.sw.epilog_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %va_app_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %va_app_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1056964608) #9, !srcloc !196
  br label %cleanup

err_get_sync.sink.split:                          ; preds = %sw.bb.err_get_sync.sink.split_crit_edge, %if.end98.err_get_sync.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.23, %if.end98.err_get_sync.sink.split_crit_edge ], [ @.str.27, %sw.bb.err_get_sync.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %call.i281, %if.end98.err_get_sync.sink.split_crit_edge ], [ %call.i.i282, %sw.bb.err_get_sync.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.27.sink) #12
  br label %err_get_sync

err_get_sync:                                     ; preds = %err_get_sync.sink.split, %sw.bb132.err_get_sync_crit_edge, %if.end124.err_get_sync_crit_edge, %if.end111.err_get_sync_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end111.err_get_sync_crit_edge ], [ %call135, %sw.bb132.err_get_sync_crit_edge ], [ %call128, %if.end124.err_get_sync_crit_edge ], [ %ret.1.ph, %err_get_sync.sink.split ]
  %call.i283 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #9
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  call fastcc void @ks_pcie_disable_phy(ptr noundef nonnull %call.i)
  br label %err_link

err_link:                                         ; preds = %err_get_sync, %do.end97, %do.end89, %if.then83.err_link_crit_edge, %if.end67.err_link_crit_edge, %if.then60
  %i.0288 = phi i32 [ %i.0291, %if.then60 ], [ %i.0.lcssa, %do.end89 ], [ %i.0.lcssa, %if.then83.err_link_crit_edge ], [ %i.0.lcssa, %do.end97 ], [ %i.0.lcssa, %err_get_sync ], [ %i.0291, %if.end67.err_link_crit_edge ]
  %ret.2 = phi i32 [ %31, %if.then60 ], [ %40, %do.end89 ], [ -517, %if.then83.err_link_crit_edge ], [ %call92, %do.end97 ], [ %ret.1, %err_get_sync ], [ -22, %if.end67.err_link_crit_edge ]
  %dec294 = add i32 %i.0288, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec294)
  %cmp143295 = icmp sgt i32 %dec294, -1
  br i1 %cmp143295, label %err_link.land.rhs_crit_edge, label %err_link.cleanup_crit_edge

err_link.cleanup_crit_edge:                       ; preds = %err_link
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_link.land.rhs_crit_edge:                      ; preds = %err_link
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %err_link.land.rhs_crit_edge
  %dec296 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ %dec294, %err_link.land.rhs_crit_edge ]
  %arrayidx144 = getelementptr ptr, ptr %call.i278, i32 %dec296
  %52 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx144, align 4
  %tobool145.not = icmp eq ptr %53, null
  br i1 %tobool145.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  call void @device_link_del(ptr noundef nonnull %53) #9
  %dec = add i32 %dec296, -1
  %cmp143 = icmp sgt i32 %dec, -1
  br i1 %cmp143, label %while.body.land.rhs_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %err_link.cleanup_crit_edge, %sw.epilog, %if.end48.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end, %if.end31.cleanup_crit_edge, %if.then25, %if.then18, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then18 ], [ %16, %if.then25 ], [ %call.i276, %do.end ], [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %call34, %if.end31.cleanup_crit_edge ], [ -12, %if.end44.cleanup_crit_edge ], [ -12, %if.end48.cleanup_crit_edge ], [ %ret.2, %err_link.cleanup_crit_edge ], [ %ret.2, %land.rhs.cleanup_crit_edge ], [ %ret.2, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_lanes) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_viewport) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_pcie_err_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ks_pcie_handle_error_irq(ptr noundef %priv)
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ks_pcie_enable_phy(ptr nocapture noundef readonly %ks_pcie) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_lanes1 = getelementptr inbounds %struct.keystone_pcie, ptr %ks_pcie, i32 0, i32 5
  %0 = ptrtoint ptr %num_lanes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lanes1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp50 = icmp sgt i32 %1, 0
  br i1 %cmp50, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %phy = getelementptr inbounds %struct.keystone_pcie, ptr %ks_pcie, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.051
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_reset(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %for.body.err_phy_crit_edge, label %if.end

for.body.err_phy_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_phy

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %i.051
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %call5 = tail call i32 @phy_init(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.err_phy_crit_edge, label %if.end8

if.end.err_phy_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_phy

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %arrayidx10 = getelementptr ptr, ptr %11, i32 %i.051
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call i32 @phy_power_on(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %for.inc

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %arrayidx15 = getelementptr ptr, ptr %15, i32 %i.051
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx15, align 4
  %call16 = tail call i32 @phy_exit(ptr noundef %17) #9
  br label %err_phy

for.inc:                                          ; preds = %if.end8
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_phy:                                          ; preds = %if.then13, %if.end.err_phy_crit_edge, %for.body.err_phy_crit_edge
  %ret.0 = phi i32 [ %call11, %if.then13 ], [ %call5, %if.end.err_phy_crit_edge ], [ %call, %for.body.err_phy_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.051)
  %cmp1853.not = icmp eq i32 %i.051, 0
  br i1 %cmp1853.not, label %err_phy.cleanup_crit_edge, label %err_phy.while.body_crit_edge

err_phy.while.body_crit_edge:                     ; preds = %err_phy
  br label %while.body

err_phy.cleanup_crit_edge:                        ; preds = %err_phy
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_phy.while.body_crit_edge
  %dec54.in = phi i32 [ %dec54, %while.body.while.body_crit_edge ], [ %i.051, %err_phy.while.body_crit_edge ]
  %dec54 = add nsw i32 %dec54.in, -1
  %18 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy, align 4
  %arrayidx20 = getelementptr ptr, ptr %19, i32 %dec54
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx20, align 4
  %call21 = tail call i32 @phy_power_off(ptr noundef %21) #9
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %arrayidx23 = getelementptr ptr, ptr %23, i32 %dec54
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx23, align 4
  %call24 = tail call i32 @phy_exit(ptr noundef %25) #9
  %cmp18 = icmp sgt i32 %dec54.in, 1
  br i1 %cmp18, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err_phy.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_phy.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ks_pcie_am654_set_mode(ptr noundef %dev, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #9
  %2 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.46) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %args4 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %args4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %offset.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %4, %if.then3 ]
  %5 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %mode, label %do.end [
    i32 3, label %if.end5.sw.epilog_crit_edge
    i32 1, label %sw.bb6
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %mode) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %if.end5.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %sw.bb6 ], [ 2, %if.end5.sw.epilog_crit_edge ]
  %call.i27 = call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %offset.0, i32 noundef 3, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool8.not = icmp eq i32 %call.i27, 0
  br i1 %tobool8.not, label %sw.epilog.cleanup_crit_edge, label %do.end12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i27, %do.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ks_pcie_set_mode(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #9
  %2 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.46) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %args4 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %args4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %offset.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %4, %if.then3 ]
  %call.i21 = call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %offset.0, i32 noundef 7, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool7.not = icmp eq i32 %call.i21, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i21, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_pcie_am654_write_dbi2(ptr nocapture noundef readonly %pci, ptr noundef %base, i32 noundef %reg, i32 noundef %size, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %va_app_base.i.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %7 = or i32 %6, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %7) #9, !srcloc !196
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %10 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %13 = and i32 %12, 536870912
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %do.body.i.do.body.i_crit_edge, label %ks_pcie_set_dbi_mode.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

ks_pcie_set_dbi_mode.exit:                        ; preds = %do.body.i
  %add.ptr = getelementptr i8, ptr %base, i32 %reg
  %call1 = tail call i32 @dw_pcie_write(ptr noundef %add.ptr, i32 noundef %size, i32 noundef %val) #9
  %14 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %17 = and i32 %16, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %17) #9, !srcloc !196
  br label %do.body.i6

do.body.i6:                                       ; preds = %do.body.i6.do.body.i6_crit_edge, %ks_pcie_set_dbi_mode.exit
  %20 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %23 = and i32 %22, 536870912
  %tobool.not.i5 = icmp eq i32 %23, 0
  br i1 %tobool.not.i5, label %ks_pcie_clear_dbi_mode.exit, label %do.body.i6.do.body.i6_crit_edge

do.body.i6.do.body.i6_crit_edge:                  ; preds = %do.body.i6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i6

ks_pcie_clear_dbi_mode.exit:                      ; preds = %do.body.i6
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_pcie_link_up(ptr noundef %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef 1832, i32 noundef 4) #9
  %and = and i32 %call.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and)
  %cmp = icmp eq i32 %and, 17
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_pcie_start_link(ptr nocapture noundef readonly %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %va_app_base.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %7) #9, !srcloc !196
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_pcie_stop_link(ptr nocapture noundef readonly %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %va_app_base.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %7) #9, !srcloc !196
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ks_pcie_handle_error_irq(ptr nocapture noundef readonly %ks_pcie) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ks_pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ks_pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %va_app_base.i = getelementptr inbounds %struct.keystone_pcie, ptr %ks_pcie, i32 0, i32 12
  %4 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 452
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !197
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32) #12
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %and5 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end11_crit_edge, label %do.end10

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %if.end4.if.end11_crit_edge
  %and12 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end25_crit_edge, label %do.body15

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_pcie_handle_error_irq.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ks_pcie_handle_error_irq, %if.end25)) #9
          to label %if.then21 [label %if.end25], !srcloc !199

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ks_pcie_handle_error_irq.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.38) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %do.body15, %if.end11.if.end25_crit_edge
  %and26 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end47_crit_edge, label %do.body29

if.end25.if.end47_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.body29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_pcie_handle_error_irq.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ks_pcie_handle_error_irq, %if.end47)) #9
          to label %if.then43 [label %if.end47], !srcloc !199

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ks_pcie_handle_error_irq.__UNIQUE_ID_ddebug296, ptr noundef %3, ptr noundef nonnull @.str.39) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %do.body29, %if.end25.if.end47_crit_edge
  %is_am6 = getelementptr inbounds %struct.keystone_pcie, ptr %ks_pcie, i32 0, i32 14
  %8 = ptrtoint ptr %is_am6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_am6, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool48.not = icmp ne i8 %9, 0
  %and49 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %or.cond = select i1 %tobool48.not, i1 true, i1 %tobool50.not
  br i1 %or.cond, label %if.end47.if.end55_crit_edge, label %do.end54

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41) #12
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %if.end47.if.end55_crit_edge
  %and56 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %lor.lhs.false, label %if.end55.do.end66_crit_edge

if.end55.do.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

lor.lhs.false:                                    ; preds = %if.end55
  %10 = ptrtoint ptr %is_am6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_am6, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool59.not = icmp eq i8 %11, 0
  %or.cond86 = select i1 %tobool59.not, i1 true, i1 %tobool50.not
  br i1 %or.cond86, label %lor.lhs.false.if.end67_crit_edge, label %lor.lhs.false.do.end66_crit_edge

lor.lhs.false.do.end66_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

lor.lhs.false.if.end67_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

do.end66:                                         ; preds = %lor.lhs.false.do.end66_crit_edge, %if.end55.do.end66_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.44) #12
  br label %if.end67

if.end67:                                         ; preds = %do.end66, %lor.lhs.false.if.end67_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %13, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %6) #9, !srcloc !196
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end67 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_pcie_host_init(ptr nocapture noundef readonly %pp) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %bridge = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 17
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge, align 8
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ks_pcie_ops, ptr %ops, align 4
  %is_am6 = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %is_am6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_am6, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bridge, align 8
  %child_ops = getelementptr inbounds %struct.pci_host_bridge, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %child_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ks_child_pcie_ops, ptr %child_ops, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %np2.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %np2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %np2.i, align 4
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef %17, ptr noundef nonnull @.str.53) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %if.end
  %18 = ptrtoint ptr %is_am6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_am6, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not.i = icmp eq i8 %19, 0
  br i1 %tobool3.not.i, label %ks_pcie_config_legacy_irq.exit.thread60, label %if.then.i.if.end5_crit_edge

if.then.i.if.end5_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

ks_pcie_config_legacy_irq.exit.thread60:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.end
  %call6.i = tail call i32 @of_irq_count(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.ks_pcie_config_legacy_irq.exit.thread63.sink.split_crit_edge, label %for.cond.preheader.i

if.end5.i.ks_pcie_config_legacy_irq.exit.thread63.sink.split_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ks_pcie_config_legacy_irq.exit.thread63.sink.split

for.cond.preheader.i:                             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp61.i = icmp sgt i32 %call6.i, 0
  br i1 %cmp61.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.062.i = phi i32 [ %inc.i, %if.end16.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call13.i = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %call.i, i32 noundef %i.062.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %for.body.i.ks_pcie_config_legacy_irq.exit.thread63_crit_edge, label %if.end16.i

for.body.i.ks_pcie_config_legacy_irq.exit.thread63_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ks_pcie_config_legacy_irq.exit.thread63

if.end16.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.keystone_pcie, ptr %3, i32 0, i32 2, i32 %i.062.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call13.i, ptr %arrayidx.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call13.i, ptr noundef nonnull @ks_pcie_legacy_irq_handler, ptr noundef %3) #9
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call6.i
  br i1 %exitcond.not.i, label %if.end16.i.for.end.i_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end16.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i, i32 0, i32 3
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @ks_pcie_legacy_irq_domain_ops, ptr noundef null) #9
  %tobool18.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool18.not.i, label %for.end.i.ks_pcie_config_legacy_irq.exit.thread63.sink.split_crit_edge, label %ks_pcie_config_legacy_irq.exit

for.end.i.ks_pcie_config_legacy_irq.exit.thread63.sink.split_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ks_pcie_config_legacy_irq.exit.thread63.sink.split

ks_pcie_config_legacy_irq.exit.thread63.sink.split: ; preds = %for.end.i.ks_pcie_config_legacy_irq.exit.thread63.sink.split_crit_edge, %if.end5.i.ks_pcie_config_legacy_irq.exit.thread63.sink.split_crit_edge
  %.str.61.sink = phi ptr [ @.str.58, %if.end5.i.ks_pcie_config_legacy_irq.exit.thread63.sink.split_crit_edge ], [ @.str.61, %for.end.i.ks_pcie_config_legacy_irq.exit.thread63.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull %.str.61.sink) #12
  br label %ks_pcie_config_legacy_irq.exit.thread63

ks_pcie_config_legacy_irq.exit.thread63:          ; preds = %ks_pcie_config_legacy_irq.exit.thread63.sink.split, %for.body.i.ks_pcie_config_legacy_irq.exit.thread63_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i) #9
  br label %cleanup

ks_pcie_config_legacy_irq.exit:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %legacy_irq_domain24.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %legacy_irq_domain24.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1.i.i, ptr %legacy_irq_domain24.i, align 4
  %va_app_base.i.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %25, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 16777216) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %27, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 16777216) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %29, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i, i32 16777216) #9, !srcloc !196
  tail call void @of_node_put(ptr noundef nonnull %call.i) #9
  br label %if.end5

if.end5:                                          ; preds = %ks_pcie_config_legacy_irq.exit, %if.then.i.if.end5_crit_edge
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = ptrtoint ptr %np2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %np2.i, align 4
  %call.i30 = tail call ptr @of_get_child_by_name(ptr noundef %35, ptr noundef nonnull @.str.68) #9
  %tobool.not.i31 = icmp eq ptr %call.i30, null
  br i1 %tobool.not.i31, label %if.then.i34, label %if.end5.i38

if.then.i34:                                      ; preds = %if.end5
  %36 = ptrtoint ptr %is_am6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_am6, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool3.not.i33 = icmp eq i8 %37, 0
  br i1 %tobool3.not.i33, label %do.end.i35, label %if.then.i34.if.end9_crit_edge

if.then.i34.if.end9_crit_edge:                    ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end.i35:                                       ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.69) #12
  br label %cleanup

if.end5.i38:                                      ; preds = %if.end5
  %call6.i36 = tail call i32 @of_irq_count(ptr noundef nonnull %call.i30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i36)
  %tobool7.not.i37 = icmp eq i32 %call6.i36, 0
  br i1 %tobool7.not.i37, label %do.end11.i40, label %for.cond.preheader.i39

for.cond.preheader.i39:                           ; preds = %if.end5.i38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i36)
  %cmp48.i = icmp sgt i32 %call6.i36, 0
  br i1 %cmp48.i, label %for.body.lr.ph.i, label %for.cond.preheader.i39.for.end.i47_crit_edge

for.cond.preheader.i39.for.end.i47_crit_edge:     ; preds = %for.cond.preheader.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i47

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i39
  %msi_host_irq.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 4
  br label %for.body.i43

do.end11.i40:                                     ; preds = %if.end5.i38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.72) #12
  br label %err.i48

for.body.i43:                                     ; preds = %if.end24.i.for.body.i43_crit_edge, %for.body.lr.ph.i
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i45, %if.end24.i.for.body.i43_crit_edge ]
  %call13.i41 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %call.i30, i32 noundef %i.049.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i41)
  %tobool14.not.i42 = icmp eq i32 %call13.i41, 0
  br i1 %tobool14.not.i42, label %for.body.i43.err.i48_crit_edge, label %if.end16.i44

for.body.i43.err.i48_crit_edge:                   ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i48

if.end16.i44:                                     ; preds = %for.body.i43
  %38 = ptrtoint ptr %msi_host_irq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msi_host_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool17.not.i = icmp eq i32 %39, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end16.i44.if.end24.i_crit_edge

if.end16.i44.if.end24.i_crit_edge:                ; preds = %if.end16.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then18.i:                                      ; preds = %if.end16.i44
  %call19.i = tail call ptr @irq_get_irq_data(i32 noundef %call13.i41) #9
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.then18.i.err.i48_crit_edge, label %if.end22.i

if.then18.i.err.i48_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i48

if.end22.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %call19.i, i32 0, i32 2
  %40 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hwirq.i, align 4
  %42 = ptrtoint ptr %msi_host_irq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %msi_host_irq.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end22.i, %if.end16.i44.if.end24.i_crit_edge
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call13.i41, ptr noundef nonnull @ks_pcie_msi_irq_handler, ptr noundef %3) #9
  %inc.i45 = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i46 = icmp eq i32 %inc.i45, %call6.i36
  br i1 %exitcond.not.i46, label %if.end24.i.for.end.i47_crit_edge, label %if.end24.i.for.body.i43_crit_edge

if.end24.i.for.body.i43_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i43

if.end24.i.for.end.i47_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i47

for.end.i47:                                      ; preds = %if.end24.i.for.end.i47_crit_edge, %for.cond.preheader.i39.for.end.i47_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i30) #9
  br label %if.end9

err.i48:                                          ; preds = %if.then18.i.err.i48_crit_edge, %for.body.i43.err.i48_crit_edge, %do.end11.i40
  tail call void @of_node_put(ptr noundef nonnull %call.i30) #9
  br label %cleanup

if.end9:                                          ; preds = %for.end.i47, %if.then.i34.if.end9_crit_edge
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i.i, align 4
  %va_app_base.i.i50 = getelementptr inbounds %struct.keystone_pcie, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %va_app_base.i.i50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %va_app_base.i.i50, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %48, i32 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %50 = and i32 %49, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %va_app_base.i.i50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %va_app_base.i.i50, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %50) #9, !srcloc !196
  %num_viewport1.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 6
  %53 = ptrtoint ptr %num_viewport1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_viewport1.i, align 4
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %bridge.i = getelementptr inbounds %struct.dw_pcie, ptr %56, i32 0, i32 7, i32 17
  %57 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bridge.i, align 8
  %windows.i = getelementptr inbounds %struct.pci_host_bridge, ptr %58, i32 0, i32 7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end9
  %entry1.0.in.i.i = phi ptr [ %windows.i, %if.end9 ], [ %entry1.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %59 = ptrtoint ptr %entry1.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %entry1.0.i.i = load ptr, ptr %entry1.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %windows.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.resource_list_first_type.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.resource_list_first_type.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %resource_list_first_type.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %res.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %res.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.resource, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %63, 7936
  %cmp2.i.i = icmp eq i32 %and.i.i.i, 512
  br i1 %cmp2.i.i, label %for.body.i.i.resource_list_first_type.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.body.i.i.resource_list_first_type.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %resource_list_first_type.exit.i

resource_list_first_type.exit.i:                  ; preds = %for.body.i.i.resource_list_first_type.exit.i_crit_edge, %for.cond.i.i.resource_list_first_type.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %entry1.0.i.i, %for.body.i.i.resource_list_first_type.exit.i_crit_edge ], [ null, %for.cond.i.i.resource_list_first_type.exit.i_crit_edge ]
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %retval.0.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %res.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %end5.i = getelementptr inbounds %struct.resource, ptr %65, i32 0, i32 1
  %68 = ptrtoint ptr %end5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %end5.i, align 4
  %va_app_base.i.i.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 12
  %70 = ptrtoint ptr %va_app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %va_app_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %71, i32 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %73 = or i32 %72, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %va_app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %va_app_base.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %73) #9, !srcloc !196
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %resource_list_first_type.exit.i
  %76 = ptrtoint ptr %va_app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %va_app_base.i.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %77, i32 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %79 = and i32 %78, 536870912
  %tobool.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %ks_pcie_set_dbi_mode.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

ks_pcie_set_dbi_mode.exit.i:                      ; preds = %do.body.i.i
  tail call void @dw_pcie_write_dbi(ptr noundef %56, i32 noundef 16, i32 noundef 4, i32 noundef 0) #9
  tail call void @dw_pcie_write_dbi(ptr noundef %56, i32 noundef 20, i32 noundef 4, i32 noundef 0) #9
  %80 = ptrtoint ptr %va_app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %va_app_base.i.i.i, align 4
  %add.ptr.i.i46.i = getelementptr i8, ptr %81, i32 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %83 = and i32 %82, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %84 = ptrtoint ptr %va_app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %va_app_base.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %83) #9, !srcloc !196
  br label %do.body.i48.i

do.body.i48.i:                                    ; preds = %do.body.i48.i.do.body.i48.i_crit_edge, %ks_pcie_set_dbi_mode.exit.i
  %86 = ptrtoint ptr %va_app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %va_app_base.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %87, i32 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %89 = and i32 %88, 536870912
  %tobool.not.i47.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i47.i, label %ks_pcie_clear_dbi_mode.exit.i, label %do.body.i48.i.do.body.i48.i_crit_edge

do.body.i48.i.do.body.i48.i_crit_edge:            ; preds = %do.body.i48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i48.i

ks_pcie_clear_dbi_mode.exit.i:                    ; preds = %do.body.i48.i
  %conv6.i = zext i32 %69 to i64
  %90 = ptrtoint ptr %is_am6 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %is_am6, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i53 = icmp eq i8 %91, 0
  br i1 %tobool.not.i53, label %if.end.i, label %ks_pcie_clear_dbi_mode.exit.i.ks_pcie_setup_rc_app_regs.exit_crit_edge

ks_pcie_clear_dbi_mode.exit.i.ks_pcie_setup_rc_app_regs.exit_crit_edge: ; preds = %ks_pcie_clear_dbi_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ks_pcie_setup_rc_app_regs.exit

if.end.i:                                         ; preds = %ks_pcie_clear_dbi_mode.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %92 = ptrtoint ptr %va_app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %va_app_base.i.i.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %93, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 50331648) #9, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp57.i = icmp ne i32 %54, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp858.i = icmp ult i32 %67, %69
  %or.cond59.i = select i1 %cmp57.i, i1 %cmp858.i, i1 false
  br i1 %or.cond59.i, label %for.body.preheader.i, label %if.end.i.for.end.i57_crit_edge

if.end.i.for.end.i57_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i57

for.body.preheader.i:                             ; preds = %if.end.i
  %conv.i = zext i32 %67 to i64
  br label %for.body.i56

for.body.i56:                                     ; preds = %for.body.i56.for.body.i56_crit_edge, %for.body.preheader.i
  %i.061.i = phi i32 [ %inc.i55, %for.body.i56.for.body.i56_crit_edge ], [ 0, %for.body.preheader.i ]
  %start.060.i = phi i64 [ %add15.i, %for.body.i56.for.body.i56_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %mul.i = shl i32 %i.061.i, 3
  %add.i = add nuw nsw i32 %mul.i, 512
  %conv10.i = trunc i64 %start.060.i to i32
  %or.i = or i32 %conv10.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %94 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %95 = ptrtoint ptr %va_app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %va_app_base.i.i.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %96, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %94) #9, !srcloc !196
  %add12.i = add nuw nsw i32 %mul.i, 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %97 = ptrtoint ptr %va_app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %va_app_base.i.i.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %98, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 0) #9, !srcloc !196
  %add15.i = add nuw nsw i64 %start.060.i, 8388608
  %inc.i55 = add nuw nsw i32 %i.061.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i55, i32 %54)
  %cmp.i = icmp ult i32 %inc.i55, %54
  call void @__sanitizer_cov_trace_cmp8(i64 %add15.i, i64 %conv6.i)
  %cmp8.i = icmp ult i64 %add15.i, %conv6.i
  %or.cond.i = select i1 %cmp.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %for.body.i56.for.body.i56_crit_edge, label %for.body.i56.for.end.i57_crit_edge

for.body.i56.for.end.i57_crit_edge:               ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i57

for.body.i56.for.body.i56_crit_edge:              ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i56

for.end.i57:                                      ; preds = %for.body.i56.for.end.i57_crit_edge, %if.end.i.for.end.i57_crit_edge
  %99 = ptrtoint ptr %va_app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %va_app_base.i.i.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %100, i32 4
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %102 = or i32 %101, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %103 = ptrtoint ptr %va_app_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %va_app_base.i.i.i, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %104, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 %102) #9, !srcloc !196
  br label %ks_pcie_setup_rc_app_regs.exit

ks_pcie_setup_rc_app_regs.exit:                   ; preds = %for.end.i57, %ks_pcie_clear_dbi_mode.exit.i.ks_pcie_setup_rc_app_regs.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %dbi_base = getelementptr i8, ptr %pp, i32 -28
  %105 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dbi_base, align 4
  %add.ptr10 = getelementptr i8, ptr %106, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 257) #9, !srcloc !202
  %call11 = tail call fastcc i32 @ks_pcie_init_id(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %ks_pcie_setup_rc_app_regs.exit.cleanup_crit_edge, label %if.end13

ks_pcie_setup_rc_app_regs.exit.cleanup_crit_edge: ; preds = %ks_pcie_setup_rc_app_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %ks_pcie_setup_rc_app_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hook_fault_code(i32 noundef 17, ptr noundef nonnull @ks_pcie_fault, i32 noundef 7, i32 noundef 0, ptr noundef nonnull @.str.52) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %ks_pcie_setup_rc_app_regs.exit.cleanup_crit_edge, %err.i48, %do.end.i35, %ks_pcie_config_legacy_irq.exit.thread63, %ks_pcie_config_legacy_irq.exit.thread60
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call11, %ks_pcie_setup_rc_app_regs.exit.cleanup_crit_edge ], [ -22, %ks_pcie_config_legacy_irq.exit.thread60 ], [ -22, %ks_pcie_config_legacy_irq.exit.thread63 ], [ -22, %err.i48 ], [ -22, %do.end.i35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_pcie_msi_host_init(ptr noundef %pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msi_irq_chip = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 14
  %0 = ptrtoint ptr %msi_irq_chip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ks_pcie_msi_irq_chip, ptr %msi_irq_chip, align 8
  %call = tail call i32 @dw_pcie_allocate_domains(ptr noundef %pp) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ks_pcie_init_id(ptr nocapture noundef readonly %ks_pcie) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %id = alloca i32, align 4
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #9
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !194
  %1 = ptrtoint ptr %ks_pcie to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ks_pcie, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #9
  %7 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %6, ptr noundef nonnull @.str.77) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.77, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %args7 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %9 = ptrtoint ptr %args7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %args7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %offset.0 = phi i32 [ 0, %if.end.if.end8_crit_edge ], [ %10, %if.then6 ]
  %call9 = call i32 @regmap_read(ptr noundef %call, i32 noundef %offset.0, ptr noundef nonnull %id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4) #9
  %or.i = or i32 %call.i.i, 1
  call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4, i32 noundef %or.i) #9
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %conv.i = and i32 %12, 65535
  call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 0, i32 noundef 2, i32 noundef %conv.i) #9
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %shr = lshr i32 %14, 16
  call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 2, i32 noundef 2, i32 noundef %shr) #9
  %call.i.i31 = call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4) #9
  %and.i = and i32 %call.i.i31, -2
  call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4, i32 noundef %and.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ 0, %if.end12 ], [ %call9, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_fault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_pcie_fault(i32 noundef %addr, i32 noundef %fsr, ptr nocapture noundef %regs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 235929744
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048720, i32 %and)
  %cmp = icmp eq i32 %and, 1048720
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %4, 12
  %and1 = and i32 %shr, 15
  %arrayidx3 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %arrayidx3, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, 4
  store i32 %add, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_pcie_v3_65_add_bus(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %va_app_base.i.i = getelementptr inbounds %struct.keystone_pcie, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %11 = or i32 %10, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %11) #9, !srcloc !196
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %14 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %17 = and i32 %16, 536870912
  %tobool.not.i10 = icmp eq i32 %17, 0
  br i1 %tobool.not.i10, label %do.body.i.do.body.i_crit_edge, label %ks_pcie_set_dbi_mode.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

ks_pcie_set_dbi_mode.exit:                        ; preds = %do.body.i
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 16, i32 noundef 4, i32 noundef 1) #9
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 16, i32 noundef 4, i32 noundef 4095) #9
  %18 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %21 = and i32 %20, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %21) #9, !srcloc !196
  br label %do.body.i14

do.body.i14:                                      ; preds = %do.body.i14.do.body.i14_crit_edge, %ks_pcie_set_dbi_mode.exit
  %24 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %27 = and i32 %26, 536870912
  %tobool.not.i13 = icmp eq i32 %27, 0
  br i1 %tobool.not.i13, label %ks_pcie_clear_dbi_mode.exit, label %do.body.i14.do.body.i14_crit_edge

do.body.i14.do.body.i14_crit_edge:                ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i14

ks_pcie_clear_dbi_mode.exit:                      ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  %app = getelementptr inbounds %struct.keystone_pcie, ptr %5, i32 0, i32 13
  %28 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %app, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 16, i32 noundef 4, i32 noundef %29) #9
  br label %cleanup

cleanup:                                          ; preds = %ks_pcie_clear_dbi_mode.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_pcie_own_conf_map_bus(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ks_pcie_other_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %8 = shl i32 %devfn, 5
  %shl3 = and i32 %8, 7936
  %or = or i32 %shl, %shl3
  %and4 = and i32 %devfn, 7
  %or6 = or i32 %or, %and4
  %parent = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  %or8 = or i32 %or6, 16777216
  %spec.select = select i1 %tobool.not.i, i32 %or6, i32 %or8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #9
  %va_app_base.i = getelementptr inbounds %struct.keystone_pcie, ptr %5, i32 0, i32 12
  %14 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #9, !srcloc !196
  %va_cfg0_base = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %va_cfg0_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %va_cfg0_base, align 8
  %add.ptr9 = getelementptr i8, ptr %17, i32 %where
  ret ptr %add.ptr9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_pcie_legacy_irq_handler(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %legacy_host_irqs = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %legacy_host_irqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %legacy_host_irqs, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_pcie_legacy_irq_handler.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ks_pcie_legacy_irq_handler, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ks_pcie_legacy_irq_handler.__UNIQUE_ID_ddebug299, ptr noundef %7, ptr noundef nonnull @.str.64, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sub = sub i32 %1, %9
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.chained_irq_enter.exit_crit_edge

do.end.chained_irq_enter.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %do.end
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %15(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %17(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 6
  %18 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %19, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %19(ptr noundef %irq_data4.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %do.end.chained_irq_enter.exit_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %shl.i = shl i32 %sub, 4
  %add.i = add i32 %shl.i, 388
  %va_app_base.i.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 12
  %24 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %add.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i17 = icmp eq i32 %27, 0
  br i1 %tobool.not.i17, label %chained_irq_enter.exit.ks_pcie_handle_legacy_irq.exit_crit_edge, label %do.body.i

chained_irq_enter.exit.ks_pcie_handle_legacy_irq.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ks_pcie_handle_legacy_irq.exit

do.body.i:                                        ; preds = %chained_irq_enter.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_pcie_handle_legacy_irq.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ks_pcie_legacy_irq_handler, %do.end.i)) #9
          to label %if.then8.i [label %do.end.i], !srcloc !199

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ks_pcie_handle_legacy_irq.__UNIQUE_ID_ddebug294, ptr noundef %23, ptr noundef nonnull @.str.66, i32 noundef %sub) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %do.body.i
  %legacy_irq_domain.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 10
  %28 = ptrtoint ptr %legacy_irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %legacy_irq_domain.i, align 4
  %call9.i = tail call i32 @generic_handle_domain_irq(ptr noundef %29, i32 noundef %sub) #9
  br label %ks_pcie_handle_legacy_irq.exit

ks_pcie_handle_legacy_irq.exit:                   ; preds = %do.end.i, %chained_irq_enter.exit.ks_pcie_handle_legacy_irq.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %sub) #9
  %31 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %32, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %30) #9, !srcloc !196
  %33 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i19 = icmp eq ptr %34, null
  br i1 %tobool.not.i19, label %if.else.i20, label %ks_pcie_handle_legacy_irq.exit.chained_irq_exit.exit_crit_edge

ks_pcie_handle_legacy_irq.exit.chained_irq_exit.exit_crit_edge: ; preds = %ks_pcie_handle_legacy_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i20:                                      ; preds = %ks_pcie_handle_legacy_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 9
  %35 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i20, %ks_pcie_handle_legacy_irq.exit.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %36, %if.else.i20 ], [ %34, %ks_pcie_handle_legacy_irq.exit.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_pcie_init_legacy_irq_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw_irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @ks_pcie_legacy_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #9
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ks_pcie_ack_legacy_irq(ptr nocapture noundef %d) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ks_pcie_mask_legacy_irq(ptr nocapture noundef %d) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ks_pcie_unmask_legacy_irq(ptr nocapture noundef %d) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_pcie_msi_irq_handler(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %msi_host_irq = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %msi_host_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msi_host_irq, align 4
  %sub = sub i32 %1, %5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_pcie_msi_irq_handler.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ks_pcie_msi_irq_handler, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ks_pcie_msi_irq_handler.__UNIQUE_ID_ddebug297, ptr noundef %9, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.chained_irq_enter.exit_crit_edge

do.end.chained_irq_enter.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %do.end
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %15(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %17(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 6
  %18 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %19, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %19(ptr noundef %irq_data4.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %do.end.chained_irq_enter.exit_crit_edge
  %shl = shl i32 %sub, 4
  %add = add i32 %shl, 260
  %va_app_base.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 12
  %20 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !197
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %irq_domain = getelementptr inbounds %struct.dw_pcie, ptr %7, i32 0, i32 7, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %chained_irq_enter.exit
  %pos.060 = phi i32 [ 0, %chained_irq_enter.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl10 = shl nuw nsw i32 1, %pos.060
  %and = and i32 %shl10, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.end13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %shl14 = shl nuw nsw i32 %pos.060, 3
  %add15 = add i32 %shl14, %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_pcie_msi_irq_handler.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ks_pcie_msi_irq_handler, %do.end33)) #9
          to label %if.then30 [label %do.end33], !srcloc !199

if.then30:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ks_pcie_msi_irq_handler.__UNIQUE_ID_ddebug298, ptr noundef %9, ptr noundef nonnull @.str.76, i32 noundef %pos.060, i32 noundef %add15) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %if.end13
  %24 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_domain, align 8
  %call34 = tail call i32 @generic_handle_domain_irq(ptr noundef %25, i32 noundef %add15) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end33, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %pos.060, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %26 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i55 = icmp eq ptr %27, null
  br i1 %tobool.not.i55, label %if.else.i56, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i56:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 9
  %28 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i56, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %29, %if.else.i56 ], [ %27, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_allocate_domains(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_pcie_msi_irq_ack(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %rem = and i32 %3, 7
  %shr = lshr i32 %3, 3
  %shl = shl nuw nsw i32 %rem, 4
  %add = or i32 %shl, 260
  %shl2 = shl nuw i32 1, %shr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl2) #9
  %va_app_base.i = getelementptr inbounds %struct.keystone_pcie, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %add3 = shl nuw nsw i32 %rem, 24
  %11 = add nuw nsw i32 %add3, 67108864
  %12 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %13, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %11) #9, !srcloc !196
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_pcie_msi_mask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %lock = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 18
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %shr = lshr i32 %3, 3
  %rem = shl i32 %3, 4
  %shl = and i32 %rem, 112
  %add = or i32 %shl, 268
  %shl4 = shl nuw i32 1, %shr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl4) #9
  %va_app_base.i = getelementptr inbounds %struct.keystone_pcie, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #9, !srcloc !196
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_pcie_msi_unmask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %lock = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 18
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %shr = lshr i32 %3, 3
  %rem = shl i32 %3, 4
  %shl = and i32 %rem, 112
  %add = or i32 %shl, 264
  %shl4 = shl nuw i32 1, %shr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl4) #9
  %va_app_base.i = getelementptr inbounds %struct.keystone_pcie, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %va_app_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %va_app_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #9, !srcloc !196
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_pcie_msi_set_affinity(ptr nocapture noundef readnone %irq_data, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_pcie_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %app = getelementptr inbounds %struct.keystone_pcie, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %app, align 4
  %add = add i32 %7, 84
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %msg, align 4
  %9 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq, align 4
  %13 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %13, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_pcie_compose_msi_msg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ks_pcie_compose_msi_msg, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %17 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %9, align 4
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ks_pcie_compose_msi_msg.__UNIQUE_ID_ddebug293, ptr noundef %16, ptr noundef nonnull @.str.80, i32 noundef %18, i32 noundef %20, i32 noundef %22) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_pcie_am654_ep_init(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  %page_size = getelementptr inbounds %struct.dw_pcie_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65536, ptr %page_size, align 4
  tail call void @dw_pcie_write_dbi2(ptr noundef %add.ptr, i32 noundef 16, i32 noundef 4, i32 noundef 16383) #9
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 16, i32 noundef 4, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_pcie_am654_raise_irq(ptr noundef %ep, i8 noundef zeroext %func_no, i32 noundef %type, i16 noundef zeroext %interrupt_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %6, i32 noundef 61, i32 noundef 1) #9
  %conv.i.i = trunc i32 %call.i.i to i8
  %7 = add i8 %conv.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %7)
  %8 = icmp ult i8 %7, -4
  br i1 %8, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = shl i32 %call.i.i, 4
  %sub.i = and i32 %conv.i, 4080
  %add.i = add nuw nsw i32 %sub.i, 376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %va_app_base.i.i = getelementptr inbounds %struct.keystone_pcie, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %12, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 16777216) #9, !srcloc !196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %15, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 16777216) #9, !srcloc !196
  %add10.i = add nuw nsw i32 %sub.i, 380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %va_app_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %va_app_base.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %17, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 16777216) #9, !srcloc !196
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i16 %interrupt_num to i8
  %call2 = tail call i32 @dw_pcie_ep_raise_msi_irq(ptr noundef %ep, i8 noundef zeroext %func_no, i8 noundef zeroext %conv) #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @dw_pcie_ep_raise_msix_irq(ptr noundef %ep, i8 noundef zeroext %func_no, i16 noundef zeroext %interrupt_num) #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.81) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb3, %sw.bb1, %if.end.i, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb3 ], [ 0, %sw.bb1 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @ks_pcie_am654_get_features(ptr nocapture noundef readnone %ep) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @ks_pcie_am654_epc_features
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_raise_msi_irq(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_raise_msix_irq(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !164, !166, !168, !169, !170, !172, !174, !176, !178, !180, !181, !182, !183}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__pci_fixup_ks_pcie_quirk569, !1, !"__pci_fixup_ks_pcie_quirk569", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 569, i32 1}
!2 = !{ptr @__initcall__kmod_pci_keystone__300_1330_ks_pcie_driver_init6, !3, !"__initcall__kmod_pci_keystone__300_1330_ks_pcie_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1330, i32 1}
!4 = !{ptr @ks_pcie_quirk.rc_pci_devids, !5, !"rc_pci_devids", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 532, i32 36}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 564, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ks_pcie_quirk._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @ks_pcie_quirk._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1326, i32 11}
!16 = !{ptr @ks_pcie_driver, !17, !"ks_pcie_driver", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1322, i32 31}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1144, i32 59}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1151, i32 59}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1156, i32 34}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1170, i32 6}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1172, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ks_pcie_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @ks_pcie_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1177, i32 33}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1190, i32 32}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1213, i32 39}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1218, i32 4}
!40 = !{ptr @ks_pcie_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ks_pcie_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1224, i32 3}
!44 = !{ptr @ks_pcie_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ks_pcie_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1232, i32 3}
!48 = !{ptr @ks_pcie_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ks_pcie_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1250, i32 34}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1252, i32 4}
!54 = !{ptr @ks_pcie_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ks_pcie_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1287, i32 3}
!58 = !{ptr @ks_pcie_probe._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ks_pcie_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @ks_pcie_dw_pcie_ops, !61, !"ks_pcie_dw_pcie_ops", i1 false, i1 false}
!61 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 867, i32 33}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 289, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ks_pcie_handle_error_irq._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @ks_pcie_handle_error_irq._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 292, i32 3}
!69 = !{ptr @ks_pcie_handle_error_irq._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ks_pcie_handle_error_irq._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 295, i32 3}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ks_pcie_handle_error_irq.__UNIQUE_ID_ddebug295, !72, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 298, i32 3}
!77 = !{ptr @ks_pcie_handle_error_irq.__UNIQUE_ID_ddebug296, !76, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 301, i32 3}
!80 = !{ptr @ks_pcie_handle_error_irq._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ks_pcie_handle_error_irq._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 304, i32 3}
!84 = !{ptr @ks_pcie_handle_error_irq._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ks_pcie_handle_error_irq._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1038, i32 47}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1057, i32 3}
!90 = !{ptr @ks_pcie_am654_set_mode._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ks_pcie_am654_set_mode._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1063, i32 3}
!94 = !{ptr @ks_pcie_am654_set_mode._entry.48, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ks_pcie_am654_set_mode._entry_ptr.50, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1020, i32 3}
!98 = !{ptr @ks_pcie_set_mode._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ks_pcie_set_mode._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @ks_pcie_of_match, !101, !"ks_pcie_of_match", i1 false, i1 false}
!101 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1087, i32 34}
!102 = !{ptr @ks_pcie_rc_of_data, !103, !"ks_pcie_rc_of_data", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1070, i32 37}
!104 = !{ptr @ks_pcie_host_ops, !105, !"ks_pcie_host_ops", i1 false, i1 false}
!105 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 841, i32 38}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 835, i32 4}
!108 = !{ptr @ks_pcie_ops, !109, !"ks_pcie_ops", i1 false, i1 false}
!109 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 484, i32 23}
!110 = !{ptr @ks_child_pcie_ops, !111, !"ks_child_pcie_ops", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 445, i32 23}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 698, i32 37}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 706, i32 3}
!116 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ks_pcie_config_legacy_irq._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @ks_pcie_config_legacy_irq._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 712, i32 3}
!122 = !{ptr @ks_pcie_config_legacy_irq._entry.57, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ks_pcie_config_legacy_irq._entry_ptr.59, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 734, i32 3}
!126 = !{ptr @ks_pcie_config_legacy_irq._entry.60, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ks_pcie_config_legacy_irq._entry_ptr.62, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 624, i32 2}
!130 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ks_pcie_legacy_irq_handler.__UNIQUE_ID_ddebug299, !129, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 266, i32 3}
!134 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ks_pcie_handle_legacy_irq.__UNIQUE_ID_ddebug294, !133, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!136 = !{ptr @ks_pcie_legacy_irq_domain_ops, !137, !"ks_pcie_legacy_irq_domain_ops", i1 false, i1 false}
!137 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 341, i32 36}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 324, i32 10}
!140 = !{ptr @ks_pcie_legacy_irq_chip, !141, !"ks_pcie_legacy_irq_chip", i1 false, i1 false}
!141 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 323, i32 24}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 647, i32 37}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 651, i32 3}
!146 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ks_pcie_config_msi_irq._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @ks_pcie_config_msi_irq._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 657, i32 3}
!151 = !{ptr @ks_pcie_config_msi_irq._entry.71, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @ks_pcie_config_msi_irq._entry_ptr.73, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 582, i32 2}
!155 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @ks_pcie_msi_irq_handler.__UNIQUE_ID_ddebug297, !154, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 601, i32 3}
!159 = !{ptr @ks_pcie_msi_irq_handler.__UNIQUE_ID_ddebug298, !158, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 781, i32 53}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 242, i32 10}
!164 = !{ptr @ks_pcie_msi_irq_chip, !165, !"ks_pcie_msi_irq_chip", i1 false, i1 false}
!165 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 241, i32 24}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 183, i32 2}
!168 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @ks_pcie_compose_msi_msg.__UNIQUE_ID_ddebug293, !167, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!170 = !{ptr @ks_pcie_am654_rc_of_data, !171, !"ks_pcie_am654_rc_of_data", i1 false, i1 false}
!171 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1075, i32 37}
!172 = !{ptr @ks_pcie_am654_host_ops, !173, !"ks_pcie_am654_host_ops", i1 false, i1 false}
!173 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 846, i32 38}
!174 = !{ptr @ks_pcie_am654_ep_of_data, !175, !"ks_pcie_am654_ep_of_data", i1 false, i1 false}
!175 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 1081, i32 37}
!176 = !{ptr @ks_pcie_am654_ep_ops, !177, !"ks_pcie_am654_ep_ops", i1 false, i1 false}
!177 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 947, i32 36}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 921, i32 3}
!180 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @ks_pcie_am654_raise_irq._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @ks_pcie_am654_raise_irq._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @ks_pcie_am654_epc_features, !184, !"ks_pcie_am654_epc_features", i1 false, i1 false}
!184 = !{!"../drivers/pci/controller/dwc/pci-keystone.c", i32 928, i32 38}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{!"auto-init"}
!195 = !{i64 2155760584}
!196 = !{i64 4298719}
!197 = !{i64 4299137}
!198 = !{i64 2155760358}
!199 = !{i64 2148752923, i64 2148752928, i64 2148752941, i64 2148752985, i64 2148753019, i64 2148753040}
!200 = !{i8 0, i8 2}
!201 = !{i64 2155808510}
!202 = !{i64 4298099}
