; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-rcar-ep.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-rcar-ep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_epc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
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
%struct.rcar_pcie = type { ptr, ptr }
%struct.rcar_pcie_endpoint = type { %struct.rcar_pcie, ptr, ptr, i8, [6 x i32], ptr, i32, i32 }
%struct.pci_epc_mem_window = type { i32, i32, i32 }
%struct.pci_epc = type { %struct.device, %struct.list_head, ptr, ptr, ptr, i32, i8, ptr, ptr, %struct.mutex, i32, %struct.atomic_notifier_head }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.pci_epf_header = type { i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.pci_epf_bar = type { i32, ptr, i32, i32, i32 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }

@__initcall__kmod_pcie_rcar_ep__241_561_rcar_pcie_ep_driver_init6 = internal global ptr @rcar_pcie_ep_driver_init, section ".initcall6.init", align 4
@rcar_pcie_ep_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_pcie_ep_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rcar_pcie_ep_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rcar-pcie-ep\00", [19 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774c0-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pm_runtime_resume_and_get failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcar_pcie_ep_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pci/controller/pcie-rcar-ep.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_probe._entry_ptr = internal global ptr @rcar_pcie_ep_probe._entry, section ".printk_index", align 4
@rcar_pcie_ep_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request resources: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_probe._entry_ptr.8 = internal global ptr @rcar_pcie_ep_probe._entry.6, section ".printk_index", align 4
@rcar_pcie_ep_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to allocate memory for inbound map\0A\00", [53 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_probe._entry_ptr.11 = internal global ptr @rcar_pcie_ep_probe._entry.9, section ".printk_index", align 4
@rcar_pcie_ep_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"failed to allocate memory for outbound memory pointers\0A\00", [40 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_probe._entry_ptr.14 = internal global ptr @rcar_pcie_ep_probe._entry.12, section ".printk_index", align 4
@rcar_pcie_epc_ops = internal constant { %struct.pci_epc_ops, [36 x i8] } { %struct.pci_epc_ops { ptr @rcar_pcie_ep_write_header, ptr @rcar_pcie_ep_set_bar, ptr @rcar_pcie_ep_clear_bar, ptr @rcar_pcie_ep_map_addr, ptr @rcar_pcie_ep_unmap_addr, ptr @rcar_pcie_ep_set_msi, ptr @rcar_pcie_ep_get_msi, ptr null, ptr null, ptr @rcar_pcie_ep_raise_irq, ptr null, ptr @rcar_pcie_ep_start, ptr @rcar_pcie_ep_stop, ptr @rcar_pcie_ep_get_features, ptr null }, [36 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create epc device\0A\00", [35 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_probe._entry_ptr.17 = internal global ptr @rcar_pcie_ep_probe._entry.15, section ".printk_index", align 4
@rcar_pcie_ep_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 538, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to initialize the epc memory space\0A\00", [53 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_probe._entry_ptr.20 = internal global ptr @rcar_pcie_ep_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max-functions\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"memory%u\00", [23 x i8] zeroinitializer }, align 32
@rcar_pcie_parse_outbound_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"missing outbound window %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rcar_pcie_parse_outbound_ranges\00", [32 x i8] zeroinitializer }, align 32
@rcar_pcie_parse_outbound_ranges._entry_ptr = internal global ptr @rcar_pcie_parse_outbound_ranges._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@rcar_pcie_parse_outbound_ranges._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot request memory region %s.\0A\00", [62 x i8] zeroinitializer }, align 32
@rcar_pcie_parse_outbound_ranges._entry_ptr.27 = internal global ptr @rcar_pcie_parse_outbound_ranges._entry.25, section ".printk_index", align 4
@rcar_pcie_ep_set_bar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no free inbound window\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_pcie_ep_set_bar\00", [43 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_set_bar._entry_ptr = internal global ptr @rcar_pcie_ep_set_bar._entry, section ".printk_index", align 4
@rcar_pcie_ep_set_bar._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy not ready\0A\00", [17 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_set_bar._entry_ptr.32 = internal global ptr @rcar_pcie_ep_set_bar._entry.30, section ".printk_index", align 4
@rcar_pcie_ep_map_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"link not up\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcar_pcie_ep_map_addr\00", [42 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_map_addr._entry_ptr = internal global ptr @rcar_pcie_ep_map_addr._entry, section ".printk_index", align 4
@rcar_pcie_ep_map_addr._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get corresponding window\0A\00", [60 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_map_addr._entry_ptr.37 = internal global ptr @rcar_pcie_ep_map_addr._entry.35, section ".printk_index", align 4
@rcar_pcie_ep_assert_intx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MSI is enabled, cannot assert INTx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_pcie_ep_assert_intx\00", [39 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_assert_intx._entry_ptr = internal global ptr @rcar_pcie_ep_assert_intx._entry, section ".printk_index", align 4
@rcar_pcie_ep_assert_intx._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 360, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"INTx message transmission is disabled\0A\00", [57 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_assert_intx._entry_ptr.42 = internal global ptr @rcar_pcie_ep_assert_intx._entry.40, section ".printk_index", align 4
@rcar_pcie_ep_assert_intx._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.3, i32 366, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"INTx is already asserted\0A\00", [38 x i8] zeroinitializer }, align 32
@rcar_pcie_ep_assert_intx._entry_ptr.45 = internal global ptr @rcar_pcie_ep_assert_intx._entry.43, section ".printk_index", align 4
@rcar_pcie_epc_features = internal constant { %struct.pci_epc_features, [32 x i8] } { %struct.pci_epc_features { i8 32, i8 42, i8 21, [6 x i64] [i64 128, i64 0, i64 256, i64 0, i64 256, i64 0], i32 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"rcar_pcie_ep_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 553, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 555, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"rcar_pcie_ep_of_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 471, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 495, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 501, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 511, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 520, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"rcar_pcie_epc_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 457, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 526, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 538, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 151, i32 42 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 100, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 105, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 111, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 210, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 239, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 299, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 305, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 354, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 360, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 366, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [23 x i8] c"rcar_pcie_epc_features\00", align 1
@___asan_gen_.179 = private constant [41 x i8] c"../drivers/pci/controller/pcie-rcar-ep.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 439, i32 38 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__initcall__kmod_pcie_rcar_ep__241_561_rcar_pcie_ep_driver_init6, ptr @rcar_pcie_ep_assert_intx._entry, ptr @rcar_pcie_ep_assert_intx._entry.40, ptr @rcar_pcie_ep_assert_intx._entry.43, ptr @rcar_pcie_ep_assert_intx._entry_ptr, ptr @rcar_pcie_ep_assert_intx._entry_ptr.42, ptr @rcar_pcie_ep_assert_intx._entry_ptr.45, ptr @rcar_pcie_ep_map_addr._entry, ptr @rcar_pcie_ep_map_addr._entry.35, ptr @rcar_pcie_ep_map_addr._entry_ptr, ptr @rcar_pcie_ep_map_addr._entry_ptr.37, ptr @rcar_pcie_ep_probe._entry, ptr @rcar_pcie_ep_probe._entry.12, ptr @rcar_pcie_ep_probe._entry.15, ptr @rcar_pcie_ep_probe._entry.18, ptr @rcar_pcie_ep_probe._entry.6, ptr @rcar_pcie_ep_probe._entry.9, ptr @rcar_pcie_ep_probe._entry_ptr, ptr @rcar_pcie_ep_probe._entry_ptr.11, ptr @rcar_pcie_ep_probe._entry_ptr.14, ptr @rcar_pcie_ep_probe._entry_ptr.17, ptr @rcar_pcie_ep_probe._entry_ptr.20, ptr @rcar_pcie_ep_probe._entry_ptr.8, ptr @rcar_pcie_ep_set_bar._entry, ptr @rcar_pcie_ep_set_bar._entry.30, ptr @rcar_pcie_ep_set_bar._entry_ptr, ptr @rcar_pcie_ep_set_bar._entry_ptr.32, ptr @rcar_pcie_parse_outbound_ranges._entry, ptr @rcar_pcie_parse_outbound_ranges._entry.25, ptr @rcar_pcie_parse_outbound_ranges._entry_ptr, ptr @rcar_pcie_parse_outbound_ranges._entry_ptr.27, ptr @rcar_pcie_ep_driver, ptr @.str, ptr @rcar_pcie_ep_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @rcar_pcie_epc_ops, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @rcar_pcie_epc_features], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_epc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_parse_outbound_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_parse_outbound_ranges._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_set_bar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_set_bar._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_map_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_map_addr._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_assert_intx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_assert_intx._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_ep_assert_intx._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_pcie_epc_features to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_ep_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_pcie_ep_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_ep_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %outbound_name.i.i = alloca [10 x i8], align 1
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  %call.i90 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i = icmp slt i32 %call.i90, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !94
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %err_pm_disable

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #9
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %call.i91 = call i32 @of_address_to_resource(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %res.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.rcar_pcie_ep_get_pdata.exit_crit_edge

if.end6.rcar_pcie_ep_get_pdata.exit_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcar_pcie_ep_get_pdata.exit

if.end.i:                                         ; preds = %if.end6
  %call3.i = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %res.i) #9
  %base.i = getelementptr inbounds %struct.rcar_pcie, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call3.i to i32
  br label %rcar_pcie_ep_get_pdata.exit

if.end9.i:                                        ; preds = %if.end.i
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 48, i32 noundef 3520) #9
  %ob_window.i = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %ob_window.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i.i, ptr %ob_window.i, align 4
  %tobool12.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool12.not.i, label %rcar_pcie_ep_get_pdata.exit.thread105, label %if.end14.i

rcar_pcie_ep_get_pdata.exit.thread105:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  br label %do.end12

if.end14.i:                                       ; preds = %if.end9.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %outbound_name.i.i) #9
  %num_ob_windows.i.i = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %call.i, i32 0, i32 7
  %10 = call ptr @memset(ptr %outbound_name.i.i, i32 255, i32 10)
  %11 = ptrtoint ptr %num_ob_windows.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %num_ob_windows.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end15.i.i.for.body.i.i_crit_edge, %if.end14.i
  %i.011.i.i = phi i32 [ 0, %if.end14.i ], [ %inc.i.i, %if.end15.i.i.for.body.i.i_crit_edge ]
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %outbound_name.i.i, ptr noundef nonnull @.str.22, i32 noundef %i.011.i.i) #9
  %call3.i.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull %outbound_name.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %i.011.i.i) #12
  br label %rcar_pcie_parse_outbound_ranges.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %14 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call3.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %call3.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i.i.i, align 4
  %sub.i.i.i = sub i32 1, %15
  %add.i.i.i = add i32 %sub.i.i.i, %17
  %call7.i.i = call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @iomem_resource, i32 noundef %15, i32 noundef %add.i.i.i, ptr noundef nonnull %outbound_name.i.i) #9
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %do.end12.i.i, label %if.end15.i.i

do.end12.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.26, ptr noundef nonnull %outbound_name.i.i) #12
  br label %rcar_pcie_parse_outbound_ranges.exit.i

