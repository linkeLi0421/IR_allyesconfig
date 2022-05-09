; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pci-dra7xx.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pci-dra7xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dw_pcie_ep_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
%struct.dra7xx_pcie_of_data = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.dra7xx_pcie = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pci_dra7xx__308_958_dra7xx_pcie_driver_init6 = internal global ptr @dra7xx_pcie_driver_init, section ".initcall6.init", align 4
@dra7xx_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dra7xx_pcie_probe, ptr null, ptr @dra7xx_pcie_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @of_dra7xx_pcie_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dra7xx_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dra7xx_pcie_driver_exit = internal global ptr @dra7xx_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [57 x i8] c"pci_dra7xx.author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [65 x i8] c"pci_dra7xx.description=PCIe controller driver for TI DRA7xx SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [54 x i8] c"pci_dra7xx.file=drivers/pci/controller/dwc/pci-dra7xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [26 x i8] c"pci_dra7xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dra7-pcie\00", [22 x i8] zeroinitializer }, align 32
@of_dra7xx_pcie_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7xx_pcie_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7xx_pcie_ep_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra746-pcie-rc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra746_pcie_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra726-pcie-rc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra726_pcie_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra746-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra746_pcie_ep_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra726-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra726_pcie_ep_of_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@dra7xx_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dra7xx_pcie_suspend, ptr @dra7xx_pcie_resume, ptr @dra7xx_pcie_suspend, ptr @dra7xx_pcie_resume, ptr @dra7xx_pcie_suspend, ptr @dra7xx_pcie_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dra7xx_pcie_suspend_noirq, ptr @dra7xx_pcie_resume_noirq, ptr @dra7xx_pcie_suspend_noirq, ptr @dra7xx_pcie_resume_noirq, ptr @dra7xx_pcie_suspend_noirq, ptr @dra7xx_pcie_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr @dra7xx_pcie_cpu_addr_fixup, ptr null, ptr null, ptr null, ptr @dra7xx_pcie_link_up, ptr @dra7xx_pcie_establish_link, ptr @dra7xx_pcie_stop_link }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti_conf\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy-names\00", [22 x i8] zeroinitializer }, align 32
@dra7xx_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 732, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to find the strings\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dra7xx_pcie_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pci/controller/dwc/pci-dra7xx.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dra7xx_pcie_probe._entry_ptr = internal global ptr @dra7xx_pcie_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clock request failed\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcie-phy%d\00", [21 x i8] zeroinitializer }, align 32
@dra7xx_pcie_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 779, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to enable phy\0A\00", [42 x i8] zeroinitializer }, align 32
@dra7xx_pcie_probe._entry_ptr.12 = internal global ptr @dra7xx_pcie_probe._entry.10, section ".printk_index", align 4
@dra7xx_pcie_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 788, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm_runtime_get_sync failed\0A\00", [36 x i8] zeroinitializer }, align 32
@dra7xx_pcie_probe._entry_ptr.15 = internal global ptr @dra7xx_pcie_probe._entry.13, section ".printk_index", align 4
@dra7xx_pcie_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 795, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gpio request failed, ret %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dra7xx_pcie_probe._entry_ptr.18 = internal global ptr @dra7xx_pcie_probe._entry.16, section ".printk_index", align 4
@dra7xx_pcie_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 815, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WA for Errata i870 not applied\0A\00", [32 x i8] zeroinitializer }, align 32
@dra7xx_pcie_probe._entry_ptr.21 = internal global ptr @dra7xx_pcie_probe._entry.19, section ".printk_index", align 4
@dra7xx_pcie_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 839, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"INVALID device type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dra7xx_pcie_probe._entry_ptr.24 = internal global ptr @dra7xx_pcie_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dra7xx-pcie-main\00", [47 x i8] zeroinitializer }, align 32
@dra7xx_pcie_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 846, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@dra7xx_pcie_probe._entry_ptr.28 = internal global ptr @dra7xx_pcie_probe._entry.26, section ".printk_index", align 4
@dra7xx_pcie_establish_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 146, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"link is already up\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dra7xx_pcie_establish_link\00", [37 x i8] zeroinitializer }, align 32
@dra7xx_pcie_establish_link._entry_ptr = internal global ptr @dra7xx_pcie_establish_link._entry, section ".printk_index", align 4
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,syscon-lane-sel\00", [45 x i8] zeroinitializer }, align 32
@dra7xx_pcie_configure_two_lane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 667, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to get ti,syscon-lane-sel\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dra7xx_pcie_configure_two_lane\00", [33 x i8] zeroinitializer }, align 32
@dra7xx_pcie_configure_two_lane._entry_ptr = internal global ptr @dra7xx_pcie_configure_two_lane._entry, section ".printk_index", align 4
@dra7xx_pcie_configure_two_lane._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 673, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"couldn't get lane selection reg offset\0A\00", [56 x i8] zeroinitializer }, align 32
@dra7xx_pcie_configure_two_lane._entry_ptr.36 = internal global ptr @dra7xx_pcie_configure_two_lane._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti,syscon-unaligned-access\00", [37 x i8] zeroinitializer }, align 32
@dra7xx_pcie_unaligned_memaccess.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.39, ptr @.str.5, ptr @.str.40, i8 0, i8 -98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_dra7xx\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dra7xx_pcie_unaligned_memaccess\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't get ti,syscon-unaligned-access\0A\00", [58 x i8] zeroinitializer }, align 32
@dra7xx_pcie_unaligned_memaccess._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 642, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to parse ti,syscon-unaligned-access\0A\00", [52 x i8] zeroinitializer }, align 32
@dra7xx_pcie_unaligned_memaccess._entry_ptr = internal global ptr @dra7xx_pcie_unaligned_memaccess._entry, section ".printk_index", align 4
@dra7xx_pcie_unaligned_memaccess._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.5, i32 649, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable unaligned access\0A\00", [61 x i8] zeroinitializer }, align 32
@dra7xx_pcie_unaligned_memaccess._entry_ptr.44 = internal global ptr @dra7xx_pcie_unaligned_memaccess._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc_dbics\00", [23 x i8] zeroinitializer }, align 32
@dra7xx_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @dra7xx_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@dra7xx_add_pcie_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 500, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize host\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dra7xx_add_pcie_port\00", [43 x i8] zeroinitializer }, align 32
@dra7xx_add_pcie_port._entry_ptr = internal global ptr @dra7xx_add_pcie_port._entry, section ".printk_index", align 4
@dra7xx_pcie_init_irq_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 356, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No PCIe Intc node found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dra7xx_pcie_init_irq_domain\00", [36 x i8] zeroinitializer }, align 32
@dra7xx_pcie_init_irq_domain._entry_ptr = internal global ptr @dra7xx_pcie_init_irq_domain._entry, section ".printk_index", align 4
@intx_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @dra7xx_pcie_intx_map, ptr null, ptr @pci_irqd_intx_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dra7xx_pcie_init_irq_domain._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.5, i32 366, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get a INTx IRQ domain\0A\00", [63 x i8] zeroinitializer }, align 32
@dra7xx_pcie_init_irq_domain._entry_ptr.52 = internal global ptr @dra7xx_pcie_init_irq_domain._entry.50, section ".printk_index", align 4
@dra7xx_pcie_handle_msi_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dra7xx_pcie_handle_msi_irq = private unnamed_addr constant [27 x i8] c"dra7xx_pcie_handle_msi_irq\00", align 1
@dra7xx_pcie_handle_msi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.dra7xx_pcie_handle_msi_irq, ptr @.str.5, i32 251, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Too many MSI IRQs to handle\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dra7xx_pcie_handle_msi_irq._entry_ptr = internal global ptr @dra7xx_pcie_handle_msi_irq._entry, section ".printk_index", align 4
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@pcie_ep_ops = internal constant { %struct.dw_pcie_ep_ops, [16 x i8] } { %struct.dw_pcie_ep_ops { ptr @dra7xx_pcie_ep_init, ptr @dra7xx_pcie_raise_irq, ptr @dra7xx_pcie_get_features, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep_dbics\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep_dbics2\00", [22 x i8] zeroinitializer }, align 32
@dra7xx_add_pcie_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 466, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to initialize endpoint\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dra7xx_add_pcie_ep\00", [45 x i8] zeroinitializer }, align 32
@dra7xx_add_pcie_ep._entry_ptr = internal global ptr @dra7xx_add_pcie_ep._entry, section ".printk_index", align 4
@dra7xx_pcie_raise_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 420, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UNKNOWN IRQ type\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dra7xx_pcie_raise_irq\00", [42 x i8] zeroinitializer }, align 32
@dra7xx_pcie_raise_irq._entry_ptr = internal global ptr @dra7xx_pcie_raise_irq._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dra7xx_pcie_epc_features = internal constant { %struct.pci_epc_features, [32 x i8] } { %struct.pci_epc_features { i8 -96, i8 0, i8 0, [6 x i64] zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.63, i8 0, i8 74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dra7xx_pcie_irq_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"System Error\0A\00", [18 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.64, i8 0, i8 75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Fatal Error\0A\00", [19 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.65, i8 0, i8 76, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Non Fatal Error\0A\00", [47 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.66, i8 0, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Correctable Error\0A\00", [45 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.67, i8 0, i8 77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AXI tag lookup fatal Error\0A\00", [36 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.68, i8 0, i8 78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ECRC Error\0A\00", [20 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.69, i8 0, i8 79, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Power Management Event Turn-Off message received\0A\00", [46 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.70, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Power Management Turn-Off Ack message received\0A\00", [48 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.71, i8 0, i8 81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PM Power Management Event message received\0A\00", [52 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.72, i8 0, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Link Request Reset\0A\00", [44 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.73, i8 0, i8 83, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Link-up state change\0A\00", [42 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.74, i8 0, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CFG 'Bus Master Enable' change\0A\00", [32 x i8] zeroinitializer }, align 32
@dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.62, ptr @.str.5, ptr @.str.75, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CFG 'Memory Space Enable' change\0A\00", [62 x i8] zeroinitializer }, align 32
@dra7xx_pcie_shutdown.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.76, ptr @.str.5, ptr @.str.77, i8 0, i8 -23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dra7xx_pcie_shutdown\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm_runtime_put_sync failed\0A\00", [36 x i8] zeroinitializer }, align 32
@dra7xx_pcie_rc_of_data = internal constant { %struct.dra7xx_pcie_of_data, [24 x i8] } { %struct.dra7xx_pcie_of_data { i32 3, i32 0 }, [24 x i8] zeroinitializer }, align 32
@dra7xx_pcie_ep_of_data = internal constant { %struct.dra7xx_pcie_of_data, [24 x i8] } { %struct.dra7xx_pcie_of_data { i32 1, i32 0 }, [24 x i8] zeroinitializer }, align 32
@dra746_pcie_rc_of_data = internal constant { %struct.dra7xx_pcie_of_data, [24 x i8] } { %struct.dra7xx_pcie_of_data { i32 3, i32 4 }, [24 x i8] zeroinitializer }, align 32
@dra726_pcie_rc_of_data = internal constant { %struct.dra7xx_pcie_of_data, [24 x i8] } { %struct.dra7xx_pcie_of_data { i32 3, i32 12 }, [24 x i8] zeroinitializer }, align 32
@dra746_pcie_ep_of_data = internal constant { %struct.dra7xx_pcie_of_data, [24 x i8] } { %struct.dra7xx_pcie_of_data { i32 1, i32 4 }, [24 x i8] zeroinitializer }, align 32
@dra726_pcie_ep_of_data = internal constant { %struct.dra7xx_pcie_of_data, [24 x i8] } { %struct.dra7xx_pcie_of_data { i32 1, i32 12 }, [24 x i8] zeroinitializer }, align 32
@dra7xx_pcie_resume_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.78, ptr @.str.5, i32 916, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dra7xx_pcie_resume_noirq\00", [39 x i8] zeroinitializer }, align 32
@dra7xx_pcie_resume_noirq._entry_ptr = internal global ptr @dra7xx_pcie_resume_noirq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"dra7xx_pcie_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 948, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 951, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"of_dra7xx_pcie_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 585, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"dra7xx_pcie_pm_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 942, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 507, i32 33 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 726, i32 53 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 730, i32 44 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 732, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 747, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 754, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 779, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 788, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 795, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 815, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 839, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 844, i32 24 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 846, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 146, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 665, i32 52 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 667, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 673, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 633, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 635, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 642, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 649, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 492, i32 62 }
@___asan_gen_.219 = private unnamed_addr constant [21 x i8] c"dra7xx_pcie_host_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 373, i32 38 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 500, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 356, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"intx_domain_ops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 200, i32 36 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 366, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 250, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [12 x i8] c"pcie_ep_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 438, i32 36 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 455, i32 62 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 460, i32 47 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 466, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 420, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [25 x i8] c"dra7xx_pcie_epc_features\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 426, i32 38 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 299, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 302, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 305, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 308, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 311, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 314, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 317, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 321, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 325, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 328, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 333, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 337, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 340, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 934, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [23 x i8] c"dra7xx_pcie_rc_of_data\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 557, i32 41 }
@___asan_gen_.345 = private unnamed_addr constant [23 x i8] c"dra7xx_pcie_ep_of_data\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 561, i32 41 }
@___asan_gen_.348 = private unnamed_addr constant [23 x i8] c"dra746_pcie_rc_of_data\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 565, i32 41 }
@___asan_gen_.351 = private unnamed_addr constant [23 x i8] c"dra726_pcie_rc_of_data\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 570, i32 41 }
@___asan_gen_.354 = private unnamed_addr constant [23 x i8] c"dra746_pcie_ep_of_data\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 575, i32 41 }
@___asan_gen_.357 = private unnamed_addr constant [23 x i8] c"dra726_pcie_ep_of_data\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 580, i32 41 }
@___asan_gen_.360 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.364 = private constant [43 x i8] c"../drivers/pci/controller/dwc/pci-dra7xx.c\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 916, i32 3 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_dra7xx_pcie_driver_exit, ptr @__initcall__kmod_pci_dra7xx__308_958_dra7xx_pcie_driver_init6, ptr @dra7xx_add_pcie_ep._entry, ptr @dra7xx_add_pcie_ep._entry_ptr, ptr @dra7xx_add_pcie_port._entry, ptr @dra7xx_add_pcie_port._entry_ptr, ptr @dra7xx_pcie_configure_two_lane._entry, ptr @dra7xx_pcie_configure_two_lane._entry.34, ptr @dra7xx_pcie_configure_two_lane._entry_ptr, ptr @dra7xx_pcie_configure_two_lane._entry_ptr.36, ptr @dra7xx_pcie_driver_exit, ptr @dra7xx_pcie_establish_link._entry, ptr @dra7xx_pcie_establish_link._entry_ptr, ptr @dra7xx_pcie_handle_msi_irq._entry, ptr @dra7xx_pcie_handle_msi_irq._entry_ptr, ptr @dra7xx_pcie_init_irq_domain._entry, ptr @dra7xx_pcie_init_irq_domain._entry.50, ptr @dra7xx_pcie_init_irq_domain._entry_ptr, ptr @dra7xx_pcie_init_irq_domain._entry_ptr.52, ptr @dra7xx_pcie_probe._entry, ptr @dra7xx_pcie_probe._entry.10, ptr @dra7xx_pcie_probe._entry.13, ptr @dra7xx_pcie_probe._entry.16, ptr @dra7xx_pcie_probe._entry.19, ptr @dra7xx_pcie_probe._entry.22, ptr @dra7xx_pcie_probe._entry.26, ptr @dra7xx_pcie_probe._entry_ptr, ptr @dra7xx_pcie_probe._entry_ptr.12, ptr @dra7xx_pcie_probe._entry_ptr.15, ptr @dra7xx_pcie_probe._entry_ptr.18, ptr @dra7xx_pcie_probe._entry_ptr.21, ptr @dra7xx_pcie_probe._entry_ptr.24, ptr @dra7xx_pcie_probe._entry_ptr.28, ptr @dra7xx_pcie_raise_irq._entry, ptr @dra7xx_pcie_raise_irq._entry_ptr, ptr @dra7xx_pcie_resume_noirq._entry, ptr @dra7xx_pcie_resume_noirq._entry_ptr, ptr @dra7xx_pcie_unaligned_memaccess._entry, ptr @dra7xx_pcie_unaligned_memaccess._entry.42, ptr @dra7xx_pcie_unaligned_memaccess._entry_ptr, ptr @dra7xx_pcie_unaligned_memaccess._entry_ptr.44, ptr @dra7xx_pcie_driver, ptr @.str, ptr @of_dra7xx_pcie_match, ptr @dra7xx_pcie_pm_ops, ptr @dw_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @dra7xx_pcie_host_ops, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @intx_domain_ops, ptr @.str.51, ptr @dra7xx_pcie_handle_msi_irq._rs, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @pcie_ep_ops, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @dra7xx_pcie_epc_features, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @dra7xx_pcie_rc_of_data, ptr @dra7xx_pcie_ep_of_data, ptr @dra746_pcie_rc_of_data, ptr @dra726_pcie_rc_of_data, ptr @dra746_pcie_ep_of_data, ptr @dra726_pcie_ep_of_data, ptr @.str.78], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dra7xx_pcie_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_establish_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_configure_two_lane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_configure_two_lane._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_unaligned_memaccess._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_unaligned_memaccess._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_add_pcie_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_init_irq_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intx_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_init_irq_domain._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_handle_msi_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_handle_msi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_ep_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_add_pcie_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_raise_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_epc_features to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_rc_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_ep_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra746_pcie_rc_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra726_pcie_rc_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra746_pcie_ep_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra726_pcie_ep_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_pcie_resume_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dra7xx_pcie_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dra7xx_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @dra7xx_pcie_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name) #10
  %2 = call ptr @memset(ptr %name, i32 255, i32 10)
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %b1co_mode_sel_mask3 = getelementptr inbounds %struct.dra7xx_pcie_of_data, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %b1co_mode_sel_mask3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b1co_mode_sel_mask3, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #10
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i250 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #10
  %tobool9.not = icmp eq ptr %call.i250, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %call.i250 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i250, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i250, i32 0, i32 9
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %call13 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #10
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call.i251 = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %cmp22 = icmp slt i32 %call.i251, 0
  br i1 %cmp22, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i251, i32 4) #10
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end24.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !208

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end24
  %12 = extractvalue { i32, i1 } %10, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %12, i32 noundef 3520) #10
  %tobool26.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool26.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %devm_kcalloc.exit255

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit255:                             ; preds = %devm_kcalloc.exit
  %call5.i.i252 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %12, i32 noundef 3520) #10
  %tobool30.not = icmp eq ptr %call5.i.i252, null
  br i1 %tobool30.not, label %devm_kcalloc.exit255.cleanup_crit_edge, label %if.end32

devm_kcalloc.exit255.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit255
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %devm_kcalloc.exit255
  %call33 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.dra7xx_pcie, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call33, ptr %clk, align 4
  %cmp.i256 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i256, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call33 to i32
  %call39 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %14, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %call42 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %for.cond.preheader, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %cmp46274.not = icmp eq i32 %call.i251, 0
  br i1 %cmp46274.not, label %for.end.thread, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %base64284 = getelementptr inbounds %struct.dra7xx_pcie, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %base64284 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call16, ptr %base64284, align 4
  %phy65285 = getelementptr inbounds %struct.dra7xx_pcie, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %phy65285 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i, ptr %phy65285, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i250, ptr %call.i, align 4
  %phy_count67286 = getelementptr inbounds %struct.dra7xx_pcie, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %phy_count67286 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i251, ptr %phy_count67286, align 4
  br label %if.end75

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0275 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.9, i32 noundef %i.0275)
  %call49 = call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull %name) #10
  %arrayidx = getelementptr ptr, ptr %call5.i.i, i32 %i.0275
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call49, ptr %arrayidx, align 4
  %cmp.i257 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.then52, label %if.end55

if.then52:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call49 to i32
  br label %cleanup

if.end55:                                         ; preds = %for.body
  %call58 = call ptr @device_link_add(ptr noundef %dev1, ptr noundef %call49, i32 noundef 1) #10
  %arrayidx59 = getelementptr ptr, ptr %call5.i.i252, i32 %i.0275
  %21 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call58, ptr %arrayidx59, align 4
  %tobool61.not = icmp eq ptr %call58, null
  br i1 %tobool61.not, label %if.end55.err_link_crit_edge, label %for.inc

if.end55.err_link_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_link

for.inc:                                          ; preds = %if.end55
  %inc = add nuw nsw i32 %i.0275, 1
  %exitcond.not = icmp eq i32 %inc, %call.i251
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %base64 = getelementptr inbounds %struct.dra7xx_pcie, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %base64 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call16, ptr %base64, align 4
  %phy65 = getelementptr inbounds %struct.dra7xx_pcie, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %phy65 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i, ptr %phy65, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i250, ptr %call.i, align 4
  %phy_count67 = getelementptr inbounds %struct.dra7xx_pcie, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %phy_count67 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i251, ptr %phy_count67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i251)
  %cmp68 = icmp eq i32 %call.i251, 2
  br i1 %cmp68, label %if.then69, label %for.end.if.end75_crit_edge

for.end.if.end75_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then69:                                        ; preds = %for.end
  %call70 = call fastcc i32 @dra7xx_pcie_configure_two_lane(ptr noundef %dev1, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.then69.if.end75_crit_edge

if.then69.if.end75_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %phy_count67 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %phy_count67, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.then69.if.end75_crit_edge, %for.end.if.end75_crit_edge, %for.end.thread
  %base64289 = phi ptr [ %base64284, %for.end.thread ], [ %base64, %if.then69.if.end75_crit_edge ], [ %base64, %if.then72 ], [ %base64, %for.end.if.end75_crit_edge ]
  %i.0.lcssa288 = phi i32 [ 0, %for.end.thread ], [ 2, %if.then69.if.end75_crit_edge ], [ 2, %if.then72 ], [ %call.i251, %for.end.if.end75_crit_edge ]
  %call76 = call fastcc i32 @dra7xx_pcie_enable_phy(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end82, label %do.end81

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end82:                                         ; preds = %if.end75
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #10
  %call.i258 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %cmp84 = icmp slt i32 %call.i258, 0
  br i1 %cmp84, label %do.end88, label %if.end89

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #13
  br label %err_get_sync

if.end89:                                         ; preds = %if.end82
  %call90 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef null, i32 noundef 7) #10
  %cmp.i259 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i259, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %call90 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %28) #13
  br label %err_get_sync

if.end98:                                         ; preds = %if.end89
  %29 = ptrtoint ptr %base64289 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base64289, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 260
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %32 = and i32 %31, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %base64289 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base64289, align 4
  %add.ptr.i261 = getelementptr i8, ptr %34, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261, i32 %32) #10, !srcloc !212
  %35 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end122 [
    i32 3, label %sw.bb
    i32 1, label %sw.bb111
  ]

sw.bb:                                            ; preds = %if.end98
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %base64289 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base64289, align 4
  %add.ptr.i263 = getelementptr i8, ptr %37, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263, i32 67108864) #10, !srcloc !212
  %call100 = call fastcc i32 @dra7xx_pcie_unaligned_memaccess(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %sw.bb.if.end106_crit_edge, label %do.end105

sw.bb.if.end106_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

do.end105:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #13
  br label %if.end106

if.end106:                                        ; preds = %do.end105, %sw.bb.if.end106_crit_edge
  %call107 = call fastcc i32 @dra7xx_add_pcie_port(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.end106.err_get_sync_crit_edge, label %if.end106.sw.epilog_crit_edge

if.end106.sw.epilog_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end106.err_get_sync_crit_edge:                 ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_get_sync

sw.bb111:                                         ; preds = %if.end98
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %base64289 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base64289, align 4
  %add.ptr.i265 = getelementptr i8, ptr %39, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265, i32 0) #10, !srcloc !212
  %call112 = call fastcc i32 @dra7xx_pcie_unaligned_memaccess(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %sw.bb111.err_get_sync_crit_edge

sw.bb111.err_get_sync_crit_edge:                  ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_get_sync

if.end115:                                        ; preds = %sw.bb111
  %call116 = call fastcc i32 @dra7xx_add_pcie_ep(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.end115.err_get_sync_crit_edge, label %if.end115.sw.epilog_crit_edge

if.end115.sw.epilog_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end115.err_get_sync_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_get_sync

do.end122:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %4) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end122, %if.end115.sw.epilog_crit_edge, %if.end106.sw.epilog_crit_edge
  %mode123 = getelementptr inbounds %struct.dra7xx_pcie, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %mode123 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %4, ptr %mode123, align 4
  %call.i266 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call13, ptr noundef nonnull @dra7xx_pcie_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool125.not = icmp eq i32 %call.i266, 0
  br i1 %tobool125.not, label %sw.epilog.cleanup_crit_edge, label %do.end129

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end129:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #13
  br label %err_get_sync

err_get_sync:                                     ; preds = %do.end129, %if.end115.err_get_sync_crit_edge, %sw.bb111.err_get_sync_crit_edge, %if.end106.err_get_sync_crit_edge, %if.then92, %do.end88
  %ret.0 = phi i32 [ %call.i258, %do.end88 ], [ %28, %if.then92 ], [ %call.i266, %do.end129 ], [ %call112, %sw.bb111.err_get_sync_crit_edge ], [ %call116, %if.end115.err_get_sync_crit_edge ], [ %call107, %if.end106.err_get_sync_crit_edge ]
  %call.i267 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #10
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  call fastcc void @dra7xx_pcie_disable_phy(ptr noundef nonnull %call.i)
  br label %err_link

err_link:                                         ; preds = %err_get_sync, %if.end55.err_link_crit_edge
  %i.0272 = phi i32 [ %i.0.lcssa288, %err_get_sync ], [ %i.0275, %if.end55.err_link_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %err_get_sync ], [ -22, %if.end55.err_link_crit_edge ]
  %dec276 = add i32 %i.0272, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec276)
  %cmp132277 = icmp sgt i32 %dec276, -1
  br i1 %cmp132277, label %err_link.while.body_crit_edge, label %err_link.cleanup_crit_edge

err_link.cleanup_crit_edge:                       ; preds = %err_link
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_link.while.body_crit_edge:                    ; preds = %err_link
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_link.while.body_crit_edge
  %dec278 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec276, %err_link.while.body_crit_edge ]
  %arrayidx133 = getelementptr ptr, ptr %call5.i.i252, i32 %dec278
  %41 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx133, align 4
  call void @device_link_del(ptr noundef %42) #10
  %dec = add nsw i32 %dec278, -1
  %cmp132.not = icmp eq i32 %dec278, 0
  br i1 %cmp132.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err_link.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end81, %if.then52, %if.end40.cleanup_crit_edge, %if.then36, %devm_kcalloc.exit255.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end, %if.then18, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then18 ], [ %call.i251, %do.end ], [ %call39, %if.then36 ], [ %20, %if.then52 ], [ %call76, %do.end81 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit255.cleanup_crit_edge ], [ %call42, %if.end40.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -12, %if.end24.cleanup_crit_edge ], [ %ret.1, %err_link.cleanup_crit_edge ], [ %ret.1, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dra7xx_pcie_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 260
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %13, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %11) #10, !srcloc !212
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_shutdown.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_shutdown, %if.end8)) #10
          to label %if.then7 [label %if.end8], !srcloc !213

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_shutdown.__UNIQUE_ID_ddebug307, ptr noundef %dev1, ptr noundef nonnull @.str.77) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body, %entry.if.end8_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  %phy_count1.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %phy_count1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not9.i = icmp eq i32 %15, 0
  br i1 %tobool.not9.i, label %if.end8.dra7xx_pcie_disable_phy.exit_crit_edge, label %while.body.lr.ph.i

