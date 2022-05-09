; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-rockchip-host.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-rockchip-host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.rockchip_pcie = type { ptr, ptr, i8, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, ptr, ptr, i32, ptr, i32, i8, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pcie_rockchip_host__320_1057_rockchip_pcie_driver_init6 = internal global ptr @rockchip_pcie_driver_init, section ".initcall6.init", align 4
@rockchip_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_pcie_probe, ptr @rockchip_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_pcie_driver_exit = internal global ptr @rockchip_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [39 x i8] c"pcie_rockchip_host.author=Rockchip Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [56 x i8] c"pcie_rockchip_host.description=Rockchip AXI PCIe driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [66 x i8] c"pcie_rockchip_host.file=drivers/pci/controller/pcie-rockchip-host\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [34 x i8] c"pcie_rockchip_host.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rockchip-pcie\00", [18 x i8] zeroinitializer }, align 32
@rockchip_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rockchip_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_pcie_suspend_noirq, ptr @rockchip_pcie_resume_noirq, ptr @rockchip_pcie_suspend_noirq, ptr @rockchip_pcie_resume_noirq, ptr @rockchip_pcie_suspend_noirq, ptr @rockchip_pcie_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rockchip_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 960, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set vpcie regulator\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip_pcie_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/pci/controller/pcie-rockchip-host.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_pcie_probe._entry_ptr = internal global ptr @rockchip_pcie_probe._entry, section ".printk_index", align 4
@rockchip_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr null, ptr @rockchip_pcie_rd_conf, ptr @rockchip_pcie_wr_conf }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpcie12v\00", [23 x i8] zeroinitializer }, align 32
@rockchip_pcie_parse_host_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 595, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no vpcie12v regulator found\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rockchip_pcie_parse_host_dt\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rockchip_pcie_parse_host_dt._entry_ptr = internal global ptr @rockchip_pcie_parse_host_dt._entry, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpcie3v3\00", [23 x i8] zeroinitializer }, align 32
@rockchip_pcie_parse_host_dt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.3, i32 602, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no vpcie3v3 regulator found\0A\00", [35 x i8] zeroinitializer }, align 32
@rockchip_pcie_parse_host_dt._entry_ptr.13 = internal global ptr @rockchip_pcie_parse_host_dt._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpcie1v8\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpcie0v9\00", [23 x i8] zeroinitializer }, align 32
@rockchip_pcie_set_vpcie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fail to enable vpcie12v regulator\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_pcie_set_vpcie\00", [40 x i8] zeroinitializer }, align 32
@rockchip_pcie_set_vpcie._entry_ptr = internal global ptr @rockchip_pcie_set_vpcie._entry, section ".printk_index", align 4
@rockchip_pcie_set_vpcie._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 632, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fail to enable vpcie3v3 regulator\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_pcie_set_vpcie._entry_ptr.20 = internal global ptr @rockchip_pcie_set_vpcie._entry.18, section ".printk_index", align 4
@rockchip_pcie_set_vpcie._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fail to enable vpcie1v8 regulator\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_pcie_set_vpcie._entry_ptr.23 = internal global ptr @rockchip_pcie_set_vpcie._entry.21, section ".printk_index", align 4
@rockchip_pcie_set_vpcie._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.3, i32 645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fail to enable vpcie0v9 regulator\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_pcie_set_vpcie._entry_ptr.26 = internal global ptr @rockchip_pcie_set_vpcie._entry.24, section ".printk_index", align 4
@rockchip_pcie_host_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PCIe link training gen1 timeout!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rockchip_pcie_host_init_port\00", [35 x i8] zeroinitializer }, align 32
@rockchip_pcie_host_init_port._entry_ptr = internal global ptr @rockchip_pcie_host_init_port._entry, section ".printk_index", align 4
@rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 88, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcie_rockchip_host\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"PCIe link training gen2 timeout, fall back to gen1!\0A\00", [43 x i8] zeroinitializer }, align 32
@rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.28, ptr @.str.3, ptr @.str.31, i8 0, i8 89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"current link width is x%d\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.28, ptr @.str.3, ptr @.str.32, i8 0, i8 91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idling lane %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aspm-no-l0s\00", [20 x i8] zeroinitializer }, align 32
@rockchip_pcie_set_power_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 277, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid power supply\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip_pcie_set_power_limit\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rockchip_pcie_set_power_limit._entry_ptr = internal global ptr @rockchip_pcie_set_power_limit._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@rockchip_pcie_init_irq_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 692, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"missing child interrupt-controller node\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip_pcie_init_irq_domain\00", [34 x i8] zeroinitializer }, align 32
@rockchip_pcie_init_irq_domain._entry_ptr = internal global ptr @rockchip_pcie_init_irq_domain._entry, section ".printk_index", align 4
@intx_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @rockchip_pcie_intx_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rockchip_pcie_init_irq_domain._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get a INTx IRQ domain\0A\00", [63 x i8] zeroinitializer }, align 32
@rockchip_pcie_init_irq_domain._entry_ptr.41 = internal global ptr @rockchip_pcie_init_irq_domain._entry.39, section ".printk_index", align 4
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@rockchip_pcie_cfg_atu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 804, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"program RC mem outbound ATU failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip_pcie_cfg_atu\00", [42 x i8] zeroinitializer }, align 32
@rockchip_pcie_cfg_atu._entry_ptr = internal global ptr @rockchip_pcie_cfg_atu._entry, section ".printk_index", align 4
@rockchip_pcie_cfg_atu._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 811, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"program RC mem inbound ATU failed\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_pcie_cfg_atu._entry_ptr.46 = internal global ptr @rockchip_pcie_cfg_atu._entry.44, section ".printk_index", align 4
@rockchip_pcie_cfg_atu._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.3, i32 833, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"program RC io outbound ATU failed\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_pcie_cfg_atu._entry_ptr.49 = internal global ptr @rockchip_pcie_cfg_atu._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie-sys\00", [23 x i8] zeroinitializer }, align 32
@rockchip_pcie_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request PCIe subsystem IRQ\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_pcie_setup_irq\00", [40 x i8] zeroinitializer }, align 32
@rockchip_pcie_setup_irq._entry_ptr = internal global ptr @rockchip_pcie_setup_irq._entry, section ".printk_index", align 4
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"client\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcie-client\00", [20 x i8] zeroinitializer }, align 32
@rockchip_pcie_setup_irq._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.3, i32 569, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to request PCIe client IRQ\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_pcie_setup_irq._entry_ptr.59 = internal global ptr @rockchip_pcie_setup_irq._entry.57, section ".printk_index", align 4
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rockchip_pcie_subsys_irq_handler\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"local interrupt received\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.62, i8 0, i8 103, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"parity error detected while reading from the PNP receive FIFO RAM\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.63, i8 0, i8 104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"parity error detected while reading from the Completion Receive FIFO RAM\0A\00", [54 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.64, i8 0, i8 105, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"parity error detected while reading from replay buffer RAM\0A\00", [36 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.65, i8 0, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"overflow occurred in the PNP receive FIFO\0A\00", [53 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.66, i8 0, i8 106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"overflow occurred in the completion receive FIFO\0A\00", [46 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.67, i8 0, i8 107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"replay timer timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.68, i8 0, i8 108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"replay timer rolled over after 4 transmissions of the same TLP\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.69, i8 0, i8 109, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"phy error detected on receive side\0A\00", [60 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.70, i8 0, i8 109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"malformed TLP received from the link\0A\00", [58 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.70, i8 0, i8 110, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.71, i8 0, i8 111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"an error was observed in the flow control advertisements from the other side\0A\00", [50 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.72, i8 0, i8 112, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"a request timed out waiting for completion\0A\00", [52 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.73, i8 0, i8 112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unmapped TC error\0A\00", [45 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.74, i8 0, i8 113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MSI mask register changes\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.60, ptr @.str.3, ptr @.str.75, i8 0, i8 114, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy link changes\0A\00", [46 x i8] zeroinitializer }, align 32
@rockchip_pcie_legacy_int_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unexpected IRQ, INT%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rockchip_pcie_legacy_int_handler\00", [63 x i8] zeroinitializer }, align 32
@rockchip_pcie_legacy_int_handler._entry_ptr = internal global ptr @rockchip_pcie_legacy_int_handler._entry, section ".printk_index", align 4
@rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 0, i8 119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rockchip_pcie_client_irq_handler\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"legacy done interrupt received\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.78, ptr @.str.3, ptr @.str.80, i8 0, i8 120, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"message done interrupt received\0A\00", [63 x i8] zeroinitializer }, align 32
@rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.78, ptr @.str.3, ptr @.str.81, i8 0, i8 120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hot reset interrupt received\0A\00", [34 x i8] zeroinitializer }, align 32
@rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.78, ptr @.str.3, ptr @.str.82, i8 0, i8 121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpa interrupt received\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.78, ptr @.str.3, ptr @.str.83, i8 0, i8 122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fatal error interrupt received\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.78, ptr @.str.3, ptr @.str.84, i8 0, i8 123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no fatal error interrupt received\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.78, ptr @.str.3, ptr @.str.85, i8 0, i8 123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"correctable error interrupt received\0A\00", [58 x i8] zeroinitializer }, align 32
@rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.78, ptr @.str.3, ptr @.str.86, i8 0, i8 124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phy interrupt received\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_pcie_wait_l2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 860, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PCIe link enter L2 timeout!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip_pcie_wait_l2\00", [42 x i8] zeroinitializer }, align 32
@rockchip_pcie_wait_l2._entry_ptr = internal global ptr @rockchip_pcie_wait_l2._entry, section ".printk_index", align 4
@rockchip_pcie_resume_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.89, ptr @.str.3, i32 899, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip_pcie_resume_noirq\00", [37 x i8] zeroinitializer }, align 32
@rockchip_pcie_resume_noirq._entry_ptr = internal global ptr @rockchip_pcie_resume_noirq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.92 = private unnamed_addr constant [21 x i8] c"rockchip_pcie_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1048, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1050, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"rockchip_pcie_of_match\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1042, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"rockchip_pcie_pm_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1037, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 960, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"rockchip_pcie_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 249, i32 23 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 591, i32 56 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 595, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 598, i32 56 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 602, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 605, i32 47 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 609, i32 47 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 624, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 632, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 639, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 645, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 335, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 352, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 359, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 365, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 382, i32 42 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 277, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 692, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [16 x i8] c"intx_domain_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 682, i32 36 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 700, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 804, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 811, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 833, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 543, i32 38 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 548, i32 24 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 550, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 554, i32 38 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 562, i32 38 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 567, i32 24 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 569, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 412, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 415, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 418, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 421, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 424, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 427, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 430, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 433, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 436, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 439, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 445, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 448, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 451, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 454, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 458, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 531, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 477, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 480, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 483, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 486, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 489, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 492, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 495, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 498, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 860, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.384 = private constant [47 x i8] c"../drivers/pci/controller/pcie-rockchip-host.c\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 899, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_rockchip_pcie_driver_exit, ptr @__initcall__kmod_pcie_rockchip_host__320_1057_rockchip_pcie_driver_init6, ptr @rockchip_pcie_cfg_atu._entry, ptr @rockchip_pcie_cfg_atu._entry.44, ptr @rockchip_pcie_cfg_atu._entry.47, ptr @rockchip_pcie_cfg_atu._entry_ptr, ptr @rockchip_pcie_cfg_atu._entry_ptr.46, ptr @rockchip_pcie_cfg_atu._entry_ptr.49, ptr @rockchip_pcie_driver_exit, ptr @rockchip_pcie_host_init_port._entry, ptr @rockchip_pcie_host_init_port._entry_ptr, ptr @rockchip_pcie_init_irq_domain._entry, ptr @rockchip_pcie_init_irq_domain._entry.39, ptr @rockchip_pcie_init_irq_domain._entry_ptr, ptr @rockchip_pcie_init_irq_domain._entry_ptr.41, ptr @rockchip_pcie_legacy_int_handler._entry, ptr @rockchip_pcie_legacy_int_handler._entry_ptr, ptr @rockchip_pcie_parse_host_dt._entry, ptr @rockchip_pcie_parse_host_dt._entry.11, ptr @rockchip_pcie_parse_host_dt._entry_ptr, ptr @rockchip_pcie_parse_host_dt._entry_ptr.13, ptr @rockchip_pcie_probe._entry, ptr @rockchip_pcie_probe._entry_ptr, ptr @rockchip_pcie_resume_noirq._entry, ptr @rockchip_pcie_resume_noirq._entry_ptr, ptr @rockchip_pcie_set_power_limit._entry, ptr @rockchip_pcie_set_power_limit._entry_ptr, ptr @rockchip_pcie_set_vpcie._entry, ptr @rockchip_pcie_set_vpcie._entry.18, ptr @rockchip_pcie_set_vpcie._entry.21, ptr @rockchip_pcie_set_vpcie._entry.24, ptr @rockchip_pcie_set_vpcie._entry_ptr, ptr @rockchip_pcie_set_vpcie._entry_ptr.20, ptr @rockchip_pcie_set_vpcie._entry_ptr.23, ptr @rockchip_pcie_set_vpcie._entry_ptr.26, ptr @rockchip_pcie_setup_irq._entry, ptr @rockchip_pcie_setup_irq._entry.57, ptr @rockchip_pcie_setup_irq._entry_ptr, ptr @rockchip_pcie_setup_irq._entry_ptr.59, ptr @rockchip_pcie_wait_l2._entry, ptr @rockchip_pcie_wait_l2._entry_ptr, ptr @rockchip_pcie_driver, ptr @.str, ptr @rockchip_pcie_of_match, ptr @rockchip_pcie_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rockchip_pcie_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @intx_domain_ops, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_parse_host_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_parse_host_dt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_set_vpcie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_set_vpcie._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_set_vpcie._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_set_vpcie._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_host_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_set_power_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_init_irq_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intx_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_init_irq_domain._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_cfg_atu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_cfg_atu._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_cfg_atu._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_setup_irq._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_legacy_int_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_wait_l2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_resume_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_pcie_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_pcie_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 132) #5
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %dev6 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev6, align 4
  %is_rc = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %is_rc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_rc, align 4
  %call.i = tail call i32 @rockchip_pcie_parse_dt(ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %call2.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.6) #5
  %vpcie12v.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %vpcie12v.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2.i, ptr %vpcie12v.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end.i
  %cmp.not.i = icmp eq ptr %call2.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not.i, label %do.end.i, label %if.then5.i.rockchip_pcie_parse_host_dt.exit_crit_edge

if.then5.i.rockchip_pcie_parse_host_dt.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_pcie_parse_host_dt.exit

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i, %if.end.i.if.end12.i_crit_edge
  %call13.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.10) #5
  %vpcie3v3.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %vpcie3v3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13.i, ptr %vpcie3v3.i, align 4
  %cmp.i64.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64.i, label %if.then16.i, label %if.end12.i.if.end27.i_crit_edge

if.end12.i.if.end27.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then16.i:                                      ; preds = %if.end12.i
  %cmp19.not.i = icmp eq ptr %call13.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp19.not.i, label %do.end26.i, label %if.then16.i.rockchip_pcie_parse_host_dt.exit_crit_edge

if.then16.i.rockchip_pcie_parse_host_dt.exit_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_pcie_parse_host_dt.exit

do.end26.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end26.i, %if.end12.i.if.end27.i_crit_edge
  %call28.i = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #5
  %vpcie1v8.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %vpcie1v8.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call28.i, ptr %vpcie1v8.i, align 4
  %cmp.i65.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65.i, label %if.end27.i.rockchip_pcie_parse_host_dt.exit_crit_edge, label %if.end34.i

if.end27.i.rockchip_pcie_parse_host_dt.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_pcie_parse_host_dt.exit

if.end34.i:                                       ; preds = %if.end27.i
  %call35.i = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.15) #5
  %vpcie0v9.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 1
  %8 = ptrtoint ptr %vpcie0v9.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call35.i, ptr %vpcie0v9.i, align 4
  %cmp.i66.i = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66.i, label %if.end34.i.rockchip_pcie_parse_host_dt.exit_crit_edge, label %if.end34.i.if.end10_crit_edge

if.end34.i.if.end10_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end34.i.rockchip_pcie_parse_host_dt.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_pcie_parse_host_dt.exit

rockchip_pcie_parse_host_dt.exit:                 ; preds = %if.end34.i.rockchip_pcie_parse_host_dt.exit_crit_edge, %if.end27.i.rockchip_pcie_parse_host_dt.exit_crit_edge, %if.then16.i.rockchip_pcie_parse_host_dt.exit_crit_edge, %if.then5.i.rockchip_pcie_parse_host_dt.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call2.i, %if.then5.i.rockchip_pcie_parse_host_dt.exit_crit_edge ], [ %call13.i, %if.then16.i.rockchip_pcie_parse_host_dt.exit_crit_edge ], [ %call35.i, %if.end34.i.rockchip_pcie_parse_host_dt.exit_crit_edge ], [ %call28.i, %if.end27.i.rockchip_pcie_parse_host_dt.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool8.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool8.not, label %rockchip_pcie_parse_host_dt.exit.if.end10_crit_edge, label %rockchip_pcie_parse_host_dt.exit.cleanup_crit_edge

rockchip_pcie_parse_host_dt.exit.cleanup_crit_edge: ; preds = %rockchip_pcie_parse_host_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rockchip_pcie_parse_host_dt.exit.if.end10_crit_edge: ; preds = %rockchip_pcie_parse_host_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end10:                                         ; preds = %rockchip_pcie_parse_host_dt.exit.if.end10_crit_edge, %if.end34.i.if.end10_crit_edge
  %call11 = tail call i32 @rockchip_pcie_enable_clocks(ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev6, align 4
  %11 = ptrtoint ptr %vpcie12v.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vpcie12v.i, align 4
  %cmp.i.i102 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i102, label %if.end14.if.end5.i_crit_edge, label %if.then.i

if.end14.if.end5.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end14
  %call3.i = tail call i32 @regulator_enable(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i103 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i103, label %if.then.i.if.end5.i_crit_edge, label %do.end.i104

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

do.end.i104:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.16) #8
  br label %do.end

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end14.if.end5.i_crit_edge
  %vpcie3v3.i105 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %vpcie3v3.i105 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vpcie3v3.i105, align 4
  %cmp.i64.i106 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64.i106, label %if.end5.i.if.end16.i_crit_edge, label %if.then7.i

if.end5.i.if.end16.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then7.i:                                       ; preds = %if.end5.i
  %call9.i = tail call i32 @regulator_enable(ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then7.i.if.end16.i_crit_edge, label %do.end14.i

if.then7.i.if.end16.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

do.end14.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.19) #8
  br label %err_disable_12v.i

if.end16.i:                                       ; preds = %if.then7.i.if.end16.i_crit_edge, %if.end5.i.if.end16.i_crit_edge
  %vpcie1v8.i107 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %vpcie1v8.i107 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vpcie1v8.i107, align 4
  %call17.i = tail call i32 @regulator_enable(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end23.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.22) #8
  br label %err_disable_3v3.i

if.end23.i:                                       ; preds = %if.end16.i
  %vpcie0v9.i108 = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 1
  %17 = ptrtoint ptr %vpcie0v9.i108 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vpcie0v9.i108, align 4
  %call24.i = tail call i32 @regulator_enable(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end18, label %do.end29.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.25) #8
  %19 = ptrtoint ptr %vpcie1v8.i107 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vpcie1v8.i107, align 4
  %call32.i = tail call i32 @regulator_disable(ptr noundef %20) #5
  br label %err_disable_3v3.i

err_disable_3v3.i:                                ; preds = %do.end29.i, %do.end22.i
  %err.0.i = phi i32 [ %call17.i, %do.end22.i ], [ %call24.i, %do.end29.i ]
  %21 = ptrtoint ptr %vpcie3v3.i105 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vpcie3v3.i105, align 4
  %cmp.i65.i109 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65.i109, label %err_disable_3v3.i.err_disable_12v.i_crit_edge, label %if.then35.i

err_disable_3v3.i.err_disable_12v.i_crit_edge:    ; preds = %err_disable_3v3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_12v.i

if.then35.i:                                      ; preds = %err_disable_3v3.i
  call void @__sanitizer_cov_trace_pc() #7
  %call37.i = tail call i32 @regulator_disable(ptr noundef %22) #5
  br label %err_disable_12v.i

err_disable_12v.i:                                ; preds = %if.then35.i, %err_disable_3v3.i.err_disable_12v.i_crit_edge, %do.end14.i
  %err.1.i = phi i32 [ %err.0.i, %err_disable_3v3.i.err_disable_12v.i_crit_edge ], [ %err.0.i, %if.then35.i ], [ %call9.i, %do.end14.i ]
  %23 = ptrtoint ptr %vpcie12v.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vpcie12v.i, align 4
  %cmp.i66.i110 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66.i110, label %err_disable_12v.i.do.end_crit_edge, label %if.then41.i

err_disable_12v.i.do.end_crit_edge:               ; preds = %err_disable_12v.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then41.i:                                      ; preds = %err_disable_12v.i
  call void @__sanitizer_cov_trace_pc() #7
  %call43.i = tail call i32 @regulator_disable(ptr noundef %24) #5
  br label %do.end

do.end:                                           ; preds = %if.then41.i, %err_disable_12v.i.do.end_crit_edge, %do.end.i104
  %retval.0.i111.ph = phi i32 [ %call3.i, %do.end.i104 ], [ %err.1.i, %if.then41.i ], [ %err.1.i, %err_disable_12v.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %err_set_vpcie

if.end18:                                         ; preds = %if.end23.i
  %call19 = tail call fastcc i32 @rockchip_pcie_host_init_port(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_vpcie_crit_edge

if.end18.err_vpcie_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_vpcie

if.end22:                                         ; preds = %if.end18
  %call23 = tail call fastcc i32 @rockchip_pcie_init_irq_domain(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.err_deinit_port_crit_edge, label %if.end25

if.end22.err_deinit_port_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_deinit_port

if.end25:                                         ; preds = %if.end22
  %call26 = tail call fastcc i32 @rockchip_pcie_cfg_atu(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.err_remove_irq_domain_crit_edge

if.end25.err_remove_irq_domain_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_irq_domain

if.end29:                                         ; preds = %if.end25
  %msg_bus_addr = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 7
  %25 = ptrtoint ptr %msg_bus_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_bus_addr, align 4
  %call30 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %26, i32 noundef 1048576) #5
  %msg_region = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 6
  %27 = ptrtoint ptr %msg_region to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call30, ptr %msg_region, align 4
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %if.end29.err_remove_irq_domain_crit_edge, label %if.end34

if.end29.err_remove_irq_domain_crit_edge:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_irq_domain

if.end34:                                         ; preds = %if.end29
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %28 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %private.i, ptr %sysdata, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @rockchip_pcie_ops, ptr %ops, align 4
  %call35 = tail call fastcc i32 @rockchip_pcie_setup_irq(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.err_remove_irq_domain_crit_edge

if.end34.err_remove_irq_domain_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_irq_domain

if.end38:                                         ; preds = %if.end34
  tail call fastcc void @rockchip_pcie_enable_interrupts(ptr noundef %private.i)
  %call39 = tail call i32 @pci_host_probe(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end38.err_remove_irq_domain_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38.err_remove_irq_domain_crit_edge:         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_irq_domain

err_remove_irq_domain:                            ; preds = %if.end38.err_remove_irq_domain_crit_edge, %if.end34.err_remove_irq_domain_crit_edge, %if.end29.err_remove_irq_domain_crit_edge, %if.end25.err_remove_irq_domain_crit_edge
  %err.0 = phi i32 [ %call26, %if.end25.err_remove_irq_domain_crit_edge ], [ %call35, %if.end34.err_remove_irq_domain_crit_edge ], [ %call39, %if.end38.err_remove_irq_domain_crit_edge ], [ -12, %if.end29.err_remove_irq_domain_crit_edge ]
  %irq_domain = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 2
  %30 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %31) #5
  br label %err_deinit_port

err_deinit_port:                                  ; preds = %err_remove_irq_domain, %if.end22.err_deinit_port_crit_edge
  %err.1 = phi i32 [ %call23, %if.end22.err_deinit_port_crit_edge ], [ %err.0, %err_remove_irq_domain ]
  tail call void @rockchip_pcie_deinit_phys(ptr noundef %private.i) #5
  br label %err_vpcie

err_vpcie:                                        ; preds = %err_deinit_port, %if.end18.err_vpcie_crit_edge
  %err.2 = phi i32 [ %call19, %if.end18.err_vpcie_crit_edge ], [ %err.1, %err_deinit_port ]
  %32 = ptrtoint ptr %vpcie12v.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vpcie12v.i, align 4
  %cmp.i = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %err_vpcie.if.end47_crit_edge, label %if.then44

err_vpcie.if.end47_crit_edge:                     ; preds = %err_vpcie
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then44:                                        ; preds = %err_vpcie
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = tail call i32 @regulator_disable(ptr noundef %33) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %err_vpcie.if.end47_crit_edge
  %34 = ptrtoint ptr %vpcie3v3.i105 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vpcie3v3.i105, align 4
  %cmp.i112 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.end47.if.end52_crit_edge, label %if.then49

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %call51 = tail call i32 @regulator_disable(ptr noundef %35) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end47.if.end52_crit_edge
  %36 = ptrtoint ptr %vpcie1v8.i107 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vpcie1v8.i107, align 4
  %call53 = tail call i32 @regulator_disable(ptr noundef %37) #5
  %38 = ptrtoint ptr %vpcie0v9.i108 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vpcie0v9.i108, align 4
  %call54 = tail call i32 @regulator_disable(ptr noundef %39) #5
  br label %err_set_vpcie

err_set_vpcie:                                    ; preds = %if.end52, %do.end
  %err.3 = phi i32 [ %retval.0.i111.ph, %do.end ], [ %err.2, %if.end52 ]
  tail call void @rockchip_pcie_disable_clocks(ptr noundef %private.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_set_vpcie, %if.end38.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %rockchip_pcie_parse_host_dt.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_set_vpcie ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i, %rockchip_pcie_parse_host_dt.exit.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bus = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 32
  tail call void @pci_stop_root_bus(ptr noundef %3) #5
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 32
  tail call void @pci_remove_root_bus(ptr noundef %5) #5
  %irq_domain = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %7) #5
  tail call void @rockchip_pcie_deinit_phys(ptr noundef %1) #5
  tail call void @rockchip_pcie_disable_clocks(ptr noundef %1) #5
  %vpcie12v = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %vpcie12v to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vpcie12v, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @regulator_disable(ptr noundef %9) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vpcie3v3 = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %vpcie3v3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vpcie3v3, align 4
  %cmp.i24 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 @regulator_disable(ptr noundef %11) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %vpcie1v8 = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %vpcie1v8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vpcie1v8, align 4
  %call12 = tail call i32 @regulator_disable(ptr noundef %13) #5
  %vpcie0v9 = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %vpcie0v9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vpcie0v9, align 4
  %call13 = tail call i32 @regulator_disable(ptr noundef %15) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_pcie_enable_clocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pcie_host_init_port(ptr noundef %rockchip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ep_gpio = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 19
  %2 = ptrtoint ptr %ep_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #5
  %call = tail call i32 @rockchip_pcie_init_port(ptr noundef %rockchip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 1
  %4 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 9437188
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %7 = or i32 %6, 16776960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i280 = getelementptr i8, ptr %9, i32 9437188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 %7) #5, !srcloc !228
  %vpcie3v3.i = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 16
  %10 = ptrtoint ptr %vpcie3v3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vpcie3v3.i, align 4
  %cmp.i.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.rockchip_pcie_set_power_limit.exit_crit_edge, label %if.end.i

if.end.rockchip_pcie_set_power_limit.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_pcie_set_power_limit.exit

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @regulator_get_current_limit(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 1
  br i1 %cmp.i, label %if.end.i.rockchip_pcie_set_power_limit.exit_crit_edge, label %if.end4.i

if.end.i.rockchip_pcie_set_power_limit.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_pcie_set_power_limit.exit

if.end4.i:                                        ; preds = %if.end.i
  %div29.i = udiv i32 %call2.i, 1000
  %mul.i = mul i32 %div29.i, 3300
  %div5.i = sdiv i32 %mul.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div5.i)
  %cmp632.i = icmp ugt i32 %div5.i, 255
  br i1 %cmp632.i, label %while.body.preheader.i, label %if.end4.i.while.end.i_crit_edge

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end4.i
  %div9.i = udiv i32 %div5.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2559, i32 %div5.i)
  %cmp6.i = icmp ugt i32 %div5.i, 2559
  br i1 %cmp6.i, label %while.body.1.i, label %while.body.preheader.i.while.end.i_crit_edge

while.body.preheader.i.while.end.i_crit_edge:     ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

do.end.i:                                         ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.34) #8
  br label %rockchip_pcie_set_power_limit.exit

while.body.1.i:                                   ; preds = %while.body.preheader.i
  %div9.1.i = udiv i32 %div5.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 25599, i32 %div5.i)
  %cmp6.1.i = icmp ugt i32 %div5.i, 25599
  br i1 %cmp6.1.i, label %while.body.2.i, label %while.body.1.i.while.end.i_crit_edge

while.body.1.i.while.end.i_crit_edge:             ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.2.i:                                   ; preds = %while.body.1.i
  %div9.2.i = udiv i32 %div5.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 255999, i32 %div5.i)
  %cmp6.2.i = icmp ugt i32 %div5.i, 255999
  br i1 %cmp6.2.i, label %do.end.i, label %while.body.2.i.while.end.i_crit_edge

while.body.2.i.while.end.i_crit_edge:             ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.2.i.while.end.i_crit_edge, %while.body.1.i.while.end.i_crit_edge, %while.body.preheader.i.while.end.i_crit_edge, %if.end4.i.while.end.i_crit_edge
  %scale.0.lcssa.i = phi i32 [ 201326592, %if.end4.i.while.end.i_crit_edge ], [ 134217728, %while.body.preheader.i.while.end.i_crit_edge ], [ 67108864, %while.body.1.i.while.end.i_crit_edge ], [ 0, %while.body.2.i.while.end.i_crit_edge ]
  %power.0.lcssa.i = phi i32 [ %div5.i, %if.end4.i.while.end.i_crit_edge ], [ %div9.i, %while.body.preheader.i.while.end.i_crit_edge ], [ %div9.1.i, %while.body.1.i.while.end.i_crit_edge ], [ %div9.2.i, %while.body.2.i.while.end.i_crit_edge ]
  %14 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 10485956
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !225
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %shl.i = shl nuw nsw i32 %power.0.lcssa.i, 18
  %or.i = or i32 %shl.i, %scale.0.lcssa.i
  %or12.i = or i32 %or.i, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #5
  %19 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %20, i32 10485956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %18) #5, !srcloc !228
  br label %rockchip_pcie_set_power_limit.exit

rockchip_pcie_set_power_limit.exit:               ; preds = %while.end.i, %do.end.i, %if.end.i.rockchip_pcie_set_power_limit.exit_crit_edge, %if.end.rockchip_pcie_set_power_limit.exit_crit_edge
  %21 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i282 = getelementptr i8, ptr %22, i32 10485968
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i282) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %24 = or i32 %23, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i284 = getelementptr i8, ptr %26, i32 10485968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 %24) #5, !srcloc !228
  %27 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i286 = getelementptr i8, ptr %28, i32 10485968
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i286) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %30 = or i32 %29, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i288 = getelementptr i8, ptr %32, i32 10485968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i288, i32 %30) #5, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %apb_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 33554944) #5, !srcloc !228
  %35 = ptrtoint ptr %ep_gpio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ep_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %36, i32 noundef 1) #5
  %call8 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call8, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 333) #5
  %37 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %apb_base.i, align 4
  %add.ptr329 = getelementptr i8, ptr %38, i32 72
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr329) #5, !srcloc !225
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  %and20330 = and i32 %40, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %and20330)
  %cmp21331 = icmp eq i32 %and20330, 3145728
  br i1 %cmp21331, label %rockchip_pcie_set_power_limit.exit.for.end_crit_edge, label %rockchip_pcie_set_power_limit.exit.land.lhs.true_crit_edge