if.end15.i.i:                                     ; preds = %if.end.i.i
  %20 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call3.i.i, align 4
  %22 = ptrtoint ptr %ob_window.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ob_window.i, align 4
  %arrayidx.i.i = getelementptr %struct.pci_epc_mem_window, ptr %23, i32 %i.011.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %arrayidx.i.i, align 4
  %25 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i.i.i, align 4
  %27 = load i32, ptr %call3.i.i, align 4
  %sub.i2.i.i = add i32 %26, 1
  %add.i3.i.i = sub i32 %sub.i2.i.i, %27
  %28 = load ptr, ptr %ob_window.i, align 4
  %size.i.i = getelementptr %struct.pci_epc_mem_window, ptr %28, i32 %i.011.i.i, i32 1
  %29 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i3.i.i, ptr %size.i.i, align 4
  %30 = load i32, ptr %end.i.i.i, align 4
  %31 = load i32, ptr %call3.i.i, align 4
  %sub.i5.i.i = add i32 %30, 1
  %add.i6.i.i = sub i32 %sub.i5.i.i, %31
  %32 = load ptr, ptr %ob_window.i, align 4
  %page_size.i.i = getelementptr %struct.pci_epc_mem_window, ptr %32, i32 %i.011.i.i, i32 2
  %33 = ptrtoint ptr %page_size.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i6.i.i, ptr %page_size.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 4
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end15.i.i.for.body.i.i_crit_edge