if.end8.dra7xx_pcie_disable_phy.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %dra7xx_pcie_disable_phy.exit

while.body.lr.ph.i:                               ; preds = %if.end8
  %phy.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %1, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %phy_count.010.i = phi i32 [ %15, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %phy_count.010.i, -1
  %16 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %17, i32 %dec.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %call.i14 = tail call i32 @phy_power_off(ptr noundef %19) #10
  %20 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %21, i32 %dec.i
  %22 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 @phy_exit(ptr noundef %23) #10
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.dra7xx_pcie_disable_phy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.dra7xx_pcie_disable_phy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dra7xx_pcie_disable_phy.exit

dra7xx_pcie_disable_phy.exit:                     ; preds = %while.body.i.dra7xx_pcie_disable_phy.exit_crit_edge, %if.end8.dra7xx_pcie_disable_phy.exit_crit_edge
  %clk = getelementptr inbounds %struct.dra7xx_pcie, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %25) #10
  tail call void @clk_unprepare(ptr noundef %25) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dra7xx_pcie_configure_two_lane(ptr noundef %dev, i32 noundef %b1co_mode_sel_mask) unnamed_addr #2 align 64 {
entry:
  %pcie_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcie_reg) #10
  %2 = ptrtoint ptr %pcie_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pcie_reg, align 4, !annotation !214
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.31) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef nonnull %pcie_reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %b1co_mode_sel_mask, 1
  %3 = ptrtoint ptr %pcie_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcie_reg, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %4, i32 noundef %or, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ 0, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcie_reg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dra7xx_pcie_enable_phy(ptr nocapture noundef readonly %dra7xx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_count1 = getelementptr inbounds %struct.dra7xx_pcie, ptr %dra7xx, i32 0, i32 2
  %0 = ptrtoint ptr %phy_count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp50 = icmp sgt i32 %1, 0
  br i1 %cmp50, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %phy = getelementptr inbounds %struct.dra7xx_pcie, ptr %dra7xx, i32 0, i32 3
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
  %call = tail call i32 @phy_set_mode_ext(ptr noundef %5, i32 noundef 14, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %for.body.err_phy_crit_edge, label %if.end

for.body.err_phy_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_phy

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %i.051
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %call5 = tail call i32 @phy_init(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.err_phy_crit_edge, label %if.end8

if.end.err_phy_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_phy

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %arrayidx10 = getelementptr ptr, ptr %11, i32 %i.051
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call i32 @phy_power_on(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %for.inc

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %arrayidx15 = getelementptr ptr, ptr %15, i32 %i.051
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx15, align 4
  %call16 = tail call i32 @phy_exit(ptr noundef %17) #10
  br label %err_phy

for.inc:                                          ; preds = %if.end8
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_phy:                                          ; preds = %if.then13, %if.end.err_phy_crit_edge, %for.body.err_phy_crit_edge
  %ret.0 = phi i32 [ %call11, %if.then13 ], [ %call5, %if.end.err_phy_crit_edge ], [ %call, %for.body.err_phy_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.051)
  %cmp1853.not = icmp eq i32 %i.051, 0
  br i1 %cmp1853.not, label %err_phy.cleanup_crit_edge, label %err_phy.while.body_crit_edge

err_phy.while.body_crit_edge:                     ; preds = %err_phy
  br label %while.body

err_phy.cleanup_crit_edge:                        ; preds = %err_phy
  call void @__sanitizer_cov_trace_pc() #12
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
  %call21 = tail call i32 @phy_power_off(ptr noundef %21) #10
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %arrayidx23 = getelementptr ptr, ptr %23, i32 %dec54
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx23, align 4
  %call24 = tail call i32 @phy_exit(ptr noundef %25) #10
  %cmp18 = icmp sgt i32 %dec54.in, 1
  br i1 %cmp18, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err_phy.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_phy.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dra7xx_pcie_unaligned_memaccess(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #10
  %2 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.37) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_unaligned_memaccess.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_unaligned_memaccess, %cleanup)) #10
          to label %if.then6 [label %cleanup], !srcloc !213

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_unaligned_memaccess.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %args) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %args15 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %args15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args15, align 4
  %arrayidx17 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx17, align 4
  %call.i39 = call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %4, i32 noundef %6, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool21.not = icmp eq i32 %call.i39, 0
  br i1 %tobool21.not, label %if.end14.if.end26_crit_edge, label %do.end25

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %if.end14.if.end26_crit_edge
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end13, %if.then6, %do.body
  %retval.0 = phi i32 [ %call.i, %do.end13 ], [ %call.i39, %if.end26 ], [ -22, %if.then6 ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dra7xx_add_pcie_port(ptr nocapture noundef readonly %dra7xx, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dra7xx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dra7xx, align 4
  %pp2 = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #10
  %irq = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 7, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %msi_irq = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 7, i32 9
  %5 = ptrtoint ptr %msi_irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -19, ptr %msi_irq, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %call3.i = tail call ptr @of_get_next_child(ptr noundef %11, ptr noundef null) #10
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end.dra7xx_pcie_init_irq_domain.exit.thread_crit_edge, label %if.end.i

if.end.dra7xx_pcie_init_irq_domain.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dra7xx_pcie_init_irq_domain.exit.thread

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %13, ptr noundef nonnull @dra7xx_pcie_msi_irq_handler, ptr noundef %pp2) #10
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call3.i, i32 0, i32 3
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @intx_domain_ops, ptr noundef %pp2) #10
  %irq_domain.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1.i.i, ptr %irq_domain.i, align 4
  tail call void @of_node_put(ptr noundef nonnull %call3.i) #10
  %15 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_domain.i, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  br i1 %tobool6.not.i, label %if.end.i.dra7xx_pcie_init_irq_domain.exit.thread_crit_edge, label %if.end9

if.end.i.dra7xx_pcie_init_irq_domain.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dra7xx_pcie_init_irq_domain.exit.thread

dra7xx_pcie_init_irq_domain.exit.thread:          ; preds = %if.end.i.dra7xx_pcie_init_irq_domain.exit.thread_crit_edge, %if.end.dra7xx_pcie_init_irq_domain.exit.thread_crit_edge
  %.str.51.sink.i = phi ptr [ @.str.48, %if.end.dra7xx_pcie_init_irq_domain.exit.thread_crit_edge ], [ @.str.51, %if.end.i.dra7xx_pcie_init_irq_domain.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull %.str.51.sink.i) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end.i
  %call10 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.45) #10
  %dbi_base = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dbi_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call10, ptr %dbi_base, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 7, i32 8
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dra7xx_pcie_host_ops, ptr %ops, align 8
  %call17 = tail call i32 @dw_pcie_host_init(ptr noundef %pp2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end16.cleanup_crit_edge, label %do.end

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end16.cleanup_crit_edge, %if.then13, %dra7xx_pcie_init_irq_domain.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then13 ], [ %call17, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ -19, %dra7xx_pcie_init_irq_domain.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dra7xx_add_pcie_ep(ptr nocapture noundef readonly %dra7xx, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = ptrtoint ptr %dra7xx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dra7xx, align 4
  %ep3 = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pcie_ep_ops, ptr %ops, align 4
  %call = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.56) #10
  %dbi_base = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dbi_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %dbi_base, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.57) #10
  %dbi_base2 = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dbi_base2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %dbi_base2, align 8
  %cmp.i31 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @dw_pcie_ep_init(ptr noundef %ep3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %do.end

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end14.cleanup_crit_edge, %if.then11, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %6, %if.then11 ], [ %call15, %do.end ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ep3 = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 8
  %base.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %arg, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !209
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end10)) #10
          to label %if.then9 [label %if.end10], !srcloc !213

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug293, ptr noundef %3, ptr noundef nonnull @.str.63) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.body, %entry.if.end10_crit_edge
  %and11 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end32_crit_edge, label %do.body14

