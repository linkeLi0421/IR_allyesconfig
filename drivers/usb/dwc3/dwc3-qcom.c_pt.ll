; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/dwc3-qcom.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-qcom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.software_node = type { ptr, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.84 }
%union.anon.84 = type { %union.anon.85 }
%union.anon.85 = type { [1 x i64] }
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
%struct.dwc3_qcom = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, ptr, %struct.notifier_block, %struct.notifier_block, ptr, i32, i8, i8, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_acpi_pdata = type { i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_dwc3_qcom__295_981_dwc3_qcom_driver_init6 = internal global ptr @dwc3_qcom_driver_init, section ".initcall6.init", align 4
@dwc3_qcom_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dwc3_qcom_probe, ptr @dwc3_qcom_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dwc3_qcom_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_qcom_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dwc3_qcom_driver_exit = internal global ptr @dwc3_qcom_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file296 = internal constant [42 x i8] c"dwc3_qcom.file=drivers/usb/dwc3/dwc3-qcom\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [25 x i8] c"dwc3_qcom.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [55 x i8] c"dwc3_qcom.description=DesignWare DWC3 QCOM Glue Driver\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dwc3-qcom\00", [22 x i8] zeroinitializer }, align 32
@dwc3_qcom_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@dwc3_qcom_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dwc3_qcom_pm_suspend, ptr @dwc3_qcom_pm_resume, ptr @dwc3_qcom_pm_suspend, ptr @dwc3_qcom_pm_resume, ptr @dwc3_qcom_pm_suspend, ptr @dwc3_qcom_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_qcom_runtime_suspend, ptr @dwc3_qcom_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@dwc3_qcom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 730, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no supporting ACPI device data\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwc3_qcom_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/dwc3/dwc3-qcom.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc3_qcom_probe._entry_ptr = internal global ptr @dwc3_qcom_probe._entry, section ".printk_index", align 4
@dwc3_qcom_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 738, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get resets, err=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc3_qcom_probe._entry_ptr.8 = internal global ptr @dwc3_qcom_probe._entry.6, section ".printk_index", align 4
@dwc3_qcom_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 744, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to assert resets, err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@dwc3_qcom_probe._entry_ptr.11 = internal global ptr @dwc3_qcom_probe._entry.9, section ".printk_index", align 4
@dwc3_qcom_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 752, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to deassert resets, err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@dwc3_qcom_probe._entry_ptr.14 = internal global ptr @dwc3_qcom_probe._entry.12, section ".printk_index", align 4
@dwc3_qcom_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 758, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get clocks\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc3_qcom_probe._entry_ptr.17 = internal global ptr @dwc3_qcom_probe._entry.15, section ".printk_index", align 4
@dwc3_qcom_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 779, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create URS USB platdev\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc3_qcom_probe._entry_ptr.20 = internal global ptr @dwc3_qcom_probe._entry.18, section ".printk_index", align 4
@dwc3_qcom_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 796, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to setup IRQs, err=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc3_qcom_probe._entry_ptr.23 = internal global ptr @dwc3_qcom_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcom,select-utmi-as-pipe-clk\00", [35 x i8] zeroinitializer }, align 32
@dwc3_qcom_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 815, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register DWC3 Core, err=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@dwc3_qcom_probe._entry_ptr.27 = internal global ptr @dwc3_qcom_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"URS%d\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"USB%d\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hs_phy_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom_dwc3 HS\00", [19 x i8] zeroinitializer }, align 32
@dwc3_qcom_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hs_phy_irq failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwc3_qcom_setup_irq\00", [44 x i8] zeroinitializer }, align 32
@dwc3_qcom_setup_irq._entry_ptr = internal global ptr @dwc3_qcom_setup_irq._entry, section ".printk_index", align 4
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dp_hs_phy_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_dwc3 DP_HS\00", [16 x i8] zeroinitializer }, align 32
@dwc3_qcom_setup_irq._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.3, i32 485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dp_hs_phy_irq failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc3_qcom_setup_irq._entry_ptr.38 = internal global ptr @dwc3_qcom_setup_irq._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dm_hs_phy_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_dwc3 DM_HS\00", [16 x i8] zeroinitializer }, align 32
@dwc3_qcom_setup_irq._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.33, ptr @.str.3, i32 500, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dm_hs_phy_irq failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc3_qcom_setup_irq._entry_ptr.43 = internal global ptr @dwc3_qcom_setup_irq._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ss_phy_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom_dwc3 SS\00", [19 x i8] zeroinitializer }, align 32
@dwc3_qcom_setup_irq._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.33, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ss_phy_irq failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc3_qcom_setup_irq._entry_ptr.48 = internal global ptr @dwc3_qcom_setup_irq._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snps,dwc3\00", [22 x i8] zeroinitializer }, align 32
@dwc3_qcom_of_register_core._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 662, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find dwc3 core child\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dwc3_qcom_of_register_core\00", [37 x i8] zeroinitializer }, align 32
@dwc3_qcom_of_register_core._entry_ptr = internal global ptr @dwc3_qcom_of_register_core._entry, section ".printk_index", align 4
@dwc3_qcom_of_register_core._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 668, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register dwc3 core - %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dwc3_qcom_of_register_core._entry_ptr.54 = internal global ptr @dwc3_qcom_of_register_core._entry.52, section ".printk_index", align 4
@dwc3_qcom_of_register_core._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get dwc3 platform device\0A\00", [60 x i8] zeroinitializer }, align 32
@dwc3_qcom_of_register_core._entry_ptr.57 = internal global ptr @dwc3_qcom_of_register_core._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc3\00", [27 x i8] zeroinitializer }, align 32
@dwc3_qcom_acpi_register_core._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get memory resource\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dwc3_qcom_acpi_register_core\00", [35 x i8] zeroinitializer }, align 32
@dwc3_qcom_acpi_register_core._entry_ptr = internal global ptr @dwc3_qcom_acpi_register_core._entry, section ".printk_index", align 4
@dwc3_qcom_acpi_register_core._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 628, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add resources\0A\00", [39 x i8] zeroinitializer }, align 32
@dwc3_qcom_acpi_register_core._entry_ptr.63 = internal global ptr @dwc3_qcom_acpi_register_core._entry.61, section ".printk_index", align 4
@dwc3_qcom_swnode = internal constant { %struct.software_node, [20 x i8] } { %struct.software_node { ptr null, ptr null, ptr @dwc3_qcom_acpi_properties }, [20 x i8] zeroinitializer }, align 32
@dwc3_qcom_acpi_register_core._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 634, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add properties\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc3_qcom_acpi_register_core._entry_ptr.66 = internal global ptr @dwc3_qcom_acpi_register_core._entry.64, section ".printk_index", align 4
@dwc3_qcom_acpi_register_core._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.3, i32 640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to add device\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc3_qcom_acpi_register_core._entry_ptr.69 = internal global ptr @dwc3_qcom_acpi_register_core._entry.67, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dr_mode\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@dwc3_qcom_acpi_properties = internal constant { <{ { ptr, i32, i8, i32, { { [2 x ptr] } } }, %struct.property_entry }>, [48 x i8] } { <{ { ptr, i32, i8, i32, { { [2 x ptr] } } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { { [2 x ptr] } } } { ptr @.str.70, i32 4, i8 1, i32 4, { { [2 x ptr] } } { { [2 x ptr] } { [2 x ptr] [ptr @.str.71, ptr null] } } }, %struct.property_entry zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-ddr\00", [24 x i8] zeroinitializer }, align 32
@dwc3_qcom_interconnect_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get usb-ddr path: %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dwc3_qcom_interconnect_init\00", [36 x i8] zeroinitializer }, align 32
@dwc3_qcom_interconnect_init._entry_ptr = internal global ptr @dwc3_qcom_interconnect_init._entry, section ".printk_index", align 4
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apps-usb\00", [23 x i8] zeroinitializer }, align 32
@dwc3_qcom_interconnect_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.75, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get apps-usb path: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc3_qcom_interconnect_init._entry_ptr.79 = internal global ptr @dwc3_qcom_interconnect_init._entry.77, section ".printk_index", align 4
@dwc3_qcom_interconnect_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.75, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to set bandwidth for usb-ddr path: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@dwc3_qcom_interconnect_init._entry_ptr.82 = internal global ptr @dwc3_qcom_interconnect_init._entry.80, section ".printk_index", align 4
@dwc3_qcom_interconnect_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.75, ptr @.str.3, i32 280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to set bandwidth for apps-usb path: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@dwc3_qcom_interconnect_init._entry_ptr.85 = internal global ptr @dwc3_qcom_interconnect_init._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extcon\00", [25 x i8] zeroinitializer }, align 32
@dwc3_qcom_register_extcon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VBUS notifier register failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dwc3_qcom_register_extcon\00", [38 x i8] zeroinitializer }, align 32
@dwc3_qcom_register_extcon._entry_ptr = internal global ptr @dwc3_qcom_register_extcon._entry, section ".printk_index", align 4
@dwc3_qcom_register_extcon._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Host notifier register failed\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc3_qcom_register_extcon._entry_ptr.91 = internal global ptr @dwc3_qcom_register_extcon._entry.89, section ".printk_index", align 4
@dwc3_qcom_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HS-PHY not in L2\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwc3_qcom_suspend\00", [46 x i8] zeroinitializer }, align 32
@dwc3_qcom_suspend._entry_ptr = internal global ptr @dwc3_qcom_suspend._entry, section ".printk_index", align 4
@dwc3_qcom_suspend._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.3, i32 362, ptr @.str.96, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to disable interconnect: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dwc3_qcom_suspend._entry_ptr.97 = internal global ptr @dwc3_qcom_suspend._entry.94, section ".printk_index", align 4
@dwc3_qcom_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 394, ptr @.str.96, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable interconnect: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwc3_qcom_resume\00", [47 x i8] zeroinitializer }, align 32
@dwc3_qcom_resume._entry_ptr = internal global ptr @dwc3_qcom_resume._entry, section ".printk_index", align 4
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"dwc3_qcom_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 970, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 974, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"dwc3_qcom_of_match\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 928, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"dwc3_qcom_dev_pm_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 922, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 730, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 738, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 744, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 752, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 758, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 779, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 796, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 805, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 815, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 694, i32 45 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 699, i32 31 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 460, i32 32 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 468, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 470, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 476, i32 32 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 483, i32 6 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 485, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 491, i32 32 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 498, i32 6 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 500, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 506, i32 32 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 513, i32 6 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 515, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 660, i32 40 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 662, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 668, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 675, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 590, i32 37 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 608, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 628, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"dwc3_qcom_swnode\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 576, i32 35 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 634, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 640, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 572, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [26 x i8] c"dwc3_qcom_acpi_properties\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 571, i32 36 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 250, i32 39 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 252, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 257, i32 40 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 259, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 273, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 280, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 163, i32 43 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 179, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 192, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 355, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 362, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.374 = private constant [32 x i8] c"../drivers/usb/dwc3/dwc3-qcom.c\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 394, i32 3 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_dwc3_qcom_driver_exit, ptr @__initcall__kmod_dwc3_qcom__295_981_dwc3_qcom_driver_init6, ptr @dwc3_qcom_acpi_register_core._entry, ptr @dwc3_qcom_acpi_register_core._entry.61, ptr @dwc3_qcom_acpi_register_core._entry.64, ptr @dwc3_qcom_acpi_register_core._entry.67, ptr @dwc3_qcom_acpi_register_core._entry_ptr, ptr @dwc3_qcom_acpi_register_core._entry_ptr.63, ptr @dwc3_qcom_acpi_register_core._entry_ptr.66, ptr @dwc3_qcom_acpi_register_core._entry_ptr.69, ptr @dwc3_qcom_driver_exit, ptr @dwc3_qcom_interconnect_init._entry, ptr @dwc3_qcom_interconnect_init._entry.77, ptr @dwc3_qcom_interconnect_init._entry.80, ptr @dwc3_qcom_interconnect_init._entry.83, ptr @dwc3_qcom_interconnect_init._entry_ptr, ptr @dwc3_qcom_interconnect_init._entry_ptr.79, ptr @dwc3_qcom_interconnect_init._entry_ptr.82, ptr @dwc3_qcom_interconnect_init._entry_ptr.85, ptr @dwc3_qcom_of_register_core._entry, ptr @dwc3_qcom_of_register_core._entry.52, ptr @dwc3_qcom_of_register_core._entry.55, ptr @dwc3_qcom_of_register_core._entry_ptr, ptr @dwc3_qcom_of_register_core._entry_ptr.54, ptr @dwc3_qcom_of_register_core._entry_ptr.57, ptr @dwc3_qcom_probe._entry, ptr @dwc3_qcom_probe._entry.12, ptr @dwc3_qcom_probe._entry.15, ptr @dwc3_qcom_probe._entry.18, ptr @dwc3_qcom_probe._entry.21, ptr @dwc3_qcom_probe._entry.25, ptr @dwc3_qcom_probe._entry.6, ptr @dwc3_qcom_probe._entry.9, ptr @dwc3_qcom_probe._entry_ptr, ptr @dwc3_qcom_probe._entry_ptr.11, ptr @dwc3_qcom_probe._entry_ptr.14, ptr @dwc3_qcom_probe._entry_ptr.17, ptr @dwc3_qcom_probe._entry_ptr.20, ptr @dwc3_qcom_probe._entry_ptr.23, ptr @dwc3_qcom_probe._entry_ptr.27, ptr @dwc3_qcom_probe._entry_ptr.8, ptr @dwc3_qcom_register_extcon._entry, ptr @dwc3_qcom_register_extcon._entry.89, ptr @dwc3_qcom_register_extcon._entry_ptr, ptr @dwc3_qcom_register_extcon._entry_ptr.91, ptr @dwc3_qcom_resume._entry, ptr @dwc3_qcom_resume._entry_ptr, ptr @dwc3_qcom_setup_irq._entry, ptr @dwc3_qcom_setup_irq._entry.36, ptr @dwc3_qcom_setup_irq._entry.41, ptr @dwc3_qcom_setup_irq._entry.46, ptr @dwc3_qcom_setup_irq._entry_ptr, ptr @dwc3_qcom_setup_irq._entry_ptr.38, ptr @dwc3_qcom_setup_irq._entry_ptr.43, ptr @dwc3_qcom_setup_irq._entry_ptr.48, ptr @dwc3_qcom_suspend._entry, ptr @dwc3_qcom_suspend._entry.94, ptr @dwc3_qcom_suspend._entry_ptr, ptr @dwc3_qcom_suspend._entry_ptr.97, ptr @dwc3_qcom_driver, ptr @.str, ptr @dwc3_qcom_of_match, ptr @dwc3_qcom_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @dwc3_qcom_swnode, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @dwc3_qcom_acpi_properties, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.99], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_setup_irq._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_setup_irq._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_setup_irq._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_of_register_core._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_of_register_core._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_of_register_core._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_acpi_register_core._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_acpi_register_core._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_swnode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_acpi_register_core._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_acpi_register_core._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_acpi_properties to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_interconnect_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_interconnect_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_interconnect_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_interconnect_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_register_extcon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_register_extcon._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_suspend._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_qcom_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_qcom_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_qcom_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_qcom_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %call.i232 = tail call ptr @devm_reset_control_array_get(ptr noundef %dev, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %resets = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %resets to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i232, ptr %resets, align 4
  %cmp.i = icmp ugt ptr %call.i232, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call.i232 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %5) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %call27 = tail call i32 @reset_control_assert(ptr noundef %call.i232) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call27) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end25
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #8
  %6 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resets, align 4
  %call36 = tail call i32 @reset_control_deassert(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call36) #11
  br label %reset_assert

