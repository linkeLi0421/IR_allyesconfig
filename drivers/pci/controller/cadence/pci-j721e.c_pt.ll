; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/cadence/pci-j721e.c_pt.bc'
source_filename = "../drivers/pci/controller/cadence/pci-j721e.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.cdns_pcie_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.j721e_pcie_data = type { i32, i8, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.cdns_pcie_rc = type { %struct.cdns_pcie, ptr, ptr, i32, i32, [3 x i8], i8 }
%struct.cdns_pcie = type { ptr, ptr, ptr, i8, i32, ptr, ptr, ptr }
%struct.cdns_pcie_ep = type { %struct.cdns_pcie, i32, i32, ptr, i32, ptr, i64, i8, i8, %struct.spinlock, ptr, i8 }
%struct.j721e_pcie = type { ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_pci_j721e__293_566_j721e_pcie_driver_init6 = internal global ptr @j721e_pcie_driver_init, section ".initcall6.init", align 4
@j721e_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @j721e_pcie_probe, ptr @j721e_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @of_j721e_pcie_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"j721e-pcie\00", [21 x i8] zeroinitializer }, align 32
@of_j721e_pcie_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-pcie-host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @j721e_pcie_rc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @j721e_pcie_ep_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j7200-pcie-host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @j7200_pcie_rc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j7200-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @j7200_pcie_ep_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-pcie-host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am64_pcie_rc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am64_pcie_ep_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@cdns_ti_pcie_host_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @cdns_pci_map_bus, ptr @cdns_ti_pcie_config_read, ptr @cdns_ti_pcie_config_write }, [44 x i8] zeroinitializer }, align 32
@j721e_pcie_ops = internal constant { %struct.cdns_pcie_ops, [16 x i8] } { %struct.cdns_pcie_ops { ptr @j721e_pcie_start_link, ptr @j721e_pcie_stop_link, ptr @j721e_pcie_link_up, ptr null }, [16 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"INVALID device type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"j721e_pcie_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/pci/controller/cadence/pci-j721e.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry_ptr = internal global ptr @j721e_pcie_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"intd_cfg\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"user_cfg\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num-lanes\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link_state\00", [21 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm_runtime_get_sync failed\0A\00", [36 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry_ptr.12 = internal global ptr @j721e_pcie_probe._entry.10, section ".printk_index", align 4
@j721e_pcie_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry_ptr.14 = internal global ptr @j721e_pcie_probe._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"j721e-pcie-link-down-irq\00", [39 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to request link state IRQ %d\0A\00", [59 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry_ptr.18 = internal global ptr @j721e_pcie_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 473, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get reset GPIO\0A\00", [38 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry_ptr.22 = internal global ptr @j721e_pcie_probe._entry.20, section ".printk_index", align 4
@j721e_pcie_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 479, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to init phy\0A\00", [44 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry_ptr.25 = internal global ptr @j721e_pcie_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcie_refclk\00", [20 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get pcie_refclk\0A\00", [37 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry_ptr.29 = internal global ptr @j721e_pcie_probe._entry.27, section ".printk_index", align 4
@j721e_pcie_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable pcie_refclk\0A\00", [34 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry_ptr.32 = internal global ptr @j721e_pcie_probe._entry.30, section ".printk_index", align 4
@j721e_pcie_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@j721e_pcie_probe._entry_ptr.34 = internal global ptr @j721e_pcie_probe._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,syscon-pcie-ctrl\00", [44 x i8] zeroinitializer }, align 32
@j721e_pcie_ctrl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to get ti,syscon-pcie-ctrl regmap\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"j721e_pcie_ctrl_init\00", [43 x i8] zeroinitializer }, align 32
@j721e_pcie_ctrl_init._entry_ptr = internal global ptr @j721e_pcie_ctrl_init._entry, section ".printk_index", align 4
@j721e_pcie_ctrl_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set pci mode\0A\00", [40 x i8] zeroinitializer }, align 32
@j721e_pcie_ctrl_init._entry_ptr.40 = internal global ptr @j721e_pcie_ctrl_init._entry.38, section ".printk_index", align 4
@j721e_pcie_ctrl_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set link speed\0A\00", [38 x i8] zeroinitializer }, align 32
@j721e_pcie_ctrl_init._entry_ptr.43 = internal global ptr @j721e_pcie_ctrl_init._entry.41, section ".printk_index", align 4
@j721e_pcie_ctrl_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set num-lanes\0A\00", [39 x i8] zeroinitializer }, align 32
@j721e_pcie_ctrl_init._entry_ptr.46 = internal global ptr @j721e_pcie_ctrl_init._entry.44, section ".printk_index", align 4
@j721e_pcie_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set pcie mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"j721e_pcie_set_mode\00", [44 x i8] zeroinitializer }, align 32
@j721e_pcie_set_mode._entry_ptr = internal global ptr @j721e_pcie_set_mode._entry, section ".printk_index", align 4
@j721e_pcie_set_link_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set link speed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"j721e_pcie_set_link_speed\00", [38 x i8] zeroinitializer }, align 32
@j721e_pcie_set_link_speed._entry_ptr = internal global ptr @j721e_pcie_set_link_speed._entry, section ".printk_index", align 4
@j721e_pcie_set_lane_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set link count\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"j721e_pcie_set_lane_count\00", [38 x i8] zeroinitializer }, align 32
@j721e_pcie_set_lane_count._entry_ptr = internal global ptr @j721e_pcie_set_lane_count._entry, section ".printk_index", align 4
@j721e_pcie_link_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINK DOWN!\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"j721e_pcie_link_irq_handler\00", [36 x i8] zeroinitializer }, align 32
@j721e_pcie_link_irq_handler._entry_ptr = internal global ptr @j721e_pcie_link_irq_handler._entry, section ".printk_index", align 4
@j721e_pcie_rc_data = internal constant { %struct.j721e_pcie_data, [16 x i8] } { %struct.j721e_pcie_data { i32 0, i8 -128, i32 2, i8 0 }, [16 x i8] zeroinitializer }, align 32
@j721e_pcie_ep_data = internal constant { %struct.j721e_pcie_data, [16 x i8] } { %struct.j721e_pcie_data { i32 1, i8 0, i32 2, i8 0 }, [16 x i8] zeroinitializer }, align 32
@j7200_pcie_rc_data = internal constant { %struct.j721e_pcie_data, [16 x i8] } { %struct.j721e_pcie_data { i32 0, i8 64, i32 1024, i8 -128 }, [16 x i8] zeroinitializer }, align 32
@j7200_pcie_ep_data = internal constant { %struct.j721e_pcie_data, [16 x i8] } { %struct.j721e_pcie_data { i32 1, i8 64, i32 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@am64_pcie_rc_data = internal constant { %struct.j721e_pcie_data, [16 x i8] } { %struct.j721e_pcie_data { i32 0, i8 0, i32 1024, i8 -128 }, [16 x i8] zeroinitializer }, align 32
@am64_pcie_ep_data = internal constant { %struct.j721e_pcie_data, [16 x i8] } { %struct.j721e_pcie_data { i32 1, i8 0, i32 1024, i8 0 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"j721e_pcie_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 557, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 561, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"of_j721e_pcie_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 323, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"cdns_ti_pcie_host_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 282, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"j721e_pcie_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 158, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 415, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 422, i32 53 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 427, i32 53 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 432, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 440, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 448, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 454, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 459, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 461, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 469, i32 40 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 473, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 479, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 483, i32 36 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 486, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 492, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 520, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 229, i32 49 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 231, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 243, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 249, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 255, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 178, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 199, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 215, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 108, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [19 x i8] c"j721e_pcie_rc_data\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 288, i32 37 }
@___asan_gen_.221 = private unnamed_addr constant [19 x i8] c"j721e_pcie_ep_data\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 295, i32 37 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"j7200_pcie_rc_data\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 300, i32 37 }
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"j7200_pcie_ep_data\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 307, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant [18 x i8] c"am64_pcie_rc_data\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 312, i32 37 }
@___asan_gen_.233 = private unnamed_addr constant [18 x i8] c"am64_pcie_ep_data\00", align 1
@___asan_gen_.234 = private constant [46 x i8] c"../drivers/pci/controller/cadence/pci-j721e.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 318, i32 37 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__initcall__kmod_pci_j721e__293_566_j721e_pcie_driver_init6, ptr @j721e_pcie_ctrl_init._entry, ptr @j721e_pcie_ctrl_init._entry.38, ptr @j721e_pcie_ctrl_init._entry.41, ptr @j721e_pcie_ctrl_init._entry.44, ptr @j721e_pcie_ctrl_init._entry_ptr, ptr @j721e_pcie_ctrl_init._entry_ptr.40, ptr @j721e_pcie_ctrl_init._entry_ptr.43, ptr @j721e_pcie_ctrl_init._entry_ptr.46, ptr @j721e_pcie_link_irq_handler._entry, ptr @j721e_pcie_link_irq_handler._entry_ptr, ptr @j721e_pcie_probe._entry, ptr @j721e_pcie_probe._entry.10, ptr @j721e_pcie_probe._entry.13, ptr @j721e_pcie_probe._entry.16, ptr @j721e_pcie_probe._entry.20, ptr @j721e_pcie_probe._entry.23, ptr @j721e_pcie_probe._entry.27, ptr @j721e_pcie_probe._entry.30, ptr @j721e_pcie_probe._entry.33, ptr @j721e_pcie_probe._entry_ptr, ptr @j721e_pcie_probe._entry_ptr.12, ptr @j721e_pcie_probe._entry_ptr.14, ptr @j721e_pcie_probe._entry_ptr.18, ptr @j721e_pcie_probe._entry_ptr.22, ptr @j721e_pcie_probe._entry_ptr.25, ptr @j721e_pcie_probe._entry_ptr.29, ptr @j721e_pcie_probe._entry_ptr.32, ptr @j721e_pcie_probe._entry_ptr.34, ptr @j721e_pcie_set_lane_count._entry, ptr @j721e_pcie_set_lane_count._entry_ptr, ptr @j721e_pcie_set_link_speed._entry, ptr @j721e_pcie_set_link_speed._entry_ptr, ptr @j721e_pcie_set_mode._entry, ptr @j721e_pcie_set_mode._entry_ptr, ptr @j721e_pcie_driver, ptr @.str, ptr @of_j721e_pcie_match, ptr @cdns_ti_pcie_host_ops, ptr @j721e_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @j721e_pcie_rc_data, ptr @j721e_pcie_ep_data, ptr @j7200_pcie_rc_data, ptr @j7200_pcie_ep_data, ptr @am64_pcie_rc_data, ptr @am64_pcie_ep_data], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_j721e_pcie_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ti_pcie_host_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_ctrl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_ctrl_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_ctrl_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_ctrl_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_set_link_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_set_lane_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_link_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_rc_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_pcie_ep_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j7200_pcie_rc_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j7200_pcie_ep_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am64_pcie_rc_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am64_pcie_ep_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @j721e_pcie_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_lanes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_lanes) #7
  %2 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num_lanes, align 4, !annotation !124
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end6
  %call7 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 52) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %sw.bb.cleanup_crit_edge, label %if.end10

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  %byte_access_allowed = getelementptr inbounds %struct.j721e_pcie_data, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %byte_access_allowed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %byte_access_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool11.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call7, i32 0, i32 2
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cdns_ti_pcie_host_ops, ptr %ops, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call7, i32 0, i32 16
  %quirk_retrain_flag = getelementptr inbounds %struct.j721e_pcie_data, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %quirk_retrain_flag to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load15 = load i8, ptr %quirk_retrain_flag, align 4
  %bf.lshr16 = and i8 %bf.load15, -128
  %quirk_retrain_flag18 = getelementptr inbounds %struct.cdns_pcie_rc, ptr %private.i, i32 0, i32 6
  %9 = ptrtoint ptr %quirk_retrain_flag18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load19 = load i8, ptr %quirk_retrain_flag18, align 1
  %bf.clear = and i8 %bf.load19, 127
  %bf.set = or i8 %bf.clear, %bf.lshr16
  store i8 %bf.set, ptr %quirk_retrain_flag18, align 1
  %bf.load20 = load i8, ptr %quirk_retrain_flag, align 4
  %bf.clear22 = and i8 %bf.load20, 64
  %bf.clear28 = and i8 %bf.set, -65
  %bf.set29 = or i8 %bf.clear28, %bf.clear22
  store i8 %bf.set29, ptr %quirk_retrain_flag18, align 1
  %dev32 = getelementptr inbounds %struct.pci_host_bridge, ptr %call7, i32 1, i32 0, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %dev32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %dev32, align 4
  %ops33 = getelementptr inbounds %struct.pci_host_bridge, ptr %call7, i32 1, i32 0, i32 0, i32 6
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end6
  %call.i263 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #7
  %tobool37.not = icmp eq ptr %call.i263, null
  br i1 %tobool37.not, label %sw.bb35.cleanup_crit_edge, label %if.end39

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  %quirk_detect_quiet_flag40 = getelementptr inbounds %struct.j721e_pcie_data, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %quirk_detect_quiet_flag40 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load41 = load i8, ptr %quirk_detect_quiet_flag40, align 4
  %quirk_detect_quiet_flag45 = getelementptr inbounds %struct.cdns_pcie_ep, ptr %call.i263, i32 0, i32 11
  %12 = ptrtoint ptr %quirk_detect_quiet_flag45 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load46 = load i8, ptr %quirk_detect_quiet_flag45, align 4
  %13 = shl i8 %bf.load41, 1
  %bf.shl48 = and i8 %13, -128
  %bf.clear49 = and i8 %bf.load46, 127
  %bf.set50 = or i8 %bf.clear49, %bf.shl48
  store i8 %bf.set50, ptr %quirk_detect_quiet_flag45, align 4
  %dev53 = getelementptr inbounds %struct.cdns_pcie, ptr %call.i263, i32 0, i32 2
  %14 = ptrtoint ptr %dev53 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev1, ptr %dev53, align 4
  %ops54 = getelementptr inbounds %struct.cdns_pcie, ptr %call.i263, i32 0, i32 7
  br label %sw.epilog

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %4) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end39, %if.end13
  %ops54.sink = phi ptr [ %ops54, %if.end39 ], [ %ops33, %if.end13 ]
  %cdns_pcie.0 = phi ptr [ %call.i263, %if.end39 ], [ %private.i, %if.end13 ]
  %rc.0 = phi ptr [ null, %if.end39 ], [ %private.i, %if.end13 ]
  %ep.0 = phi ptr [ %call.i263, %if.end39 ], [ null, %if.end13 ]
  %15 = ptrtoint ptr %ops54.sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @j721e_pcie_ops, ptr %ops54.sink, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cdns_pcie.0, ptr %call.i, align 4
  %mode56 = getelementptr inbounds %struct.j721e_pcie, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %mode56 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %4, ptr %mode56, align 4
  %linkdown_irq_regfield = getelementptr inbounds %struct.j721e_pcie_data, ptr %call, i32 0, i32 2
  %18 = ptrtoint ptr %linkdown_irq_regfield to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %linkdown_irq_regfield, align 4
  %linkdown_irq_regfield57 = getelementptr inbounds %struct.j721e_pcie, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %linkdown_irq_regfield57 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %linkdown_irq_regfield57, align 4
  %call58 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #7
  %cmp.i = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then60, label %if.end62

if.then60:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call58 to i32
  br label %cleanup

if.end62:                                         ; preds = %sw.epilog
  %intd_cfg_base = getelementptr inbounds %struct.j721e_pcie, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %intd_cfg_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call58, ptr %intd_cfg_base, align 4
  %call63 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #7
  %cmp.i264 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i264, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call63 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %user_cfg_base = getelementptr inbounds %struct.j721e_pcie, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %user_cfg_base to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call63, ptr %user_cfg_base, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %num_lanes, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool69.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool69.not, label %lor.lhs.false, label %if.end67.if.then70_crit_edge

if.end67.if.then70_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then70

lor.lhs.false:                                    ; preds = %if.end67
  %25 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp = icmp ugt i32 %26, 2
  br i1 %cmp, label %lor.lhs.false.if.then70_crit_edge, label %lor.lhs.false.if.end71_crit_edge

lor.lhs.false.if.end71_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

lor.lhs.false.if.then70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false.if.then70_crit_edge, %if.end67.if.then70_crit_edge
  %27 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %num_lanes, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %lor.lhs.false.if.end71_crit_edge
  %28 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_lanes, align 4
  %num_lanes72 = getelementptr inbounds %struct.j721e_pcie, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %num_lanes72 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %num_lanes72, align 4
  %call.i265 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 281474976710655) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %cmp.i266 = icmp eq i32 %call.i265, 0
  br i1 %cmp.i266, label %if.end76, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %if.end71
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 281474976710655) #7
  %call77 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.end76.cleanup_crit_edge, label %if.end80

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end80:                                         ; preds = %if.end76
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i267 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267)
  %cmp82 = icmp slt i32 %call.i267, 0
  br i1 %cmp82, label %do.end86, label %if.end87