if.end10.if.end32_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.body14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end32)) #10
          to label %if.then28 [label %if.end32], !srcloc !213

if.then28:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug294, ptr noundef %3, ptr noundef nonnull @.str.64) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %do.body14, %if.end10.if.end32_crit_edge
  %and33 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end54_crit_edge, label %do.body36

if.end32.if.end54_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end54)) #10
          to label %if.then50 [label %if.end54], !srcloc !213

if.then50:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.65) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %do.body36, %if.end32.if.end54_crit_edge
  %and55 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end76_crit_edge, label %do.body58

if.end54.if.end76_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

do.body58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end76)) #10
          to label %if.then72 [label %if.end76], !srcloc !213

if.then72:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug296, ptr noundef %3, ptr noundef nonnull @.str.66) #10
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %do.body58, %if.end54.if.end76_crit_edge
  %and77 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end98_crit_edge, label %do.body80

if.end76.if.end98_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

do.body80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end98)) #10
          to label %if.then94 [label %if.end98], !srcloc !213

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug297, ptr noundef %3, ptr noundef nonnull @.str.67) #10
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %do.body80, %if.end76.if.end98_crit_edge
  %and99 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.if.end120_crit_edge, label %do.body102

if.end98.if.end120_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

do.body102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end120)) #10
          to label %if.then116 [label %if.end120], !srcloc !213