if.end43:                                         ; preds = %if.end34
  %call44 = tail call i32 @of_clk_get_parent_count(ptr noundef %1) #8
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool2.not.i = icmp eq i32 %call44, 0
  %or.cond.i = or i1 %tobool2.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end43.if.end51_crit_edge, label %if.end.i

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end.i:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp.i233 = icmp slt i32 %call44, 0
  br i1 %cmp.i233, label %if.end.i.do.end50_crit_edge, label %if.end4.i

if.end.i.do.end50_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

if.end4.i:                                        ; preds = %if.end.i
  %num_clocks.i = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call44, ptr %num_clocks.i, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call44, i32 4) #8
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !188

devm_kcalloc.exit.thread.i:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %clks66.i = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %clks66.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %clks66.i, align 4
  br label %do.end50

devm_kcalloc.exit.i:                              ; preds = %if.end4.i
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %16, i32 noundef 3520) #8
  %clks.i = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %clks.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i.i, ptr %clks.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool7.not.i, label %devm_kcalloc.exit.i.do.end50_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.do.end50_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %18 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_clocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1176.i = icmp sgt i32 %19, 0
  br i1 %cmp1176.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end51_crit_edge

for.cond.preheader.i.if.end51_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.077.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call12.i = tail call ptr @of_clk_get(ptr noundef nonnull %11, i32 noundef %i.077.i) #8
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %while.cond.preheader.i, label %if.end18.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.077.i)
  %cmp1583.not.i = icmp eq i32 %i.077.i, 0
  br i1 %cmp1583.not.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec84.in.i = phi i32 [ %dec84.i, %while.body.i.while.body.i_crit_edge ], [ %i.077.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec84.i = add nsw i32 %dec84.in.i, -1
  %20 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clks.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %dec84.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_put(ptr noundef %23) #8
  %cmp15.i = icmp sgt i32 %dec84.in.i, 1
  br i1 %cmp15.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %24 = ptrtoint ptr %call12.i to i32
  br label %do.end50

if.end18.i:                                       ; preds = %for.body.i
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call12.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end18.i.clk_prepare_enable.exit.i_crit_edge

if.end18.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end18.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call12.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %if.then3.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call12.i) #8
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end18.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end18.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp20.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp20.i, label %while.cond22.preheader.i, label %clk_prepare_enable.exit.i.for.inc.i_crit_edge

clk_prepare_enable.exit.i.for.inc.i_crit_edge:    ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

while.cond22.preheader.i:                         ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.077.i)
  %cmp2480.not.i = icmp eq i32 %i.077.i, 0
  br i1 %cmp2480.not.i, label %while.cond22.preheader.i.while.end30.i_crit_edge, label %while.cond22.preheader.i.while.body25.i_crit_edge

while.cond22.preheader.i.while.body25.i_crit_edge: ; preds = %while.cond22.preheader.i
  br label %while.body25.i

while.cond22.preheader.i.while.end30.i_crit_edge: ; preds = %while.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end30.i

while.body25.i:                                   ; preds = %while.body25.i.while.body25.i_crit_edge, %while.cond22.preheader.i.while.body25.i_crit_edge
  %dec2381.in.i = phi i32 [ %dec2381.i, %while.body25.i.while.body25.i_crit_edge ], [ %i.077.i, %while.cond22.preheader.i.while.body25.i_crit_edge ]
  %dec2381.i = add nsw i32 %dec2381.in.i, -1
  %25 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clks.i, align 4
  %arrayidx27.i = getelementptr ptr, ptr %26, i32 %dec2381.i
  %27 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx27.i, align 4
  tail call void @clk_disable(ptr noundef %28) #8
  tail call void @clk_unprepare(ptr noundef %28) #8
  %29 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clks.i, align 4
  %arrayidx29.i = getelementptr ptr, ptr %30, i32 %dec2381.i
  %31 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx29.i, align 4
  tail call void @clk_put(ptr noundef %32) #8
  %cmp24.i = icmp sgt i32 %dec2381.in.i, 1
  br i1 %cmp24.i, label %while.body25.i.while.body25.i_crit_edge, label %while.body25.i.while.end30.i_crit_edge

while.body25.i.while.end30.i_crit_edge:           ; preds = %while.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end30.i

while.body25.i.while.body25.i_crit_edge:          ; preds = %while.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body25.i

while.end30.i:                                    ; preds = %while.body25.i.while.end30.i_crit_edge, %while.cond22.preheader.i.while.end30.i_crit_edge
  tail call void @clk_put(ptr noundef %call12.i) #8
  br label %do.end50