if.end15.i.i.for.body.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %num_ob_windows.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %num_ob_windows.i.i, align 4
  br label %rcar_pcie_parse_outbound_ranges.exit.i

rcar_pcie_parse_outbound_ranges.exit.i:           ; preds = %for.end.i.i, %do.end12.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %outbound_name.i.i) #9
  %35 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node.i, align 8
  %max_functions.i = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %call.i, i32 0, i32 3
  %call.i.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef %36, ptr noundef nonnull @.str.21, ptr noundef %max_functions.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i92 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i92, label %rcar_pcie_parse_outbound_ranges.exit.i.if.then21.i_crit_edge, label %lor.lhs.false.i

rcar_pcie_parse_outbound_ranges.exit.i.if.then21.i_crit_edge: ; preds = %rcar_pcie_parse_outbound_ranges.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %rcar_pcie_parse_outbound_ranges.exit.i
  %37 = ptrtoint ptr %max_functions.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_functions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp19.i = icmp ugt i8 %38, 1
  br i1 %cmp19.i, label %lor.lhs.false.i.if.then21.i_crit_edge, label %lor.lhs.false.i.rcar_pcie_ep_get_pdata.exit.thread_crit_edge

lor.lhs.false.i.rcar_pcie_ep_get_pdata.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcar_pcie_ep_get_pdata.exit.thread

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false.i.if.then21.i_crit_edge, %rcar_pcie_parse_outbound_ranges.exit.i.if.then21.i_crit_edge
  %39 = ptrtoint ptr %max_functions.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %max_functions.i, align 4
  br label %rcar_pcie_ep_get_pdata.exit.thread