if.then116:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug298, ptr noundef %3, ptr noundef nonnull @.str.68) #10
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %do.body102, %if.end98.if.end120_crit_edge
  %and121 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.if.end142_crit_edge, label %do.body124

if.end120.if.end142_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

do.body124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end142)) #10
          to label %if.then138 [label %if.end142], !srcloc !213

if.then138:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.69) #10
  br label %if.end142

if.end142:                                        ; preds = %if.then138, %do.body124, %if.end120.if.end142_crit_edge
  %and143 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end142.if.end164_crit_edge, label %do.body146

if.end142.if.end164_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

do.body146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end164)) #10
          to label %if.then160 [label %if.end164], !srcloc !213

if.then160:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug300, ptr noundef %3, ptr noundef nonnull @.str.70) #10
  br label %if.end164

if.end164:                                        ; preds = %if.then160, %do.body146, %if.end142.if.end164_crit_edge
  %and165 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end164.if.end186_crit_edge, label %do.body168

if.end164.if.end186_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

do.body168:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end186)) #10
          to label %if.then182 [label %if.end186], !srcloc !213

if.then182:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug301, ptr noundef %3, ptr noundef nonnull @.str.71) #10
  br label %if.end186

if.end186:                                        ; preds = %if.then182, %do.body168, %if.end164.if.end186_crit_edge
  %and187 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %if.end186.if.end208_crit_edge, label %do.body190