rockchip_pcie_set_power_limit.exit.land.lhs.true_crit_edge: ; preds = %rockchip_pcie_set_power_limit.exit
  br label %land.lhs.true

rockchip_pcie_set_power_limit.exit.for.end_crit_edge: ; preds = %rockchip_pcie_set_power_limit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %if.then38.land.lhs.true_crit_edge, %rockchip_pcie_set_power_limit.exit.land.lhs.true_crit_edge
  %call25 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %if.then28, label %if.then38

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %apb_base.i, align 4
  %add.ptr32 = getelementptr i8, ptr %42, i32 72
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #5, !srcloc !225
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  br label %for.end

if.then38:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #5
  %45 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %apb_base.i, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 72
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !225
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  %and20 = and i32 %48, 3145728
  %cmp21 = icmp eq i32 %and20, 3145728
  br i1 %cmp21, label %if.then38.for.end_crit_edge, label %if.then38.land.lhs.true_crit_edge

if.then38.land.lhs.true_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then38.for.end_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.then38.for.end_crit_edge, %if.then28, %rockchip_pcie_set_power_limit.exit.for.end_crit_edge
  %status.0 = phi i32 [ %44, %if.then28 ], [ %40, %rockchip_pcie_set_power_limit.exit.for.end_crit_edge ], [ %48, %if.then38.for.end_crit_edge ]
  %and41 = and i32 %status.0, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %and41)
  %cmp42 = icmp eq i32 %and41, 3145728
  br i1 %cmp42, label %if.end48, label %do.end47

