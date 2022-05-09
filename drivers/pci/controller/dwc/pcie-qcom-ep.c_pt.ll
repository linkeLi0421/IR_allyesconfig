; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-qcom-ep.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-qcom-ep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_ep_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.qcom_pcie_ep = type { %struct.dw_pcie, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }

@__initcall__kmod_pcie_qcom_ep__337_715_qcom_pcie_ep_driver_init6 = internal global ptr @qcom_pcie_ep_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author338 = internal constant [67 x i8] c"pcie_qcom_ep.author=Siddartha Mohanadoss <smohanad@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author339 = internal constant [77 x i8] c"pcie_qcom_ep.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [66 x i8] c"pcie_qcom_ep.description=Qualcomm PCIe Endpoint controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [58 x i8] c"pcie_qcom_ep.file=drivers/pci/controller/dwc/pcie-qcom-ep\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [28 x i8] c"pcie_qcom_ep.license=GPL v2\00", section ".modinfo", align 1
@qcom_pcie_ep_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_pcie_ep_probe, ptr @qcom_pcie_ep_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_pcie_ep_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom-pcie-ep\00", [19 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdx55-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pci_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr @qcom_pcie_dw_link_up, ptr @qcom_pcie_dw_start_link, ptr @qcom_pcie_dw_stop_link }, [36 x i8] zeroinitializer }, align 32
@pci_ep_ops = internal constant { %struct.dw_pcie_ep_ops, [16 x i8] } { %struct.dw_pcie_ep_ops { ptr @qcom_pcie_ep_init, ptr @qcom_pcie_ep_raise_irq, ptr @qcom_pcie_epc_get_features, ptr null }, [16 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_clks = internal global { [7 x %struct.clk_bulk_data], [40 x i8] } { [7 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.27, ptr null }, %struct.clk_bulk_data { ptr @.str.28, ptr null }, %struct.clk_bulk_data { ptr @.str.29, ptr null }, %struct.clk_bulk_data { ptr @.str.30, ptr null }, %struct.clk_bulk_data { ptr @.str.31, ptr null }, %struct.clk_bulk_data { ptr @.str.32, ptr null }, %struct.clk_bulk_data { ptr @.str.33, ptr null }], [40 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 666, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize endpoint: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_pcie_ep_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pci/controller/dwc/pcie-qcom-ep.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_probe._entry_ptr = internal global ptr @qcom_pcie_ep_probe._entry, section ".printk_index", align 4
@qcom_pcie_ep_raise_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown IRQ type\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_pcie_ep_raise_irq\00", [41 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_raise_irq._entry_ptr = internal global ptr @qcom_pcie_ep_raise_irq._entry, section ".printk_index", align 4
@qcom_pcie_epc_features = internal constant { %struct.pci_epc_features, [32 x i8] } { %struct.pci_epc_features { i8 -32, i8 0, i8 0, [6 x i64] zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get io resources %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom_pcie_ep_get_resources\00", [37 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_get_resources._entry_ptr = internal global ptr @qcom_pcie_ep_get_resources._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wake\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pciephy\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"parf\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dbi\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"elbi\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,perst-regs\00", [16 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_get_io_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to parse qcom,perst-regs\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qcom_pcie_ep_get_io_resources\00", [34 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_get_io_resources._entry_ptr = internal global ptr @qcom_pcie_ep_get_io_resources._entry, section ".printk_index", align 4
@qcom_pcie_ep_get_io_resources._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No Perst Enable offset in syscon\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_get_io_resources._entry_ptr.23 = internal global ptr @qcom_pcie_ep_get_io_resources._entry.21, section ".printk_index", align 4
@qcom_pcie_ep_get_io_resources._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No Perst Separation Enable offset in syscon\0A\00", [51 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_get_io_resources._entry_ptr.26 = internal global ptr @qcom_pcie_ep_get_io_resources._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bus_master\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus_slave\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slave_q2a\00", [22 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_core_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot assert core reset\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_pcie_ep_core_reset\00", [40 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_core_reset._entry_ptr = internal global ptr @qcom_pcie_ep_core_reset._entry, section ".printk_index", align 4
@qcom_pcie_ep_core_reset._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot de-assert core reset\0A\00", [35 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_core_reset._entry_ptr.38 = internal global ptr @qcom_pcie_ep_core_reset._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"global\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"global_irq\00", [21 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_enable_irq_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request Global IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qcom_pcie_ep_enable_irq_resources\00", [62 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_enable_irq_resources._entry_ptr = internal global ptr @qcom_pcie_ep_enable_irq_resources._entry, section ".printk_index", align 4
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"perst_irq\00", [22 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_enable_irq_resources._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.3, i32 575, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request PERST IRQ\0A\00", [35 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_enable_irq_resources._entry_ptr.46 = internal global ptr @qcom_pcie_ep_enable_irq_resources._entry.44, section ".printk_index", align 4
@qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_qcom_ep\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qcom_pcie_ep_global_irq_thread\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Received Linkdown event\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.3, ptr @.str.50, i8 0, i8 125, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Received BME event. Link is enabled!\0A\00", [58 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.3, ptr @.str.51, i8 0, i8 126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Received PM Turn-off event! Entering L23\0A\00", [54 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.3, ptr @.str.52, i8 0, i8 127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Received D%d state event\0A\00", [38 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.3, ptr @.str.53, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Received Linkup event. Enumeration complete!\0A\00", [50 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.3, ptr @.str.54, i8 0, i8 -126, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Received unknown event: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_perst_irq_thread.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 -122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qcom_pcie_ep_perst_irq_thread\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"PERST asserted by host. Shutting down the PCIe link!\0A\00", [42 x i8] zeroinitializer }, align 32
@qcom_pcie_ep_perst_irq_thread.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.55, ptr @.str.3, ptr @.str.57, i8 0, i8 -121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"PERST de-asserted by host. Starting link training!\0A\00", [44 x i8] zeroinitializer }, align 32
@qcom_pcie_perst_assert.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 0, i8 93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_pcie_perst_assert\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Link is already disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@qcom_pcie_perst_deassert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to complete initialization: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_pcie_perst_deassert\00", [39 x i8] zeroinitializer }, align 32
@qcom_pcie_perst_deassert._entry_ptr = internal global ptr @qcom_pcie_perst_deassert._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"qcom_pcie_ep_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 707, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 711, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"qcom_pcie_ep_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 702, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [8 x i8] c"pci_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 387, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"pci_ep_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 621, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"qcom_pcie_ep_clks\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 133, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 666, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 594, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"qcom_pcie_epc_features\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 599, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 456, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 465, i32 62 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 469, i32 39 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 473, i32 47 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 477, i32 51 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 402, i32 62 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 406, i32 59 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 412, i32 59 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 418, i32 9 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 420, i32 42 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 422, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 434, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 441, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 134, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 135, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 136, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 137, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 138, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 139, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 140, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 172, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 180, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 555, i32 38 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 562, i32 6 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 564, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 573, i32 6 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 575, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 498, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 501, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 504, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 511, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 518, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 522, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 537, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 540, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 375, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [45 x i8] c"../drivers/pci/controller/dwc/pcie-qcom-ep.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 337, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__initcall__kmod_pcie_qcom_ep__337_715_qcom_pcie_ep_driver_init6, ptr @qcom_pcie_ep_core_reset._entry, ptr @qcom_pcie_ep_core_reset._entry.36, ptr @qcom_pcie_ep_core_reset._entry_ptr, ptr @qcom_pcie_ep_core_reset._entry_ptr.38, ptr @qcom_pcie_ep_enable_irq_resources._entry, ptr @qcom_pcie_ep_enable_irq_resources._entry.44, ptr @qcom_pcie_ep_enable_irq_resources._entry_ptr, ptr @qcom_pcie_ep_enable_irq_resources._entry_ptr.46, ptr @qcom_pcie_ep_get_io_resources._entry, ptr @qcom_pcie_ep_get_io_resources._entry.21, ptr @qcom_pcie_ep_get_io_resources._entry.24, ptr @qcom_pcie_ep_get_io_resources._entry_ptr, ptr @qcom_pcie_ep_get_io_resources._entry_ptr.23, ptr @qcom_pcie_ep_get_io_resources._entry_ptr.26, ptr @qcom_pcie_ep_get_resources._entry, ptr @qcom_pcie_ep_get_resources._entry_ptr, ptr @qcom_pcie_ep_probe._entry, ptr @qcom_pcie_ep_probe._entry_ptr, ptr @qcom_pcie_ep_raise_irq._entry, ptr @qcom_pcie_ep_raise_irq._entry_ptr, ptr @qcom_pcie_perst_deassert._entry, ptr @qcom_pcie_perst_deassert._entry_ptr, ptr @qcom_pcie_ep_driver, ptr @.str, ptr @qcom_pcie_ep_match, ptr @pci_ops, ptr @pci_ep_ops, ptr @qcom_pcie_ep_clks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @qcom_pcie_epc_features, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ep_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_clks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_raise_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_epc_features to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_get_io_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_get_io_resources._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_get_io_resources._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_core_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_core_reset._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_enable_irq_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_ep_enable_irq_resources._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_perst_deassert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_ep_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_pcie_ep_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_ep_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 376, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 9
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pci_ops, ptr %ops, align 8
  %ep = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 8
  %ops5 = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pci_ep_ops, ptr %ops5, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.14) #7
  %parf.i.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %parf.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %parf.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.qcom_pcie_ep_get_io_resources.exit.i_crit_edge, label %if.end.i.i

if.end.qcom_pcie_ep_get_io_resources.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_pcie_ep_get_io_resources.exit.i

if.end.i.i:                                       ; preds = %if.end
  %call7.i.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.15) #7
  %call8.i.i = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev1, ptr noundef %call7.i.i) #7
  %dbi_base.i.i = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dbi_base.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %dbi_base.i.i, align 4
  %cmp.i87.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87.i.i, label %if.end.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge, label %if.end14.i.i

if.end.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_pcie_ep_get_io_resources.exit.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %dbi_base2.i.i = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dbi_base2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %dbi_base2.i.i, align 8
  %call16.i.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.16) #7
  %call17.i.i = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev1, ptr noundef %call16.i.i) #7
  %elbi.i.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %elbi.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call17.i.i, ptr %elbi.i.i, align 4
  %cmp.i88.i.i = icmp ugt ptr %call17.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88.i.i, label %if.end14.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge, label %if.end23.i.i

if.end14.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_pcie_ep_get_io_resources.exit.i

if.end23.i.i:                                     ; preds = %if.end14.i.i
  %call24.i.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.17) #7
  %mmio_res.i.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %mmio_res.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24.i.i, ptr %mmio_res.i.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i) #7
  %11 = call ptr @memset(ptr %args.i.i.i, i32 255, i32 72)
  %call.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %of_parse_phandle.exit.i.i, label %of_parse_phandle.exit.thread.i.i

of_parse_phandle.exit.thread.i.i:                 ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #7
  br label %do.end.i.i

of_parse_phandle.exit.i.i:                        ; preds = %if.end23.i.i
  %12 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #7
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i.i.do.end.i.i_crit_edge, label %if.end27.i.i

of_parse_phandle.exit.i.i.do.end.i.i_crit_edge:   ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %of_parse_phandle.exit.i.i.do.end.i.i_crit_edge, %of_parse_phandle.exit.thread.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #10
  br label %do.end.i

if.end27.i.i:                                     ; preds = %of_parse_phandle.exit.i.i
  %call28.i.i = call ptr @syscon_node_to_regmap(ptr noundef nonnull %13) #7
  %perst_map.i.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %perst_map.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call28.i.i, ptr %perst_map.i.i, align 8
  call void @of_node_put(ptr noundef nonnull %13) #7
  %15 = ptrtoint ptr %perst_map.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %perst_map.i.i, align 8
  %cmp.i89.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89.i.i, label %if.end27.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge, label %if.end34.i.i

if.end27.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_pcie_ep_get_io_resources.exit.i

if.end34.i.i:                                     ; preds = %if.end27.i.i
  %17 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i.i, align 8
  %perst_en.i.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %call.i, i32 0, i32 9
  %call36.i.i = call i32 @of_property_read_u32_index(ptr noundef %18, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef %perst_en.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %cmp.i.i = icmp slt i32 %call36.i.i, 0
  br i1 %cmp.i.i, label %do.end40.i.i, label %if.end41.i.i

do.end40.i.i:                                     ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  br label %do.end.i

if.end41.i.i:                                     ; preds = %if.end34.i.i
  %19 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i.i, align 8
  %perst_sep_en.i.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %call.i, i32 0, i32 10
  %call43.i.i = call i32 @of_property_read_u32_index(ptr noundef %20, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef %perst_sep_en.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %cmp44.i.i = icmp slt i32 %call43.i.i, 0
  br i1 %cmp44.i.i, label %do.end48.i.i, label %if.end.i

do.end48.i.i:                                     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #10
  br label %do.end.i

qcom_pcie_ep_get_io_resources.exit.i:             ; preds = %if.end27.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge, %if.end14.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge, %if.end.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge, %if.end.qcom_pcie_ep_get_io_resources.exit.i_crit_edge
  %retval.0.i.in.i = phi ptr [ %call.i.i, %if.end.qcom_pcie_ep_get_io_resources.exit.i_crit_edge ], [ %call8.i.i, %if.end.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge ], [ %call17.i.i, %if.end14.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge ], [ %16, %if.end27.i.i.qcom_pcie_ep_get_io_resources.exit.i_crit_edge ]
  %retval.0.i.i = ptrtoint ptr %retval.0.i.in.i to i32
  br label %do.end.i

do.end.i:                                         ; preds = %qcom_pcie_ep_get_io_resources.exit.i, %do.end48.i.i, %do.end40.i.i, %do.end.i.i
  %retval.0.i67.i = phi i32 [ %retval.0.i.i, %qcom_pcie_ep_get_io_resources.exit.i ], [ -22, %do.end.i.i ], [ %call43.i.i, %do.end48.i.i ], [ %call36.i.i, %do.end40.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i67.i) #10
  br label %qcom_pcie_ep_get_resources.exit

if.end.i:                                         ; preds = %if.end41.i.i
  %call3.i = call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %call.i60.i = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %core_reset.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %core_reset.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i60.i, ptr %core_reset.i, align 8
  %cmp.i61.i = icmp ugt ptr %call.i60.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61.i, label %if.then10.i, label %if.end13.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call.i60.i to i32
  br label %qcom_pcie_ep_get_resources.exit

if.end13.i:                                       ; preds = %if.end6.i
  %call14.i = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 1) #7
  %reset.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call14.i, ptr %reset.i, align 4
  %cmp.i62.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call14.i to i32
  br label %qcom_pcie_ep_get_resources.exit

if.end20.i:                                       ; preds = %if.end13.i
  %call21.i = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 3) #7
  %wake.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %wake.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call21.i, ptr %wake.i, align 8
  %cmp.i63.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %if.then24.i, label %if.end27.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call21.i to i32
  br label %qcom_pcie_ep_get_resources.exit

if.end27.i:                                       ; preds = %if.end20.i
  %call29.i = call ptr @devm_phy_optional_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #7
  %phy.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call29.i, ptr %phy.i, align 4
  %cmp.i64.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  %28 = ptrtoint ptr %call29.i to i32
  br i1 %cmp.i64.i, label %if.end27.i.qcom_pcie_ep_get_resources.exit_crit_edge, label %if.end27.i.if.end9_crit_edge

if.end27.i.if.end9_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end27.i.qcom_pcie_ep_get_resources.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_pcie_ep_get_resources.exit

qcom_pcie_ep_get_resources.exit:                  ; preds = %if.end27.i.qcom_pcie_ep_get_resources.exit_crit_edge, %if.then24.i, %if.then17.i, %if.then10.i, %do.end.i
  %retval.0.i = phi i32 [ %retval.0.i67.i, %do.end.i ], [ %22, %if.then10.i ], [ %24, %if.then17.i ], [ %26, %if.then24.i ], [ %28, %if.end27.i.qcom_pcie_ep_get_resources.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %qcom_pcie_ep_get_resources.exit.if.end9_crit_edge, label %qcom_pcie_ep_get_resources.exit.cleanup_crit_edge

qcom_pcie_ep_get_resources.exit.cleanup_crit_edge: ; preds = %qcom_pcie_ep_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

qcom_pcie_ep_get_resources.exit.if.end9_crit_edge: ; preds = %qcom_pcie_ep_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %qcom_pcie_ep_get_resources.exit.if.end9_crit_edge, %if.end27.i.if.end9_crit_edge
  %call.i70 = call i32 @clk_bulk_prepare(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i, label %if.end.i71, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i71:                                       ; preds = %if.end9
  %call1.i = call i32 @clk_bulk_enable(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end13, label %if.end.i71.cleanup.sink.split_crit_edge

if.end.i71.cleanup.sink.split_crit_edge:          ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end.i71
  %call14 = call fastcc i32 @qcom_pcie_ep_core_reset(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err_disable_clk_crit_edge

if.end13.err_disable_clk_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end17:                                         ; preds = %if.end13
  %phy = getelementptr inbounds %struct.qcom_pcie_ep, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy, align 4
  %call18 = call i32 @phy_init(ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_disable_clk_crit_edge

if.end17.err_disable_clk_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end21:                                         ; preds = %if.end17
  %31 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy, align 4
  %call23 = call i32 @phy_power_on(ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.err_phy_exit_crit_edge

if.end21.err_phy_exit_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_phy_exit

if.end26:                                         ; preds = %if.end21
  %call29 = call i32 @dw_pcie_ep_init(ptr noundef %ep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %do.end

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call29) #10
  br label %err_phy_power_off

if.end32:                                         ; preds = %if.end26
  %call33 = call fastcc i32 @qcom_pcie_ep_enable_irq_resources(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.end32.err_phy_power_off_crit_edge

if.end32.err_phy_power_off_crit_edge:             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_phy_power_off

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_phy_power_off:                                ; preds = %if.end32.err_phy_power_off_crit_edge, %do.end
  %ret.0 = phi i32 [ %call29, %do.end ], [ %call33, %if.end32.err_phy_power_off_crit_edge ]
  %33 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy, align 4
  %call38 = call i32 @phy_power_off(ptr noundef %34) #7
  br label %err_phy_exit

err_phy_exit:                                     ; preds = %err_phy_power_off, %if.end21.err_phy_exit_crit_edge
  %ret.1 = phi i32 [ %call23, %if.end21.err_phy_exit_crit_edge ], [ %ret.0, %err_phy_power_off ]
  %35 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy, align 4
  %call40 = call i32 @phy_exit(ptr noundef %36) #7
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_phy_exit, %if.end17.err_disable_clk_crit_edge, %if.end13.err_disable_clk_crit_edge
  %ret.2 = phi i32 [ %call14, %if.end13.err_disable_clk_crit_edge ], [ %call18, %if.end17.err_disable_clk_crit_edge ], [ %ret.1, %err_phy_exit ]
  call void @clk_bulk_disable(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_disable_clk, %if.end.i71.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.2, %err_disable_clk ], [ %call1.i, %if.end.i71.cleanup.sink.split_crit_edge ]
  call void @clk_bulk_unprepare(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end32.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %qcom_pcie_ep_get_resources.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %qcom_pcie_ep_get_resources.exit.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ], [ %call.i70, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_ep_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %link_status = getelementptr inbounds %struct.qcom_pcie_ep, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy = getelementptr inbounds %struct.qcom_pcie_ep, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call1 = tail call i32 @phy_power_off(ptr noundef %5) #7
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %7) #7
  tail call void @clk_bulk_disable(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  tail call void @clk_bulk_unprepare(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_pcie_ep_core_reset(ptr nocapture noundef readonly %pcie_ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_ep, align 8
  %core_reset = getelementptr inbounds %struct.qcom_pcie_ep, ptr %pcie_ep, i32 0, i32 5
  %2 = ptrtoint ptr %core_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_reset, align 8
  %call = tail call i32 @reset_control_assert(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1005, i32 noundef 2) #7
  %4 = ptrtoint ptr %core_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core_reset, align 8
  %call4 = tail call i32 @reset_control_deassert(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1005, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end9, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4, %do.end9 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_pcie_ep_enable_irq_resources(ptr noundef %pdev, ptr noundef %pcie_ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef null, ptr noundef nonnull @qcom_pcie_ep_global_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.40, ptr noundef %pcie_ep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %reset = getelementptr inbounds %struct.qcom_pcie_ep, ptr %pcie_ep, i32 0, i32 6
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  %call5 = tail call i32 @gpiod_to_irq(ptr noundef %1) #7
  %perst_irq = getelementptr inbounds %struct.qcom_pcie_ep, ptr %pcie_ep, i32 0, i32 13
  %2 = ptrtoint ptr %perst_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call5, ptr %perst_irq, align 8
  tail call void @irq_modify_status(i32 noundef %call5, i32 noundef 0, i32 noundef 4096) #7
  %3 = ptrtoint ptr %perst_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %perst_irq, align 8
  %call9 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %4, ptr noundef null, ptr noundef nonnull @qcom_pcie_ep_perst_irq_thread, i32 noundef 8196, ptr noundef nonnull @.str.43, ptr noundef %pcie_ep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end4.cleanup_crit_edge, label %do.end14

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #10
  tail call void @disable_irq(i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call9, %do.end14 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_dw_link_up(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %elbi = getelementptr inbounds %struct.qcom_pcie_ep, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %elbi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elbi, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !157
  %7 = lshr i32 %6, 8
  %and = and i32 %7, 1024
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_dw_start_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %perst_irq = getelementptr inbounds %struct.qcom_pcie_ep, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %perst_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %perst_irq, align 8
  tail call void @enable_irq(i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_dw_stop_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %perst_irq = getelementptr inbounds %struct.qcom_pcie_ep, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %perst_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %perst_irq, align 8
  tail call void @disable_irq(i32 noundef %5) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_ep_init(ptr noundef %ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 0) #7
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 1) #7
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 2) #7
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 3) #7
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 4) #7
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_ep_raise_irq(ptr noundef %ep, i8 noundef zeroext %func_no, i32 noundef %type, i16 noundef zeroext %interrupt_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @dw_pcie_ep_raise_legacy_irq(ptr noundef %ep, i8 noundef zeroext %func_no) #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i16 %interrupt_num to i8
  %call2 = tail call i32 @dw_pcie_ep_raise_msi_irq(ptr noundef %ep, i8 noundef zeroext %func_no, i8 noundef zeroext %conv) #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @qcom_pcie_epc_get_features(ptr nocapture noundef readnone %pci_ep) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @qcom_pcie_epc_features
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_ep_reset_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_raise_legacy_irq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_raise_msi_irq(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_ep_global_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %parf = getelementptr inbounds %struct.qcom_pcie_ep, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parf, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 548
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !157
  %5 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parf, align 8
  %add.ptr5 = getelementptr i8, ptr %6, i32 556
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !157
  %8 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parf, align 8
  %add.ptr9 = getelementptr i8, ptr %9, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %4) #7, !srcloc !158
  %10 = and i32 %7, %4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %do.end48, label %do.body24

do.body24:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qcom_pcie_ep_global_irq_thread, %do.end33)) #7
          to label %if.then31 [label %do.end33], !srcloc !159

if.then31:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug309, ptr noundef %1, ptr noundef nonnull @.str.49) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then31, %do.body24
  %link_status = getelementptr inbounds %struct.qcom_pcie_ep, ptr %data, i32 0, i32 11
  %13 = ptrtoint ptr %link_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %link_status, align 8
  br label %if.end233

do.end48:                                         ; preds = %entry
  %14 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool52.not = icmp eq i32 %14, 0
  br i1 %tobool52.not, label %do.end88, label %do.body54

do.body54:                                        ; preds = %do.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qcom_pcie_ep_global_irq_thread, %do.end71)) #7
          to label %if.then68 [label %do.end71], !srcloc !159

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug315, ptr noundef %1, ptr noundef nonnull @.str.50) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %do.body54
  %link_status72 = getelementptr inbounds %struct.qcom_pcie_ep, ptr %data, i32 0, i32 11
  %15 = ptrtoint ptr %link_status72 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %link_status72, align 8
  br label %if.end233

do.end88:                                         ; preds = %do.end48
  %16 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool92.not = icmp eq i32 %16, 0
  br i1 %tobool92.not, label %do.end134, label %do.body94

do.body94:                                        ; preds = %do.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qcom_pcie_ep_global_irq_thread, %do.end111)) #7
          to label %if.then108 [label %do.end111], !srcloc !159

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug321, ptr noundef %1, ptr noundef nonnull @.str.51) #7
  br label %do.end111

do.end111:                                        ; preds = %if.then108, %do.body94
  %17 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parf, align 8
  %add.ptr114 = getelementptr i8, ptr %18, i32 32
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #7, !srcloc !157
  %20 = or i32 %19, 67108864
  %21 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parf, align 8
  %add.ptr118 = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %20) #7, !srcloc !158
  br label %if.end233

do.end134:                                        ; preds = %do.end88
  %23 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool138.not = icmp eq i32 %23, 0
  br i1 %tobool138.not, label %do.end185, label %if.then139

if.then139:                                       ; preds = %do.end134
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %data, i32 noundef 68, i32 noundef 4) #7
  %and141 = and i32 %call.i, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qcom_pcie_ep_global_irq_thread, %do.end159)) #7
          to label %if.then156 [label %do.end159], !srcloc !159

if.then156:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug327, ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef %and141) #7
  br label %do.end159