for.inc.i:                                        ; preds = %clk_prepare_enable.exit.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge
  %33 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clks.i, align 4
  %arrayidx33.i = getelementptr ptr, ptr %34, i32 %i.077.i
  %35 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call12.i, ptr %arrayidx33.i, align 4
  %inc.i = add nuw nsw i32 %i.077.i, 1
  %36 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_clocks.i, align 4
  %cmp11.i = icmp slt i32 %inc.i, %37
  br i1 %cmp11.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end51_crit_edge

for.inc.i.if.end51_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end50:                                         ; preds = %while.end30.i, %while.end.i, %devm_kcalloc.exit.i.do.end50_crit_edge, %devm_kcalloc.exit.thread.i, %if.end.i.do.end50_crit_edge
  %retval.2.i297 = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.do.end50_crit_edge ], [ %call44, %if.end.i.do.end50_crit_edge ], [ %retval.0.i.i, %while.end30.i ], [ %24, %while.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %reset_assert

if.end51:                                         ; preds = %for.inc.i.if.end51_crit_edge, %for.cond.preheader.i.if.end51_crit_edge, %if.end43.if.end51_crit_edge
  %call52 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool53.not = icmp eq ptr %1, null
  br i1 %tobool53.not, label %if.else, label %if.end51.if.end82_crit_edge

if.end51.if.end82_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.else:                                          ; preds = %if.end51
  %call55 = tail call ptr @kmemdup(ptr noundef %call52, i32 noundef 32, i32 noundef 3264) #8
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.else.cleanup_crit_edge, label %if.end58

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %if.else
  %38 = ptrtoint ptr %call52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call52, align 4
  %acpi_pdata59 = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 15
  %40 = ptrtoint ptr %acpi_pdata59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %acpi_pdata59, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add = add i32 %43, %39
  %44 = ptrtoint ptr %call55 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add, ptr %call55, align 4
  %45 = load ptr, ptr %acpi_pdata59, align 4
  %qscratch_base_size = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %qscratch_base_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qscratch_base_size, align 4
  %add63 = add i32 %47, %add
  %end = getelementptr inbounds %struct.resource, ptr %call55, i32 0, i32 1
  %48 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add63, ptr %end, align 4
  %49 = load ptr, ptr %acpi_pdata59, align 4
  %is_urs = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %is_urs to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_urs, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool65.not = icmp eq i8 %51, 0
  br i1 %tobool65.not, label %if.end58.if.end82_crit_edge, label %if.then66

if.end58.if.end82_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then66:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @dwc3_qcom_create_urs_usb_platdev(ptr noundef %dev)
  %urs_usb = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 3
  %52 = ptrtoint ptr %urs_usb to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %urs_usb, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  %53 = ptrtoint ptr %urs_usb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %urs_usb, align 4
  %tobool75.not = icmp eq ptr %54, null
  %55 = ptrtoint ptr %54 to i32
  %spec.select = select i1 %tobool75.not, i32 -19, i32 %55
  br label %cleanup

if.end82:                                         ; preds = %if.end58.if.end82_crit_edge, %if.end51.if.end82_crit_edge
  %parent_res.0 = phi ptr [ %call55, %if.end58.if.end82_crit_edge ], [ %call52, %if.end51.if.end82_crit_edge ]
  %call83 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %parent_res.0) #8
  %qscratch_base = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 1
  %56 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call83, ptr %qscratch_base, align 4
  %cmp.i234 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i234, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %call83 to i32
  br label %clk_disable

if.end89:                                         ; preds = %if.end82
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i, align 4
  %acpi_pdata.i = getelementptr inbounds %struct.dwc3_qcom, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %acpi_pdata.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %acpi_pdata.i, align 4
  %tobool.not.i235 = icmp eq ptr %61, null
  br i1 %tobool.not.i235, label %if.end89.cond.end.i_crit_edge, label %cond.true.i

if.end89.cond.end.i_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %hs_phy_irq_index.i = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %hs_phy_irq_index.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hs_phy_irq_index.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end89.cond.end.i_crit_edge
  %cond.i = phi i32 [ %63, %cond.true.i ], [ -1, %if.end89.cond.end.i_crit_edge ]
  %urs_usb.i.i = getelementptr inbounds %struct.dwc3_qcom, ptr %59, i32 0, i32 3
  %64 = ptrtoint ptr %urs_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %urs_usb.i.i, align 4
  %tobool.not.i.i236 = icmp eq ptr %65, null
  %pdev..i.i = select i1 %tobool.not.i.i236, ptr %pdev, ptr %65
  %66 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %of_node, align 8
  %tobool2.not.i.i237 = icmp eq ptr %67, null
  br i1 %tobool2.not.i.i237, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev..i.i, ptr noundef nonnull @.str.30) #8
  br label %dwc3_qcom_get_irq.exit.i

if.else.i.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 @platform_get_irq(ptr noundef %pdev..i.i, i32 noundef %cond.i) #8
  br label %dwc3_qcom_get_irq.exit.i

dwc3_qcom_get_irq.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  %ret.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i ], [ %call4.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp.i238 = icmp sgt i32 %ret.0.i.i, 0
  br i1 %cmp.i238, label %if.then.i, label %dwc3_qcom_get_irq.exit.i.if.end6.i_crit_edge

dwc3_qcom_get_irq.exit.i.if.end6.i_crit_edge:     ; preds = %dwc3_qcom_get_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i:                                        ; preds = %dwc3_qcom_get_irq.exit.i
  tail call void @irq_modify_status(i32 noundef %ret.0.i.i, i32 noundef 0, i32 noundef 4096) #8
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %59, align 4
  %call2.i = tail call i32 @devm_request_threaded_irq(ptr noundef %69, i32 noundef %ret.0.i.i, ptr noundef null, ptr noundef nonnull @qcom_dwc3_resume_irq, i32 noundef 8196, ptr noundef nonnull @.str.31, ptr noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i239, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.32, i32 noundef %call2.i) #11
  br label %do.end95

if.end.i239:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %hs_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %59, i32 0, i32 7
  %72 = ptrtoint ptr %hs_phy_irq.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %ret.0.i.i, ptr %hs_phy_irq.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i239, %dwc3_qcom_get_irq.exit.i.if.end6.i_crit_edge
  br i1 %tobool.not.i235, label %if.end6.i.cond.end10.i_crit_edge, label %cond.true8.i

if.end6.i.cond.end10.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end10.i

cond.true8.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp_hs_phy_irq_index.i = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %61, i32 0, i32 4
  %73 = ptrtoint ptr %dp_hs_phy_irq_index.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dp_hs_phy_irq_index.i, align 4
  br label %cond.end10.i

cond.end10.i:                                     ; preds = %cond.true8.i, %if.end6.i.cond.end10.i_crit_edge
  %cond11.i = phi i32 [ %74, %cond.true8.i ], [ -1, %if.end6.i.cond.end10.i_crit_edge ]
  %75 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_data.i.i, align 4
  %urs_usb.i118.i = getelementptr inbounds %struct.dwc3_qcom, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %urs_usb.i118.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %urs_usb.i118.i, align 4
  %tobool.not.i119.i = icmp eq ptr %78, null
  %pdev..i120.i = select i1 %tobool.not.i119.i, ptr %pdev, ptr %78
  %79 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %of_node, align 8
  %tobool2.not.i122.i = icmp eq ptr %80, null
  br i1 %tobool2.not.i122.i, label %if.else.i126.i, label %if.then.i124.i

if.then.i124.i:                                   ; preds = %cond.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i123.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev..i120.i, ptr noundef nonnull @.str.34) #8
  br label %dwc3_qcom_get_irq.exit128.i

if.else.i126.i:                                   ; preds = %cond.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i125.i = tail call i32 @platform_get_irq(ptr noundef %pdev..i120.i, i32 noundef %cond11.i) #8
  br label %dwc3_qcom_get_irq.exit128.i

dwc3_qcom_get_irq.exit128.i:                      ; preds = %if.else.i126.i, %if.then.i124.i
  %ret.0.i127.i = phi i32 [ %call3.i123.i, %if.then.i124.i ], [ %call4.i125.i, %if.else.i126.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i127.i)
  %cmp13.i = icmp sgt i32 %ret.0.i127.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %dwc3_qcom_get_irq.exit128.i.if.end24.i_crit_edge

dwc3_qcom_get_irq.exit128.i.if.end24.i_crit_edge: ; preds = %dwc3_qcom_get_irq.exit128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then14.i:                                      ; preds = %dwc3_qcom_get_irq.exit128.i
  tail call void @irq_modify_status(i32 noundef %ret.0.i127.i, i32 noundef 0, i32 noundef 4096) #8
  %81 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %59, align 4
  %call16.i = tail call i32 @devm_request_threaded_irq(ptr noundef %82, i32 noundef %ret.0.i127.i, ptr noundef null, ptr noundef nonnull @qcom_dwc3_resume_irq, i32 noundef 8196, ptr noundef nonnull @.str.35, ptr noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end23.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.37, i32 noundef %call16.i) #11
  br label %do.end95

if.end23.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp_hs_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %59, i32 0, i32 8
  %85 = ptrtoint ptr %dp_hs_phy_irq.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %ret.0.i127.i, ptr %dp_hs_phy_irq.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end23.i, %dwc3_qcom_get_irq.exit128.i.if.end24.i_crit_edge
  br i1 %tobool.not.i235, label %if.end24.i.cond.end28.i_crit_edge, label %cond.true26.i

if.end24.i.cond.end28.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end28.i

cond.true26.i:                                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %dm_hs_phy_irq_index.i = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %61, i32 0, i32 5
  %86 = ptrtoint ptr %dm_hs_phy_irq_index.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dm_hs_phy_irq_index.i, align 4
  br label %cond.end28.i