rcar_pcie_ep_get_pdata.exit.thread:               ; preds = %if.then21.i, %lor.lhs.false.i.rcar_pcie_ep_get_pdata.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  br label %if.end13

rcar_pcie_ep_get_pdata.exit:                      ; preds = %if.then6.i, %if.end6.rcar_pcie_ep_get_pdata.exit_crit_edge
  %retval.0.i93 = phi i32 [ %8, %if.then6.i ], [ %call.i91, %if.end6.rcar_pcie_ep_get_pdata.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i93)
  %cmp8 = icmp slt i32 %retval.0.i93, 0
  br i1 %cmp8, label %rcar_pcie_ep_get_pdata.exit.do.end12_crit_edge, label %rcar_pcie_ep_get_pdata.exit.if.end13_crit_edge

rcar_pcie_ep_get_pdata.exit.if.end13_crit_edge:   ; preds = %rcar_pcie_ep_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

rcar_pcie_ep_get_pdata.exit.do.end12_crit_edge:   ; preds = %rcar_pcie_ep_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end12:                                         ; preds = %rcar_pcie_ep_get_pdata.exit.do.end12_crit_edge, %rcar_pcie_ep_get_pdata.exit.thread105
  %retval.0.i93108 = phi i32 [ -12, %rcar_pcie_ep_get_pdata.exit.thread105 ], [ %retval.0.i93, %rcar_pcie_ep_get_pdata.exit.do.end12_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i93108) #12
  br label %err_pm_put

if.end13:                                         ; preds = %rcar_pcie_ep_get_pdata.exit.if.end13_crit_edge, %rcar_pcie_ep_get_pdata.exit.thread
  %num_ib_windows = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %num_ib_windows to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %num_ib_windows, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #9
  %ib_window_map = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %call.i, i32 0, i32 5
  %41 = ptrtoint ptr %ib_window_map to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call5.i.i, ptr %ib_window_map, align 4
  %tobool17.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool17.not, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  br label %err_pm_put

if.end22:                                         ; preds = %if.end13
  %num_ob_windows = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %call.i, i32 0, i32 7
  %42 = ptrtoint ptr %num_ob_windows to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_ob_windows, align 4
  %44 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %43, i32 4) #9
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !96

devm_kcalloc.exit.thread:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %ob_mapped_addr110 = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %call.i, i32 0, i32 1
  %46 = ptrtoint ptr %ob_mapped_addr110 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %ob_mapped_addr110, align 4
  br label %if.then26

devm_kcalloc.exit:                                ; preds = %if.end22
  %47 = extractvalue { i32, i1 } %44, 0
  %call5.i.i95 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %47, i32 noundef 3520) #9
  %ob_mapped_addr = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %ob_mapped_addr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call5.i.i95, ptr %ob_mapped_addr, align 4
  %tobool25.not = icmp eq ptr %call5.i.i95, null
  br i1 %tobool25.not, label %devm_kcalloc.exit.if.then26_crit_edge, label %if.end30

devm_kcalloc.exit.if.then26_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then26:                                        ; preds = %devm_kcalloc.exit.if.then26_crit_edge, %devm_kcalloc.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #12
  br label %err_pm_put

if.end30:                                         ; preds = %devm_kcalloc.exit
  %call31 = call ptr @__devm_pci_epc_create(ptr noundef %dev1, ptr noundef nonnull @rcar_pcie_epc_ops, ptr noundef null) #9
  %cmp.i97 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #12
  %49 = ptrtoint ptr %call31 to i32
  br label %err_pm_put