do.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %err_get_sync

if.end87:                                         ; preds = %if.end80
  %call88 = call fastcc i32 @j721e_pcie_ctrl_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %do.end93, label %if.end94

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %err_get_sync

if.end94:                                         ; preds = %if.end87
  %call.i268 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call77, ptr noundef nonnull @j721e_pcie_link_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %cmp96 = icmp slt i32 %call.i268, 0
  br i1 %cmp96, label %do.end100, label %if.end101

do.end100:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call77) #10
  br label %err_get_sync

if.end101:                                        ; preds = %if.end94
  call fastcc void @j721e_pcie_config_link_irq(ptr noundef nonnull %call.i)
  %32 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %4, label %if.end101.cleanup_crit_edge [
    i32 0, label %sw.bb102
    i32 1, label %sw.bb144
  ]

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb102:                                         ; preds = %if.end101
  %call103 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef 3) #7
  %cmp.i269 = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i269, label %if.then105, label %if.end113

if.then105:                                       ; preds = %sw.bb102
  %cmp107.not = icmp eq ptr %call103, inttoptr (i32 -517 to ptr)
  br i1 %cmp107.not, label %if.then105.err_get_sync_crit_edge, label %do.end111

if.then105.err_get_sync_crit_edge:                ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_get_sync

do.end111:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call103 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #10
  br label %err_get_sync