cond.end28.i:                                     ; preds = %cond.true26.i, %if.end24.i.cond.end28.i_crit_edge
  %cond29.i = phi i32 [ %87, %cond.true26.i ], [ -1, %if.end24.i.cond.end28.i_crit_edge ]
  %88 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver_data.i.i, align 4
  %urs_usb.i130.i = getelementptr inbounds %struct.dwc3_qcom, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %urs_usb.i130.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %urs_usb.i130.i, align 4
  %tobool.not.i131.i = icmp eq ptr %91, null
  %pdev..i132.i = select i1 %tobool.not.i131.i, ptr %pdev, ptr %91
  %92 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %of_node, align 8
  %tobool2.not.i134.i = icmp eq ptr %93, null
  br i1 %tobool2.not.i134.i, label %if.else.i138.i, label %if.then.i136.i

if.then.i136.i:                                   ; preds = %cond.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i135.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev..i132.i, ptr noundef nonnull @.str.39) #8
  br label %dwc3_qcom_get_irq.exit140.i

if.else.i138.i:                                   ; preds = %cond.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i137.i = tail call i32 @platform_get_irq(ptr noundef %pdev..i132.i, i32 noundef %cond29.i) #8
  br label %dwc3_qcom_get_irq.exit140.i

dwc3_qcom_get_irq.exit140.i:                      ; preds = %if.else.i138.i, %if.then.i136.i
  %ret.0.i139.i = phi i32 [ %call3.i135.i, %if.then.i136.i ], [ %call4.i137.i, %if.else.i138.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i139.i)
  %cmp31.i = icmp sgt i32 %ret.0.i139.i, 0
  br i1 %cmp31.i, label %if.then32.i, label %dwc3_qcom_get_irq.exit140.i.if.end42.i_crit_edge

dwc3_qcom_get_irq.exit140.i.if.end42.i_crit_edge: ; preds = %dwc3_qcom_get_irq.exit140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then32.i:                                      ; preds = %dwc3_qcom_get_irq.exit140.i
  tail call void @irq_modify_status(i32 noundef %ret.0.i139.i, i32 noundef 0, i32 noundef 4096) #8
  %94 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %59, align 4
  %call34.i = tail call i32 @devm_request_threaded_irq(ptr noundef %95, i32 noundef %ret.0.i139.i, ptr noundef null, ptr noundef nonnull @qcom_dwc3_resume_irq, i32 noundef 8196, ptr noundef nonnull @.str.40, ptr noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end41.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.42, i32 noundef %call34.i) #11
  br label %do.end95

if.end41.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  %dm_hs_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %59, i32 0, i32 9
  %98 = ptrtoint ptr %dm_hs_phy_irq.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %ret.0.i139.i, ptr %dm_hs_phy_irq.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end41.i, %dwc3_qcom_get_irq.exit140.i.if.end42.i_crit_edge
  br i1 %tobool.not.i235, label %if.end42.i.cond.end46.i_crit_edge, label %cond.true44.i

if.end42.i.cond.end46.i_crit_edge:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end46.i

cond.true44.i:                                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %ss_phy_irq_index.i = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %61, i32 0, i32 6
  %99 = ptrtoint ptr %ss_phy_irq_index.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ss_phy_irq_index.i, align 4
  br label %cond.end46.i

cond.end46.i:                                     ; preds = %cond.true44.i, %if.end42.i.cond.end46.i_crit_edge
  %cond47.i = phi i32 [ %100, %cond.true44.i ], [ -1, %if.end42.i.cond.end46.i_crit_edge ]
  %101 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %driver_data.i.i, align 4
  %urs_usb.i142.i = getelementptr inbounds %struct.dwc3_qcom, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %urs_usb.i142.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %urs_usb.i142.i, align 4
  %tobool.not.i143.i = icmp eq ptr %104, null
  %pdev..i144.i = select i1 %tobool.not.i143.i, ptr %pdev, ptr %104
  %105 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %of_node, align 8
  %tobool2.not.i146.i = icmp eq ptr %106, null
  br i1 %tobool2.not.i146.i, label %if.else.i150.i, label %if.then.i148.i

if.then.i148.i:                                   ; preds = %cond.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i147.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev..i144.i, ptr noundef nonnull @.str.44) #8
  br label %dwc3_qcom_get_irq.exit152.i

if.else.i150.i:                                   ; preds = %cond.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i149.i = tail call i32 @platform_get_irq(ptr noundef %pdev..i144.i, i32 noundef %cond47.i) #8
  br label %dwc3_qcom_get_irq.exit152.i

dwc3_qcom_get_irq.exit152.i:                      ; preds = %if.else.i150.i, %if.then.i148.i
  %ret.0.i151.i = phi i32 [ %call3.i147.i, %if.then.i148.i ], [ %call4.i149.i, %if.else.i150.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i151.i)
  %cmp49.i = icmp sgt i32 %ret.0.i151.i, 0
  br i1 %cmp49.i, label %if.then50.i, label %dwc3_qcom_get_irq.exit152.i.if.end96_crit_edge

dwc3_qcom_get_irq.exit152.i.if.end96_crit_edge:   ; preds = %dwc3_qcom_get_irq.exit152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then50.i:                                      ; preds = %dwc3_qcom_get_irq.exit152.i
  tail call void @irq_modify_status(i32 noundef %ret.0.i151.i, i32 noundef 0, i32 noundef 4096) #8
  %107 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %59, align 4
  %call52.i = tail call i32 @devm_request_threaded_irq(ptr noundef %108, i32 noundef %ret.0.i151.i, ptr noundef null, ptr noundef nonnull @qcom_dwc3_resume_irq, i32 noundef 8196, ptr noundef nonnull @.str.45, ptr noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end59.i, label %do.end57.i

do.end57.i:                                       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.47, i32 noundef %call52.i) #11
  br label %do.end95

if.end59.i:                                       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  %ss_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %59, i32 0, i32 10
  %111 = ptrtoint ptr %ss_phy_irq.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %ret.0.i151.i, ptr %ss_phy_irq.i, align 4
  br label %if.end96

do.end95:                                         ; preds = %do.end57.i, %do.end39.i, %do.end21.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call52.i, %do.end57.i ], [ %call34.i, %do.end39.i ], [ %call16.i, %do.end21.i ], [ %call2.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i.ph) #11
  br label %clk_disable

if.end96:                                         ; preds = %if.end59.i, %dwc3_qcom_get_irq.exit152.i.if.end96_crit_edge
  %call.i240 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  br i1 %call.i240, label %if.then99, label %if.end96.if.end100_crit_edge

if.end96.if.end100_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %113, i32 8
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %115 = or i32 %114, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %115) #8, !srcloc !193
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #8
  %117 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %118, i32 8
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %120 = or i32 %119, 150994944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %120) #8, !srcloc !193
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #8
  %122 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %123, i32 8
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %125 = and i32 %124, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %125) #8, !srcloc !193
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end96.if.end100_crit_edge
  %127 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %driver_data.i.i, align 4
  br i1 %tobool53.not, label %if.else104, label %if.then102

if.then102:                                       ; preds = %if.end100
  %129 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %of_node, align 8
  %call3.i = tail call ptr @of_get_compatible_child(ptr noundef %130, ptr noundef nonnull @.str.49) #8
  %tobool.not.i243 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i243, label %do.end.i244, label %if.end.i245

do.end.i244:                                      ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #11
  br label %do.end111

if.end.i245:                                      ; preds = %if.then102
  %call4.i = tail call i32 @of_platform_populate(ptr noundef %130, ptr noundef null, ptr noundef null, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end10.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %call4.i) #11
  br label %if.end106.thread308

if.end10.i:                                       ; preds = %if.end.i245
  %call11.i = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call3.i) #8
  %dwc3.i = getelementptr inbounds %struct.dwc3_qcom, ptr %128, i32 0, i32 2
  %131 = ptrtoint ptr %dwc3.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call11.i, ptr %dwc3.i, align 4
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %if.then14.i246, label %if.end106

if.then14.i246:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56) #11
  br label %if.end106.thread308

if.else104:                                       ; preds = %if.end100
  %urs_usb.i = getelementptr inbounds %struct.dwc3_qcom, ptr %128, i32 0, i32 3
  %132 = ptrtoint ptr %urs_usb.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %urs_usb.i, align 4
  %tobool.not.i249 = icmp eq ptr %133, null
  %pdev..i = select i1 %tobool.not.i249, ptr %pdev, ptr %133
  %call3.i250 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.58, i32 noundef -2) #8
  %dwc3.i251 = getelementptr inbounds %struct.dwc3_qcom, ptr %128, i32 0, i32 2
  %134 = ptrtoint ptr %dwc3.i251 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call3.i250, ptr %dwc3.i251, align 4
  %tobool5.not.i252 = icmp eq ptr %call3.i250, null
  br i1 %tobool5.not.i252, label %if.else104.do.end111_crit_edge, label %if.end.i253

if.else104.do.end111_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end111

if.end.i253:                                      ; preds = %if.else104
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %call3.i250, i32 0, i32 3, i32 1
  %135 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %dev, ptr %parent.i, align 8
  %type.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 4
  %136 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %type.i, align 4
  %138 = ptrtoint ptr %dwc3.i251 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dwc3.i251, align 4
  %type10.i = getelementptr inbounds %struct.platform_device, ptr %139, i32 0, i32 3, i32 4
  %140 = ptrtoint ptr %type10.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %137, ptr %type10.i, align 4
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %141 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dma_mask.i, align 8
  %143 = load ptr, ptr %dwc3.i251, align 4
  %dma_mask13.i = getelementptr inbounds %struct.platform_device, ptr %143, i32 0, i32 3, i32 18
  %144 = ptrtoint ptr %dma_mask13.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %142, ptr %dma_mask13.i, align 8
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %145 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dma_parms.i, align 4
  %147 = load ptr, ptr %dwc3.i251, align 4
  %dma_parms16.i = getelementptr inbounds %struct.platform_device, ptr %147, i32 0, i32 3, i32 22
  %148 = ptrtoint ptr %dma_parms16.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %146, ptr %dma_parms16.i, align 4
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %149 = ptrtoint ptr %coherent_dma_mask.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %coherent_dma_mask.i, align 8
  %151 = load ptr, ptr %dwc3.i251, align 4
  %coherent_dma_mask19.i = getelementptr inbounds %struct.platform_device, ptr %151, i32 0, i32 3, i32 19
  %152 = ptrtoint ptr %coherent_dma_mask19.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %150, ptr %coherent_dma_mask19.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %153 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %153, i32 noundef 3520, i32 noundef 64) #12
  %tobool21.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end24.i254