do.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27) #8
  %arrayidx183 = getelementptr %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx183, align 4
  %call184 = tail call i32 @phy_power_off(ptr noundef %50) #5
  %arrayidx183.1 = getelementptr %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %arrayidx183.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx183.1, align 4
  %call184.1 = tail call i32 @phy_power_off(ptr noundef %52) #5
  %arrayidx183.2 = getelementptr %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx183.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx183.2, align 4
  %call184.2 = tail call i32 @phy_power_off(ptr noundef %54) #5
  %arrayidx183.3 = getelementptr %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 3, i32 0
  %55 = ptrtoint ptr %arrayidx183.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx183.3, align 4
  %call184.3 = tail call i32 @phy_power_off(ptr noundef %56) #5
  %57 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx183, align 4
  %call191 = tail call i32 @phy_exit(ptr noundef %58) #5
  %59 = ptrtoint ptr %arrayidx183.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx183.1, align 4
  %call191.1 = tail call i32 @phy_exit(ptr noundef %60) #5
  %61 = ptrtoint ptr %arrayidx183.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx183.2, align 4
  %call191.2 = tail call i32 @phy_exit(ptr noundef %62) #5
  %63 = ptrtoint ptr %arrayidx183.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx183.3, align 4
  %call191.3 = tail call i32 @phy_exit(ptr noundef %64) #5
  br label %cleanup