if.end186.if.end208_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end208

do.body190:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end208)) #10
          to label %if.then204 [label %if.end208], !srcloc !213

if.then204:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug302, ptr noundef %3, ptr noundef nonnull @.str.72) #10
  br label %if.end208

if.end208:                                        ; preds = %if.then204, %do.body190, %if.end186.if.end208_crit_edge
  %and209 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end208.if.end232_crit_edge, label %if.then211

if.end208.if.end232_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

if.then211:                                       ; preds = %if.end208
  %mode = getelementptr inbounds %struct.dra7xx_pcie, ptr %arg, i32 0, i32 6
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then212, label %if.then211.do.body214_crit_edge

if.then211.do.body214_crit_edge:                  ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body214

if.then212:                                       ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dw_pcie_ep_linkup(ptr noundef %ep3) #10
  br label %do.body214

do.body214:                                       ; preds = %if.then212, %if.then211.do.body214_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end232)) #10
          to label %if.then228 [label %if.end232], !srcloc !213

if.then228:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug303, ptr noundef %3, ptr noundef nonnull @.str.73) #10
  br label %if.end232

if.end232:                                        ; preds = %if.then228, %do.body214, %if.end208.if.end232_crit_edge
  %and233 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.end232.if.end254_crit_edge, label %do.body236