if.then22.i:                                      ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #10
  %154 = ptrtoint ptr %dwc3.i251 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dwc3.i251, align 4
  tail call void @platform_device_put(ptr noundef %155) #8
  br label %do.end111

if.end24.i254:                                    ; preds = %if.end.i253
  %call25.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %do.end.i255, label %if.end29.i

do.end.i255:                                      ; preds = %if.end24.i254
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59) #11
  br label %out.i

if.end29.i:                                       ; preds = %if.end24.i254
  %flags.i = getelementptr inbounds %struct.resource, ptr %call25.i, i32 0, i32 3
  %156 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags.i, align 4
  %flags30.i = getelementptr inbounds %struct.resource, ptr %call7.i.i.i.i, i32 0, i32 3
  %158 = ptrtoint ptr %flags30.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %flags30.i, align 4
  %159 = ptrtoint ptr %call25.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %call25.i, align 4
  %161 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %call7.i.i.i.i, align 8
  %acpi_pdata.i256 = getelementptr inbounds %struct.dwc3_qcom, ptr %128, i32 0, i32 15
  %162 = ptrtoint ptr %acpi_pdata.i256 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %acpi_pdata.i256, align 4
  %dwc3_core_base_size.i = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %dwc3_core_base_size.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %dwc3_core_base_size.i, align 4
  %add.i = add i32 %165, %160
  %end.i = getelementptr inbounds %struct.resource, ptr %call7.i.i.i.i, i32 0, i32 1
  %166 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %add.i, ptr %end.i, align 4
  %call36.i = tail call i32 @platform_get_irq(ptr noundef %pdev..i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp.i257 = icmp slt i32 %call36.i, 0
  br i1 %cmp.i257, label %if.end29.i.out.i_crit_edge, label %if.end38.i

if.end29.i.out.i_crit_edge:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end38.i:                                       ; preds = %if.end29.i
  %arrayidx39.i = getelementptr %struct.resource, ptr %call7.i.i.i.i, i32 1
  %flags40.i = getelementptr %struct.resource, ptr %call7.i.i.i.i, i32 1, i32 3
  %167 = ptrtoint ptr %flags40.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1024, ptr %flags40.i, align 4
  %end42.i = getelementptr %struct.resource, ptr %call7.i.i.i.i, i32 1, i32 1
  %168 = ptrtoint ptr %end42.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %call36.i, ptr %end42.i, align 4
  %169 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %call36.i, ptr %arrayidx39.i, align 8
  %170 = ptrtoint ptr %dwc3.i251 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dwc3.i251, align 4
  %call46.i = tail call i32 @platform_device_add_resources(ptr noundef %171, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end53.i, label %do.end51.i

do.end51.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #11
  br label %out.i

if.end53.i:                                       ; preds = %if.end38.i
  %172 = ptrtoint ptr %dwc3.i251 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dwc3.i251, align 4
  %dev55.i = getelementptr inbounds %struct.platform_device, ptr %173, i32 0, i32 3
  %call56.i = tail call i32 @device_add_software_node(ptr noundef %dev55.i, ptr noundef nonnull @dwc3_qcom_swnode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %do.end61.i, label %if.end63.i

do.end61.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #11
  br label %out.i

if.end63.i:                                       ; preds = %if.end53.i
  %174 = ptrtoint ptr %dwc3.i251 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dwc3.i251, align 4
  %call65.i = tail call i32 @platform_device_add(ptr noundef %175) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end106.thread304, label %do.end70.i

do.end70.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #11
  %176 = ptrtoint ptr %dwc3.i251 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dwc3.i251, align 4
  %dev73.i = getelementptr inbounds %struct.platform_device, ptr %177, i32 0, i32 3
  tail call void @device_remove_software_node(ptr noundef %dev73.i) #8
  br label %out.i

if.end106.thread304:                              ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %if.end112

out.i:                                            ; preds = %do.end70.i, %do.end61.i, %do.end51.i, %if.end29.i.out.i_crit_edge, %do.end.i255
  %ret.0.i258 = phi i32 [ %call46.i, %do.end51.i ], [ %call56.i, %do.end61.i ], [ %call65.i, %do.end70.i ], [ -19, %do.end.i255 ], [ %call36.i, %if.end29.i.out.i_crit_edge ]
  %178 = ptrtoint ptr %dwc3.i251 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dwc3.i251, align 4
  tail call void @platform_device_put(ptr noundef %179) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %do.end111

if.end106.thread308:                              ; preds = %if.then14.i246, %do.end9.i
  %ret.0.i.ph = phi i32 [ -19, %if.then14.i246 ], [ %call4.i, %do.end9.i ]
  tail call void @of_node_put(ptr noundef nonnull %call3.i) #8
  br label %do.end111

if.end106:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_node_put(ptr noundef nonnull %call3.i) #8
  br label %if.end112

do.end111:                                        ; preds = %if.end106.thread308, %out.i, %if.then22.i, %if.else104.do.end111_crit_edge, %do.end.i244
  %ret.0303 = phi i32 [ %ret.0.i.ph, %if.end106.thread308 ], [ -12, %if.else104.do.end111_crit_edge ], [ -12, %if.then22.i ], [ %ret.0.i258, %out.i ], [ -19, %do.end.i244 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %ret.0303) #11
  br label %depopulate

if.end112:                                        ; preds = %if.end106, %if.end106.thread304
  %180 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %call.i, align 4
  %call2.i260 = tail call ptr @of_icc_get(ptr noundef %181, ptr noundef nonnull @.str.73) #8
  %icc_path_ddr.i = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 19
  %182 = ptrtoint ptr %icc_path_ddr.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call2.i260, ptr %icc_path_ddr.i, align 4
  %cmp.i.i261 = icmp ugt ptr %call2.i260, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i261, label %if.end112.dwc3_qcom_interconnect_init.exit_crit_edge, label %if.end10.i264

if.end112.dwc3_qcom_interconnect_init.exit_crit_edge: ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_qcom_interconnect_init.exit

if.end10.i264:                                    ; preds = %if.end112
  %call11.i263 = tail call ptr @of_icc_get(ptr noundef %181, ptr noundef nonnull @.str.76) #8
  %icc_path_apps.i = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 20
  %183 = ptrtoint ptr %icc_path_apps.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call11.i263, ptr %icc_path_apps.i, align 4
  %cmp.i73.i = icmp ugt ptr %call11.i263, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73.i, label %if.end10.i264.dwc3_qcom_interconnect_init.exit_crit_edge, label %if.end22.i

if.end10.i264.dwc3_qcom_interconnect_init.exit_crit_edge: ; preds = %if.end10.i264
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc3_qcom_interconnect_init.exit

if.end22.i:                                       ; preds = %if.end10.i264
  %dwc3.i265 = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 2
  %184 = ptrtoint ptr %dwc3.i265 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dwc3.i265, align 4
  %dev23.i = getelementptr inbounds %struct.platform_device, ptr %185, i32 0, i32 3
  %call24.i = tail call i32 @usb_get_maximum_speed(ptr noundef %dev23.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call24.i)
  %cmp.i266 = icmp ugt i32 %call24.i, 4
  br i1 %cmp.i266, label %if.end22.i.if.then29.i_crit_edge, label %lor.lhs.false.i

if.end22.i.if.then29.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

lor.lhs.false.i:                                  ; preds = %if.end22.i
  %186 = ptrtoint ptr %dwc3.i265 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dwc3.i265, align 4
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %187, i32 0, i32 3
  %call27.i = tail call i32 @usb_get_maximum_speed(ptr noundef %dev26.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp eq i32 %call27.i, 0
  br i1 %cmp28.i, label %lor.lhs.false.i.if.then29.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then29.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.then29.i:                                      ; preds = %lor.lhs.false.i.if.then29.i_crit_edge, %if.end22.i.if.then29.i_crit_edge
  %188 = ptrtoint ptr %icc_path_ddr.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %icc_path_ddr.i, align 4
  %call31.i = tail call i32 @icc_set_bw(ptr noundef %189, i32 noundef 1000000, i32 noundef 2500000) #8
  br label %if.end34.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %190 = ptrtoint ptr %icc_path_ddr.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %icc_path_ddr.i, align 4
  %call33.i = tail call i32 @icc_set_bw(ptr noundef %191, i32 noundef 240000, i32 noundef 700000) #8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.then29.i
  %ret.0.i267 = phi i32 [ %call31.i, %if.then29.i ], [ %call33.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i267)
  %tobool.not.i268 = icmp eq i32 %ret.0.i267, 0
  br i1 %tobool.not.i268, label %if.end39.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.81, i32 noundef %ret.0.i267) #11
  br label %depopulate

if.end39.i:                                       ; preds = %if.end34.i
  %192 = ptrtoint ptr %icc_path_apps.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %icc_path_apps.i, align 4
  %call41.i = tail call i32 @icc_set_bw(ptr noundef %193, i32 noundef 0, i32 noundef 40000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end39.i.if.end116_crit_edge, label %do.end46.i

if.end39.i.if.end116_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

do.end46.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.84, i32 noundef %call41.i) #11
  br label %depopulate

dwc3_qcom_interconnect_init.exit:                 ; preds = %if.end10.i264.dwc3_qcom_interconnect_init.exit_crit_edge, %if.end112.dwc3_qcom_interconnect_init.exit_crit_edge
  %call2.i260.sink = phi ptr [ %call2.i260, %if.end112.dwc3_qcom_interconnect_init.exit_crit_edge ], [ %call11.i263, %if.end10.i264.dwc3_qcom_interconnect_init.exit_crit_edge ]
  %.str.74.sink = phi ptr [ @.str.74, %if.end112.dwc3_qcom_interconnect_init.exit_crit_edge ], [ @.str.78, %if.end10.i264.dwc3_qcom_interconnect_init.exit_crit_edge ]
  %retval.0.i269.in.in = phi ptr [ %icc_path_ddr.i, %if.end112.dwc3_qcom_interconnect_init.exit_crit_edge ], [ %icc_path_apps.i, %if.end10.i264.dwc3_qcom_interconnect_init.exit_crit_edge ]
  %194 = ptrtoint ptr %call2.i260.sink to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull %.str.74.sink, i32 noundef %194) #11
  %195 = ptrtoint ptr %retval.0.i269.in.in to i32
  call void @__asan_load4_noabort(i32 %195)
  %retval.0.i269.in = load ptr, ptr %retval.0.i269.in.in, align 4
  %retval.0.i269 = ptrtoint ptr %retval.0.i269.in to i32
  %tobool114.not = icmp eq ptr %retval.0.i269.in, null
  br i1 %tobool114.not, label %dwc3_qcom_interconnect_init.exit.if.end116_crit_edge, label %dwc3_qcom_interconnect_init.exit.depopulate_crit_edge

dwc3_qcom_interconnect_init.exit.depopulate_crit_edge: ; preds = %dwc3_qcom_interconnect_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %depopulate

dwc3_qcom_interconnect_init.exit.if.end116_crit_edge: ; preds = %dwc3_qcom_interconnect_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.end116:                                        ; preds = %dwc3_qcom_interconnect_init.exit.if.end116_crit_edge, %if.end39.i.if.end116_crit_edge
  %dwc3 = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 2
  %196 = ptrtoint ptr %dwc3 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dwc3, align 4
  %dev117 = getelementptr inbounds %struct.platform_device, ptr %197, i32 0, i32 3
  %call118 = tail call i32 @usb_get_dr_mode(ptr noundef %dev117) #8
  %mode = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 16
  %198 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %call118, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call118)
  %cmp = icmp eq i32 %call118, 2
  br i1 %cmp, label %if.then120, label %if.end116.if.end121_crit_edge

if.end116.if.end121_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i.i271 = getelementptr i8, ptr %200, i32 48
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i271) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %202 = or i32 %201, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i271, i32 %202) #8, !srcloc !193
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i271) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %204 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i7.i272 = getelementptr i8, ptr %205, i32 16
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i272) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %207 = or i32 %206, 4112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i272, i32 %207) #8, !srcloc !193
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i272) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %if.end116.if.end121_crit_edge
  %209 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %call.i, align 4
  %of_node.i275 = getelementptr inbounds %struct.device, ptr %210, i32 0, i32 27
  %211 = ptrtoint ptr %of_node.i275 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %of_node.i275, align 8
  %call.i.i276 = tail call ptr @of_find_property(ptr noundef %212, ptr noundef nonnull @.str.86, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i276, null
  br i1 %tobool.i.not.i, label %if.end121.if.end125_crit_edge, label %if.end.i279

if.end121.if.end125_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.end.i279:                                      ; preds = %if.end121
  %call2.i277 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %210, i32 noundef 0) #8
  %edev.i = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 11
  %213 = ptrtoint ptr %edev.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call2.i277, ptr %edev.i, align 4
  %cmp.i.i278 = icmp ugt ptr %call2.i277, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i278, label %dwc3_qcom_register_extcon.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i279
  %vbus_nb.i = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 13
  %214 = ptrtoint ptr %vbus_nb.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @dwc3_qcom_vbus_notifier, ptr %vbus_nb.i, align 4
  %call9.i = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %210, i32 noundef 1) #8
  %host_edev10.i = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 12
  %cmp.i80.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i80.i, ptr null, ptr %call9.i
  %215 = ptrtoint ptr %host_edev10.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %spec.store.select.i, ptr %host_edev10.i, align 4
  %216 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %edev.i, align 4
  %call18.i = tail call i32 @devm_extcon_register_notifier(ptr noundef %210, ptr noundef %217, i32 noundef 1, ptr noundef %vbus_nb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp.i280 = icmp slt i32 %call18.i, 0
  br i1 %cmp.i280, label %do.end.i281, label %if.end20.i

do.end.i281:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.87) #11
  br label %interconnect_exit