if.end48:                                         ; preds = %for.end
  %link_gen = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 22
  %65 = ptrtoint ptr %link_gen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %link_gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp49 = icmp eq i32 %66, 2
  br i1 %cmp49, label %if.then50, label %if.end48.if.end120_crit_edge

if.end48.if.end120_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then50:                                        ; preds = %if.end48
  %67 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i293 = getelementptr i8, ptr %68, i32 10485968
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i293) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %70 = or i32 %69, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i295 = getelementptr i8, ptr %72, i32 10485968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i295, i32 %70) #5, !srcloc !228
  %call56 = tail call i64 @ktime_get() #5
  %add.i296 = add i64 %call56, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 350) #5
  %73 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %apb_base.i, align 4
  %add.ptr74334 = getelementptr i8, ptr %74, i32 9437184
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74334) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  %76 = and i32 %75, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %76)
  %cmp79336 = icmp eq i32 %76, 134217728
  br i1 %cmp79336, label %if.then50.if.end120_crit_edge, label %if.then50.land.lhs.true83_crit_edge

if.then50.land.lhs.true83_crit_edge:              ; preds = %if.then50
  br label %land.lhs.true83

if.then50.if.end120_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

land.lhs.true83:                                  ; preds = %if.then97.land.lhs.true83_crit_edge, %if.then50.land.lhs.true83_crit_edge
  %call84 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call84, i64 %add.i296)
  %cmp3.i298 = icmp sgt i64 %call84, %add.i296
  br i1 %cmp3.i298, label %for.end101, label %if.then97

if.then97:                                        ; preds = %land.lhs.true83
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #5
  %77 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %apb_base.i, align 4
  %add.ptr74 = getelementptr i8, ptr %78, i32 9437184
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  %80 = and i32 %79, 402653184
  %cmp79 = icmp eq i32 %80, 134217728
  br i1 %cmp79, label %if.then97.if.end120_crit_edge, label %if.then97.land.lhs.true83_crit_edge

if.then97.land.lhs.true83_crit_edge:              ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true83

if.then97.if.end120_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

for.end101:                                       ; preds = %land.lhs.true83
  %81 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %apb_base.i, align 4
  %add.ptr91 = getelementptr i8, ptr %82, i32 9437184
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  %84 = and i32 %83, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %84)
  %cmp104 = icmp eq i32 %84, 134217728
  br i1 %cmp104, label %for.end101.if.end120_crit_edge, label %do.body108

for.end101.if.end120_crit_edge:                   ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

do.body108:                                       ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_host_init_port, %if.end120)) #5
          to label %if.then115 [label %if.end120], !srcloc !233

if.then115:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.30) #5
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %do.body108, %for.end101.if.end120_crit_edge, %if.then97.if.end120_crit_edge, %if.then50.if.end120_crit_edge, %if.end48.if.end120_crit_edge
  %85 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i302 = getelementptr i8, ptr %86, i32 9437184
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i302) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_host_init_port, %do.end141)) #5
          to label %if.then138 [label %do.end141], !srcloc !233

if.then138:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  %88 = lshr i32 %87, 25
  %shr123 = and i32 %88, 3
  %shl = shl nuw nsw i32 1, %shr123
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %shl) #5
  br label %do.end141

do.end141:                                        ; preds = %if.then138, %if.end120
  %legacy_phy.i = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 2
  %89 = ptrtoint ptr %legacy_phy.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %legacy_phy.i, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i = icmp eq i8 %90, 0
  br i1 %tobool.not.i, label %if.end.i305, label %do.end141.rockchip_pcie_lane_map.exit_crit_edge

do.end141.rockchip_pcie_lane_map.exit_crit_edge:  ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_pcie_lane_map.exit

if.end.i305:                                      ; preds = %do.end141
  %91 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i.i304 = getelementptr i8, ptr %92, i32 9437696
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i304) #5, !srcloc !225
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %95 = trunc i32 %94 to i8
  %conv.i = and i8 %95, 15
  %and1.i = and i32 %94, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i305.rockchip_pcie_lane_map.exit_crit_edge, label %cond.end.i

if.end.i305.rockchip_pcie_lane_map.exit_crit_edge: ; preds = %if.end.i305
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_pcie_lane_map.exit

cond.end.i:                                       ; preds = %if.end.i305
  call void @__sanitizer_cov_trace_pc() #7
  %idxprom.i.i = zext i8 %conv.i to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %96 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i.i, align 1
  %98 = lshr i8 %97, 4
  br label %rockchip_pcie_lane_map.exit

rockchip_pcie_lane_map.exit:                      ; preds = %cond.end.i, %if.end.i305.rockchip_pcie_lane_map.exit_crit_edge, %do.end141.rockchip_pcie_lane_map.exit_crit_edge
  %retval.0.i306 = phi i8 [ 15, %do.end141.rockchip_pcie_lane_map.exit_crit_edge ], [ %98, %cond.end.i ], [ %conv.i, %if.end.i305.rockchip_pcie_lane_map.exit_crit_edge ]
  %lanes_map = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 21
  %99 = ptrtoint ptr %lanes_map to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %retval.0.i306, ptr %lanes_map, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rockchip_pcie_lane_map.exit
  %i.0338 = phi i32 [ 0, %rockchip_pcie_lane_map.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %100 = ptrtoint ptr %lanes_map to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %lanes_map, align 4
  %conv = zext i8 %101 to i32
  %shl146 = shl nuw nsw i32 1, %i.0338
  %and147 = and i32 %shl146, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %do.body150, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body150:                                       ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_host_init_port, %do.end167)) #5
          to label %if.then164 [label %do.end167], !srcloc !233

if.then164:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %i.0338) #5
  br label %do.end167

do.end167:                                        ; preds = %if.then164, %do.body150
  %arrayidx = getelementptr %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 3, i32 %i.0338
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx, align 4
  %call168 = tail call i32 @phy_power_off(ptr noundef %103) #5
  br label %for.inc

for.inc:                                          ; preds = %do.end167, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0338, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end170, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end170:                                       ; preds = %for.inc
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i308 = getelementptr i8, ptr %105, i32 9437252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i308, i32 -2028142592) #5, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i310 = getelementptr i8, ptr %107, i32 10485768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i310, i32 1030) #5, !srcloc !228
  %108 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i312 = getelementptr i8, ptr %109, i32 10486388
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i312) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %111 = and i32 %110, -61696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %112 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i314 = getelementptr i8, ptr %113, i32 10486388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 %111) #5, !srcloc !228
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %114 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %115, ptr noundef nonnull @.str.33, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %for.end170.if.end177_crit_edge, label %if.then174