if.end38:                                         ; preds = %if.end30
  %max_functions = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %call.i, i32 0, i32 3
  %50 = ptrtoint ptr %max_functions to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %max_functions, align 4
  %max_functions39 = getelementptr inbounds %struct.pci_epc, ptr %call31, i32 0, i32 6
  %52 = ptrtoint ptr %max_functions39 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %max_functions39, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call31, i32 0, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @rcar_pci_write_reg(ptr noundef %call.i, i32 noundef 0, i32 noundef 8192) #9
  call void @rcar_pci_write_reg(ptr noundef %call.i, i32 noundef 0, i32 noundef 40) #9
  call void @rcar_rmw32(ptr noundef %call.i, i32 noundef 65648, i32 noundef 255, i32 noundef 16) #9
  call void @rcar_rmw32(ptr noundef %call.i, i32 noundef 65650, i32 noundef 240, i32 noundef 0) #9
  call void @rcar_rmw32(ptr noundef %call.i, i32 noundef 65550, i32 noundef 127, i32 noundef 0) #9
  call void @rcar_rmw32(ptr noundef %call.i, i32 noundef 65668, i32 noundef -524288, i32 noundef 0) #9
  %call.i98 = call i32 @rcar_pci_read_reg(ptr noundef %call.i, i32 noundef 65652) #9
  %and.i = and i32 %call.i98, -8
  call void @rcar_pci_write_reg(ptr noundef %call.i, i32 noundef %and.i, i32 noundef 65652) #9
  %call1.i = call i32 @rcar_pci_read_reg(ptr noundef %call.i, i32 noundef 65656) #9
  %and3.i = and i32 %call1.i, -28897
  call void @rcar_pci_write_reg(ptr noundef %call.i, i32 noundef %and3.i, i32 noundef 65656) #9
  call void @rcar_rmw32(ptr noundef %call.i, i32 noundef 65696, i32 noundef 15, i32 noundef 2) #9
  call void @rcar_rmw32(ptr noundef %call.i, i32 noundef 69705, i32 noundef 63, i32 noundef 50) #9
  call void @rcar_rmw32(ptr noundef %call.i, i32 noundef 65792, i32 noundef -1048576, i32 noundef 0) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @arm_heavy_mb() #9
  %ob_window = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %call.i, i32 0, i32 2
  %54 = ptrtoint ptr %ob_window to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ob_window, align 4
  %56 = ptrtoint ptr %num_ob_windows to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_ob_windows, align 4
  %call41 = call i32 @pci_epc_multi_mem_init(ptr noundef %call31, ptr noundef %55, i32 noundef %57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #12
  br label %err_pm_put

err_pm_put:                                       ; preds = %do.end46, %do.end36, %if.then26, %if.then18, %do.end12
  %err.0 = phi i32 [ %retval.0.i93108, %do.end12 ], [ %49, %do.end36 ], [ %call41, %do.end46 ], [ -12, %if.then26 ], [ -12, %if.then18 ]
  %call.i99 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #9
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %err_pm_put, %do.end
  %err.1 = phi i32 [ %call.i90, %do.end ], [ %err.0, %err_pm_put ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_pci_epc_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_multi_mem_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_ep_write_header(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, ptr nocapture noundef readonly %hdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fn)
  %tobool.not = icmp eq i8 %fn, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdr, align 4
  %conv = zext i16 %3 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 69632) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %call2, %if.else ], [ %conv, %if.then ]
  %deviceid = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %deviceid, align 2
  %conv3 = zext i16 %5 to i32
  %shl = shl nuw i32 %conv3, 16
  %or = or i32 %shl, %val.0
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef %or, i32 noundef 69632) #9
  %revid = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 2
  %6 = ptrtoint ptr %revid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revid, align 4
  %conv4 = zext i8 %7 to i32
  %progif_code = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 3
  %8 = ptrtoint ptr %progif_code to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %progif_code, align 1
  %conv5 = zext i8 %9 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %shl6, %conv4
  %subclass_code = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 4
  %10 = ptrtoint ptr %subclass_code to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %subclass_code, align 2
  %conv8 = zext i8 %11 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or10 = or i32 %or7, %shl9
  %baseclass_code = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 5
  %12 = ptrtoint ptr %baseclass_code to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %baseclass_code, align 1
  %conv11 = zext i8 %13 to i32
  %shl12 = shl nuw i32 %conv11, 24
  %or13 = or i32 %or10, %shl12
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef %or13, i32 noundef 69636) #9
  br i1 %tobool.not, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %subsys_vendor_id = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 7
  %14 = ptrtoint ptr %subsys_vendor_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %subsys_vendor_id, align 2
  %conv16 = zext i16 %15 to i32
  br label %if.end19