if.end232.if.end254_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

do.body236:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end254)) #10
          to label %if.then250 [label %if.end254], !srcloc !213

if.then250:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.74) #10
  br label %if.end254

if.end254:                                        ; preds = %if.then250, %do.body236, %if.end232.if.end254_crit_edge
  %and255 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  br i1 %tobool256.not, label %if.end254.if.end276_crit_edge, label %do.body258

if.end254.if.end276_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end276

do.body258:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dra7xx_pcie_irq_handler, %if.end276)) #10
          to label %if.then272 [label %if.end276], !srcloc !213

if.then272:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.75) #10
  br label %if.end276

if.end276:                                        ; preds = %if.then272, %do.body258, %if.end254.if.end276_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i343 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i343, i32 %6) #10, !srcloc !212
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dra7xx_pcie_disable_phy(ptr nocapture noundef readonly %dra7xx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_count1 = getelementptr inbounds %struct.dra7xx_pcie, ptr %dra7xx, i32 0, i32 2
  %0 = ptrtoint ptr %phy_count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not9 = icmp eq i32 %1, 0
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %phy = getelementptr inbounds %struct.dra7xx_pcie, ptr %dra7xx, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %phy_count.010 = phi i32 [ %1, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %phy_count.010, -1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %dec
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %5) #10
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %arrayidx3 = getelementptr ptr, ptr %7, i32 %dec
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %call4 = tail call i32 @phy_exit(ptr noundef %9) #10
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @dra7xx_pcie_cpu_addr_fixup(ptr nocapture noundef readnone %pci, i64 noundef %pci_addr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %pci_addr, 268435455
  ret i64 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_link_up(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 268
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %7 = lshr i32 %6, 8
  %and.lobit = and i32 %7, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_establish_link(ptr noundef %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @dw_pcie_link_up(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 260
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %9, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %7) #10, !srcloc !212
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dra7xx_pcie_stop_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 260
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %7) #10, !srcloc !212
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_link_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dra7xx_pcie_msi_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %5(ptr noundef %irq_data.i) #10
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data4.i) #10
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef %irq_data4.i) #10
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %10 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler_data.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 -32
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 52
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !209
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %22, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %18) #10, !srcloc !212
  %23 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %19, label %chained_irq_enter.exit.sw.epilog_crit_edge [
    i32 16, label %sw.bb
    i32 1, label %chained_irq_enter.exit.sw.bb4_crit_edge
    i32 2, label %chained_irq_enter.exit.sw.bb4_crit_edge36
    i32 4, label %chained_irq_enter.exit.sw.bb4_crit_edge37
    i32 8, label %chained_irq_enter.exit.sw.bb4_crit_edge38
  ]

chained_irq_enter.exit.sw.bb4_crit_edge38:        ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

chained_irq_enter.exit.sw.bb4_crit_edge37:        ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

chained_irq_enter.exit.sw.bb4_crit_edge36:        ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

chained_irq_enter.exit.sw.bb4_crit_edge:          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

chained_irq_enter.exit.sw.epilog_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %chained_irq_enter.exit
  %num_vectors.i = getelementptr inbounds %struct.pcie_port, ptr %11, i32 0, i32 15
  %24 = ptrtoint ptr %num_vectors.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_vectors.i, align 4
  %div21.i = lshr i32 %25, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %cmp22.not.i = icmp ult i32 %25, 32
  %irq_domain.i.i = getelementptr inbounds %struct.pcie_port, ptr %11, i32 0, i32 10
  %smax.i = tail call i32 @llvm.smax.i32(i32 %div21.i, i32 1) #10
  br label %do.body.i

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %sw.bb
  %count.0.i = phi i32 [ 0, %sw.bb ], [ %inc1.i, %for.end.i.do.body.i_crit_edge ]
  br i1 %cmp22.not.i, label %do.body.i.sw.epilog_crit_edge, label %do.body.i.for.body.i_crit_edge

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

do.body.i.sw.epilog_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.i:                                       ; preds = %dra7xx_pcie_handle_msi.exit.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %dra7xx_pcie_handle_msi.exit.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %ret.023.i = phi i32 [ %or.i, %dra7xx_pcie_handle_msi.exit.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %mul.i.i = mul nuw nsw i32 %i.024.i, 12
  %add.i.i = add nuw nsw i32 %mul.i.i, 2096
  %call.i.i.i = call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef %add.i.i, i32 noundef 4) #10
  %26 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i.i.i, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.dra7xx_pcie_handle_msi.exit.i_crit_edge, label %if.end.i.i