for.end170.if.end177_crit_edge:                   ; preds = %for.end170
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

if.then174:                                       ; preds = %for.end170
  call void @__sanitizer_cov_trace_pc() #7
  %116 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i316 = getelementptr i8, ptr %117, i32 10485964
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i316) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %119 = and i32 %118, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i318 = getelementptr i8, ptr %121, i32 10485964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i318, i32 %119) #5, !srcloc !228
  br label %if.end177

if.end177:                                        ; preds = %if.then174, %for.end170.if.end177_crit_edge
  %122 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i320 = getelementptr i8, ptr %123, i32 10485960
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i320) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %125 = and i32 %124, 536870911
  %126 = or i32 %125, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %127 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i322 = getelementptr i8, ptr %128, i32 10485960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i322, i32 %126) #5, !srcloc !228
  br label %cleanup

cleanup:                                          ; preds = %if.end177, %do.end47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end177 ], [ %call, %entry.cleanup_crit_edge ], [ -110, %do.end47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pcie_init_irq_domain(ptr noundef %rockchip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 3
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @intx_domain_ops, ptr noundef %rockchip) #5
  %irq_domain = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 24
  %4 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %irq_domain, align 4
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  %5 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_domain, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.40.sink = phi ptr [ @.str.37, %entry.cleanup.sink.split_crit_edge ], [ @.str.40, %if.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %.str.40.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pcie_cfg_atu(ptr noundef %rockchip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @rockchip_pcie_cfg_configuration_accesses(ptr noundef %rockchip, i32 noundef 10) #5
  %windows = getelementptr i8, ptr %rockchip, i32 -72
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %entry1.0.in.i = phi ptr [ %windows, %entry ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %windows
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %6, 7936
  %cmp2.i = icmp eq i32 %and.i.i, 512
  br i1 %cmp2.i, label %resource_list_first_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

resource_list_first_type.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not, label %resource_list_first_type.exit.cleanup_crit_edge, label %if.end

resource_list_first_type.exit.cleanup_crit_edge:  ; preds = %resource_list_first_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %resource_list_first_type.exit
  %res.i.le = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %res.i.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res.i.le, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %sub.i = add i32 %10, 1
  %add.i = sub i32 %sub.i, %12
  %offset6 = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %offset6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset6, align 4
  %sub = sub i32 %12, %14
  %msg_bus_addr = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 27
  %15 = ptrtoint ptr %msg_bus_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %msg_bus_addr, align 4
  %16 = lshr i32 %add.i, 20
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %reg_no.0 = phi i32 [ 0, %if.end ], [ %add, %for.body.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %reg_no.0, i32 %16)
  %exitcond.not = icmp eq i32 %reg_no.0, %16
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %add = add nuw nsw i32 %reg_no.0, 1
  %shl = shl i32 %reg_no.0, 20
  %add12 = add i32 %shl, %sub
  %call14 = tail call fastcc i32 @rockchip_pcie_prog_ob_atu(ptr noundef %rockchip, i32 noundef %add, i32 noundef 2, i32 noundef %add12)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.body.for.cond_crit_edge, label %do.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.42) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %apb_base.i.i = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 1
  %17 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 12584976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 520093696) #5, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %20, i32 12584980
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #5, !srcloc !228
  br label %for.cond.i118

for.cond.i118:                                    ; preds = %for.body.i123.for.cond.i118_crit_edge, %for.end
  %entry1.0.in.i115 = phi ptr [ %windows, %for.end ], [ %entry1.0.i116, %for.body.i123.for.cond.i118_crit_edge ]
  %21 = ptrtoint ptr %entry1.0.in.i115 to i32
  call void @__asan_load4_noabort(i32 %21)
  %entry1.0.i116 = load ptr, ptr %entry1.0.in.i115, align 4
  %cmp.not.i117 = icmp eq ptr %entry1.0.i116, %windows
  br i1 %cmp.not.i117, label %for.cond.i118.cleanup_crit_edge, label %for.body.i123

for.cond.i118.cleanup_crit_edge:                  ; preds = %for.cond.i118
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i123:                                    ; preds = %for.cond.i118
  %res.i119 = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i116, i32 0, i32 1
  %22 = ptrtoint ptr %res.i119 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %res.i119, align 4
  %flags.i.i120 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %flags.i.i120 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i120, align 4
  %and.i.i121 = and i32 %25, 7936
  %cmp2.i122 = icmp eq i32 %and.i.i121, 256
  br i1 %cmp2.i122, label %resource_list_first_type.exit125, label %for.body.i123.for.cond.i118_crit_edge

for.body.i123.for.cond.i118_crit_edge:            ; preds = %for.body.i123
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i118

resource_list_first_type.exit125:                 ; preds = %for.body.i123
  %tobool27.not = icmp eq ptr %entry1.0.i116, null
  br i1 %tobool27.not, label %resource_list_first_type.exit125.cleanup_crit_edge, label %if.end29

resource_list_first_type.exit125.cleanup_crit_edge: ; preds = %resource_list_first_type.exit125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %resource_list_first_type.exit125
  %res.i119.le = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i116, i32 0, i32 1
  %26 = ptrtoint ptr %res.i119.le to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %res.i119.le, align 4
  %end.i126 = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %end.i126 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i126, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  %sub.i127 = add i32 %29, 1
  %add.i128 = sub i32 %sub.i127, %31
  %offset37 = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i116, i32 0, i32 2
  %32 = ptrtoint ptr %offset37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset37, align 4
  %sub38 = sub i32 %31, %33
  %34 = lshr i32 %add.i128, 20
  br label %for.cond40

for.cond40:                                       ; preds = %for.body45.for.cond40_crit_edge, %if.end29
  %reg_no.1 = phi i32 [ 0, %if.end29 ], [ %add46, %for.body45.for.cond40_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %reg_no.1, i32 %34)
  %exitcond144.not = icmp eq i32 %reg_no.1, %34
  br i1 %exitcond144.not, label %for.end61, label %for.body45

for.body45:                                       ; preds = %for.cond40
  %add46 = add nuw nsw i32 %reg_no.1, 1
  %add47 = add nuw nsw i32 %add46, %16
  %shl48 = shl i32 %reg_no.1, 20
  %add50 = add i32 %sub38, %shl48
  %call52 = tail call fastcc i32 @rockchip_pcie_prog_ob_atu(ptr noundef %rockchip, i32 noundef %add47, i32 noundef 6, i32 noundef %add50)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.body45.for.cond40_crit_edge, label %do.end57

for.body45.for.cond40_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond40

do.end57:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.48) #8
  br label %cleanup

for.end61:                                        ; preds = %for.cond40
  call void @__sanitizer_cov_trace_pc() #7
  %add62 = add nuw nsw i32 %34, %16
  %add63 = add nuw nsw i32 %add62, 1
  %35 = tail call fastcc i32 @rockchip_pcie_prog_ob_atu(ptr noundef %rockchip, i32 noundef %add63, i32 noundef 12, i32 noundef 0)
  %shl66 = shl i32 %add62, 20
  %36 = ptrtoint ptr %msg_bus_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_bus_addr, align 4
  %add68 = add i32 %37, %shl66
  store i32 %add68, ptr %msg_bus_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end61, %do.end57, %resource_list_first_type.exit125.cleanup_crit_edge, %for.cond.i118.cleanup_crit_edge, %do.end, %resource_list_first_type.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %do.end ], [ %call52, %do.end57 ], [ 0, %for.end61 ], [ -19, %resource_list_first_type.exit.cleanup_crit_edge ], [ -19, %resource_list_first_type.exit125.cleanup_crit_edge ], [ -19, %for.cond.i118.cleanup_crit_edge ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pcie_setup_irq(ptr noundef %rockchip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %call, ptr noundef nonnull @rockchip_pcie_subsys_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.51, ptr noundef %rockchip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.54) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call5, ptr noundef nonnull @rockchip_pcie_legacy_int_handler, ptr noundef %rockchip) #5
  %call9 = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.55) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call.i43 = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %call9, ptr noundef nonnull @rockchip_pcie_client_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.56, ptr noundef %rockchip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool14.not = icmp eq i32 %call.i43, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end12.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.58.sink = phi ptr [ @.str.52, %if.end.cleanup.sink.split_crit_edge ], [ @.str.58, %if.end12.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %if.end.cleanup.sink.split_crit_edge ], [ %call.i43, %if.end12.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %.str.58.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_pcie_enable_interrupts(ptr nocapture noundef readonly %rockchip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 1
  %0 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 58623) #5, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %3, i32 9437712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 150008831) #5, !srcloc !228
  %4 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 10485968
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %7 = or i32 %6, 786432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %9, i32 10485968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %7) #5, !srcloc !228
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_pcie_deinit_phys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_pcie_disable_clocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_pcie_parse_dt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_pcie_init_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_intx_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #5
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_pcie_cfg_configuration_accesses(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pcie_prog_ob_atu(ptr nocapture noundef readonly %rockchip, i32 noundef %region_no, i32 noundef %type, i32 noundef %lower_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %region_no)
  %cmp = icmp sgt i32 %region_no, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl30 = shl i32 %region_no, 5
  %and32 = and i32 %lower_addr, -256
  %or = or i32 %and32, 19
  %or33 = or i32 %type, 8388608
  %add34 = add i32 %shl30, 12582912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 1
  %1 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #5, !srcloc !228
  %add35 = add i32 %shl30, 12582916
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %4, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 0) #5, !srcloc !228
  %add36 = add i32 %shl30, 12582920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or33) #5
  %6 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 %add36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %5) #5, !srcloc !228
  %add37 = add i32 %shl30, 12582924
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 %add37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 0) #5, !srcloc !228
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_rd_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %shr = lshr i32 %devfn, 3
  %and = and i32 %shr, 31
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %rockchip_pcie_valid_device.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %parent.i1.i = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i1.i, align 8
  %tobool.not.i2.i = icmp ne ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.i30.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp.i30.not, %tobool.not.i2.i
  br i1 %or.cond, label %if.end4, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rockchip_pcie_valid_device.exit:                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.i.not = icmp eq i32 %and, 0
  br i1 %cmp.i.not, label %if.then2, label %rockchip_pcie_valid_device.exit.cleanup_crit_edge