if.else17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 69668) #9
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  %val.1 = phi i32 [ %call18, %if.else17 ], [ %conv16, %if.then15 ]
  %subsys_id = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 8
  %16 = ptrtoint ptr %subsys_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsys_id, align 4
  %conv20 = zext i16 %17 to i32
  %shl21 = shl nuw i32 %conv20, 16
  %or22 = or i32 %shl21, %val.1
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef %or22, i32 noundef 69668) #9
  %interrupt_pin = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 9
  %18 = ptrtoint ptr %interrupt_pin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %interrupt_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp ugt i32 %19, 1
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 65596) #9
  %20 = ptrtoint ptr %interrupt_pin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %interrupt_pin, align 4
  %shl28 = shl i32 %21, 8
  %or29 = or i32 %shl28, %call26
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef %or29, i32 noundef 65596) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_ep_set_bar(ptr nocapture noundef readonly %epc, i8 noundef zeroext %func_no, i8 noundef zeroext %vfunc_no, ptr nocapture noundef readonly %epf_bar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 4
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %size3 = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 2
  %4 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size3, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i5.i = icmp eq i32 %sub, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #9, !range !98
  %sub.i6.i = sub nuw nsw i32 32, %6
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  %sh_prom = zext i32 %cond.i7.i to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %7 = ptrtoint ptr %epf_bar to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %epf_bar, align 4
  %barno = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 3
  %9 = ptrtoint ptr %barno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %barno, align 4
  %ib_window_map = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %ib_window_map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ib_window_map, align 4
  %num_ib_windows = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %num_ib_windows to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_ib_windows, align 4
  %call6 = tail call i32 @_find_first_zero_bit_be(ptr noundef %12, i32 noundef %14) #9
  %15 = ptrtoint ptr %num_ib_windows to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ib_windows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %16)
  %cmp.not = icmp ult i32 %call6, %16
  br i1 %cmp.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %cmp9.not, i32 6, i32 262
  %spec.select = or i32 %spec.select.v, %1
  %arrayidx = getelementptr %struct.rcar_pcie_endpoint, ptr %3, i32 0, i32 4, i32 %10
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call6, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %ib_window_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ib_window_map, align 4
  tail call void @_set_bit(i32 noundef %call6, ptr noundef %19) #9
  %add = add nuw i32 %call6, 1
  %20 = ptrtoint ptr %ib_window_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ib_window_map, align 4
  tail call void @_set_bit(i32 noundef %add, ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp16.not = icmp eq i32 %8, 0
  %extract.t117 = trunc i64 %shl to i32
  br i1 %cmp16.not, label %if.end.cond.end61_crit_edge, label %if.then18

if.end.cond.end61_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end61

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true) #9, !range !98
  %sh_prom21 = zext i32 %22 to i64
  %shl22 = shl nuw nsw i64 1, %sh_prom21
  %23 = tail call i64 @llvm.umin.i64(i64 %shl, i64 %shl22)
  %extract.t = trunc i64 %23 to i32
  br label %cond.end61

cond.end61:                                       ; preds = %if.then18, %if.end.cond.end61_crit_edge
  %size.0.off0 = phi i32 [ %extract.t, %if.then18 ], [ %extract.t117, %if.end.cond.end61_crit_edge ]
  %sub.i116 = add i32 %size.0.off0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i116)
  %tobool.not.i.i.i = icmp eq i32 %sub.i116, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %sub.i116, i1 true) #9, !range !98
  %sub.i.i.i = sub nuw nsw i32 32, %24
  %notmask = shl nsw i32 -1, %sub.i.i.i
  %sub.i.i.op.i.op = and i32 %notmask, -16
  %sub.i.i.op.i.op.op = xor i32 %sub.i.i.op.i.op, -16
  %and64 = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.op.i.op.op
  %conv65 = zext i32 %8 to i64
  %or66 = or i32 %spec.select, %and64
  %conv67 = zext i32 %or66 to i64
  tail call void @rcar_pcie_set_inbound(ptr noundef %3, i64 noundef %conv65, i64 noundef 0, i64 noundef %conv67, i32 noundef %call6, i1 noundef zeroext false) #9
  %call68 = tail call i32 @rcar_pcie_wait_for_phyrdy(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool.not = icmp eq i32 %call68, 0
  br i1 %tobool.not, label %cond.end61.cleanup_crit_edge, label %cond.end61.cleanup.sink.split_crit_edge

cond.end61.cleanup.sink.split_crit_edge:          ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cond.end61.cleanup_crit_edge:                     ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %cond.end61.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.31.sink = phi ptr [ @.str.28, %entry.cleanup.sink.split_crit_edge ], [ @.str.31, %cond.end61.cleanup.sink.split_crit_edge ]
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull %.str.31.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end61.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end61.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_pcie_ep_clear_bar(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, ptr nocapture noundef readonly %epf_bar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %barno = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 3
  %2 = ptrtoint ptr %barno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %barno, align 4
  %arrayidx = getelementptr %struct.rcar_pcie_endpoint, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void @rcar_pcie_set_inbound(ptr noundef %1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %3, i1 noundef zeroext false) #9
  %ib_window_map = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ib_window_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ib_window_map, align 4
  tail call void @_clear_bit(i32 noundef %5, ptr noundef %7) #9
  %add = add i32 %5, 1
  %8 = ptrtoint ptr %ib_window_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ib_window_map, align 4
  tail call void @_clear_bit(i32 noundef %add, ptr noundef %9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_ep_map_addr(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i32 noundef %addr, i64 noundef %pci_addr, i32 noundef %size) #2 align 64 {
entry:
  %win = alloca %struct.resource_entry, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %win) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %call2 = tail call i32 @rcar_pcie_wait_for_dl(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_ob_windows.i = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %num_ob_windows.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ob_windows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not.i = icmp eq i32 %7, 0
  br i1 %cmp6.not.i, label %if.end.do.end7_crit_edge, label %for.body.lr.ph.i

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

for.body.lr.ph.i:                                 ; preds = %if.end
  %ob_window.i = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ob_window.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ob_window.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pci_epc_mem_window, ptr %9, i32 %i.07.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %addr)
  %cmp1.i = icmp eq i32 %11, %addr
  br i1 %cmp1.i, label %rcar_pcie_ep_get_window.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.end7_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

rcar_pcie_ep_get_window.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.07.i)
  %cmp = icmp slt i32 %i.07.i, 0
  br i1 %cmp, label %rcar_pcie_ep_get_window.exit.do.end7_crit_edge, label %if.end9

rcar_pcie_ep_get_window.exit.do.end7_crit_edge:   ; preds = %rcar_pcie_ep_get_window.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end7:                                          ; preds = %rcar_pcie_ep_get_window.exit.do.end7_crit_edge, %for.inc.i.do.end7_crit_edge, %if.end.do.end7_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.36) #12
  br label %cleanup