if.end20.i:                                       ; preds = %if.end8.i
  %218 = ptrtoint ptr %host_edev10.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %host_edev10.i, align 4
  %tobool.not.i282 = icmp eq ptr %219, null
  br i1 %tobool.not.i282, label %if.else.i283, label %if.end20.i.if.end25.i_crit_edge

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else.i283:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %220 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %edev.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i283, %if.end20.i.if.end25.i_crit_edge
  %host_edev.0.i = phi ptr [ %221, %if.else.i283 ], [ %219, %if.end20.i.if.end25.i_crit_edge ]
  %host_nb.i = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 14
  %222 = ptrtoint ptr %host_nb.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @dwc3_qcom_host_notifier, ptr %host_nb.i, align 4
  %call28.i = tail call i32 @devm_extcon_register_notifier(ptr noundef %210, ptr noundef %host_edev.0.i, i32 noundef 2, ptr noundef %host_nb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %do.end33.i, label %if.end34.i285

do.end33.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.90) #11
  br label %interconnect_exit

if.end34.i285:                                    ; preds = %if.end25.i
  %223 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %edev.i, align 4
  %call36.i284 = tail call i32 @extcon_get_state(ptr noundef %224, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i284)
  %tobool37.not.i = icmp eq i32 %call36.i284, 0
  br i1 %tobool37.not.i, label %lor.lhs.false.i286, label %if.end34.i285.if.then40.i_crit_edge

if.end34.i285.if.then40.i_crit_edge:              ; preds = %if.end34.i285
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i

lor.lhs.false.i286:                               ; preds = %if.end34.i285
  %call38.i = tail call i32 @extcon_get_state(ptr noundef %host_edev.0.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %lor.lhs.false.i286.if.then40.i_crit_edge, label %if.else44.i

lor.lhs.false.i286.if.then40.i_crit_edge:         ; preds = %lor.lhs.false.i286
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i

if.then40.i:                                      ; preds = %lor.lhs.false.i286.if.then40.i_crit_edge, %if.end34.i285.if.then40.i_crit_edge
  %225 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %226, i32 48
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %228 = or i32 %227, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %228) #8, !srcloc !193
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %230 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %231, i32 16
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %233 = or i32 %232, 4112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %233) #8, !srcloc !193
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  br label %if.end125.sink.split

if.else44.i:                                      ; preds = %lor.lhs.false.i286
  call void @__sanitizer_cov_trace_pc() #10
  %235 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i.i84.i = getelementptr i8, ptr %236, i32 48
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i84.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %238 = and i32 %237, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.i, i32 %238) #8, !srcloc !193
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i84.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %240 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %241, i32 16
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %243 = and i32 %242, -4113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %243) #8, !srcloc !193
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  br label %if.end125.sink.split

dwc3_qcom_register_extcon.exit:                   ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #10
  %245 = ptrtoint ptr %call2.i277 to i32
  br label %interconnect_exit

if.end125.sink.split:                             ; preds = %if.else44.i, %if.then40.i
  %.sink = phi i32 [ 2, %if.then40.i ], [ 1, %if.else44.i ]
  %246 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %.sink, ptr %mode, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.end125.sink.split, %if.end121.if.end125_crit_edge
  %call127 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #8
  %is_suspended = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 17
  %247 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 0, ptr %is_suspended, align 4
  %call.i288 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  tail call void @pm_runtime_forbid(ptr noundef %dev) #8
  br label %cleanup

interconnect_exit:                                ; preds = %dwc3_qcom_register_extcon.exit, %do.end33.i, %do.end.i281
  %retval.0.i287322 = phi i32 [ %245, %dwc3_qcom_register_extcon.exit ], [ %call28.i, %do.end33.i ], [ %call18.i, %do.end.i281 ]
  %248 = ptrtoint ptr %icc_path_ddr.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %icc_path_ddr.i, align 4
  tail call void @icc_put(ptr noundef %249) #8
  %icc_path_apps.i290 = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 20
  %250 = ptrtoint ptr %icc_path_apps.i290 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %icc_path_apps.i290, align 4
  tail call void @icc_put(ptr noundef %251) #8
  br label %depopulate

depopulate:                                       ; preds = %interconnect_exit, %dwc3_qcom_interconnect_init.exit.depopulate_crit_edge, %do.end46.i, %do.end38.i, %do.end111
  %ret.1 = phi i32 [ %ret.0303, %do.end111 ], [ %retval.0.i269, %dwc3_qcom_interconnect_init.exit.depopulate_crit_edge ], [ %retval.0.i287322, %interconnect_exit ], [ %call41.i, %do.end46.i ], [ %ret.0.i267, %do.end38.i ]
  br i1 %tobool53.not, label %if.else132, label %if.then130

if.then130:                                       ; preds = %depopulate
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_platform_depopulate(ptr noundef %dev) #8
  br label %clk_disable

if.else132:                                       ; preds = %depopulate
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_device_put(ptr noundef %pdev) #8
  br label %clk_disable

clk_disable:                                      ; preds = %if.else132, %if.then130, %do.end95, %if.then86
  %ret.2 = phi i32 [ %57, %if.then86 ], [ %retval.0.i.ph, %do.end95 ], [ %ret.1, %if.then130 ], [ %ret.1, %if.else132 ]
  %num_clocks = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 5
  %252 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %num_clocks, align 4
  %i.0327 = add i32 %253, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0327)
  %cmp134328 = icmp sgt i32 %i.0327, -1
  br i1 %cmp134328, label %for.body.lr.ph, label %clk_disable.reset_assert_crit_edge

clk_disable.reset_assert_crit_edge:               ; preds = %clk_disable
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_assert

for.body.lr.ph:                                   ; preds = %clk_disable
  %clks = getelementptr inbounds %struct.dwc3_qcom, ptr %call.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0329 = phi i32 [ %i.0327, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %254 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %clks, align 4
  %arrayidx = getelementptr ptr, ptr %255, i32 %i.0329
  %256 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %257) #8
  tail call void @clk_unprepare(ptr noundef %257) #8
  %258 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %clks, align 4
  %arrayidx136 = getelementptr ptr, ptr %259, i32 %i.0329
  %260 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx136, align 4
  tail call void @clk_put(ptr noundef %261) #8
  %i.0 = add nsw i32 %i.0329, -1
  %cmp134 = icmp sgt i32 %i.0329, 0
  br i1 %cmp134, label %for.body.for.body_crit_edge, label %for.body.reset_assert_crit_edge