for.body.i.dra7xx_pcie_handle_msi.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dra7xx_pcie_handle_msi.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %call1.i.i = call i32 @_find_first_bit_be(ptr noundef nonnull %val.i.i, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1.i.i)
  %cmp.not13.i.i = icmp eq i32 %call1.i.i, 32
  br i1 %cmp.not13.i.i, label %if.end.i.i.dra7xx_pcie_handle_msi.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i.i.dra7xx_pcie_handle_msi.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dra7xx_pcie_handle_msi.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i.i
  %mul2.i.i = shl i32 %i.024.i, 5
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %pos.014.i.i = phi i32 [ %call1.i.i, %while.body.lr.ph.i.i ], [ %call5.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %27 = ptrtoint ptr %irq_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_domain.i.i, align 8
  %add3.i.i = add i32 %pos.014.i.i, %mul2.i.i
  %call4.i.i = call i32 @generic_handle_domain_irq(ptr noundef %28, i32 noundef %add3.i.i) #10
  %inc.i.i = add i32 %pos.014.i.i, 1
  %call5.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %val.i.i, i32 noundef 32, i32 noundef %inc.i.i) #10
  %cmp.not.i.i = icmp eq i32 %call5.i.i, 32
  br i1 %cmp.not.i.i, label %while.body.i.i.dra7xx_pcie_handle_msi.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.dra7xx_pcie_handle_msi.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dra7xx_pcie_handle_msi.exit.i

dra7xx_pcie_handle_msi.exit.i:                    ; preds = %while.body.i.i.dra7xx_pcie_handle_msi.exit.i_crit_edge, %if.end.i.i.dra7xx_pcie_handle_msi.exit.i_crit_edge, %for.body.i.dra7xx_pcie_handle_msi.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.body.i.dra7xx_pcie_handle_msi.exit.i_crit_edge ], [ 1, %if.end.i.i.dra7xx_pcie_handle_msi.exit.i_crit_edge ], [ 1, %while.body.i.i.dra7xx_pcie_handle_msi.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  %or.i = or i32 %retval.0.i.i, %ret.023.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %for.end.i, label %dra7xx_pcie_handle_msi.exit.i.for.body.i_crit_edge

dra7xx_pcie_handle_msi.exit.i.for.body.i_crit_edge: ; preds = %dra7xx_pcie_handle_msi.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %dra7xx_pcie_handle_msi.exit.i
  %inc1.i = add nuw nsw i32 %count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i20 = icmp ne i32 %or.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.0.i)
  %cmp2.i = icmp ult i32 %count.0.i, 1000
  %or.cond.i = select i1 %tobool.not.i20, i1 %cmp2.i, i1 false
  br i1 %or.cond.i, label %for.end.i.do.body.i_crit_edge, label %do.end.i

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %count.0.i)
  %cmp3.i = icmp ugt i32 %count.0.i, 999
  br i1 %cmp3.i, label %do.body4.i, label %do.end.i.sw.epilog_crit_edge

do.end.i.sw.epilog_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body4.i:                                       ; preds = %do.end.i
  %call5.i = call i32 @___ratelimit(ptr noundef nonnull @dra7xx_pcie_handle_msi_irq._rs, ptr noundef nonnull @__func__.dra7xx_pcie_handle_msi_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body4.i.sw.epilog_crit_edge, label %do.end10.i

do.body4.i.sw.epilog_crit_edge:                   ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end10.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.54) #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %chained_irq_enter.exit.sw.bb4_crit_edge, %chained_irq_enter.exit.sw.bb4_crit_edge36, %chained_irq_enter.exit.sw.bb4_crit_edge37, %chained_irq_enter.exit.sw.bb4_crit_edge38
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call5)
  %cmp25 = icmp ult i32 %call5, 4
  br i1 %cmp25, label %for.body.lr.ph, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.lr.ph:                                   ; preds = %sw.bb4
  %irq_domain = getelementptr inbounds %struct.dra7xx_pcie, ptr %15, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.026 = phi i32 [ %call5, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  %31 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_domain, align 4
  %call6 = call i32 @generic_handle_domain_irq(ptr noundef %32, i32 noundef %bit.026) #10
  %add = add nuw nsw i32 %bit.026, 1
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 4, i32 noundef %add) #10
  %cmp = icmp ult i32 %call7, 4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %do.end10.i, %do.body4.i.sw.epilog_crit_edge, %do.end.i.sw.epilog_crit_edge, %do.body.i.sw.epilog_crit_edge, %chained_irq_enter.exit.sw.epilog_crit_edge
  %33 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i22 = icmp eq ptr %34, null
  br i1 %tobool.not.i22, label %if.else.i23, label %sw.epilog.chained_irq_exit.exit_crit_edge

sw.epilog.chained_irq_exit.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_exit.exit

if.else.i23:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i23, %sw.epilog.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %36, %if.else.i23 ], [ %34, %sw.epilog.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_intx_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #10
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pci_irqd_intx_xlate(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %node, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef readnone %out_type) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intspec, align 4
  %2 = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %2)
  %3 = icmp ult i32 %2, -4
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add nsw i32 %1, -1
  %4 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %out_hwirq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_host_init(ptr nocapture noundef readonly %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %base.i.i.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1065287680) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i, i32 1065287680) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i3.i, i32 520093696) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i3.i4.i = getelementptr i8, ptr %11, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i4.i, i32 520093696) #10, !srcloc !212
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dra7xx_pcie_ep_init(ptr noundef %ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 0) #10
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 1) #10
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 2) #10
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 3) #10
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 4) #10
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %base.i.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1065287680) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 1065287680) #10, !srcloc !212
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_raise_irq(ptr nocapture noundef readonly %ep, i8 noundef zeroext %func_no, i32 noundef %type, i16 noundef zeroext %interrupt_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %base.i.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #10, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %9, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 16777216) #10, !srcloc !212
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = shl i16 %interrupt_num, 7
  %11 = and i16 %10, 32640
  %sub.i = zext i16 %11 to i32
  %or.i = add nsw i32 %sub.i, -127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %base.i.i5 = getelementptr inbounds %struct.dra7xx_pcie, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %base.i.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i5, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %14, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6, i32 %12) #10, !srcloc !212
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.60) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %sw.bb
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dra7xx_pcie_get_features(ptr nocapture noundef readnone %ep) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @dra7xx_pcie_epc_features
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_ep_reset_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_ep_linkup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.dra7xx_pcie, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %5, i32 noundef 4, i32 noundef 4) #10
  %and = and i32 %call.i, -3
  tail call void @dw_pcie_write_dbi(ptr noundef %5, i32 noundef 4, i32 noundef 4, i32 noundef %and) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.dra7xx_pcie, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %5, i32 noundef 4, i32 noundef 4) #10
  %or = or i32 %call.i, 2
  tail call void @dw_pcie_write_dbi(ptr noundef %5, i32 noundef 4, i32 noundef 4, i32 noundef %or) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy_count1.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phy_count1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not9.i = icmp eq i32 %3, 0
  br i1 %tobool.not9.i, label %entry.dra7xx_pcie_disable_phy.exit_crit_edge, label %while.body.lr.ph.i

entry.dra7xx_pcie_disable_phy.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dra7xx_pcie_disable_phy.exit

while.body.lr.ph.i:                               ; preds = %entry
  %phy.i = getelementptr inbounds %struct.dra7xx_pcie, ptr %1, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %phy_count.010.i = phi i32 [ %3, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %phy_count.010.i, -1
  %4 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %dec.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %7) #10
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %9, i32 %dec.i
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 @phy_exit(ptr noundef %11) #10
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.dra7xx_pcie_disable_phy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.dra7xx_pcie_disable_phy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dra7xx_pcie_disable_phy.exit