if.end9:                                          ; preds = %rcar_pcie_ep_get_window.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = call ptr @memset(ptr %win, i32 0, i32 48)
  %15 = getelementptr inbounds i8, ptr %res, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 24)
  %conv = trunc i64 %pci_addr to i32
  %17 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %res, align 4
  %18 = add i32 %size, -1
  %conv11 = add i32 %18, %conv
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv11, ptr %2, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 512, ptr %3, align 4
  %res12 = getelementptr inbounds %struct.resource_entry, ptr %win, i32 0, i32 1
  %21 = ptrtoint ptr %res12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %res, ptr %res12, align 4
  call void @rcar_pcie_set_outbound(ptr noundef %1, i32 noundef %i.07.i, ptr noundef nonnull %win) #9
  %ob_mapped_addr = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %ob_mapped_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ob_mapped_addr, align 4
  %arrayidx = getelementptr i32, ptr %23, i32 %i.07.i
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %addr, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end7, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ -22, %do.end7 ], [ 0, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %win) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_pcie_ep_unmap_addr(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i32 noundef %addr) #2 align 64 {
entry:
  %win = alloca %struct.resource_entry, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %win) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %num_ob_windows = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %num_ob_windows to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ob_windows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22.not = icmp eq i32 %3, 0
  br i1 %cmp22.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %ob_mapped_addr = getelementptr inbounds %struct.rcar_pcie_endpoint, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ob_mapped_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ob_mapped_addr, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %5, i32 %idx.023
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr)
  %cmp1 = icmp eq i32 %7, %addr
  br i1 %cmp1, label %if.end5, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %idx.023, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call ptr @memset(ptr %win, i32 0, i32 48)
  %9 = call ptr @memset(ptr %res, i32 0, i32 32)
  %res6 = getelementptr inbounds %struct.resource_entry, ptr %win, i32 0, i32 1
  %10 = ptrtoint ptr %res6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %res, ptr %res6, align 4
  call void @rcar_pcie_set_outbound(ptr noundef %1, i32 noundef %idx.023, ptr noundef nonnull %win) #9
  %11 = ptrtoint ptr %ob_mapped_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ob_mapped_addr, align 4
  %arrayidx8 = getelementptr i32, ptr %12, i32 %idx.023
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %win) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_ep_set_msi(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i8 noundef zeroext %interrupts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i8 %fn to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 65616
  %call2 = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef %add) #9
  %conv3 = zext i8 %interrupts to i32
  %shl = shl nuw nsw i32 %conv3, 17
  %or = or i32 %call2, %shl
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef %or, i32 noundef %add) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_ep_get_msi(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i8 %fn to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 65616
  %call2 = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef %add) #9
  %and = and i32 %call2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = lshr i32 %call2, 20
  %shr = and i32 %and3, 7
  %retval.0 = select i1 %tobool.not, i32 -22, i32 %shr
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_ep_raise_irq(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i32 noundef %type, i16 noundef zeroext %interrupt_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 2112) #9
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %call2.i = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 65540) #9
  %and3.i = and i32 %call2.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 1024) #9
  %and12.i = and i32 %call11.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end19.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %call11.i, 65536
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef %or.i, i32 noundef 1024) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1001, i32 noundef 2) #9
  %call20.i = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 1024) #9
  %and21.i = and i32 %call20.i, -65537
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef %and21.i, i32 noundef 1024) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %conv = trunc i16 %interrupt_num to i8
  %conv.i = zext i8 %fn to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 65616
  %call.i6 = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef %add.i) #9
  %and.i7 = and i32 %call.i6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i8 = icmp eq i32 %and.i7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool5.not.i = icmp eq i8 %conv, 0
  %or.cond.i = or i1 %tobool5.not.i, %tobool.not.i8
  br i1 %or.cond.i, label %sw.bb2.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb2
  %and1.i = lshr i32 %call.i6, 20
  %conv2.i = and i32 %and1.i, 7
  %shl.i = shl nuw nsw i32 1, %conv2.i
  %conv.mask = and i16 %interrupt_num, 255
  %conv6.i = zext i16 %conv.mask to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv6.i)
  %cmp.i = icmp ult i32 %shl.i, %conv6.i
  br i1 %cmp.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end10.i11

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.i11:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i9 = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 2112) #9
  %sub.i = add nsw i32 %conv6.i, -1
  %or.i10 = or i32 %call11.i9, %sub.i
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef %or.i10, i32 noundef 2112) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i11, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.end19.i, %do.end17.i, %do.end8.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end8.i ], [ -22, %do.end17.i ], [ 0, %if.end19.i ], [ 0, %if.end10.i11 ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_pcie_ep_start(ptr nocapture noundef readonly %epc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef -2130771968, i32 noundef 69720) #9
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef 1, i32 noundef 8192) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_pcie_ep_stop(ptr nocapture noundef readonly %epc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef 0, i32 noundef 8192) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @rcar_pcie_ep_get_features(ptr nocapture noundef readnone %epc, i8 noundef zeroext %func_no, i8 noundef zeroext %vfunc_no) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @rcar_pcie_epc_features
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_pci_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_pci_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_pcie_set_inbound(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_pcie_wait_for_phyrdy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_pcie_wait_for_dl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_pcie_set_outbound(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_rmw32(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_pcie_rcar_ep__241_561_rcar_pcie_ep_driver_init6, !1, !"__initcall__kmod_pcie_rcar_ep__241_561_rcar_pcie_ep_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 561, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 555, i32 11}
!4 = !{ptr @rcar_pcie_ep_driver, !5, !"rcar_pcie_ep_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 553, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 495, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rcar_pcie_ep_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @rcar_pcie_ep_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 501, i32 3}
!16 = !{ptr @rcar_pcie_ep_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rcar_pcie_ep_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 511, i32 3}
!20 = !{ptr @rcar_pcie_ep_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rcar_pcie_ep_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 520, i32 3}
!24 = !{ptr @rcar_pcie_ep_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rcar_pcie_ep_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 526, i32 3}
!28 = !{ptr @rcar_pcie_ep_probe._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rcar_pcie_ep_probe._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 538, i32 3}
!32 = !{ptr @rcar_pcie_ep_probe._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rcar_pcie_ep_probe._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 151, i32 42}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 100, i32 26}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 105, i32 4}
!40 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rcar_pcie_parse_outbound_ranges._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @rcar_pcie_parse_outbound_ranges._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 111, i32 4}
!45 = !{ptr @rcar_pcie_parse_outbound_ranges._entry.25, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rcar_pcie_parse_outbound_ranges._entry_ptr.27, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @rcar_pcie_epc_ops, !48, !"rcar_pcie_epc_ops", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 457, i32 33}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 210, i32 3}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rcar_pcie_ep_set_bar._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @rcar_pcie_ep_set_bar._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 239, i32 3}
!56 = !{ptr @rcar_pcie_ep_set_bar._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rcar_pcie_ep_set_bar._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 299, i32 3}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rcar_pcie_ep_map_addr._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @rcar_pcie_ep_map_addr._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 305, i32 3}
!65 = !{ptr @rcar_pcie_ep_map_addr._entry.35, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rcar_pcie_ep_map_addr._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 354, i32 3}
!69 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rcar_pcie_ep_assert_intx._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @rcar_pcie_ep_assert_intx._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 360, i32 3}
!74 = !{ptr @rcar_pcie_ep_assert_intx._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rcar_pcie_ep_assert_intx._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 366, i32 3}
!78 = !{ptr @rcar_pcie_ep_assert_intx._entry.43, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rcar_pcie_ep_assert_intx._entry_ptr.45, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @rcar_pcie_epc_features, !81, !"rcar_pcie_epc_features", i1 false, i1 false}
!81 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 439, i32 38}
!82 = !{ptr @rcar_pcie_ep_of_match, !83, !"rcar_pcie_ep_of_match", i1 false, i1 false}
!83 = !{!"../drivers/pci/controller/pcie-rcar-ep.c", i32 471, i32 34}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2148200518}
!94 = !{i64 685341, i64 685366, i64 685388, i64 685404, i64 685416, i64 685436, i64 685460, i64 685476, i64 685488}
!95 = !{i64 2148200706}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 2154642030}
!98 = !{i32 0, i32 33}