if.end113:                                        ; preds = %sw.bb102
  %call114 = call i32 @cdns_pcie_init_phy(ptr noundef %dev1, ptr noundef %cdns_pcie.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end120, label %do.end119

do.end119:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #10
  br label %err_get_sync

if.end120:                                        ; preds = %if.end113
  %call121 = call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.26) #7
  %cmp.i270 = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i270, label %if.then123, label %if.end128

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call121 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #10
  br label %err_pcie_setup

if.end128:                                        ; preds = %if.end120
  %call129 = call fastcc i32 @clk_prepare_enable(ptr noundef %call121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end135, label %do.end134

do.end134:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #10
  br label %err_pcie_setup

if.end135:                                        ; preds = %if.end128
  %refclk = getelementptr inbounds %struct.j721e_pcie, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call121, ptr %refclk, align 4
  %tobool136.not = icmp eq ptr %call103, null
  br i1 %tobool136.not, label %if.end135.if.end138_crit_edge, label %if.then137

if.end135.if.end138_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then137:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %call103, i32 noundef 1) #7
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end135.if.end138_crit_edge
  %call139 = call i32 @cdns_pcie_host_setup(ptr noundef %rc.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.then141, label %if.end138.cleanup_crit_edge

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then141:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %refclk, align 4
  call void @clk_disable(ptr noundef %37) #7
  call void @clk_unprepare(ptr noundef %37) #7
  br label %err_pcie_setup

sw.bb144:                                         ; preds = %if.end101
  %call145 = call i32 @cdns_pcie_init_phy(ptr noundef %dev1, ptr noundef %cdns_pcie.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end151, label %do.end150

do.end150:                                        ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #10
  br label %err_get_sync

if.end151:                                        ; preds = %sw.bb144
  %call152 = call i32 @cdns_pcie_ep_setup(ptr noundef %ep.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp153 = icmp slt i32 %call152, 0
  br i1 %cmp153, label %if.end151.err_pcie_setup_crit_edge, label %if.end151.cleanup_crit_edge

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end151.err_pcie_setup_crit_edge:               ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pcie_setup

err_pcie_setup:                                   ; preds = %if.end151.err_pcie_setup_crit_edge, %if.then141, %do.end134, %if.then123
  %ret.0 = phi i32 [ %call152, %if.end151.err_pcie_setup_crit_edge ], [ %34, %if.then123 ], [ %call129, %do.end134 ], [ %call139, %if.then141 ]
  call void @cdns_pcie_disable_phy(ptr noundef %cdns_pcie.0) #7
  br label %err_get_sync

err_get_sync:                                     ; preds = %err_pcie_setup, %do.end150, %do.end119, %do.end111, %if.then105.err_get_sync_crit_edge, %do.end100, %do.end93, %do.end86
  %ret.1 = phi i32 [ %call.i267, %do.end86 ], [ %call88, %do.end93 ], [ %call.i268, %do.end100 ], [ %call145, %do.end150 ], [ %ret.0, %err_pcie_setup ], [ %33, %do.end111 ], [ -517, %if.then105.err_get_sync_crit_edge ], [ %call114, %do.end119 ]
  %call.i271 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #7
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %err_get_sync, %if.end151.cleanup_crit_edge, %if.end138.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.then65, %if.then60, %do.end, %sw.bb35.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %21, %if.then60 ], [ %23, %if.then65 ], [ %ret.1, %err_get_sync ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %sw.bb.cleanup_crit_edge ], [ -12, %sw.bb35.cleanup_crit_edge ], [ %call77, %if.end76.cleanup_crit_edge ], [ 0, %if.end151.cleanup_crit_edge ], [ 0, %if.end138.cleanup_crit_edge ], [ 0, %if.end101.cleanup_crit_edge ], [ -22, %if.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_lanes) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_pcie_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %refclk = getelementptr inbounds %struct.j721e_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  tail call void @cdns_pcie_disable_phy(ptr noundef %3) #7
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev2, i32 noundef 5) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev2, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @j721e_pcie_ctrl_init(ptr nocapture noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %dev1 = getelementptr inbounds %struct.cdns_pcie, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #7
  %6 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.35) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.36) #10
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %args6 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %8 = ptrtoint ptr %args6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %offset.0 = phi i32 [ 0, %if.end.if.end7_crit_edge ], [ %9, %if.then5 ]
  %10 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie, align 4
  %dev1.i = getelementptr inbounds %struct.cdns_pcie, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %mode2.i = getelementptr inbounds %struct.j721e_pcie, ptr %pcie, i32 0, i32 2
  %14 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i53 = icmp eq i32 %15, 0
  %spec.select.i = select i1 %cmp.i53, i32 128, i32 0
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %offset.0, i32 noundef 128, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end7.if.end13_crit_edge, label %j721e_pcie_set_mode.exit

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