for.body.reset_assert_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_assert

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

reset_assert:                                     ; preds = %for.body.reset_assert_crit_edge, %clk_disable.reset_assert_crit_edge, %do.end50, %do.end41
  %ret.3 = phi i32 [ %call36, %do.end41 ], [ %retval.2.i297, %do.end50 ], [ %ret.2, %clk_disable.reset_assert_crit_edge ], [ %ret.2, %for.body.reset_assert_crit_edge ]
  %262 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %resets, align 4
  %call138 = tail call i32 @reset_control_assert(ptr noundef %263) #8
  br label %cleanup

cleanup:                                          ; preds = %reset_assert, %if.end125, %if.then66, %if.else.cleanup_crit_edge, %do.end32, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then18 ], [ %call27, %do.end32 ], [ %ret.3, %reset_assert ], [ 0, %if.end125 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ %spec.select, %if.then66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dwc3 = getelementptr inbounds %struct.dwc3_qcom, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dwc3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc3, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @device_remove_software_node(ptr noundef %dev2) #8
  tail call void @of_platform_depopulate(ptr noundef %dev1) #8
  %num_clocks = getelementptr inbounds %struct.dwc3_qcom, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clocks, align 4
  %i.019 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.019)
  %cmp20 = icmp sgt i32 %i.019, -1
  br i1 %cmp20, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clks = getelementptr inbounds %struct.dwc3_qcom, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ %i.019, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clks, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.021
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %10 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clks, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 %i.021
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_put(ptr noundef %13) #8
  %i.0 = add nsw i32 %i.021, -1
  %cmp = icmp sgt i32 %i.021, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %num_clocks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %num_clocks, align 4
  %icc_path_ddr.i = getelementptr inbounds %struct.dwc3_qcom, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %icc_path_ddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %icc_path_ddr.i, align 4
  tail call void @icc_put(ptr noundef %16) #8
  %icc_path_apps.i = getelementptr inbounds %struct.dwc3_qcom, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %icc_path_apps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %icc_path_apps.i, align 4
  tail call void @icc_put(ptr noundef %18) #8
  %resets = getelementptr inbounds %struct.dwc3_qcom, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resets, align 4
  %call6 = tail call i32 @reset_control_assert(ptr noundef %20) #8
  tail call void @pm_runtime_allow(ptr noundef %dev1) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_qcom_create_urs_usb_platdev(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %name = alloca [8 x i8], align 8
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #8
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %name, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !198
  %fwnode = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 28
  %2 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwnode, align 4
  %call = tail call ptr @fwnode_get_name(ptr noundef %3) #8
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.28, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 8, ptr noundef nonnull @.str.29, i32 noundef %5)
  %6 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fwnode, align 4
  %call5 = call ptr @fwnode_get_named_child_node(ptr noundef %7, ptr noundef nonnull %name) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_qcom_vbus_override_enable(ptr nocapture noundef readonly %qcom, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qscratch_base = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 1
  %0 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = or i32 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !193
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %5 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i7 = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %8 = or i32 %7, 4112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %8) #8, !srcloc !193
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = and i32 %2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #8, !srcloc !193
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %12 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i10 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %15 = and i32 %14, -4113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %15) #8, !srcloc !193
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_dwc3_resume_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended = getelementptr inbounds %struct.dwc3_qcom, ptr %data, i32 0, i32 18
  %0 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dwc3 = getelementptr inbounds %struct.dwc3_qcom, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %dwc3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %xhci = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xhci, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_software_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_software_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_vbus_notifier(ptr nocapture noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool = icmp ne i32 %event, 0
  tail call fastcc void @dwc3_qcom_vbus_override_enable(ptr noundef %add.ptr, i1 noundef zeroext %tobool)
  %cond = select i1 %tobool, i32 2, i32 1
  %mode = getelementptr i8, ptr %nb, i32 28
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cond, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_host_notifier(ptr nocapture noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool.not = icmp eq i32 %event, 0
  tail call fastcc void @dwc3_qcom_vbus_override_enable(ptr noundef %add.ptr, i1 noundef zeroext %tobool.not)
  %cond = select i1 %tobool.not, i32 2, i32 1
  %mode = getelementptr i8, ptr %nb, i32 16
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cond, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @dwc3_qcom_suspend(ptr noundef %1)
  %pm_suspended = getelementptr inbounds %struct.dwc3_qcom, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %pm_suspended, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @dwc3_qcom_resume(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pm_suspended = getelementptr inbounds %struct.dwc3_qcom, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pm_suspended, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @dwc3_qcom_suspend(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @dwc3_qcom_resume(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_qcom_suspend(ptr nocapture noundef %qcom) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_suspended = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 17
  %0 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_suspended, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %qscratch_base = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 1
  %2 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qscratch_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 88
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %do.end, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %qcom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qcom, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.92) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %num_clocks = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 5
  %8 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_clocks, align 4
  %i.07 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07)
  %cmp8 = icmp sgt i32 %i.07, -1
  br i1 %cmp8, label %for.body.lr.ph, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %clks = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ %i.07, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clks, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.09
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  %i.0 = add nsw i32 %i.09, -1
  %cmp = icmp sgt i32 %i.09, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %icc_path_ddr.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 19
  %14 = ptrtoint ptr %icc_path_ddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %icc_path_ddr.i, align 4
  %call.i = tail call i32 @icc_disable(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.do.end10_crit_edge

for.end.do.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

if.end.i:                                         ; preds = %for.end
  %icc_path_apps.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 20
  %16 = ptrtoint ptr %icc_path_apps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %icc_path_apps.i, align 4
  %call1.i = tail call i32 @icc_disable(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end12_crit_edge, label %if.then3.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %icc_path_ddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %icc_path_ddr.i, align 4
  %call5.i = tail call i32 @icc_enable(ptr noundef %19) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then3.i, %for.end.do.end10_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.end.do.end10_crit_edge ]
  %20 = ptrtoint ptr %qcom to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qcom, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.95, i32 noundef %retval.0.i.ph) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end.i.if.end12_crit_edge
  %22 = ptrtoint ptr %qcom to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qcom, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 1
  %24 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i1 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i1, label %if.end12.if.end16_crit_edge, label %device_may_wakeup.exit

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

device_may_wakeup.exit:                           ; preds = %if.end12
  %wakeup.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 6
  %25 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %26, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end16_crit_edge, label %if.then15

device_may_wakeup.exit.if.end16_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %device_may_wakeup.exit
  %hs_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 7
  %27 = ptrtoint ptr %hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hs_phy_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i2 = icmp eq i32 %28, 0
  br i1 %tobool.not.i2, label %if.then15.if.end.i3_crit_edge, label %if.then.i

if.then15.if.end.i3_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i3

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @enable_irq(i32 noundef %28) #8
  %29 = ptrtoint ptr %hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hs_phy_irq.i, align 4
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %30, i32 noundef 1) #8
  br label %if.end.i3

if.end.i3:                                        ; preds = %if.then.i, %if.then15.if.end.i3_crit_edge
  %dp_hs_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 8
  %31 = ptrtoint ptr %dp_hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dp_hs_phy_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool3.not.i = icmp eq i32 %32, 0
  br i1 %tobool3.not.i, label %if.end.i3.if.end8.i_crit_edge, label %if.then4.i

if.end.i3.if.end8.i_crit_edge:                    ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @enable_irq(i32 noundef %32) #8
  %33 = ptrtoint ptr %dp_hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dp_hs_phy_irq.i, align 4
  %call.i35.i = tail call i32 @irq_set_irq_wake(i32 noundef %34, i32 noundef 1) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i3.if.end8.i_crit_edge
  %dm_hs_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 9
  %35 = ptrtoint ptr %dm_hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dm_hs_phy_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool9.not.i = icmp eq i32 %36, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then10.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @enable_irq(i32 noundef %36) #8
  %37 = ptrtoint ptr %dm_hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dm_hs_phy_irq.i, align 4
  %call.i36.i = tail call i32 @irq_set_irq_wake(i32 noundef %38, i32 noundef 1) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end14.i_crit_edge
  %ss_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 10
  %39 = ptrtoint ptr %ss_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ss_phy_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool15.not.i = icmp eq i32 %40, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end16_crit_edge, label %if.then16.i

if.end14.i.if.end16_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @enable_irq(i32 noundef %40) #8
  %41 = ptrtoint ptr %ss_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ss_phy_irq.i, align 4
  %call.i37.i = tail call i32 @irq_set_irq_wake(i32 noundef %42, i32 noundef 1) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then16.i, %if.end14.i.if.end16_crit_edge, %device_may_wakeup.exit.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %43 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %is_suspended, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_qcom_resume(ptr nocapture noundef %qcom) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_suspended = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 17
  %0 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_suspended, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %qcom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qcom, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.end2_crit_edge, label %device_may_wakeup.exit

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end2_crit_edge, label %if.then1

device_may_wakeup.exit.if.end2_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then1:                                         ; preds = %device_may_wakeup.exit
  %hs_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 7
  %7 = ptrtoint ptr %hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hs_phy_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i33 = icmp eq i32 %8, 0
  br i1 %tobool.not.i33, label %if.then1.if.end.i_crit_edge, label %if.then.i

if.then1.if.end.i_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #8
  %9 = ptrtoint ptr %hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hs_phy_irq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %10) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then1.if.end.i_crit_edge
  %dp_hs_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 8
  %11 = ptrtoint ptr %dp_hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dp_hs_phy_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i = icmp eq i32 %12, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then4.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i35.i = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 0) #8
  %13 = ptrtoint ptr %dp_hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dp_hs_phy_irq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %14) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i.if.end8.i_crit_edge
  %dm_hs_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 9
  %15 = ptrtoint ptr %dm_hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dm_hs_phy_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not.i = icmp eq i32 %16, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then10.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i36.i = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 0) #8
  %17 = ptrtoint ptr %dm_hs_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dm_hs_phy_irq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %18) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end14.i_crit_edge
  %ss_phy_irq.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 10
  %19 = ptrtoint ptr %ss_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ss_phy_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15.not.i = icmp eq i32 %20, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end2_crit_edge, label %if.then16.i