do.end159:                                        ; preds = %if.then156, %if.then139
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and141)
  %cmp = icmp eq i32 %and141, 3
  br i1 %cmp, label %if.then160, label %do.end159.if.end233_crit_edge

do.end159.if.end233_crit_edge:                    ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233

if.then160:                                       ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parf, align 8
  %add.ptr163 = getelementptr i8, ptr %25, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163) #7, !srcloc !157
  %27 = or i32 %26, 33554432
  %28 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parf, align 8
  %add.ptr168 = getelementptr i8, ptr %29, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 %27) #7, !srcloc !158
  br label %if.end233

do.end185:                                        ; preds = %do.end134
  %30 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool189.not = icmp eq i32 %30, 0
  br i1 %tobool189.not, label %do.body211, label %do.body191

do.body191:                                       ; preds = %do.end185
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qcom_pcie_ep_global_irq_thread, %do.end208)) #7
          to label %if.then205 [label %do.end208], !srcloc !159

if.then205:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug333, ptr noundef %1, ptr noundef nonnull @.str.53) #7
  br label %do.end208

do.end208:                                        ; preds = %if.then205, %do.body191
  %ep = getelementptr inbounds %struct.dw_pcie, ptr %data, i32 0, i32 8
  tail call void @dw_pcie_ep_linkup(ptr noundef %ep) #7
  %link_status209 = getelementptr inbounds %struct.qcom_pcie_ep, ptr %data, i32 0, i32 11
  %31 = ptrtoint ptr %link_status209 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %link_status209, align 8
  br label %if.end233