j721e_pcie_set_mode.exit:                         ; preds = %if.end7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end12, label %j721e_pcie_set_mode.exit.if.end13_crit_edge

j721e_pcie_set_mode.exit.if.end13_crit_edge:      ; preds = %j721e_pcie_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end12:                                         ; preds = %j721e_pcie_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end13:                                         ; preds = %j721e_pcie_set_mode.exit.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %16 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcie, align 4
  %dev1.i54 = getelementptr inbounds %struct.cdns_pcie, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev1.i54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i54, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i, align 8
  %call.i55 = call i32 @of_pci_get_max_link_speed(ptr noundef %21) #7
  %22 = call i32 @llvm.smax.i32(i32 %call.i55, i32 2) #7
  %sub.i = add nsw i32 %22, -1
  %call.i.i56 = call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %offset.0, i32 noundef 3, i32 noundef %sub.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %tobool.not.i57 = icmp eq i32 %call.i.i56, 0
  br i1 %tobool.not.i57, label %if.end13.if.end20_crit_edge, label %j721e_pcie_set_link_speed.exit

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

j721e_pcie_set_link_speed.exit:                   ; preds = %if.end13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %cmp15 = icmp slt i32 %call.i.i56, 0
  br i1 %cmp15, label %do.end19, label %j721e_pcie_set_link_speed.exit.if.end20_crit_edge