dra7xx_pcie_disable_phy.exit:                     ; preds = %while.body.i.dra7xx_pcie_disable_phy.exit_crit_edge, %entry.dra7xx_pcie_disable_phy.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_resume_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @dra7xx_pcie_enable_phy(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !111, !112, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !137, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @__initcall__kmod_pci_dra7xx__308_958_dra7xx_pcie_driver_init6, !1, !"__initcall__kmod_pci_dra7xx__308_958_dra7xx_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 958, i32 1}
!2 = !{ptr @__exitcall_dra7xx_pcie_driver_exit, !1, !"__exitcall_dra7xx_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author309, !4, !"__UNIQUE_ID_author309", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 960, i32 1}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 961, i32 1}
!7 = !{ptr @__UNIQUE_ID_file311, !8, !"__UNIQUE_ID_file311", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 962, i32 1}
!9 = !{ptr @__UNIQUE_ID_license312, !8, !"__UNIQUE_ID_license312", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 951, i32 11}
!12 = !{ptr @dra7xx_pcie_driver, !13, !"dra7xx_pcie_driver", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 948, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 726, i32 53}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 730, i32 44}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 732, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dra7xx_pcie_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @dra7xx_pcie_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 747, i32 10}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 754, i32 32}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 779, i32 3}
!32 = !{ptr @dra7xx_pcie_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dra7xx_pcie_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 788, i32 3}
!36 = !{ptr @dra7xx_pcie_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dra7xx_pcie_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 795, i32 3}
!40 = !{ptr @dra7xx_pcie_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dra7xx_pcie_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 815, i32 4}
!44 = !{ptr @dra7xx_pcie_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dra7xx_pcie_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 839, i32 3}
!48 = !{ptr @dra7xx_pcie_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dra7xx_pcie_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 844, i32 24}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 846, i32 3}
!54 = !{ptr @dra7xx_pcie_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @dra7xx_pcie_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @dw_pcie_ops, !57, !"dw_pcie_ops", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 507, i32 33}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 146, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @dra7xx_pcie_establish_link._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @dra7xx_pcie_establish_link._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 665, i32 52}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 667, i32 3}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @dra7xx_pcie_configure_two_lane._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @dra7xx_pcie_configure_two_lane._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 673, i32 3}
!72 = !{ptr @dra7xx_pcie_configure_two_lane._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @dra7xx_pcie_configure_two_lane._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 633, i32 8}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 635, i32 3}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @dra7xx_pcie_unaligned_memaccess.__UNIQUE_ID_ddebug306, !77, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 642, i32 3}
!83 = !{ptr @dra7xx_pcie_unaligned_memaccess._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dra7xx_pcie_unaligned_memaccess._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 649, i32 3}
!87 = !{ptr @dra7xx_pcie_unaligned_memaccess._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @dra7xx_pcie_unaligned_memaccess._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 492, i32 62}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 500, i32 3}
!93 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @dra7xx_add_pcie_port._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @dra7xx_add_pcie_port._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 356, i32 3}
!98 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @dra7xx_pcie_init_irq_domain._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @dra7xx_pcie_init_irq_domain._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 366, i32 3}
!103 = !{ptr @dra7xx_pcie_init_irq_domain._entry.50, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @dra7xx_pcie_init_irq_domain._entry_ptr.52, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 250, i32 3}
!107 = !{ptr @dra7xx_pcie_handle_msi_irq._rs, !106, !"_rs", i1 false, i1 false}
!108 = !{ptr @__func__.dra7xx_pcie_handle_msi_irq, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @dra7xx_pcie_handle_msi_irq._entry, !106, !"_entry", i1 false, i1 false}
!112 = !{ptr @dra7xx_pcie_handle_msi_irq._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @intx_domain_ops, !114, !"intx_domain_ops", i1 false, i1 false}
!114 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 200, i32 36}
!115 = !{ptr @dra7xx_pcie_host_ops, !116, !"dra7xx_pcie_host_ops", i1 false, i1 false}
!116 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 373, i32 38}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 455, i32 62}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 460, i32 47}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 466, i32 3}
!123 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dra7xx_add_pcie_ep._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @dra7xx_add_pcie_ep._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @pcie_ep_ops, !127, !"pcie_ep_ops", i1 false, i1 false}
!127 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 438, i32 36}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 420, i32 3}
!130 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @dra7xx_pcie_raise_irq._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @dra7xx_pcie_raise_irq._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @dra7xx_pcie_epc_features, !134, !"dra7xx_pcie_epc_features", i1 false, i1 false}
!134 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 426, i32 38}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 299, i32 3}
!137 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug293, !136, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 302, i32 3}
!141 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug294, !140, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 305, i32 3}
!144 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug295, !143, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 308, i32 3}
!147 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug296, !146, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 311, i32 3}
!150 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug297, !149, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 314, i32 3}
!153 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug298, !152, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 317, i32 3}
!156 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug299, !155, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 321, i32 3}
!159 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug300, !158, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 325, i32 3}
!162 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug301, !161, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 328, i32 3}
!165 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug302, !164, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 333, i32 3}
!168 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug303, !167, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 337, i32 3}
!171 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug304, !170, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 340, i32 3}
!174 = !{ptr @dra7xx_pcie_irq_handler.__UNIQUE_ID_ddebug305, !173, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!175 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 934, i32 3}
!177 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @dra7xx_pcie_shutdown.__UNIQUE_ID_ddebug307, !176, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!179 = !{ptr @of_dra7xx_pcie_match, !180, !"of_dra7xx_pcie_match", i1 false, i1 false}
!180 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 585, i32 34}
!181 = !{ptr @dra7xx_pcie_rc_of_data, !182, !"dra7xx_pcie_rc_of_data", i1 false, i1 false}
!182 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 557, i32 41}
!183 = !{ptr @dra7xx_pcie_ep_of_data, !184, !"dra7xx_pcie_ep_of_data", i1 false, i1 false}
!184 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 561, i32 41}
!185 = !{ptr @dra746_pcie_rc_of_data, !186, !"dra746_pcie_rc_of_data", i1 false, i1 false}
!186 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 565, i32 41}
!187 = !{ptr @dra726_pcie_rc_of_data, !188, !"dra726_pcie_rc_of_data", i1 false, i1 false}
!188 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 570, i32 41}
!189 = !{ptr @dra746_pcie_ep_of_data, !190, !"dra746_pcie_ep_of_data", i1 false, i1 false}
!190 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 575, i32 41}
!191 = !{ptr @dra726_pcie_ep_of_data, !192, !"dra726_pcie_ep_of_data", i1 false, i1 false}
!192 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 580, i32 41}
!193 = !{ptr @dra7xx_pcie_pm_ops, !194, !"dra7xx_pcie_pm_ops", i1 false, i1 false}
!194 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 942, i32 32}
!195 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pci/controller/dwc/pci-dra7xx.c", i32 916, i32 3}
!197 = !{ptr @dra7xx_pcie_resume_noirq._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @dra7xx_pcie_resume_noirq._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{!"branch_weights", i32 1, i32 2000}
!209 = !{i64 4919549}
!210 = !{i64 2155824620}
!211 = !{i64 2155825007}
!212 = !{i64 4919131}
!213 = !{i64 2148743002, i64 2148743007, i64 2148743020, i64 2148743064, i64 2148743098, i64 2148743119}
!214 = !{!"auto-init"}