do.body211:                                       ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qcom_pcie_ep_global_irq_thread, %if.end233)) #7
          to label %if.then225 [label %if.end233], !srcloc !159

if.then225:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug334, ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef %11) #7
  br label %if.end233

if.end233:                                        ; preds = %if.then225, %do.body211, %do.end208, %if.then160, %do.end159.if.end233_crit_edge, %do.end111, %do.end71, %do.end33
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_ep_perst_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %reset = getelementptr inbounds %struct.qcom_pcie_ep, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body9, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_pcie_ep_perst_irq_thread.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qcom_pcie_ep_perst_irq_thread, %do.end)) #7
          to label %if.then8 [label %do.end], !srcloc !159

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_pcie_ep_perst_irq_thread.__UNIQUE_ID_ddebug335, ptr noundef %1, ptr noundef nonnull @.str.56) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %link_status.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %link_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_pcie_perst_assert.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qcom_pcie_ep_perst_irq_thread, %if.end28)) #7
          to label %if.then7.i [label %if.end28], !srcloc !159

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_pcie_perst_assert.__UNIQUE_ID_ddebug303, ptr noundef %5, ptr noundef nonnull @.str.59) #7
  br label %if.end28

if.end8.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy.i, align 4
  %call9.i = tail call i32 @phy_power_off(ptr noundef %11) #7
  %12 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy.i, align 4
  %call11.i = tail call i32 @phy_exit(ptr noundef %13) #7
  tail call void @clk_bulk_disable(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  tail call void @clk_bulk_unprepare(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  %14 = ptrtoint ptr %link_status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %link_status.i, align 8
  br label %if.end28

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_pcie_ep_perst_irq_thread.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@qcom_pcie_ep_perst_irq_thread, %do.end26)) #7
          to label %if.then23 [label %do.end26], !srcloc !159

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_pcie_ep_perst_irq_thread.__UNIQUE_ID_ddebug336, ptr noundef %1, ptr noundef nonnull @.str.57) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body9
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %driver_data.i.i42 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i42, align 4
  %call.i.i = tail call i32 @clk_bulk_prepare(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end26.if.end28_crit_edge

do.end26.if.end28_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end.i.i:                                       ; preds = %do.end26
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_unprepare(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  br label %if.end28

if.end.i:                                         ; preds = %if.end.i.i
  %call4.i = tail call fastcc i32 @qcom_pcie_ep_core_reset(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.err_disable_clk.i_crit_edge

if.end.i.err_disable_clk.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk.i

if.end7.i:                                        ; preds = %if.end.i
  %phy.i43 = getelementptr inbounds %struct.qcom_pcie_ep, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %phy.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy.i43, align 4
  %call8.i = tail call i32 @phy_init(ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.err_disable_clk.i_crit_edge

if.end7.i.err_disable_clk.i_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk.i

if.end11.i:                                       ; preds = %if.end7.i
  %21 = ptrtoint ptr %phy.i43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy.i43, align 4
  %call13.i = tail call i32 @phy_power_on(ptr noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.err_phy_exit.i_crit_edge

if.end11.i.err_phy_exit.i_crit_edge:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_phy_exit.i

if.end16.i:                                       ; preds = %if.end11.i
  %wake.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %18, i32 0, i32 7
  %23 = ptrtoint ptr %wake.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wake.i, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %24, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #7
  %25 = ptrtoint ptr %wake.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wake.i, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %26, i32 noundef 0) #7
  %perst_map.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %18, i32 0, i32 3
  %27 = ptrtoint ptr %perst_map.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %perst_map.i, align 8
  %perst_en.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %18, i32 0, i32 9
  %29 = ptrtoint ptr %perst_en.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %perst_en.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef %30, i32 noundef 0) #7
  %31 = ptrtoint ptr %perst_map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %perst_map.i, align 8
  %perst_sep_en.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %18, i32 0, i32 10
  %33 = ptrtoint ptr %perst_sep_en.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %perst_sep_en.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %34, i32 noundef 0) #7
  %parf.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %18, i32 0, i32 1
  %35 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parf.i, align 8
  %add.ptr.i = getelementptr i8, ptr %36, i32 11264
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !157
  %38 = or i32 %37, 16777216
  %39 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parf.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %40, i32 11264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %38) #7, !srcloc !158
  %41 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parf.i, align 8
  %add.ptr23.i = getelementptr i8, ptr %42, i32 400
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !157
  %44 = or i32 %43, 234881024
  %45 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parf.i, align 8
  %add.ptr28.i = getelementptr i8, ptr %46, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %44) #7, !srcloc !158
  %47 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parf.i, align 8
  %add.ptr30.i = getelementptr i8, ptr %48, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 0) #7, !srcloc !158
  %49 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parf.i, align 8
  %add.ptr33.i = getelementptr i8, ptr %50, i32 32
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #7, !srcloc !157
  %52 = and i32 %51, -536870913
  %53 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parf.i, align 8
  %add.ptr37.i = getelementptr i8, ptr %54, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %52) #7, !srcloc !158
  %55 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parf.i, align 8
  %add.ptr40.i = getelementptr i8, ptr %56, i32 420
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #7, !srcloc !157
  %58 = and i32 %57, -16777217
  %59 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parf.i, align 8
  %add.ptr45.i = getelementptr i8, ptr %60, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %58) #7, !srcloc !158
  %61 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parf.i, align 8
  %add.ptr48.i = getelementptr i8, ptr %62, i32 424
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.i) #7, !srcloc !157
  %64 = or i32 %63, 128
  %65 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %parf.i, align 8
  %add.ptr53.i = getelementptr i8, ptr %66, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %64) #7, !srcloc !158
  %67 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parf.i, align 8
  %add.ptr56.i = getelementptr i8, ptr %68, i32 428
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56.i) #7, !srcloc !157
  %70 = and i32 %69, -257
  %71 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parf.i, align 8
  %add.ptr61.i = getelementptr i8, ptr %72, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 %70) #7, !srcloc !158
  %73 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %parf.i, align 8
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #7, !srcloc !157
  %76 = or i32 %75, 1342701568
  %77 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %parf.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #7, !srcloc !158
  %79 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %parf.i, align 8
  %add.ptr72.i = getelementptr i8, ptr %80, i32 16
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72.i) #7, !srcloc !157
  %82 = or i32 %81, 1929379840
  %83 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %parf.i, align 8
  %add.ptr77.i = getelementptr i8, ptr %84, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 %82) #7, !srcloc !158
  %85 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %parf.i, align 8
  %add.ptr80.i = getelementptr i8, ptr %86, i32 528
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80.i) #7, !srcloc !157
  %88 = or i32 %87, 33554432
  %89 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %parf.i, align 8
  %add.ptr85.i = getelementptr i8, ptr %90, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 %88) #7, !srcloc !158
  %call.i.i45 = tail call i32 @dw_pcie_read_dbi(ptr noundef %data, i32 noundef 2236, i32 noundef 4) #7
  %or.i = or i32 %call.i.i45, 1
  tail call void @dw_pcie_write_dbi(ptr noundef %data, i32 noundef 2236, i32 noundef 4, i32 noundef %or.i) #7
  %call86.i = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %data, i8 noundef zeroext 16) #7
  %conv.i = zext i8 %call86.i to i32
  %add.i = add nuw nsw i32 %conv.i, 12
  %call.i1.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %data, i32 noundef %add.i, i32 noundef 4) #7
  %and88.i = and i32 %call.i1.i, -28673
  %or102.i = or i32 %and88.i, 24576
  tail call void @dw_pcie_write_dbi(ptr noundef %data, i32 noundef %add.i, i32 noundef 4, i32 noundef %or102.i) #7
  %call104.i = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %data, i8 noundef zeroext 16) #7
  %conv105.i = zext i8 %call104.i to i32
  %add106.i = add nuw nsw i32 %conv105.i, 12
  %call.i2.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %data, i32 noundef %add106.i, i32 noundef 4) #7
  %and108.i = and i32 %call.i2.i, -229377
  %or125.i = or i32 %and108.i, 196608
  tail call void @dw_pcie_write_dbi(ptr noundef %data, i32 noundef %add106.i, i32 noundef 4, i32 noundef %or125.i) #7
  %call.i.i44 = tail call i32 @dw_pcie_read_dbi(ptr noundef %data, i32 noundef 2236, i32 noundef 4) #7
  %and.i = and i32 %call.i.i44, -2
  tail call void @dw_pcie_write_dbi(ptr noundef %data, i32 noundef 2236, i32 noundef 4, i32 noundef %and.i) #7
  %91 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %parf.i, align 8
  %add.ptr128.i = getelementptr i8, ptr %92, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128.i, i32 0) #7, !srcloc !158
  %93 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %parf.i, align 8
  %add.ptr130.i = getelementptr i8, ptr %94, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130.i, i32 237043712) #7, !srcloc !158
  %ep.i = getelementptr inbounds %struct.dw_pcie, ptr %18, i32 0, i32 8
  %call132.i = tail call i32 @dw_pcie_ep_init_complete(ptr noundef %ep.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i)
  %tobool133.not.i = icmp eq i32 %call132.i, 0
  br i1 %tobool133.not.i, label %if.end138.i, label %do.end137.i