j721e_pcie_set_link_speed.exit.if.end20_crit_edge: ; preds = %j721e_pcie_set_link_speed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end19:                                         ; preds = %j721e_pcie_set_link_speed.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.end20:                                         ; preds = %j721e_pcie_set_link_speed.exit.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %23 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcie, align 4
  %dev1.i59 = getelementptr inbounds %struct.cdns_pcie, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev1.i59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i59, align 4
  %num_lanes.i = getelementptr inbounds %struct.j721e_pcie, ptr %pcie, i32 0, i32 3
  %27 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_lanes.i, align 4
  %sub.i60 = shl i32 %28, 8
  %shl.i = add i32 %sub.i60, -256
  %call.i.i61 = call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %offset.0, i32 noundef 256, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %tobool.not.i62 = icmp eq i32 %call.i.i61, 0
  br i1 %tobool.not.i62, label %if.end20.cleanup_crit_edge, label %j721e_pcie_set_lane_count.exit

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

j721e_pcie_set_lane_count.exit:                   ; preds = %if.end20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %cmp22 = icmp slt i32 %call.i.i61, 0
  br i1 %cmp22, label %do.end26, label %j721e_pcie_set_lane_count.exit.cleanup_crit_edge

j721e_pcie_set_lane_count.exit.cleanup_crit_edge: ; preds = %j721e_pcie_set_lane_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end26:                                         ; preds = %j721e_pcie_set_lane_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.45) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %j721e_pcie_set_lane_count.exit.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end19, %do.end12, %do.end
  %retval.0 = phi i32 [ %7, %do.end ], [ %call.i.i, %do.end12 ], [ %call.i.i56, %do.end19 ], [ %call.i.i61, %do.end26 ], [ 0, %j721e_pcie_set_lane_count.exit.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_pcie_link_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.cdns_pcie, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %intd_cfg_base.i = getelementptr inbounds %struct.j721e_pcie, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %intd_cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intd_cfg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1288
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %linkdown_irq_regfield = getelementptr inbounds %struct.j721e_pcie, ptr %priv, i32 0, i32 6
  %8 = ptrtoint ptr %linkdown_irq_regfield to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %linkdown_irq_regfield, align 4
  %and = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.53) #10
  %10 = ptrtoint ptr %linkdown_irq_regfield to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %linkdown_irq_regfield, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = ptrtoint ptr %intd_cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intd_cfg_base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %14, i32 1800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %12) #7, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @j721e_pcie_config_link_irq(ptr nocapture noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %intd_cfg_base.i = getelementptr inbounds %struct.j721e_pcie, ptr %pcie, i32 0, i32 5
  %0 = ptrtoint ptr %intd_cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intd_cfg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 264
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %linkdown_irq_regfield = getelementptr inbounds %struct.j721e_pcie, ptr %pcie, i32 0, i32 6
  %4 = ptrtoint ptr %linkdown_irq_regfield to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %linkdown_irq_regfield, align 4
  %or = or i32 %5, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %7 = ptrtoint ptr %intd_cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intd_cfg_base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %8, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %6) #7, !srcloc !128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_pcie_init_phy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_pcie_host_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_pcie_ep_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns_pcie_disable_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdns_pci_map_bus(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ti_pcie_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @pci_generic_config_read32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %value) #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @pci_generic_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %value) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ti_pcie_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @pci_generic_config_write32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %value) #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @pci_generic_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %value) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_pcie_start_link(ptr nocapture noundef readonly %cdns_pcie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.cdns_pcie, ptr %cdns_pcie, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %user_cfg_base.i = getelementptr inbounds %struct.j721e_pcie, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %user_cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_cfg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %user_cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_cfg_base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %7) #7, !srcloc !128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @j721e_pcie_stop_link(ptr nocapture noundef readonly %cdns_pcie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.cdns_pcie, ptr %cdns_pcie, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %user_cfg_base.i = getelementptr inbounds %struct.j721e_pcie, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %user_cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_cfg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %user_cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_cfg_base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %7) #7, !srcloc !128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @j721e_pcie_link_up(ptr nocapture noundef readonly %cdns_pcie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.cdns_pcie, ptr %cdns_pcie, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %user_cfg_base.i = getelementptr inbounds %struct.j721e_pcie, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %user_cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_cfg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %7 = and i32 %6, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %7)
  %cmp = icmp eq i32 %7, 50331648
  ret i1 %cmp
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_max_link_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !25, !26, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !105, !107, !109, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_pci_j721e__293_566_j721e_pcie_driver_init6, !1, !"__initcall__kmod_pci_j721e__293_566_j721e_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 566, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 561, i32 11}
!4 = !{ptr @j721e_pcie_driver, !5, !"j721e_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 557, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 415, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @j721e_pcie_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @j721e_pcie_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 422, i32 53}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 427, i32 53}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 432, i32 35}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 440, i32 38}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 448, i32 3}
!24 = !{ptr @j721e_pcie_probe._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @j721e_pcie_probe._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @j721e_pcie_probe._entry.13, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 454, i32 3}
!28 = !{ptr @j721e_pcie_probe._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 459, i32 11}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 461, i32 3}
!33 = !{ptr @j721e_pcie_probe._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @j721e_pcie_probe._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 469, i32 40}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 473, i32 5}
!39 = !{ptr @j721e_pcie_probe._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @j721e_pcie_probe._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 479, i32 4}
!43 = !{ptr @j721e_pcie_probe._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @j721e_pcie_probe._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 483, i32 36}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 486, i32 4}
!49 = !{ptr @j721e_pcie_probe._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @j721e_pcie_probe._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 492, i32 4}
!53 = !{ptr @j721e_pcie_probe._entry.30, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @j721e_pcie_probe._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @j721e_pcie_probe._entry.33, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 520, i32 4}
!57 = !{ptr @j721e_pcie_probe._entry_ptr.34, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @cdns_ti_pcie_host_ops, !59, !"cdns_ti_pcie_host_ops", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 282, i32 23}
!60 = !{ptr @j721e_pcie_ops, !61, !"j721e_pcie_ops", i1 false, i1 false}
!61 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 158, i32 35}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 229, i32 49}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 231, i32 3}
!66 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @j721e_pcie_ctrl_init._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @j721e_pcie_ctrl_init._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 243, i32 3}
!71 = !{ptr @j721e_pcie_ctrl_init._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @j721e_pcie_ctrl_init._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 249, i32 3}
!75 = !{ptr @j721e_pcie_ctrl_init._entry.41, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @j721e_pcie_ctrl_init._entry_ptr.43, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 255, i32 3}
!79 = !{ptr @j721e_pcie_ctrl_init._entry.44, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @j721e_pcie_ctrl_init._entry_ptr.46, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 178, i32 3}
!83 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @j721e_pcie_set_mode._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @j721e_pcie_set_mode._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 199, i32 3}
!88 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @j721e_pcie_set_link_speed._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @j721e_pcie_set_link_speed._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 215, i32 3}
!93 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @j721e_pcie_set_lane_count._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @j721e_pcie_set_lane_count._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 108, i32 2}
!98 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @j721e_pcie_link_irq_handler._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @j721e_pcie_link_irq_handler._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @of_j721e_pcie_match, !102, !"of_j721e_pcie_match", i1 false, i1 false}
!102 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 323, i32 34}
!103 = !{ptr @j721e_pcie_rc_data, !104, !"j721e_pcie_rc_data", i1 false, i1 false}
!104 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 288, i32 37}
!105 = !{ptr @j721e_pcie_ep_data, !106, !"j721e_pcie_ep_data", i1 false, i1 false}
!106 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 295, i32 37}
!107 = !{ptr @j7200_pcie_rc_data, !108, !"j7200_pcie_rc_data", i1 false, i1 false}
!108 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 300, i32 37}
!109 = !{ptr @j7200_pcie_ep_data, !110, !"j7200_pcie_ep_data", i1 false, i1 false}
!110 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 307, i32 37}
!111 = !{ptr @am64_pcie_rc_data, !112, !"am64_pcie_rc_data", i1 false, i1 false}
!112 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 312, i32 37}
!113 = !{ptr @am64_pcie_ep_data, !114, !"am64_pcie_ep_data", i1 false, i1 false}
!114 = !{!"../drivers/pci/controller/cadence/pci-j721e.c", i32 318, i32 37}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
!125 = !{i64 3111712}
!126 = !{i64 2155699444}
!127 = !{i64 2155699840}
!128 = !{i64 3111294}
!129 = !{i64 2155698157}
!130 = !{i64 2155698553}