rockchip_pcie_valid_device.exit.cleanup_crit_edge: ; preds = %rockchip_pcie_valid_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %rockchip_pcie_valid_device.exit
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8388608
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %where
  %8 = ptrtoint ptr %add.ptr1.i to i32
  %sub.i = add i32 %size, -1
  %and.i = and i32 %sub.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i15 = icmp eq i32 %and.i, 0
  br i1 %cmp.i15, label %if.end.i, label %if.then2.cleanup.sink.split_crit_edge

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then2
  %9 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %if.end.i.cleanup.sink.split_crit_edge [
    i32 4, label %if.then3.i
    i32 2, label %if.then6.i
    i32 1, label %if.then15.i
  ]

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #5, !srcloc !225
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  br label %cleanup.sink.split

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i) #5, !srcloc !236
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  %conv.i16 = zext i16 %13 to i32
  br label %cleanup.sink.split

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #5, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  %conv21.i = zext i8 %14 to i32
  br label %cleanup.sink.split

if.end4:                                          ; preds = %lor.lhs.false.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %17 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %number.i, align 4
  %conv.i18 = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv.i18, 20
  %and1.i = shl i32 %devfn, 12
  %shl2.i = and i32 %and1.i, 1044480
  %or.i = or i32 %shl.i, %shl2.i
  %and3.i = and i32 %where, 4095
  %or4.i = or i32 %or.i, %and3.i
  %add.ptr.i19 = getelementptr i8, ptr %16, i32 %or4.i
  %19 = ptrtoint ptr %add.ptr.i19 to i32
  %sub.i20 = add i32 %size, -1
  %and5.i = and i32 %sub.i20, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp.i21 = icmp eq i32 %and5.i, 0
  br i1 %cmp.i21, label %if.end.i25, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.i25:                                       ; preds = %if.end4
  %20 = ptrtoint ptr %parent.i1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i1.i, align 8
  %tobool.not.i.i24 = icmp eq ptr %21, null
  %..i = select i1 %tobool.not.i.i24, i32 10, i32 11
  tail call void @rockchip_pcie_cfg_configuration_accesses(ptr noundef %1, i32 noundef %..i) #5
  %22 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %size, label %if.end.i25.cleanup.sink.split_crit_edge [
    i32 4, label %if.then11.i
    i32 2, label %if.then17.i
    i32 1, label %if.then27.i
  ]

if.end.i25.cleanup.sink.split_crit_edge:          ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then11.i:                                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #7
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #5, !srcloc !225
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  br label %cleanup.sink.split

if.then17.i:                                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #7
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19) #5, !srcloc !236
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  %conv23.i = zext i16 %26 to i32
  br label %cleanup.sink.split

if.then27.i:                                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #7
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i19) #5, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  %conv33.i = zext i8 %27 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then27.i, %if.then17.i, %if.then11.i, %if.end.i25.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge, %if.then15.i, %if.then6.i, %if.then3.i, %if.end.i.cleanup.sink.split_crit_edge, %if.then2.cleanup.sink.split_crit_edge
  %.sink51.i.sink = phi i32 [ %11, %if.then3.i ], [ %conv21.i, %if.then15.i ], [ %conv.i16, %if.then6.i ], [ 0, %if.then2.cleanup.sink.split_crit_edge ], [ 0, %if.end.i.cleanup.sink.split_crit_edge ], [ %24, %if.then11.i ], [ %conv33.i, %if.then27.i ], [ %conv23.i, %if.then17.i ], [ 0, %if.end4.cleanup.sink.split_crit_edge ], [ 0, %if.end.i25.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.then3.i ], [ 0, %if.then15.i ], [ 0, %if.then6.i ], [ 135, %if.then2.cleanup.sink.split_crit_edge ], [ 135, %if.end.i.cleanup.sink.split_crit_edge ], [ 0, %if.then11.i ], [ 0, %if.then27.i ], [ 0, %if.then17.i ], [ 135, %if.end4.cleanup.sink.split_crit_edge ], [ 135, %if.end.i25.cleanup.sink.split_crit_edge ]
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink51.i.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %rockchip_pcie_valid_device.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 134, %rockchip_pcie_valid_device.exit.cleanup_crit_edge ], [ 134, %lor.lhs.false.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_wr_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %shr = lshr i32 %devfn, 3
  %and = and i32 %shr, 31
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %rockchip_pcie_valid_device.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %parent.i1.i = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i1.i, align 8
  %tobool.not.i2.i = icmp ne ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.i30.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp.i30.not, %tobool.not.i2.i
  br i1 %or.cond, label %if.end4, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rockchip_pcie_valid_device.exit:                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.i.not = icmp eq i32 %and, 0
  br i1 %cmp.i.not, label %if.then2, label %rockchip_pcie_valid_device.exit.cleanup_crit_edge

rockchip_pcie_valid_device.exit.cleanup_crit_edge: ; preds = %rockchip_pcie_valid_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %rockchip_pcie_valid_device.exit
  %and.i = and i32 %where, -4
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8388608
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp.i15 = icmp eq i32 %size, 4
  br i1 %cmp.i15, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %val) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %8) #5, !srcloc !228
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = shl i32 %size, 3
  %notmask.i = shl nsw i32 -1, %mul.i
  %sub.i = xor i32 %notmask.i, -1
  %and2.i = shl i32 %where, 3
  %mul3.i = and i32 %and2.i, 24
  %shl4.i = shl i32 %sub.i, %mul3.i
  %neg.i = xor i32 %shl4.i, -1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #5, !srcloc !225
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  %and7.i = and i32 %10, %neg.i
  %shl10.i = shl i32 %val, %mul3.i
  %or.i = or i32 %and7.i, %shl10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %11) #5, !srcloc !228
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %14 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %number.i, align 4
  %conv.i16 = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %conv.i16, 20
  %and1.i = shl i32 %devfn, 12
  %shl2.i = and i32 %and1.i, 1044480
  %or.i17 = or i32 %shl.i, %shl2.i
  %and3.i = and i32 %where, 4095
  %or4.i = or i32 %or.i17, %and3.i
  %add.ptr.i18 = getelementptr i8, ptr %13, i32 %or4.i
  %16 = ptrtoint ptr %add.ptr.i18 to i32
  %sub.i19 = add i32 %size, -1
  %and5.i = and i32 %sub.i19, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp.i20 = icmp eq i32 %and5.i, 0
  br i1 %cmp.i20, label %if.end.i24, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i24:                                       ; preds = %if.end4
  %17 = ptrtoint ptr %parent.i1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i1.i, align 8
  %tobool.not.i.i23 = icmp eq ptr %18, null
  %..i = select i1 %tobool.not.i.i23, i32 10, i32 11
  tail call void @rockchip_pcie_cfg_configuration_accesses(ptr noundef %1, i32 noundef %..i) #5
  %19 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %size, label %if.end.i24.cleanup_crit_edge [
    i32 4, label %do.body.i25
    i32 2, label %do.body16.i
    i32 1, label %do.body24.i
  ]

if.end.i24.cleanup_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i25:                                      ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %val) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %20) #5, !srcloc !228
  br label %cleanup

do.body16.i:                                      ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  tail call void @arm_heavy_mb() #5
  %conv19.i = trunc i32 %val to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv19.i) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i18, i16 %21) #5, !srcloc !248
  br label %cleanup

do.body24.i:                                      ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  tail call void @arm_heavy_mb() #5
  %conv27.i = trunc i32 %val to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18, i8 %conv27.i) #5, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %do.body24.i, %do.body16.i, %do.body.i25, %if.end.i24.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.i, %do.body.i, %rockchip_pcie_valid_device.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 134, %rockchip_pcie_valid_device.exit.cleanup_crit_edge ], [ 0, %do.body.i ], [ 0, %if.end.i ], [ 135, %if.end4.cleanup_crit_edge ], [ 135, %if.end.i24.cleanup_crit_edge ], [ 0, %do.body16.i ], [ 0, %do.body24.i ], [ 0, %do.body.i25 ], [ 134, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_subsys_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rockchip_pcie, ptr %arg, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !225
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %do.end)) #5
          to label %if.then7 [label %do.end], !srcloc !233

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.61) #5
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %6 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i424 = getelementptr i8, ptr %7, i32 9437708
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i424) #5, !srcloc !225
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %and9 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.end.if.end30_crit_edge, label %do.body12

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end30)) #5
          to label %if.then26 [label %if.end30], !srcloc !233

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.62) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %do.body12, %do.end.if.end30_crit_edge
  %and31 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end52_crit_edge, label %do.body34

if.end30.if.end52_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.body34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end52)) #5
          to label %if.then48 [label %if.end52], !srcloc !233

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.63) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %do.body34, %if.end30.if.end52_crit_edge
  %and53 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end74_crit_edge, label %do.body56

if.end52.if.end74_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

do.body56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end74)) #5
          to label %if.then70 [label %if.end74], !srcloc !233

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug299, ptr noundef %1, ptr noundef nonnull @.str.64) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %do.body56, %if.end52.if.end74_crit_edge
  %and75 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end96_crit_edge, label %do.body78

if.end74.if.end96_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

do.body78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end96)) #5
          to label %if.then92 [label %if.end96], !srcloc !233

if.then92:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.65) #5
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %do.body78, %if.end74.if.end96_crit_edge
  %and97 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end118_crit_edge, label %do.body100

if.end96.if.end118_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

do.body100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end118)) #5
          to label %if.then114 [label %if.end118], !srcloc !233

if.then114:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug301, ptr noundef %1, ptr noundef nonnull @.str.66) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %do.body100, %if.end96.if.end118_crit_edge
  %and119 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end140_crit_edge, label %do.body122

if.end118.if.end140_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

do.body122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end140)) #5
          to label %if.then136 [label %if.end140], !srcloc !233

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug302, ptr noundef %1, ptr noundef nonnull @.str.67) #5
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %do.body122, %if.end118.if.end140_crit_edge
  %and141 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end140.if.end162_crit_edge, label %do.body144

if.end140.if.end162_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162

do.body144:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end162)) #5
          to label %if.then158 [label %if.end162], !srcloc !233

if.then158:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.68) #5
  br label %if.end162

if.end162:                                        ; preds = %if.then158, %do.body144, %if.end140.if.end162_crit_edge
  %and163 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.end162.if.end184_crit_edge, label %do.body166