if.end14.i.if.end2_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i37.i = tail call i32 @irq_set_irq_wake(i32 noundef %20, i32 noundef 0) #8
  %21 = ptrtoint ptr %ss_phy_irq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ss_phy_irq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %22) #8
  br label %if.end2

if.end2:                                          ; preds = %if.then16.i, %if.end14.i.if.end2_crit_edge, %device_may_wakeup.exit.if.end2_crit_edge, %if.end.if.end2_crit_edge
  %num_clocks = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 5
  %23 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp49 = icmp sgt i32 %24, 0
  br i1 %cmp49, label %for.body.lr.ph, label %if.end2.for.end_crit_edge

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end2
  %clks = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %25 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clks, align 4
  %arrayidx = getelementptr ptr, ptr %26, i32 %i.050
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i34 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i34, label %if.end.i35, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i35:                                       ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i35.for.inc_crit_edge, label %if.then3.i

if.end.i35.for.inc_crit_edge:                     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %28) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %for.body.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %for.body.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp4 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp4, label %while.cond.preheader, label %clk_prepare_enable.exit.for.inc_crit_edge

clk_prepare_enable.exit.for.inc_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.cond.preheader:                             ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.050)
  %cmp653.not = icmp eq i32 %i.050, 0
  br i1 %cmp653.not, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec54.in = phi i32 [ %dec54, %while.body.while.body_crit_edge ], [ %i.050, %while.cond.preheader.while.body_crit_edge ]
  %dec54 = add nsw i32 %dec54.in, -1
  %29 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clks, align 4
  %arrayidx8 = getelementptr ptr, ptr %30, i32 %dec54
  %31 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx8, align 4
  tail call void @clk_disable(ptr noundef %32) #8
  tail call void @clk_unprepare(ptr noundef %32) #8
  %cmp6 = icmp sgt i32 %dec54.in, 1
  br i1 %cmp6, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

for.inc:                                          ; preds = %clk_prepare_enable.exit.for.inc_crit_edge, %if.end.i35.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.050, 1
  %33 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_clocks, align 4
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end2.for.end_crit_edge
  %icc_path_ddr.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 19
  %35 = ptrtoint ptr %icc_path_ddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %icc_path_ddr.i, align 4
  %call.i36 = tail call i32 @icc_enable(ptr noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %if.end.i40, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i40:                                       ; preds = %for.end
  %icc_path_apps.i = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 20
  %37 = ptrtoint ptr %icc_path_apps.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %icc_path_apps.i, align 4
  %call1.i38 = tail call i32 @icc_enable(ptr noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool2.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool2.not.i39, label %if.end.i40.if.end14_crit_edge, label %if.then3.i41

if.end.i40.if.end14_crit_edge:                    ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then3.i41:                                     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %icc_path_ddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %icc_path_ddr.i, align 4
  %call5.i = tail call i32 @icc_disable(ptr noundef %40) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i41, %for.end.do.end_crit_edge
  %retval.0.i42.ph = phi i32 [ %call1.i38, %if.then3.i41 ], [ %call.i36, %for.end.do.end_crit_edge ]
  %41 = ptrtoint ptr %qcom to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qcom, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.98, i32 noundef %retval.0.i42.ph) #11
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end.i40.if.end14_crit_edge
  %qscratch_base = getelementptr inbounds %struct.dwc3_qcom, ptr %qcom, i32 0, i32 1
  %43 = ptrtoint ptr %qscratch_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %qscratch_base, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 88
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %46 = or i32 %45, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %46) #8, !srcloc !193
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %48 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %is_suspended, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i, %while.cond.preheader.cleanup_crit_edge ], [ %retval.0.i, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !67, !69, !70, !71, !73, !75, !77, !78, !79, !81, !83, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !125, !126, !128, !130, !132, !133, !134, !135, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__initcall__kmod_dwc3_qcom__295_981_dwc3_qcom_driver_init6, !1, !"__initcall__kmod_dwc3_qcom__295_981_dwc3_qcom_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 981, i32 1}
!2 = !{ptr @__exitcall_dwc3_qcom_driver_exit, !1, !"__exitcall_dwc3_qcom_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file296, !4, !"__UNIQUE_ID_file296", i1 false, i1 false}
!4 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 983, i32 1}
!5 = !{ptr @__UNIQUE_ID_license297, !4, !"__UNIQUE_ID_license297", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description298, !7, !"__UNIQUE_ID_description298", i1 false, i1 false}
!7 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 984, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 974, i32 11}
!10 = !{ptr @dwc3_qcom_driver, !11, !"dwc3_qcom_driver", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 970, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 730, i32 4}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dwc3_qcom_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @dwc3_qcom_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 738, i32 3}
!22 = !{ptr @dwc3_qcom_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dwc3_qcom_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 744, i32 3}
!26 = !{ptr @dwc3_qcom_probe._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dwc3_qcom_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 752, i32 3}
!30 = !{ptr @dwc3_qcom_probe._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dwc3_qcom_probe._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 758, i32 3}
!34 = !{ptr @dwc3_qcom_probe._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dwc3_qcom_probe._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 779, i32 5}
!38 = !{ptr @dwc3_qcom_probe._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dwc3_qcom_probe._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 796, i32 3}
!42 = !{ptr @dwc3_qcom_probe._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dwc3_qcom_probe._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 805, i32 5}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 815, i32 3}
!48 = !{ptr @dwc3_qcom_probe._entry.25, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dwc3_qcom_probe._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 694, i32 45}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 699, i32 31}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 460, i32 32}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 468, i32 6}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 470, i32 4}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @dwc3_qcom_setup_irq._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @dwc3_qcom_setup_irq._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 476, i32 32}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 483, i32 6}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 485, i32 4}
!69 = !{ptr @dwc3_qcom_setup_irq._entry.36, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @dwc3_qcom_setup_irq._entry_ptr.38, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 491, i32 32}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 498, i32 6}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 500, i32 4}
!77 = !{ptr @dwc3_qcom_setup_irq._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @dwc3_qcom_setup_irq._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 506, i32 32}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 513, i32 6}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 515, i32 4}
!85 = !{ptr @dwc3_qcom_setup_irq._entry.46, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @dwc3_qcom_setup_irq._entry_ptr.48, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 660, i32 40}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 662, i32 3}
!91 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @dwc3_qcom_of_register_core._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @dwc3_qcom_of_register_core._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 668, i32 3}
!96 = !{ptr @dwc3_qcom_of_register_core._entry.52, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @dwc3_qcom_of_register_core._entry_ptr.54, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 675, i32 3}
!100 = !{ptr @dwc3_qcom_of_register_core._entry.55, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @dwc3_qcom_of_register_core._entry_ptr.57, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 590, i32 37}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 608, i32 3}
!106 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @dwc3_qcom_acpi_register_core._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @dwc3_qcom_acpi_register_core._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 628, i32 3}
!111 = !{ptr @dwc3_qcom_acpi_register_core._entry.61, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @dwc3_qcom_acpi_register_core._entry_ptr.63, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 634, i32 3}
!115 = !{ptr @dwc3_qcom_acpi_register_core._entry.64, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @dwc3_qcom_acpi_register_core._entry_ptr.66, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 640, i32 3}
!119 = !{ptr @dwc3_qcom_acpi_register_core._entry.67, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @dwc3_qcom_acpi_register_core._entry_ptr.69, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @dwc3_qcom_swnode, !122, !"dwc3_qcom_swnode", i1 false, i1 false}
!122 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 576, i32 35}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 572, i32 2}
!125 = !{ptr @.str.71, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @dwc3_qcom_acpi_properties, !127, !"dwc3_qcom_acpi_properties", i1 false, i1 false}
!127 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 571, i32 36}
!128 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 250, i32 39}
!130 = !{ptr @.str.74, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 252, i32 3}
!132 = !{ptr @.str.75, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @dwc3_qcom_interconnect_init._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @dwc3_qcom_interconnect_init._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 257, i32 40}
!137 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 259, i32 3}
!139 = !{ptr @dwc3_qcom_interconnect_init._entry.77, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @dwc3_qcom_interconnect_init._entry_ptr.79, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 273, i32 3}
!143 = !{ptr @dwc3_qcom_interconnect_init._entry.80, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @dwc3_qcom_interconnect_init._entry_ptr.82, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.84, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 280, i32 3}
!147 = !{ptr @dwc3_qcom_interconnect_init._entry.83, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @dwc3_qcom_interconnect_init._entry_ptr.85, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.86, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 163, i32 43}
!151 = !{ptr @.str.87, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 179, i32 3}
!153 = !{ptr @.str.88, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @dwc3_qcom_register_extcon._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @dwc3_qcom_register_extcon._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.90, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 192, i32 3}
!158 = !{ptr @dwc3_qcom_register_extcon._entry.89, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @dwc3_qcom_register_extcon._entry_ptr.91, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @dwc3_qcom_of_match, !161, !"dwc3_qcom_of_match", i1 false, i1 false}
!161 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 928, i32 34}
!162 = !{ptr @dwc3_qcom_dev_pm_ops, !163, !"dwc3_qcom_dev_pm_ops", i1 false, i1 false}
!163 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 922, i32 32}
!164 = !{ptr @.str.92, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 355, i32 3}
!166 = !{ptr @.str.93, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @dwc3_qcom_suspend._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @dwc3_qcom_suspend._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.95, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 362, i32 3}
!171 = !{ptr @.str.96, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @dwc3_qcom_suspend._entry.94, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @dwc3_qcom_suspend._entry_ptr.97, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.98, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/dwc3/dwc3-qcom.c", i32 394, i32 3}
!176 = !{ptr @.str.99, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @dwc3_qcom_resume._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @dwc3_qcom_resume._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"branch_weights", i32 1, i32 2000}
!189 = !{i8 0, i8 2}
!190 = !{i64 5803422}
!191 = !{i64 2156071194}
!192 = !{i64 2156071404}
!193 = !{i64 5803004}
!194 = !{i64 2156072045}
!195 = !{i64 2156072684}
!196 = !{i64 2156072894}
!197 = !{i64 2156073535}
!198 = !{!"auto-init"}
!199 = !{i64 2156087418}