do.end137.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.60, i32 noundef %call132.i) #10
  %95 = ptrtoint ptr %phy.i43 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %phy.i43, align 4
  %call154.i = tail call i32 @phy_power_off(ptr noundef %96) #7
  br label %err_phy_exit.i

if.end138.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %mmio_res.i = getelementptr inbounds %struct.qcom_pcie_ep, ptr %18, i32 0, i32 4
  %97 = ptrtoint ptr %mmio_res.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio_res.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #7
  %102 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %parf.i, align 8
  %add.ptr140.i = getelementptr i8, ptr %103, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140.i, i32 %101) #7, !srcloc !158
  %104 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %parf.i, align 8
  %add.ptr142.i = getelementptr i8, ptr %105, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142.i, i32 0) #7, !srcloc !158
  tail call void @dw_pcie_ep_init_notify(ptr noundef %ep.i) #7
  %106 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %parf.i, align 8
  %add.ptr147.i = getelementptr i8, ptr %107, i32 432
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147.i) #7, !srcloc !157
  %109 = or i32 %108, 65536
  %110 = ptrtoint ptr %parf.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %parf.i, align 8
  %add.ptr152.i = getelementptr i8, ptr %111, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152.i, i32 %109) #7, !srcloc !158
  br label %if.end28

err_phy_exit.i:                                   ; preds = %do.end137.i, %if.end11.i.err_phy_exit.i_crit_edge
  %112 = ptrtoint ptr %phy.i43 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %phy.i43, align 4
  %call156.i = tail call i32 @phy_exit(ptr noundef %113) #7
  br label %err_disable_clk.i