if.end162.if.end184_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

do.body166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end184)) #5
          to label %if.then180 [label %if.end184], !srcloc !233

if.then180:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug304, ptr noundef %1, ptr noundef nonnull @.str.69) #5
  br label %if.end184

if.end184:                                        ; preds = %if.then180, %do.body166, %if.end162.if.end184_crit_edge
  %and185 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end184.if.end206_crit_edge, label %do.body188

if.end184.if.end206_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

do.body188:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end206)) #5
          to label %if.then202 [label %if.end206], !srcloc !233

if.then202:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug305, ptr noundef %1, ptr noundef nonnull @.str.70) #5
  br label %if.end206

if.end206:                                        ; preds = %if.then202, %do.body188, %if.end184.if.end206_crit_edge
  %and207 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %if.end206.if.end228_crit_edge, label %do.body210

if.end206.if.end228_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end228

do.body210:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end228)) #5
          to label %if.then224 [label %if.end228], !srcloc !233

if.then224:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug306, ptr noundef %1, ptr noundef nonnull @.str.70) #5
  br label %if.end228

if.end228:                                        ; preds = %if.then224, %do.body210, %if.end206.if.end228_crit_edge
  %and229 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %if.end228.if.end250_crit_edge, label %do.body232

if.end228.if.end250_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end250

do.body232:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end250)) #5
          to label %if.then246 [label %if.end250], !srcloc !233

if.then246:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.71) #5
  br label %if.end250

if.end250:                                        ; preds = %if.then246, %do.body232, %if.end228.if.end250_crit_edge
  %and251 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251)
  %tobool252.not = icmp eq i32 %and251, 0
  br i1 %tobool252.not, label %if.end250.if.end272_crit_edge, label %do.body254

if.end250.if.end272_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end272

do.body254:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end272)) #5
          to label %if.then268 [label %if.end272], !srcloc !233

if.then268:                                       ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug308, ptr noundef %1, ptr noundef nonnull @.str.72) #5
  br label %if.end272

if.end272:                                        ; preds = %if.then268, %do.body254, %if.end250.if.end272_crit_edge
  %and273 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273)
  %tobool274.not = icmp eq i32 %and273, 0
  br i1 %tobool274.not, label %if.end272.if.end294_crit_edge, label %do.body276

if.end272.if.end294_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end294

do.body276:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end294)) #5
          to label %if.then290 [label %if.end294], !srcloc !233

if.then290:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug309, ptr noundef %1, ptr noundef nonnull @.str.73) #5
  br label %if.end294

if.end294:                                        ; preds = %if.then290, %do.body276, %if.end272.if.end294_crit_edge
  %and295 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %if.end294.if.end316_crit_edge, label %do.body298

if.end294.if.end316_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end316

do.body298:                                       ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %if.end316)) #5
          to label %if.then312 [label %if.end316], !srcloc !233

if.then312:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug310, ptr noundef %1, ptr noundef nonnull @.str.74) #5
  br label %if.end316

if.end316:                                        ; preds = %if.then312, %do.body298, %if.end294.if.end316_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i426 = getelementptr i8, ptr %11, i32 9437708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i426, i32 %8) #5, !srcloc !228
  br label %if.end339

if.else:                                          ; preds = %entry
  %and317 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317)
  %tobool318.not = icmp eq i32 %and317, 0
  br i1 %tobool318.not, label %if.else.if.end339_crit_edge, label %do.body320

if.else.if.end339_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end339

do.body320:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_subsys_irq_handler, %do.end337)) #5
          to label %if.then334 [label %do.end337], !srcloc !233

if.then334:                                       ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug311, ptr noundef %1, ptr noundef nonnull @.str.75) #5
  br label %do.end337

do.end337:                                        ; preds = %if.then334, %do.body320
  %12 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 9437216
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %15 = and i32 %14, -65536
  %16 = or i32 %15, 47115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %18, i32 9437216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %16) #5, !srcloc !228
  %19 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i.i428 = getelementptr i8, ptr %20, i32 10485968
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i428) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %22 = or i32 %21, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %24, i32 10485968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %22) #5, !srcloc !228
  br label %if.end339

if.end339:                                        ; preds = %do.end337, %if.else.if.end339_crit_edge, %if.end316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %25 = shl nuw nsw i32 %and, 24
  %26 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i430 = getelementptr i8, ptr %27, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i430, i32 %25) #5, !srcloc !228
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_pcie_legacy_int_handler(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %dev2 = getelementptr inbounds %struct.rockchip_pcie, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i) #5
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i) #5
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %irq_data4.i) #5
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 80
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !225
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %and = lshr i32 %17, 5
  %shr = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not22 = icmp eq i32 %shr, 0
  br i1 %tobool.not22, label %chained_irq_enter.exit.while.end_crit_edge, label %while.body.lr.ph

chained_irq_enter.exit.while.end_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %chained_irq_enter.exit
  %irq_domain = getelementptr inbounds %struct.rockchip_pcie, ptr %3, i32 0, i32 24
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %reg.023 = phi i32 [ %shr, %while.body.lr.ph ], [ %and4, %if.end.while.body_crit_edge ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %reg.023, i1 true), !range !251
  %shl = shl nuw i32 1, %18
  %neg = xor i32 %shl, -1
  %and4 = and i32 %reg.023, %neg
  %19 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_domain, align 4
  %call5 = tail call i32 @generic_handle_domain_irq(ptr noundef %20, i32 noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %while.body.if.end_crit_edge, label %do.end

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.76, i32 noundef %18) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %chained_irq_enter.exit.while.end_crit_edge
  %21 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i19 = icmp eq ptr %22, null
  br i1 %tobool.not.i19, label %if.else.i20, label %while.end.chained_irq_exit.exit_crit_edge

while.end.chained_irq_exit.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_exit.exit

if.else.i20:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i20, %while.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %24, %if.else.i20 ], [ %22, %while.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_client_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rockchip_pcie, ptr %arg, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !225
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %and = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_client_irq_handler, %if.end8)) #5
          to label %if.then7 [label %if.end8], !srcloc !233

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug312, ptr noundef %1, ptr noundef nonnull @.str.79) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body, %entry.if.end8_crit_edge
  %and9 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end30_crit_edge, label %do.body12

if.end8.if.end30_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_client_irq_handler, %if.end30)) #5
          to label %if.then26 [label %if.end30], !srcloc !233

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug313, ptr noundef %1, ptr noundef nonnull @.str.80) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %do.body12, %if.end8.if.end30_crit_edge
  %and31 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end52_crit_edge, label %do.body34

if.end30.if.end52_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.body34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_client_irq_handler, %if.end52)) #5
          to label %if.then48 [label %if.end52], !srcloc !233

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug314, ptr noundef %1, ptr noundef nonnull @.str.81) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %do.body34, %if.end30.if.end52_crit_edge
  %and53 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end74_crit_edge, label %do.body56

if.end52.if.end74_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

do.body56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_client_irq_handler, %if.end74)) #5
          to label %if.then70 [label %if.end74], !srcloc !233

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug315, ptr noundef %1, ptr noundef nonnull @.str.82) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %do.body56, %if.end52.if.end74_crit_edge
  %and75 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end96_crit_edge, label %do.body78

if.end74.if.end96_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

do.body78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_client_irq_handler, %if.end96)) #5
          to label %if.then92 [label %if.end96], !srcloc !233

if.then92:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug316, ptr noundef %1, ptr noundef nonnull @.str.83) #5
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %do.body78, %if.end74.if.end96_crit_edge
  %and97 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end118_crit_edge, label %do.body100

if.end96.if.end118_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

do.body100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_client_irq_handler, %if.end118)) #5
          to label %if.then114 [label %if.end118], !srcloc !233

if.then114:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug317, ptr noundef %1, ptr noundef nonnull @.str.84) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %do.body100, %if.end96.if.end118_crit_edge
  %and119 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end140_crit_edge, label %do.body122

if.end118.if.end140_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

do.body122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_client_irq_handler, %if.end140)) #5
          to label %if.then136 [label %if.end140], !srcloc !233

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug318, ptr noundef %1, ptr noundef nonnull @.str.85) #5
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %do.body122, %if.end118.if.end140_crit_edge
  %and141 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end140.if.end162_crit_edge, label %do.body144

if.end140.if.end162_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162

do.body144:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pcie_client_irq_handler, %if.end162)) #5
          to label %if.then158 [label %if.end162], !srcloc !233

if.then158:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug319, ptr noundef %1, ptr noundef nonnull @.str.86) #5
  br label %if.end162

if.end162:                                        ; preds = %if.then158, %do.body144, %if.end140.if.end162_crit_edge
  %and163 = and i32 %5, 65028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %and163) #5
  %7 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i203 = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i203, i32 %6) #5, !srcloc !228
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -452991745) #5, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 9437712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 -150008832) #5, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  tail call void @arm_heavy_mb() #5
  %msg_region.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %msg_region.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg_region.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 72032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #5, !srcloc !228
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 500) #5
  %conv.i = zext i32 %call.i to i64
  %call1.i = tail call i64 @ktime_get() #5
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000
  %add.i.i = add i64 %mul.i.i, %call1.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 858) #5
  %8 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_base.i, align 4
  %add.ptr1358.i = getelementptr i8, ptr %9, i32 60
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1358.i) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  %11 = and i32 %10, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 419430400, i32 %11)
  %cmp1660.i = icmp eq i32 %11, 419430400
  br i1 %cmp1660.i, label %entry.if.end_crit_edge, label %if.end19.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end19.lr.ph.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then34.i.if.end19.i_crit_edge, %if.end19.lr.ph.i
  br i1 %tobool.not.i, label %if.end19.i.if.then34.i_crit_edge, label %land.lhs.true.i

if.end19.i.if.then34.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %call20.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call20.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call20.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.if.then34.i_crit_edge

land.lhs.true.i.if.then34.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34.i

if.then34.i:                                      ; preds = %land.lhs.true.i.if.then34.i_crit_edge, %if.end19.i.if.then34.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #5
  %12 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %apb_base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %13, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  %15 = and i32 %14, 1056964608
  %cmp16.i = icmp eq i32 %15, 419430400
  br i1 %cmp16.i, label %if.then34.i.if.end_crit_edge, label %if.then34.i.if.end19.i_crit_edge

if.then34.i.if.end19.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then34.i.if.end_crit_edge:                     ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.end.i:                                        ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %apb_base.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %17, i32 60
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  %19 = and i32 %18, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 419430400, i32 %19)
  %cmp38.i = icmp eq i32 %19, 419430400
  br i1 %cmp38.i, label %for.end.i.if.end_crit_edge, label %if.then

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 23
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.87) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 58623) #5, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %25, i32 9437712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 150008831) #5, !srcloc !228
  %26 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 10485968
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %29 = or i32 %28, 786432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %31, i32 10485968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %29) #5, !srcloc !228
  br label %cleanup

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then34.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @rockchip_pcie_deinit_phys(ptr noundef %1) #5
  tail call void @rockchip_pcie_disable_clocks(ptr noundef %1) #5
  %vpcie0v9 = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 18
  %32 = ptrtoint ptr %vpcie0v9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vpcie0v9, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %33) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.i18 = phi i32 [ 0, %if.end ], [ -110, %if.then ]
  ret i32 %retval.0.i18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_resume_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vpcie0v9 = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %vpcie0v9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpcie0v9, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @rockchip_pcie_enable_clocks(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_disable_0v9_crit_edge

if.end.err_disable_0v9_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_0v9

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @rockchip_pcie_host_init_port(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_pcie_resume_crit_edge

if.end5.err_pcie_resume_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pcie_resume

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc i32 @rockchip_pcie_cfg_atu(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %err_err_deinit_port

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %apb_base.i.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 9437216
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %7 = and i32 %6, -65536
  %8 = or i32 %7, 47115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %10, i32 9437216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %8) #5, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %12, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 58623) #5, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %14, i32 9437712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 150008831) #5, !srcloc !228
  %15 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 10485968
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  %18 = or i32 %17, 786432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %20, i32 10485968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %18) #5, !srcloc !228
  br label %cleanup

err_err_deinit_port:                              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rockchip_pcie_deinit_phys(ptr noundef %1) #5
  br label %err_pcie_resume

err_pcie_resume:                                  ; preds = %err_err_deinit_port, %if.end5.err_pcie_resume_crit_edge
  %err.0 = phi i32 [ %call6, %if.end5.err_pcie_resume_crit_edge ], [ %call10, %err_err_deinit_port ]
  tail call void @rockchip_pcie_disable_clocks(ptr noundef %1) #5
  br label %err_disable_0v9

err_disable_0v9:                                  ; preds = %err_pcie_resume, %if.end.err_disable_0v9_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.err_disable_0v9_crit_edge ], [ %err.0, %err_pcie_resume ]
  %21 = ptrtoint ptr %vpcie0v9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vpcie0v9, align 4
  %call15 = tail call i32 @regulator_disable(ptr noundef %22) #5
  br label %cleanup

cleanup:                                          ; preds = %err_disable_0v9, %if.end13, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %err.1, %err_disable_0v9 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !76, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !110, !112, !113, !114, !115, !117, !119, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !207, !209, !210, !211, !212, !214, !215}
!llvm.module.flags = !{!216, !217, !218, !219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !{ptr @__initcall__kmod_pcie_rockchip_host__320_1057_rockchip_pcie_driver_init6, !1, !"__initcall__kmod_pcie_rockchip_host__320_1057_rockchip_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 1057, i32 1}
!2 = !{ptr @__exitcall_rockchip_pcie_driver_exit, !1, !"__exitcall_rockchip_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author321, !4, !"__UNIQUE_ID_author321", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 1059, i32 1}
!5 = !{ptr @__UNIQUE_ID_description322, !6, !"__UNIQUE_ID_description322", i1 false, i1 false}
!6 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 1060, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 1061, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 1050, i32 11}
!12 = !{ptr @rockchip_pcie_driver, !13, !"rockchip_pcie_driver", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 1048, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 960, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rockchip_pcie_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rockchip_pcie_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 591, i32 56}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 595, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rockchip_pcie_parse_host_dt._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @rockchip_pcie_parse_host_dt._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 598, i32 56}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 602, i32 3}
!34 = !{ptr @rockchip_pcie_parse_host_dt._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rockchip_pcie_parse_host_dt._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 605, i32 47}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 609, i32 47}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 624, i32 4}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rockchip_pcie_set_vpcie._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @rockchip_pcie_set_vpcie._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 632, i32 4}
!47 = !{ptr @rockchip_pcie_set_vpcie._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @rockchip_pcie_set_vpcie._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 639, i32 3}
!51 = !{ptr @rockchip_pcie_set_vpcie._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @rockchip_pcie_set_vpcie._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 645, i32 3}
!55 = !{ptr @rockchip_pcie_set_vpcie._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rockchip_pcie_set_vpcie._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 335, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rockchip_pcie_host_init_port._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @rockchip_pcie_host_init_port._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 352, i32 4}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug293, !63, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 359, i32 2}
!68 = !{ptr @rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug294, !67, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 365, i32 4}
!71 = !{ptr @rockchip_pcie_host_init_port.__UNIQUE_ID_ddebug295, !70, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 382, i32 42}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 277, i32 4}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rockchip_pcie_set_power_limit._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @rockchip_pcie_set_power_limit._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 692, i32 3}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rockchip_pcie_init_irq_domain._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @rockchip_pcie_init_irq_domain._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 700, i32 3}
!87 = !{ptr @rockchip_pcie_init_irq_domain._entry.39, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rockchip_pcie_init_irq_domain._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @intx_domain_ops, !90, !"intx_domain_ops", i1 false, i1 false}
!90 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 682, i32 36}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 804, i32 4}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rockchip_pcie_cfg_atu._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @rockchip_pcie_cfg_atu._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 811, i32 3}
!98 = !{ptr @rockchip_pcie_cfg_atu._entry.44, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @rockchip_pcie_cfg_atu._entry_ptr.46, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 833, i32 4}
!102 = !{ptr @rockchip_pcie_cfg_atu._entry.47, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @rockchip_pcie_cfg_atu._entry_ptr.49, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @rockchip_pcie_ops, !105, !"rockchip_pcie_ops", i1 false, i1 false}
!105 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 249, i32 23}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 543, i32 38}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 548, i32 24}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 550, i32 3}
!112 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @rockchip_pcie_setup_irq._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @rockchip_pcie_setup_irq._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 554, i32 38}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 562, i32 38}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 567, i32 24}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 569, i32 3}
!123 = !{ptr @rockchip_pcie_setup_irq._entry.57, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @rockchip_pcie_setup_irq._entry_ptr.59, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 412, i32 3}
!127 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug296, !126, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 415, i32 4}
!131 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug297, !130, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 418, i32 4}
!134 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug298, !133, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 421, i32 4}
!137 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug299, !136, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 424, i32 4}
!140 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug300, !139, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 427, i32 4}
!143 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug301, !142, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 430, i32 4}
!146 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug302, !145, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 433, i32 4}
!149 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug303, !148, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 436, i32 4}
!152 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug304, !151, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 439, i32 4}
!155 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug305, !154, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!156 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug306, !157, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!157 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 442, i32 4}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 445, i32 4}
!160 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug307, !159, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 448, i32 4}
!163 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug308, !162, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 451, i32 4}
!166 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug309, !165, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 454, i32 4}
!169 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug310, !168, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 458, i32 3}
!172 = !{ptr @rockchip_pcie_subsys_irq_handler.__UNIQUE_ID_ddebug311, !171, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 531, i32 4}
!175 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @rockchip_pcie_legacy_int_handler._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @rockchip_pcie_legacy_int_handler._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 477, i32 3}
!180 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug312, !179, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 480, i32 3}
!184 = !{ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug313, !183, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 483, i32 3}
!187 = !{ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug314, !186, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 486, i32 3}
!190 = !{ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug315, !189, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 489, i32 3}
!193 = !{ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug316, !192, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 492, i32 3}
!196 = !{ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug317, !195, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 495, i32 3}
!199 = !{ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug318, !198, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!200 = !{ptr @.str.86, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 498, i32 3}
!202 = !{ptr @rockchip_pcie_client_irq_handler.__UNIQUE_ID_ddebug319, !201, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!203 = !{ptr @rockchip_pcie_of_match, !204, !"rockchip_pcie_of_match", i1 false, i1 false}
!204 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 1042, i32 34}
!205 = !{ptr @rockchip_pcie_pm_ops, !206, !"rockchip_pcie_pm_ops", i1 false, i1 false}
!206 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 1037, i32 32}
!207 = !{ptr @.str.87, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 860, i32 3}
!209 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @rockchip_pcie_wait_l2._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @rockchip_pcie_wait_l2._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.89, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pci/controller/pcie-rockchip-host.c", i32 899, i32 3}
!214 = !{ptr @rockchip_pcie_resume_noirq._entry, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @rockchip_pcie_resume_noirq._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{i32 1, !"wchar_size", i32 2}
!217 = !{i32 1, !"min_enum_size", i32 4}
!218 = !{i32 8, !"branch-target-enforcement", i32 0}
!219 = !{i32 8, !"sign-return-address", i32 0}
!220 = !{i32 8, !"sign-return-address-all", i32 0}
!221 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!222 = !{i32 7, !"uwtable", i32 1}
!223 = !{i32 7, !"frame-pointer", i32 2}
!224 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!225 = !{i64 4297547}
!226 = !{i64 2155725721}
!227 = !{i64 2155725942}
!228 = !{i64 4297129}
!229 = !{i64 2155737620}
!230 = !{i64 2155738174}
!231 = !{i64 2155742010}
!232 = !{i64 2155742588}
!233 = !{i64 2148751333, i64 2148751338, i64 2148751351, i64 2148751395, i64 2148751429, i64 2148751450}
!234 = !{i8 0, i8 2}
!235 = !{i64 2155728151}
!236 = !{i64 4296709}
!237 = !{i64 2155728585}
!238 = !{i64 4297327}
!239 = !{i64 2155728791}
!240 = !{i64 2155730782}
!241 = !{i64 2155731216}
!242 = !{i64 2155731422}
!243 = !{i64 2155729011}
!244 = !{i64 2155729612}
!245 = !{i64 2155729813}
!246 = !{i64 2155732001}
!247 = !{i64 2155732364}
!248 = !{i64 4296509}
!249 = !{i64 2155732727}
!250 = !{i64 4296932}
!251 = !{i32 0, i32 33}
!252 = !{i64 2155846925}
!253 = !{i64 2155850886}
!254 = !{i64 2155851440}