err_disable_clk.i:                                ; preds = %err_phy_exit.i, %if.end7.i.err_disable_clk.i_crit_edge, %if.end.i.err_disable_clk.i_crit_edge
  tail call void @clk_bulk_disable(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  tail call void @clk_bulk_unprepare(i32 noundef 7, ptr noundef nonnull @qcom_pcie_ep_clks) #7
  br label %if.end28

if.end28:                                         ; preds = %err_disable_clk.i, %if.end138.i, %if.then3.i.i, %do.end26.if.end28_crit_edge, %if.end8.i, %if.then7.i, %do.body.i
  %cond = phi i32 [ 4, %do.body.i ], [ 4, %if.then7.i ], [ 4, %if.end8.i ], [ 8, %do.end26.if.end28_crit_edge ], [ 8, %if.then3.i.i ], [ 8, %if.end138.i ], [ 8, %err_disable_clk.i ]
  %114 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reset, align 4
  %call30 = tail call i32 @gpiod_to_irq(ptr noundef %115) #7
  %call32 = tail call i32 @irq_set_irq_type(i32 noundef %call30, i32 noundef %cond) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_ep_linkup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dw_pcie_find_capability(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_init_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_ep_init_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !30, !31, !32, !34, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !99, !101, !102, !103, !104, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !134, !136, !137, !139, !140, !141, !143, !144, !145, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__initcall__kmod_pcie_qcom_ep__337_715_qcom_pcie_ep_driver_init6, !1, !"__initcall__kmod_pcie_qcom_ep__337_715_qcom_pcie_ep_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 715, i32 1}
!2 = !{ptr @__UNIQUE_ID_author338, !3, !"__UNIQUE_ID_author338", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 717, i32 1}
!4 = !{ptr @__UNIQUE_ID_author339, !5, !"__UNIQUE_ID_author339", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 718, i32 1}
!6 = !{ptr @__UNIQUE_ID_description340, !7, !"__UNIQUE_ID_description340", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 719, i32 1}
!8 = !{ptr @__UNIQUE_ID_file341, !9, !"__UNIQUE_ID_file341", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 720, i32 1}
!10 = !{ptr @__UNIQUE_ID_license342, !9, !"__UNIQUE_ID_license342", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 711, i32 11}
!13 = !{ptr @qcom_pcie_ep_driver, !14, !"qcom_pcie_ep_driver", i1 false, i1 false}
!14 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 707, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 666, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @qcom_pcie_ep_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @qcom_pcie_ep_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @pci_ops, !24, !"pci_ops", i1 false, i1 false}
!24 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 387, i32 33}
!25 = !{ptr @pci_ep_ops, !26, !"pci_ep_ops", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 621, i32 36}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 594, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @qcom_pcie_ep_raise_irq._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @qcom_pcie_ep_raise_irq._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @qcom_pcie_epc_features, !33, !"qcom_pcie_epc_features", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 599, i32 38}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 456, i32 3}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @qcom_pcie_ep_get_resources._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @qcom_pcie_ep_get_resources._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 465, i32 62}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 469, i32 39}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 473, i32 47}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 477, i32 51}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 402, i32 62}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 406, i32 59}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 412, i32 59}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 418, i32 9}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 420, i32 42}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 422, i32 3}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @qcom_pcie_ep_get_io_resources._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @qcom_pcie_ep_get_io_resources._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 434, i32 3}
!64 = !{ptr @qcom_pcie_ep_get_io_resources._entry.21, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qcom_pcie_ep_get_io_resources._entry_ptr.23, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 441, i32 3}
!68 = !{ptr @qcom_pcie_ep_get_io_resources._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @qcom_pcie_ep_get_io_resources._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 134, i32 10}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 135, i32 10}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 136, i32 10}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 137, i32 10}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 138, i32 10}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 139, i32 10}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 140, i32 10}
!84 = !{ptr @qcom_pcie_ep_clks, !85, !"qcom_pcie_ep_clks", i1 false, i1 false}
!85 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 133, i32 29}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 172, i32 3}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @qcom_pcie_ep_core_reset._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @qcom_pcie_ep_core_reset._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 180, i32 3}
!93 = !{ptr @qcom_pcie_ep_core_reset._entry.36, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @qcom_pcie_ep_core_reset._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 555, i32 38}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 562, i32 6}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 564, i32 3}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @qcom_pcie_ep_enable_irq_resources._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @qcom_pcie_ep_enable_irq_resources._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 573, i32 6}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 575, i32 3}
!108 = !{ptr @qcom_pcie_ep_enable_irq_resources._entry.44, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @qcom_pcie_ep_enable_irq_resources._entry_ptr.46, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 498, i32 3}
!112 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug309, !111, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 501, i32 3}
!117 = !{ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug315, !116, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 504, i32 3}
!120 = !{ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug321, !119, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 511, i32 3}
!123 = !{ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug327, !122, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 518, i32 3}
!126 = !{ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug333, !125, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 522, i32 3}
!129 = !{ptr @qcom_pcie_ep_global_irq_thread.__UNIQUE_ID_ddebug334, !128, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 537, i32 3}
!132 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @qcom_pcie_ep_perst_irq_thread.__UNIQUE_ID_ddebug335, !131, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 540, i32 3}
!136 = !{ptr @qcom_pcie_ep_perst_irq_thread.__UNIQUE_ID_ddebug336, !135, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 375, i32 3}
!139 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @qcom_pcie_perst_assert.__UNIQUE_ID_ddebug303, !138, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 337, i32 3}
!143 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @qcom_pcie_perst_deassert._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @qcom_pcie_perst_deassert._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @qcom_pcie_ep_match, !147, !"qcom_pcie_ep_match", i1 false, i1 false}
!147 = !{!"../drivers/pci/controller/dwc/pcie-qcom-ep.c", i32 702, i32 34}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i64 6014399}
!158 = !{i64 6013981}
!159 = !{i64 2148740203, i64 2148740208, i64 2148740221, i64 2148740265, i64 2148740299, i64 2148740320}
